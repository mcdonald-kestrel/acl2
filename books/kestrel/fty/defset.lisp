; FTY Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "FTY")

(include-book "centaur/fty/top" :dir :system)
(include-book "std/osets/top" :dir :system)
(include-book "std/util/defrule" :dir :system)
(include-book "xdoc/constructors" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc defset

  :parents (fty-extensions fty set::std/osets)

  :short "Generate a <see topic='@(url fty::fty)'>fixtype</see>
          of <see topic='@(url set::std/osets)'>osets</see>
          whose elements have a specified fixtype."

  :long

  (xdoc::topstring

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::h3 "Introduction")

   (xdoc::p
    "This is analogous to @(tsee fty::deflist) and @(tsee fty::defalist).
     Besides the fixtype itself,
     this macro also generates some theorems about the fixtype.
     Future versions of this macro may generate more theorems, as needed.")

   (xdoc::p
    "Future versions of this macro may be modularized to provide
     a ``sub-macro'' that generates only the recognizer and theorems about it,
     without the fixtype (and without the fixer and equivalence),
     similarly to @(tsee std::deflist) and @(tsee std::defalist).
     That sub-macro could be called @('set::defset').")

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::h3 "General Form")

   (xdoc::codeblock
    "(defset type"
    "        :elt-type ..."
    "        :elementp-of-nil ..."
    "        :pred ..."
    "        :fix ..."
    "        :equiv ..."
    "        :parents ..."
    "        :short ..."
    "        :long ...")

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::h3 "Inputs")

   (xdoc::desc
    "@('type')"
    (xdoc::p
     "The name of the new fixtype."))

   (xdoc::desc
    "@(':elt-type')"
    (xdoc::p
     "The (existing) fixtype of the elements of the new set fixtype."))

   (xdoc::desc
    "@(':elementp-of-nil')"
    (xdoc::p
     "Specifies whether @('nil') is in the element fixtype @(':elt-type').
      It must be @('t'), @('nil'), or @(':unknown') (the default).
      When @('t') or @('nil'), slightly better theorems are generated."))

   (xdoc::desc
    "@(':pred')
     <br/>
     @(':fix')
     <br/>
     @(':equiv')"
    (xdoc::p
     "The name of the recognizer, fixer, and equivalence for the new fixtype.")
    (xdoc::p
     "The defaults are @('type') followed by
      @('-p'), @('-fix'), and @('-equiv')."))

   (xdoc::desc
    "@(':parents')
     <br/>
     @(':short')
     <br/>
     @(':long')"
    (xdoc::p
     "These are used to generate XDOC documentation
      for the topic @('name').")
    (xdoc::p
     "If any of these is not supplied, the corresponding component
      is omitted from the generated XDOC topic."))

   (xdoc::p
    "This macro currently does not perform a thorough validation of its inputs.
     Erroneous inputs may result in failures of the generated events.
     Errors should be easy to diagnose,
     also since this macro has a very simple and readable implementation.
     Future versions of this macro
     should perform more thorough input validation.")

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::h3 "Generated Events")

   (xdoc::p
    "The following are generated, inclusive of XDOC documentation:")

   (xdoc::ul

    (xdoc::li
     "The recognizer, the fixer, the equivalence, and the fixtype.")

    (xdoc::li
     "Several theorems about the recognizer, fixer, and equivalence."))

   (xdoc::p
    "See the implementation, which uses a readable backquote notation,
     for details.")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc defset-implementation
  :parents (defset)
  :short "Implementation of @(tsee defset).")

(define defset-fn (type
                   elt-type
                   elementp-of-nil
                   pred
                   fix
                   equiv
                   parents
                   short
                   long
                   state)
  :returns (event "A @(tsee acl2::maybe-pseudo-event-formp).")
  :mode :program
  :parents (defset-implementation)
  :short "Event generated by @(tsee defset)."
  (b* (;; validate the TYPE input:
       ((unless (symbolp type))
        (raise "The TYPE input must be a symbol, ~
                but it is ~x0 instead." type))
       ;; retrieve the table of all fixtypes:
       (fty-table (get-fixtypes-alist (w state)))
       ;; validate the :ELT-TYPE input:
       ((unless (symbolp elt-type))
        (raise "The :ELT-TYPE input must be a symbol, ~
                but it is ~x0 instead." elt-type))
       (elt-info (find-fixtype elt-type fty-table))
       ((unless elt-info)
        (raise "The :ELT-TYPE input ~x0 must name a fixtype, ~
                but it does not." elt-type))
       (elt-pred (fixtype->pred elt-info))
       ;; validate the :ELEMENTP-OF-NIL input:
       ((unless (or (booleanp elementp-of-nil)
                    (eq elementp-of-nil :unknown)))
        (raise "The :ELEMENTP-OF-NIL input must be T, NIL, or :UNKNOWN, ~
                but it is ~x0 instead." elementp-of-nil))
       ;; validate the :PRED input:
       ((unless (symbolp pred))
        (raise "The :PRED input must be a symbol, ~
                but it is ~x0 instead." pred))
       ;; validate the :FIX input:
       ((unless (symbolp fix))
        (raise "The :FIX input must be a symbol, ~
                but it is ~x0 instead." fix))
       ;; validate the :EQUIV input:
       ((unless (symbolp equiv))
        (raise "The :EQUIV input must be a symbol, ~
                but it is ~x0 instead." equiv))
       ;; package for the generated theorem and variable names:
       (pkg (symbol-package-name type))
       (pkg (if (equal pkg *main-lisp-package-name*) "ACL2" pkg))
       (pkg-witness (pkg-witness pkg))
       ;; variables to use in the generated functions and theorems:
       (x (intern-in-package-of-symbol "X" pkg-witness))
       (y (intern-in-package-of-symbol "Y" pkg-witness))
       (a (intern-in-package-of-symbol "A" pkg-witness))
       ;; names of the generated functions:
       (pred (or pred (acl2::add-suffix-to-fn type "-P")))
       (fix (or fix (acl2::add-suffix-to-fn type "-FIX")))
       (equiv (or equiv (acl2::add-suffix-to-fn type "-EQUIV")))
       ;; names of the generated theorems:
       (booleanp-of-pred (acl2::packn-pos (list 'booleanp-of pred) pkg-witness))
       (pred-of-fix (acl2::packn-pos (list pred '-of- fix) pkg-witness))
       (fix-when-pred (acl2::packn-pos (list fix '-when- pred) pkg-witness))
       (setp-when-pred (acl2::packn-pos (list 'setp-when- pred) pkg-witness))
       (elt-pred-of-head (acl2::packn-pos (list elt-pred
                                                '-of-head) pkg-witness))
       (pred-of-tail (acl2::packn-pos (list pred '-of-tail) pkg-witness))
       (pred-of-insert (acl2::packn-pos (list pred '-of-insert) pkg-witness))
       (elt-pred-when-in-pred (acl2::packn-pos (list elt-pred
                                                     '-when-in-
                                                     pred
                                                     '-binds-free-
                                                     x)
                                               pkg-witness))
       (pred-of-union (acl2::packn-pos (list pred '-of-union) pkg-witness))
       (pred-of-difference (acl2::packn-pos (list pred '-of-difference)
                                            pkg-witness))
       ;; reference to the fixtype for the generated XDOC documentation:
       (type-ref (concatenate 'string
                              "@(tsee "
                              (acl2::string-downcase (symbol-package-name type))
                              "::"
                              (acl2::string-downcase (symbol-name type))
                              ")"))
       ;; generated events:
       (pred-event
        `(define ,pred (,x)
           :parents (,type)
           :short ,(concatenate 'string "Recognizer for " type-ref ".")
           (if (atom ,x)
               (null ,x)
             (and (,elt-pred (car ,x))
                  (or (null (cdr ,x))
                      (and (consp (cdr ,x))
                           (acl2::fast-<< (car ,x) (cadr ,x))
                           (,pred (cdr ,x))))))
           :no-function t
           ///
           (defrule ,booleanp-of-pred
             (booleanp (,pred ,x)))
           (defrule ,setp-when-pred
             (implies (,pred ,x)
                      (set::setp ,x))
             :enable set::setp)
           (defrule ,elt-pred-of-head
             (implies (,pred ,x)
                      ,(cond ((eq elementp-of-nil t)
                              `(,elt-pred (set::head ,x)))
                             ((eq elementp-of-nil nil)
                              `(equal (,elt-pred (set::head ,x))
                                      (not (set::empty ,x))))
                             (t `(implies (not (set::empty ,x))
                                          (,elt-pred (set::head ,x))))))
             :enable (set::head set::empty))
           (defrule ,pred-of-tail
             (implies (,pred ,x)
                      (,pred (set::tail ,x)))
             :enable set::tail)
           (defrule ,pred-of-insert
             (equal (,pred (set::insert ,a ,x))
                    (and (,elt-pred ,a)
                         (,pred (set::sfix ,x))))
             :enable (set::insert set::empty set::head set::tail set::setp))
           (defrule ,elt-pred-when-in-pred
             (implies (and (set::in ,a ,x) ; binds free X
                           (,pred ,x))
                      (,elt-pred ,a))
             :enable (set::in set::head))
           (defrule ,pred-of-union
             (equal (,pred (set::union ,x ,y))
                    (and (,pred (set::sfix ,x))
                         (,pred (set::sfix ,y))))
             :enable (set::union set::empty set::setp set::head set::tail))
           (defrule ,pred-of-difference
             (implies (,pred ,x)
                      (,pred (set::difference ,x ,y)))
             :enable set::difference)))
       (fix-event
        `(define ,fix ((,x ,pred))
           :parents (,type)
           :short ,(concatenate 'string "Fixer for " type-ref ".")
           (mbe :logic (if (,pred ,x) ,x nil)
                :exec ,x)
           :no-function t
           ///
           (defrule ,pred-of-fix
             (,pred (,fix ,x)))
           (defrule ,fix-when-pred
             (implies (,pred ,x)
                      (equal (,fix ,x) ,x)))))
       (type-event
        `(defsection ,type
           ,@(and parents (list :parents parents))
           ,@(and short (list :short short))
           ,@(and long (list :long long))
           (fty::deffixtype ,type
             :pred ,pred
             :fix ,fix
             :equiv ,equiv
             :define t
             :forward t))))
    ;; top-level event:
    `(encapsulate
       ()
       (logic)
       ,pred-event
       ,fix-event
       ,type-event)))

(defsection defset-macro-definition
  :parents (defset-implementation)
  :short "Definition of the @(tsee defset) macro."
  :long (xdoc::topstring-@def "defset")
  (defmacro defset (type &key
                         elt-type
                         (elementp-of-nil ':unknown)
                         pred
                         fix
                         equiv
                         parents
                         short
                         long)
    `(make-event (defset-fn
                   ',type
                   ',elt-type
                   ',elementp-of-nil
                   ',pred
                   ',fix
                   ',equiv
                   ',parents
                   ,short
                   ,long
                   state))))
