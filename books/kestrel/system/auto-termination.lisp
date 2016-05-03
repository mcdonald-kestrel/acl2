; Copyright (C) 2016, Regents of the University of Texas
; Written by Matt Kaufmann
; License: A 3-clause BSD license.  See the LICENSE file distributed with ACL2.

;;; TO DO:

; - Support DEFINE.

; - Support mutual-recursion.

(in-package "ACL2")

(include-book "kestrel/system/world-queries" :dir :system) ; for measure
(include-book "tools/remove-hyps" :dir :system) ; for event-steps
(include-book "xdoc/top" :dir :system)

(program)
(set-state-ok t)

(defun pair-with-formals-and-body (fns wrld)
  (cond ((endp fns) nil)
        (t (acons (car fns)
                  (cons (formals (car fns) wrld)
                        (body (car fns) t wrld))
                  (pair-with-formals-and-body (cdr fns) wrld)))))

(defconst *auto-termination-fns*
  (union-equal '(zp natp posp zip)
               (remove1-eq 'mv-nth *definition-minimal-theory*)))

(make-event
 `(defconst *auto-termination-fn-alist*
    ',(pair-with-formals-and-body *auto-termination-fns* (w state))))

(mutual-recursion

(defun normalize-lit (lit)
  (cond ((variablep lit) lit)
        ((fquotep lit) lit)
        ((eq (ffn-symb lit) 'not)
         (dumb-negate-lit (normalize-lit (fargn lit 1))))
        ((member-eq (ffn-symb lit) *auto-termination-fns*)
         (let* ((pair (cdr (assoc-eq (ffn-symb lit) *auto-termination-fn-alist*)))
                (formals (car pair))
                (body (cdr pair)))
           (normalize-lit (subcor-var formals (fargs lit) body))))
        (t (cons-term (ffn-symb lit)
                      (normalize-lit-lst (fargs lit))))))

(defun normalize-lit-lst (lst)
  (cond ((endp lst) nil)
        (t (cons (normalize-lit (car lst))
                 (normalize-lit-lst (cdr lst))))))
)

(defun push-down-ifs (x)
  (case-match x
    (('not ('if tst tbr fbr))
     `(if ,tst
          ,(push-down-ifs (dumb-negate-lit tbr))
        ,(push-down-ifs (dumb-negate-lit fbr))))
    (('if tst tbr fbr)
     `(if ,tst
          ,(push-down-ifs tbr)
        ,(push-down-ifs fbr)))
    (& x)))

(defun push-down-ifs-lst (lst)
  (cond ((endp lst) nil)
        (t (cons (push-down-ifs (car lst))
                 (push-down-ifs-lst (cdr lst))))))

(defun normalize-clause (clause)

; Perform some basic simplifications, e.g.:

; Replace (not (and x y)) by {(not x),(not y)}.

  (flatten-ands-in-lit-lst (push-down-ifs-lst (normalize-lit-lst clause))))

(defun termination-clause-set-2 (calls tests fn-subst)
  (cond ((endp calls) nil)
        (t (let ((call (car calls)))
             (assert$
              (and (nvariablep call)
                   (not (fquotep call)))
              (cons (cons (sublis-fn-simple fn-subst call)
                          tests)
                    (termination-clause-set-2 (cdr calls) tests fn-subst)))))))

(defun termination-clause-set-1 (tc-lst fn-subst)
  (cond ((endp tc-lst) nil)
        (t (let ((calls (access tests-and-calls
                                (car tc-lst)
                                :calls)))
             (cond
              ((null calls)
               (termination-clause-set-1 (cdr tc-lst) fn-subst))
              (t (append (termination-clause-set-2 calls
                                                   (normalize-clause
                                                    (sublis-fn-lst-simple
                                                     fn-subst
                                                     (access tests-and-calls
                                                             (car tc-lst)
                                                             :tests)))
                                                   fn-subst)
                         (termination-clause-set-1 (cdr tc-lst) fn-subst))))))))

(defun termination-clause-set (fn wrld)
  (termination-clause-set-1 (getpropc fn 'induction-machine nil wrld)
                            (list (cons fn :FN))))

(mutual-recursion

; Here I modify ACL2's subsumes-rec nest to return the unify-subst.  See the
; sources for comments, which are deleted here.

(defun subsumes+-rec (count cl1 cl2 alist)
  (declare (type (signed-byte 30) count))
  (the-mv
   2
   (signed-byte 30)
   (cond
    ((eql count 0) (mv 0 alist))
    ((null cl1) (mv count alist))
    ((extra-info-lit-p (car cl1))
     (subsumes+-rec count (cdr cl1) cl2 alist))
    ((ffn-symb-p (car cl1) 'EQUAL)
     (cond ((quotep (fargn (car cl1) 1))
            (subsumes+1-equality-with-const count
                                            (car cl1)
                                            (fargn (car cl1) 2)
                                            (fargn (car cl1) 1)
                                            (cdr cl1) cl2 cl2 alist))
           ((quotep (fargn (car cl1) 2))
            (subsumes+1-equality-with-const count
                                            (car cl1)
                                            (fargn (car cl1) 1)
                                            (fargn (car cl1) 2)
                                            (cdr cl1) cl2 cl2 alist))
           (t (subsumes+1 count (car cl1) (cdr cl1) cl2 cl2 alist))))
    (t (subsumes+1 count (car cl1) (cdr cl1) cl2 cl2 alist)))))

(defun subsumes+1-equality-with-const (count lit x const1 tl1 tl2 cl2 alist)
  (the-mv
   2
   (signed-byte 30)
   (cond ((eql count 0) (mv 0 alist))
         ((null tl2) (mv (-f count) alist))
         ((extra-info-lit-p (car tl2))
          (subsumes+1-equality-with-const count lit x const1 tl1 (cdr tl2) cl2 alist))
         ((and (ffn-symb-p (car tl2) 'NOT)
               (ffn-symb-p (fargn (car tl2) 1) 'EQUAL))
          (let ((arg1 (fargn (fargn (car tl2) 1) 1))
                (arg2 (fargn (fargn (car tl2) 1) 2)))
            (cond ((and (quotep arg1)
                        (not (equal arg1 const1)))
                   (mv-let
                     (wonp alist1)
                     (one-way-unify1 x arg2 alist)
                     (cond ((not wonp)
                            (subsumes+1-equality-with-const
                             (1-f count) lit x const1 tl1 (cdr tl2) cl2 alist))
                           (t (mv-let
                                (new-count alist2)
                                (subsumes+-rec (1-f count) tl1 cl2 alist1)
                                (declare (type (signed-byte 30) new-count))
                                (cond ((<= 0 new-count) (mv new-count alist2))
                                      (t (subsumes+1-equality-with-const
                                          (-f new-count)
                                          lit x const1 tl1 (cdr tl2)
                                          cl2 alist))))))))
                  ((and (quotep arg2)
                        (not (equal arg2 const1)))
                   (mv-let
                     (wonp alist1)
                     (one-way-unify1 x arg1 alist)
                     (cond ((not wonp)
                            (subsumes+1-equality-with-const
                             (1-f count) lit x const1 tl1 (cdr tl2) cl2 alist))
                           (t (mv-let
                                (new-count alist2)
                                (subsumes+-rec (1-f count) tl1 cl2 alist1)
                                (declare (type (signed-byte 30) new-count))
                                (cond ((<= 0 new-count) (mv new-count alist2))
                                      (t (subsumes+1-equality-with-const
                                          (-f new-count)
                                          lit x const1 tl1 (cdr tl2)
                                          cl2 alist))))))))
                  (t (subsumes+1-equality-with-const count lit x const1 tl1
                                                     (cdr tl2) cl2 alist)))))
         (t (mv-let
              (wonp alist1)
              (one-way-unify1 lit (car tl2) alist)
              (cond ((not wonp)
                     (subsumes+1-equality-with-const (1-f count) lit x const1
                                                     tl1 (cdr tl2) cl2 alist))
                    (t (mv-let
                         (new-count alist2)
                         (subsumes+-rec (1-f count) tl1 cl2 alist1)
                         (declare (type (signed-byte 30) new-count))
                         (cond
                          ((<= 0 new-count) (mv new-count alist2))
                          (t (subsumes+1-equality-with-const
                              (-f new-count) lit x const1 tl1 (cdr tl2) cl2
                              alist)))))))))))

(defun subsumes+1 (count lit tl1 tl2 cl2 alist)
  (declare (type (signed-byte 30) count))
  (the-mv
   2
   (signed-byte 30)
   (cond ((eql count 0) (mv 0 alist))
         ((null tl2) (mv (-f count) alist))
         ((extra-info-lit-p (car tl2))
          (subsumes+1 count lit tl1 (cdr tl2) cl2 alist))
         (t (mv-let
              (wonp alist1)
              (one-way-unify1 lit (car tl2) alist)
              (cond
               ((not wonp)
                (subsumes+1 (1-f count) lit tl1 (cdr tl2) cl2 alist))
               (t
                (mv-let
                  (new-count alist2)
                  (subsumes+-rec (1-f count) tl1 cl2 alist1)
                  (declare (type (signed-byte 30) new-count))
                  (cond ((<= 0 new-count) (mv new-count alist2))
                        (t (subsumes+1 (-f new-count) lit tl1 (cdr tl2) cl2
                                       alist)))))))))))

)

(defun some-member-subsumes+ (init-subsumes-count cl-set cl unify-subst)
  (cond ((null cl-set) :fail)
        (t (mv-let (new-count unify-subst2)
             (subsumes+-rec init-subsumes-count (car cl-set) cl unify-subst)
             (declare (type (signed-byte 30) new-count))
             (cond ((< 0 new-count) unify-subst2)
                   (t (some-member-subsumes+ init-subsumes-count
                                             (cdr cl-set) cl unify-subst)))))))

(defun clause-set-subsumes+-1 (init-subsumes-count cl-set1 cl-set2 unify-subst)
  (cond ((null cl-set2) unify-subst)
        (t (let ((unify-subst (some-member-subsumes+ init-subsumes-count
                                                     cl-set1
                                                     (car cl-set2)
                                                     unify-subst)))
             (if (eq unify-subst :fail)
                 :fail
               (clause-set-subsumes+-1 init-subsumes-count
                                       cl-set1
                                       (cdr cl-set2)
                                       unify-subst))))))

(defun clause-set-subsumes+ (init-subsumes-count cl-set1 cl-set2)
  (cond ((or (equal cl-set1 cl-set2)
             (and cl-set1
                  cl-set2
                  (null (cdr cl-set2))
                  (subsetp-equal (car cl-set1) (car cl-set2))))
         nil)
        (t (clause-set-subsumes+-1 init-subsumes-count cl-set1 cl-set2 nil))))

(defun term-thm-alist (fn unify-subst wrld)
  (let ((thm (termination-theorem fn wrld)))
    (alist-to-doublets (restrict-alist (all-vars thm) unify-subst))))

(defun auto-termination-declare-2 (old-fn new-fn-clause-set theory expand wrld)
  (let ((recursivep (getpropc old-fn 'recursivep nil wrld)))
    (and recursivep
         (null (cdr recursivep)) ; singly-recursive
         (let ((measure (measure old-fn wrld)))
           (assert$
            (and measure (nvariablep measure) (not (fquotep measure)))
            (and (not (eq (ffn-symb measure) ':?))
                 (let* ((old-fn-clause-set (termination-clause-set old-fn wrld))
                        (unify-subst
                         (clause-set-subsumes+ *init-subsumes-count*
                                               old-fn-clause-set
                                               new-fn-clause-set)))
                   (and (not (eq unify-subst :fail))
                        (let ((thm `(:termination-theorem ,old-fn)))
                          `(declare
                            (xargs :measure
                                   ,(sublis-var unify-subst measure)
                                   :hints
                                   (("Goal"
                                     :use
                                     (:instance ,thm
                                                ,@(term-thm-alist old-fn
                                                                  unify-subst
                                                                  wrld))
                                     ,@(and expand
                                            `(:expand ,expand))
                                     :in-theory ,theory)))))))))))))

(defun auto-termination-declare-1 (fns new-fn-clause-set theory expand wrld)
  (cond ((endp fns) nil)
        (t (or (and (not (get-skipped-proofs-p (car fns) wrld))
                    (auto-termination-declare-2 (car fns) new-fn-clause-set
                                           theory expand wrld))
               (auto-termination-declare-1 (cdr fns) new-fn-clause-set
                                           theory expand wrld)))))

(defun event-book (name state)
  (let ((wrld (w state)))
    (er-let* ((ev-wrld (er-decode-logical-name name wrld 'event-location
                                               state)))
      (value (car (global-val 'include-book-path ; path could be nil
                              ev-wrld))))))

(defun auto-termination-declare (new-fn-clause-set theory expand verbose state)
  (let* ((world (w state)) ; needs to be WORLD for function-theory
         (old-fns (strip-cadrs (function-theory :here))))
    (pprogn
     (cond (verbose (fms "; Searching ~x0 functions..."
                         (list (cons #\0 (length old-fns)))
                         (standard-co state) state nil))
           (t state))
     (let ((decl (auto-termination-declare-1 old-fns new-fn-clause-set theory
                                             expand world)))
       (case-match decl
         (('declare
           ('xargs ':measure &
                   ':hints
                   (('"Goal"
                     ':use
                     (':instance (':termination-theorem fn) . &)
                     . &))))
          (er-let* ((book (event-book fn state)))
            (state-global-let*
             ((fmt-hard-right-margin 100000 set-fmt-hard-right-margin)
              (fmt-soft-right-margin 100000 set-fmt-soft-right-margin))
             (pprogn
              (cond
               (verbose
                (fms "; Reusing measure and termination theorem for ~
                      function~|; ~x0, defined ~@1.~|"
                     (list (cons #\0 fn)
                           (cons #\1
                                 (cond (book (msg "in the book~|; ~s0" book))
                                       (t "at the top level"))))
                     (standard-co state) state nil))
               (t state))
              (value decl)))))
         ('nil (value decl))
         (& (er soft 'auto-termination-declare
                "Implementation error!  Unexpected declare form,~|~x0.~|See ~
                 auto-termination-declare."
                decl)))))))

(defconst *legal-auto-termination-event-types*
  '(defun defund))

(defstub auto-termination-check () t)
(defun auto-termination-check-loose ()
  (declare (xargs :mode :logic :guard t :verify-guards t))
  nil)
(defun auto-termination-check-strict ()
  (declare (xargs :mode :logic :guard t :verify-guards t))
  t)
(defattach auto-termination-check auto-termination-check-strict)

(defun auto-termination-info (defun-form result-spec theory expand verbose
                               state)

; Result-spec is :event if we want an event, otherwise :dcl if we want the
; declare form.

  (declare (xargs :guard ; incomplete
                  (member-eq result-spec '(:event :dcl))))
  (case-match defun-form
    ((defun-or-defund fn formals . rest)
     (cond
      ((and (auto-termination-check-strict)
            (not (member-eq defun-or-defund
                            *legal-auto-termination-event-types*)))
       (er soft 'with-auto-termination
           "Unsupported event type for auto termination: ~x0.  The legal ~
            types are ~&1."
           defun-or-defund *legal-auto-termination-event-types*))
      (t
       (let* ((new-dcls (strip-dcls '(:hints :measure) (butlast rest 1)))
              (body (car (last rest)))
              (form `(,defun-or-defund ,fn ,formals ,@new-dcls ,body)))
         (er-let* ((steps
                    (event-steps
                     (list 'skip-proofs form)
                     nil
                     `((f-put-global 'auto-termination-cl-set
                                     (termination-clause-set ',fn (w state))
                                     state))
                     state)))
           (cond ((null steps)
                  (er soft 'with-auto-termination
                      "Original defun failed, even under skip-proofs!"))
                 (t (er-let* ((decl (auto-termination-declare
                                     (f-get-global 'auto-termination-cl-set
                                                   state)
                                     theory expand verbose state)))
                      (cond
                       (decl (value
                              (case result-spec
                                (:event `(,defun-or-defund ,fn ,formals
                                           ,decl ,@new-dcls
                                           ,body))
                                (:dcl decl)
                                (otherwise (er hard 'with-auto-termination-fn
                                               "Unsupported result-spec: ~x0"
                                               result-spec)))))
                       (t (er soft 'with-auto-termination
                              "No suitable :termination-theorem instances ~
                               were found.")))))))))))
    (& (er soft 'with-auto-termination
           "Unsupported event for auto termination: ~x0."
           defun-form))))

(defmacro with-auto-termination (defun-form
                                  &key
                                  show
                                  (theory '(theory 'auto-termination-theory))
                                  expand
                                  (verbose ':minimal))
  (declare (xargs :guard (member-eq show '(nil :event :dcl))))
  (let ((theory (if (eq theory :current)
                    '(current-theory :here)
                  theory)))
    (cond (show `(auto-termination-info ',defun-form ',show ',theory ',expand
                                        state))
          ((eq verbose t)
           `(make-event
             (auto-termination-info ',defun-form :event
                                    ',theory ',expand ',verbose state)))
          (t `(with-output
                :stack :push
                :off :all
                :gag-mode nil
                (make-event
                 (er-let* ((form
                            (with-output
                              :stack :pop
                              (auto-termination-info ',defun-form
                                                     :event
                                                     ',theory
                                                     ',expand
                                                     ',verbose
                                                     state))))
                   (value
                    (list :OR
                          form
                          `(make-event
                            (with-output :stack :pop
                              (er soft 'with-auto-termination
                                  "The following form was generated but ~
                                   failed to be admitted:~|~X01~|Consider ~
                                   calling ~x2 with option :VERBOSE T, or try ~
                                   directly submitting the form printed above."
                                  ',form nil 'with-auto-termination))))))))))))

; For the deftheory below, since local events are skipped in :program mode:
(logic)

(deftheory auto-termination-theory
  *auto-termination-fns*)

(defxdoc with-auto-termination
  :parents (kestrel-system-utilities system-utilities)
  :short "Re-use an existing termination proof automatically."
  :long "<p>The following (admittedly, contrived) example shows how to use this
 utility.  First define:</p>

 @({
 (defund my-dec (x) (1- x))
 (defun my-max (x y)
   (declare (xargs :measure (+ (nfix x) (nfix y))
                   :hints ((\"Goal\" :in-theory (enable my-dec)))))
   (cond ((zp x) y)
         ((zp y) x)
         (t (1+ (my-max (my-dec x) (my-dec y))))))
 })

 <p>Now consider the following definition.  Its recursion pattern resembles
 that of the function above: we recur on the application of @('my-dec') to the
 two arguments, assuming both arguments are positive integers.</p>

 @({
 ACL2 !>(with-auto-termination
         (defun my-sum (a b)
           (cond ((and (posp a) (posp b))
                  (+ 2 (my-sum (my-dec a) (my-dec b))))
                 ((zp b) a)
                 (t b))))
  MY-SUM
 ACL2 !>
 })

 <p>We see that the function has been successfully admitted, since the function
 name is returned and there is no error message.  How did this happen?  We can
 evaluate @(':')@(tsee pe)@(' my-sum') to see the resulting event, but an
 alternative, before submitting the form above, is to ask just to show the
 event, without evaluating it, using @(':show :event'):</p>

 @({
 ACL2 !>:u
  L         3:x(DEFUN MY-MAX (X Y) ...)
 ACL2 !>(with-auto-termination
         (defun my-sum (a b)
           (cond ((and (posp a) (posp b))
                  (+ 2 (my-sum (my-dec a) (my-dec b))))
                 ((zp b) a)
                 (t b)))
         :show :event)
  (DEFUN
   MY-SUM (A B)
   (DECLARE
       (XARGS :MEASURE (BINARY-+ (NFIX A) (NFIX B))
              :HINTS ((\"Goal\" :USE (:INSTANCE (:TERMINATION-THEOREM MY-MAX)
                                              (Y B)
                                              (X A))
                              :IN-THEORY (THEORY 'AUTO-TERMINATION-THEORY)))))
   (COND ((AND (POSP A) (POSP B))
          (+ 2 (MY-SUM (MY-DEC A) (MY-DEC B))))
         ((ZP B) A)
         (T B)))
 ACL2 !>
 })

 <p>We see that ACL2 found a function in the logical @(see world) whose
 termination argument justifies the termination of @('my-sum') &mdash; namely,
 the function @('my-max').  Then a suitable @(':')@(tsee measure) and
 @(':')@(tsee hints) were generated in order to admit the new event.</p>

 @({
 General Form:
 (with-auto-termination
  form
  :theory th ; default (theory 'auto-termination-theory)
  :expand ex ; default nil
  :show s    ; default nil
  :verbose v ; default :minimal
  )
 })

 <p>where @('form') is a call of @(tsee defun) or @(tsee defund), and keyword
 arguments, which are not evaluated, have the defaults shown above.  If this
 event is successful, then the input definition is modified by adding a
 generated @('declare') form, which provides a @(':measure') and @(':hints')
 that take advantage of the @(see termination-theorem) for an existing function
 that was admitted without skipping proofs (see @(see skip-proofs) and @(see
 set-ld-skip-proofs)).  The @(see hints) include a @(':use') hint for that
 earlier termination-theorem, as well as an @(':in-theory') hint and possibly
 an @(':expand') hint, as discussed below.  But before adding the new
 @('declare') form, any @(':measure') and @(':hints') are removed from the
 input form.</p>

 <p>We now describe the keyword arguments.</p>

 <ul>

 <li>@(':theory') and @(':expand') &mdash; These are probably only necessary in
 the case of defining a reflexive function (one with a recursive call within a
 recursive call, such as @('(f (f x))')).  These are passed along as
 @(':')@(tsee in-theory) and @(tsee expand) @(see hints), respectively, on
 @('\"Goal\"') in the generated @('declare') form.  A convenient special value
 for @(':theory') is @(':current'), which is equivalent to supplying the value
 @('(current-theory :here)').</li>

 <li>@(':show') &mdash; If this is @('nil') then ACL2 will attempt to admit the
 resulting definition.  Otherwise, @(':show') should be either @(':event') or
 @(':dcl'), in which case an @(see error-triple) is returned without changing
 the ACL2 @(see world).  If @(':show') is @(':event'), then the resulting value
 will be the generated definition, while if @(':show') is @(':dcl'), then the
 resulting value will be just the generated @('declare') form.</li>

 <li>@(':verbose') &mdash; By default, if a @('declare') form is successfully
 generated, then the resulting event will be processed without output from the
 prover.  To see output from the prover, use @(':verbose t').  To avoid even
 the little messages about ``Searching'' and ``Reusing'', use @(':verbose
 nil').</li>

 </ul>

 <p>See community book @('kestrel/system/auto-termination-tests.lisp') for more
 examples.</p>")

(defpointer auto-termination with-auto-termination)
