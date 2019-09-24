; RP-REWRITER

; Note: The license below is based on the template at:
; http://opensource.org/licenses/BSD-3-Clause

; Copyright (C) 2019, Regents of the University of Texas
; All rights reserved.

; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions are
; met:

; o Redistributions of source code must retain the above copyright
;   notice, this list of conditions and the following disclaimer.

; o Redistributions in binary form must reproduce the above copyright
;   notice, this list of conditions and the following disclaimer in the
;   documentation and/or other materials provided with the distribution.

; o Neither the name of the copyright holders nor the names of its
;   contributors may be used to endorse or promote products derived
;   from this software without specific prior written permission.

; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
; HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
; OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

; Original Author(s):
; Mertcan Temel         <mert@utexas.edu>

(in-package "RP")

(include-book "../rp-rewriter")
(include-book "local-lemmas")
(include-book "proof-functions")
(include-book "rp-equal-lemmas")
(include-book "apply-bindings-lemmas")
(include-book "aux-function-lemmas")

(in-theory (disable default-car
                    (:DEFINITION NOT)
                    default-cdr))

(make-flag rp-match-lhs :defthm-macro-name defthm-rp-match-lhs)

(local
 (in-theory (disable EXTRACT-FROM-RP-WITH-CONTEXT
                     ex-from-rp
                     PUT-TERM-IN-CONS
                     SHOULD-TERM-BE-IN-CONS
                     context-from-rp
                     ex-from-synp)))

(encapsulate
  nil
  (local
   (in-theory (e/d (extract-from-rp-with-context-context)
                   (extract-from-rp-with-context))))
  (defthm-rp-match-lhs
    ;; for guard of rp-rw-rule-aux and rp-rw
    (defthm return-val-of-rp-match-lhs-context
      (implies (and (context-syntaxp context)
                    (pseudo-termp2 rule-lhs)
                    (rp-syntaxp term)
                    (all-falist-consistent term)
                    (pseudo-termp2 term))
               (context-syntaxp (mv-nth 0 (RP-MATCH-LHS term rule-lhs context
                                                        acc-bindings))))
      :flag rp-match-lhs)
    (defthm return-val-of-rp-match-lhs-context-subterms
      (implies (and (context-syntaxp context)
                    (all-falist-consistent-lst subterms)
                    (pseudo-term-listp2 sublhs)
                    (rp-syntaxp-lst subterms)
                    (pseudo-term-listp2 subterms))
               (context-syntaxp (mv-nth 0 (rp-match-lhs-subterms subterms sublhs context
                                                                 acc-bindings))))
      :flag rp-match-lhs-subterms)))

(defthm-rp-match-lhs
  (defthm bindings-alistp-rp-match-lhs
    (implies (and (bindings-alistp acc-bindings)
                  (pseudo-termp2 rule-lhs)
                  (pseudo-termp2 term))
             (bindings-alistp (mv-nth 1 (rp-match-lhs term rule-lhs context
                                                      acc-bindings))))
    :flag rp-match-lhs)
  (defthm bindings-alistp-rp-match-lhs-subterms
    (implies (and (bindings-alistp acc-bindings)
                  (pseudo-term-listp2 subterms)
                  (pseudo-term-listp2 sublhs))
             (bindings-alistp
              (mv-nth 1 (rp-match-lhs-subterms subterms
                                               sublhs context acc-bindings))))
    :flag rp-match-lhs-subterms))

(defthm-rp-match-lhs
  (defthm alistp-rp-match-lhs
    (implies (and (alistp acc-bindings))
             (alistp (mv-nth 1 (rp-match-lhs term rule-lhs context
                                             acc-bindings))))
    :flag rp-match-lhs)
  (defthm alistp-rp-match-lhs-subterms
    (implies (and (alistp acc-bindings))
             (alistp
              (mv-nth 1 (rp-match-lhs-subterms subterms
                                               sublhs context acc-bindings))))
    :flag rp-match-lhs-subterms))

(local
 (defthm should-term-be-in-cons-lemma1
   (implies (should-term-be-in-cons rule-lhs term)
            (and (quotep term)
                 (consp term)
                 (consp (unquote term))
                 (case-match rule-lhs (('cons & &) t)
                   (& nil))))
   :hints (("Goal" :in-theory (enable should-term-be-in-cons)))))

(local
 (defthm is-snyp-props
   (implies (is-synp term)
            (case-match term (('synp & & &) t)
              (& nil)))))

(defmacro bindings-from (x)
  `(mv-nth 1 ,x))

#|(local
 (defthm bindings-from-lemma
   (and (equal (mv-nth 1 (rp-match-lhs-subterms a b c d))
               (bindings-from (rp-match-lhs-subterms a b c d)))
        (equal (mv-nth 1 (rp-match-lhs a b c d))
               (bindings-from (rp-match-lhs a b c d))))
   :hints (("Goal" :in-theory (enable bindings-from)))))||#

(defmacro bindings-valid (x)
  `(mv-nth 2 ,x))

#|(local
 (defthm bindings-valid-lemma
   (and (equal (mv-nth 2 (rp-match-lhs-subterms a b c d))
               (bindings-valid (rp-match-lhs-subterms a b c d)))
        (equal (mv-nth 2 (rp-match-lhs a b c d))
               (bindings-valid (rp-match-lhs a b c d))))
   :hints (("Goal" :in-theory (enable bindings-valid)))))||#

(defmacro rp-context-from (x)
  `(mv-nth 0 ,x))

#|(local
 (defthm rp-context-from-lemma
   (and (equal (mv-nth 0 (rp-match-lhs-subterms a b c d))
               (rp-context-from (rp-match-lhs-subterms a b c d)))
        (equal (mv-nth 0 (rp-match-lhs a b c d))
               (rp-context-from (rp-match-lhs a b c d))))
   :hints (("Goal" :in-theory (enable rp-context-from)))))||#

#|(encapsulate
  nil

  (skip-proofs
   (defthm-rp-match-lhs
     (defthm rp-match-lhs-binds-all
       (implies
        (and (pseudo-termp2 term)
             (pseudo-termp2 rule-lhs)
             (bindings-alistp acc-bindings)
             (equal
              res-bindings
              (bindings-from
               (rp-match-lhs term rule-lhs context acc-bindings)))
             (bindings-valid
              (rp-match-lhs term rule-lhs context acc-bindings)))
        (all-vars-bound (get-vars2 rule-lhs) res-bindings))
       :flag rp-match-lhs)

     (defthm rp-match-lhs-subterms-binds-all
       (implies
        (and (pseudo-term-listp2 subterms)
             (pseudo-term-listp2 sublhs)
             (bindings-alistp acc-bindings)
             (equal
              res-bindings
              (bindings-from
               (rp-match-lhs-subterms subterms sublhs context acc-bindings)))
             (bindings-valid
              (rp-match-lhs-subterms subterms sublhs context acc-bindings)))
        (all-vars-bound (get-vars2-subterms sublhs)
                        res-bindings))
       :flag rp-match-lhs-subterms)
     :hints (("Goal"
              :in-theory (e/d #|(bindings-from bindings-valid)||#
                          #|(bindings-from-lemma
                          bindings-valid-lemma)||#))))))||#

;;;;;;;;;;;;;;;;;;;

(encapsulate
  nil

  (local
   (include-book "std/lists/top" :dir :system))

  (local
   (defthm lemma1-2
     (implies (and (subsetp context (context-from-rp term context))
                   (subsetp (context-from-rp term context) c))
              (subsetp context c))
     :hints (("goal"
              :in-theory (disable acl2::subsetp-trans2)
              :use ((:instance acl2::subsetp-trans2
                               (acl2::x context)
                               (acl2::y (context-from-rp term context))
                               (acl2::z c)))))))

  (local
   (defthm stupid
     (implies
      (and
       (subsetp-equal
        (context-from-rp term context)
        (mv-nth 0
                (rp-match-lhs-subterms (cdr (put-term-in-cons (ex-from-rp term)))
                                       (cdr rule-lhs)
                                       (context-from-rp term context)
                                       acc-bindings))))
      (subsetp-equal
       context
       (mv-nth 0
               (rp-match-lhs-subterms (cdr (put-term-in-cons (ex-from-rp term)))
                                      (cdr rule-lhs)
                                      (context-from-rp term context)
                                      acc-bindings))))
     :instructions (:promote (:rewrite lemma1-2) :s :s)))

  (local
   (defthm  stupid-2
     (implies
      (and
       (subsetp-equal
        (context-from-rp term context)
        (mv-nth 0
                (rp-match-lhs-subterms (cdr (ex-from-rp term))
                                       (cdr rule-lhs)
                                       (context-from-rp term context)
                                       acc-bindings))))
      (subsetp-equal
       context
       (mv-nth 0
               (rp-match-lhs-subterms (cdr (ex-from-rp term))
                                      (cdr rule-lhs)
                                      (context-from-rp term context)
                                      acc-bindings))))
     :instructions (:promote (:rewrite lemma1-2) :s :s)))

  (defthm-rp-match-lhs
    (defthm rp-match-lhs-subsetp-context
      (subsetp context
               (rp-context-from
                (rp-match-lhs term rule-lhs context acc-bindings)))
      :flag rp-match-lhs)

    (defthm rp-match-lhs-subterms-subsetp-context
      (subsetp context
               (rp-context-from
                (rp-match-lhs-subterms subterms sublhs context acc-bindings)))
      :flag rp-match-lhs-subterms)
    :hints (("Goal"
             :in-theory (e/d ()
                             ((:META ACL2::MV-NTH-CONS-META)
                              car-cons cdr-cons endp))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(encapsulate
  nil

  (defthm valid-sc-put-term-in-cons
    (implies (and (should-term-be-in-cons rule-lhs term))
             (valid-sc (put-term-in-cons term) a))
    :hints (("Goal"
             :in-theory (e/d (should-term-be-in-cons
                              put-term-in-cons) ()))))

  (local
   (defthm lemma1
     (implies (and (valid-sc term a)
                   (consp term)
                   (not (equal (car term) 'quote))
                   (not (is-rp term))
                   (not (equal (car term) 'if)))
              (valid-sc-subterms (cdr term) a))
     :hints (("Goal"
              :expand ((valid-sc term a)
                       (VALID-SC-SUBTERMS (CDR TERM) A)
                       (VALID-SC-SUBTERMS (CDDR TERM) A)
                       (VALID-SC-SUBTERMS (CDDDR TERM) A))
              :in-theory (e/d (is-if) ())))))

  (local
   (defthm lemma2
     (NOT (IS-RP (EX-FROM-RP TERM)))
     :hints (("Goal"
              :in-theory (e/d (is-rp ex-from-rp) ())))))

  (local
   (defthm lemma3
     (NOT (EQUAL (CAR (PUT-TERM-IN-CONS (EX-FROM-RP TERM)))
                 'QUOTE))
     :hints (("Goal"
              :in-theory (e/d (put-term-in-cons) ())))))

  (local
   (defthm lemma4
     (NOT (IS-RP (PUT-TERM-IN-CONS (EX-FROM-RP TERM))))
     :hints (("Goal"
              :in-theory (e/d (is-rp
                               put-term-in-cons) ())))))

  (local
   (defthm lemma5
     (NOT (EQUAL (CAR (PUT-TERM-IN-CONS (EX-FROM-RP TERM)))
                 'IF))
     :hints (("Goal"
              :in-theory (e/d (put-term-in-cons) ())))))

  (defthm-rp-match-lhs
    (defthm rp-match-lhs-returns-valid-sc-bindings
      (implies (and (valid-sc term a)
                    (not (include-fnc rule-lhs 'if))
                    (valid-sc-bindings acc-bindings a)
                    (mv-nth 2 (rp-match-lhs term
                                            rule-lhs
                                            context
                                            acc-bindings)))
               (valid-sc-bindings
                (mv-nth 1 (rp-match-lhs term
                                        rule-lhs
                                        context
                                        acc-bindings))
                a))
      :flag rp-match-lhs)

    (defthm rp-match-lhs-returns-valid-sc-bindings-subterms
      (implies (and (valid-sc-subterms subterms a)
                    (not (include-fnc-subterms sublhs 'if))
                    (valid-sc-bindings acc-bindings a)
                    (mv-nth 2 (rp-match-lhs-subterms
                               subterms
                               sublhs
                               context
                               acc-bindings)))
               (valid-sc-bindings
                (mv-nth 1 (rp-match-lhs-subterms
                           subterms
                           sublhs
                           context
                           acc-bindings))
                a))
      :flag rp-match-lhs-subterms)))

(local
 (in-theory (disable context-syntaxp)))

(defthm return-val-of-rp-rw-rule-aux-context
  (implies (and (context-syntaxp context)
                (rp-syntaxp term)
                (rule-list-syntaxp rules-for-term)
                (all-falist-consistent term)
                (pseudo-termp2 term))
           (context-syntaxp (mv-nth 3 (rp-rw-rule-aux term rules-for-term
                                                      context iff-flg)))))

(defthm return-val-of-rp-rw-rule-aux-bindings
  (implies (and (rule-list-syntaxp rules-for-term)
                (pseudo-termp2 term))
           (bindings-alistp (mv-nth 2 (rp-rw-rule-aux term rules-for-term
                                                      context iff-flg)))))

(defthm return-val-of-rp-rw-rule-aux-bindings-alistp
  (alistp (mv-nth 2 (rp-rw-rule-aux term rules-for-term
                                    context iff-flg))))

(defthm return-val-of-rp-rw-rule-aux-valid-rule
  (implies (and (rule-list-syntaxp rules-for-term)
                (mv-nth 0 (rp-rw-rule-aux term rules-for-term context iff-flg)))
           (rule-syntaxp (mv-nth 0 (rp-rw-rule-aux term rules-for-term
                                                   context iff-flg))))
  :hints (("Goal"
           :in-theory (disable (:DEFINITION LEN)
                               (:REWRITE SHOULD-TERM-BE-IN-CONS-LEMMA1)
                               (:REWRITE RP-EQUAL2-BINDINGS-1TO1-CONSP)
                               (:REWRITE SHOULD-TERM-BE-IN-CONS-LEMMA4)
                               (:REWRITE DEFAULT-<-1)
                               (:DEFINITION SYMBOL-LISTP)
                               (:TYPE-PRESCRIPTION INCLUDE-FNC)
                               (:REWRITE SHOULD-TERM-BE-IN-CONS-LEMMA2)
                               (:TYPE-PRESCRIPTION PSEUDO-TERMP2)
                               (:TYPE-PRESCRIPTION SUBSETP-EQUAL)
                               (:REWRITE
                                PSEUDO-TERM-LISTP2-IS-TRUE-LISTP)
                               (:DEFINITION RP-MATCH-LHS)
                               (:DEFINITION RP-DOES-LHS-MATCH)
                               (:META ACL2::MV-NTH-CONS-META)
                               (:TYPE-PRESCRIPTION RP-DOES-LHS-MATCH)
                               (:TYPE-PRESCRIPTION PUT-TERM-IN-CONS$INLINE)
                               (:DEFINITION TRUE-LISTP)
                               (:DEFINITION GET-VARS)
                               (:DEFINITION GET-VARS1)
                               RULE-SYNTAXP
                               VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP
                               (:DEFINITION MEMBER-EQUAL)
                               (:TYPE-PRESCRIPTION MEMBER-EQUAL)
                               (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP2)
                               (:TYPE-PRESCRIPTION SHOULD-TERM-BE-IN-CONS$INLINE)))))

(defthm return-val-of-rp-rw-rule-aux-rest-rules
  (implies (rule-list-syntaxp rules-for-term)
           (rule-list-syntaxp (mv-nth 1
                                      (rp-rw-rule-aux term rules-for-term
                                                      context iff-flg))))
  :hints (("goal" :in-theory (e/d (rp-rw-rule-aux)
                                  (rule-syntaxp
                                   VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP
                                   VALID-RULESP)))))

(encapsulate
  nil

  (local
   (defthm lemma1
     (implies (rule-syntaxp rule)
              (not (include-fnc (rp-lhs rule) 'if)))
     :hints (("Goal"
              :in-theory (e/d (rule-syntaxp) ())))))

  (local
   (defthm lemma2
     (implies (and (consp rules-for-term)
                   (rule-list-syntaxp rules-for-term))
              (NOT (INCLUDE-FNC (RP-LHS (CAR RULES-FOR-TERM))
                                'IF)))
     :hints (("Goal"
              :in-theory (e/d (rule-list-syntaxp) ())))))

  (defthm valid-sc-bindings-rp-rw-rule-aux
    (mv-let (rule rules-rest bindings rp-context)
      (rp-rw-rule-aux term rules-for-term context iff-flg)
      (declare (ignorable rules-rest rp-context))
      (implies (and rule
                    (rule-list-syntaxp rules-for-term)
                    (valid-sc term a))
               (valid-sc-bindings bindings a)))
    :hints (("Goal"
             :in-theory (e/d (RP-MATCH-LHS-RETURNS-VALID-SC-BINDINGS
                              rp-rw-rule-aux)
                             (VALID-SC-BINDINGS

                              RP-DOES-LHS-MATCH
                              rule-syntaxp))))))

(local
 (defthm consp-rule-syntaxp
   ;; not used !!!!!!!!!!!!!!!!!!!
   (implies (rule-syntaxp (mv-nth 0 (rp-rw-rule-aux term rules-for-term
                                                    context iff-flg)))
            (consp (mv-nth 0 (rp-rw-rule-aux term rules-for-term
                                             context iff-flg))))
   :hints (("Goal"
            :in-theory (e/d (rule-syntaxp)
                            (rp-rw-rule-aux))))))

(encapsulate
  nil

  (local
   (defthmd lemma0
     (implies (falist-consistent term)
              (quotep (cadr term)))))

  (local
   (defthm lemma1
     (implies (and (all-falist-consistent term)
                   (not (equal (car term) 'quote)))
              (all-falist-consistent-lst (cdr term)))
     :hints (("Goal"
              :use lemma0
              :expand ((all-falist-consistent term)
                       (ALL-FALIST-CONSISTENT (CADR TERM))
                       (ALL-FALIST-CONSISTENT-LST (CDR TERM)))
              :in-theory (e/d (all-falist-consistent-lst
                               is-falist
                               all-falist-consistent)
                              (FALIST-CONSISTENT
                               ))))))

  (defthm-rp-match-lhs
    (defthm valid-falist-rp-match-lhs
      (implies (and (all-falist-consistent-bindings acc-bindings)
                    (all-falist-consistent term))
               (all-falist-consistent-bindings
                (mv-nth 1
                        (rp-match-lhs term rule-lhs context acc-bindings))))
      :flag rp-match-lhs)
    (defthm valid-falist-rp-match-lhs-subterms
      (implies (and (all-falist-consistent-bindings acc-bindings)
                    (all-falist-consistent-lst subterms))
               (all-falist-consistent-bindings
                (mv-nth 1
                        (rp-match-lhs-subterms subterms
                                               sublhs context acc-bindings))))
      :flag rp-match-lhs-subterms))

  (defthm valid-falist-rp-rw-rule-aux
    (implies (all-falist-consistent term)
             (all-falist-consistent-bindings
              (mv-nth 2 (rp-rw-rule-aux term rules-for-term
                                        context iff-flg))))
    :hints (("Goal" :in-theory (e/d nil (ALL-FALIST-CONSISTENT-BINDINGS
                                         all-falist-consistent))))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(encapsulate
  nil

  (defthm-rp-match-lhs
    (defthm rp-syntaxp-bindings-rp-match-lhs
      (implies (and (rp-syntaxp-bindings acc-bindings)
                    (rp-syntaxp term)
                    (not (include-fnc rule-lhs 'rp)))
               (rp-syntaxp-bindings
                (mv-nth 1
                        (rp-match-lhs term rule-lhs context acc-bindings))))
      :flag rp-match-lhs)
    (defthm rp-syntaxp-bindings-rp-match-lhs-subterms
      (implies (and (rp-syntaxp-bindings acc-bindings)
                    (rp-syntaxp-lst subterms)
                    (not (include-fnc-subterms sublhs 'rp)))
               (rp-syntaxp-bindings
                (mv-nth 1
                        (rp-match-lhs-subterms subterms sublhs
                                               context acc-bindings))))
      :flag rp-match-lhs-subterms))

  (defthm rp-syntaxp-bindings-rp-rw-rule-aux
    (implies (and (rp-syntaxp term)
                  (rule-list-syntaxp rules-for-term))
             (rp-syntaxp-bindings
              (mv-nth 2 (rp-rw-rule-aux term rules-for-term
                                        context iff-flg))))
    :hints (("Goal" :in-theory (e/d (rp-syntaxp-bindings-rp-match-lhs
                                     rp-rw-rule-aux
                                     valid-rulesp)
                                    (rp-syntaxp-bindings
                                     VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP))))))

(defthm rp-rw-rule-aux-does-not-return-rule-with-iff-flg-when-iff-flg=nil
  (implies
   (mv-nth 0
           (rp-rw-rule-aux term rules-for-term context nil))
   (not (rp-iff-flag
         (mv-nth 0
                 (rp-rw-rule-aux term rules-for-term context nil)))))
  :hints (("goal"
           :in-theory (e/d (rp-rw-rule-aux) (rp-match-lhs
                                             rp-does-lhs-match
                                             rp-iff-flag)))))

(encapsulate
  nil

  (defthm valid-sc-subterms-cdr-put-term-in-cons
    (implies (should-term-be-in-cons rule-lhs term)
             (valid-sc-subterms
              (cdr (put-term-in-cons term)) a))
    :hints (("Goal"
             :in-theory (e/d (should-term-be-in-cons
                              put-term-in-cons) ()))))

  (defthm valid-sc-subterms-context-from-rp
    (implies (and (valid-sc term a)
                  (valid-sc-subterms context a))
             (VALID-SC-SUBTERMS (CONTEXT-FROM-RP TERM CONTEXT)
                                A))
    :hints (("Goal"
             :in-theory (e/d (is-rp
                              ex-from-rp
                              context-from-rp)
                             (EX-FROM-RP-LEMMA1)))))

  (local
   (defthm lemma1
     (implies (and (not (equal (car term) 'if))
                   (not (equal (car term) 'rp))
                   (not (equal (car term) 'quote))
                   (valid-sc term a))
              (valid-sc-subterms (cdr term) a))
     :hints (("Goal"
              :in-theory (e/d (is-if
                               is-rp) ())))))
  (local
   (defthm lemma2
     (implies (rp-syntaxp term)
              (NOT (EQUAL (CAR (EX-FROM-RP TERM)) 'RP)))
     :hints (("Goal"
              :in-theory (e/d (is-rp ex-from-rp) ())))))

  (defthm-rp-match-lhs
    (defthm valid-sc-rp-context-from-rp-match-lhs
      (implies
       (and (valid-sc term a)
            (rp-syntaxp term)
            (not (include-fnc rule-lhs 'if))
            (valid-sc-subterms context a))
       (valid-sc-subterms
        (mv-nth 0 (rp-match-lhs term rule-lhs
                                context acc-bindings))
        a))
      :flag rp-match-lhs)
    (defthm valid-sc-rp-context-from-rp-match-lhs-subterms
      (implies
       (and (valid-sc-subterms subterms a)
            (rp-syntaxp-lst subterms)
            (not (include-fnc-subterms sublhs 'if))
            (valid-sc-subterms context a))
       (valid-sc-subterms
        (mv-nth 0 (rp-match-lhs-subterms subterms sublhs
                                         context acc-bindings))
        a))
      :flag rp-match-lhs-subterms)
    :hints (("Goal"
             :in-theory (e/d () ()))))

  (defthm valid-sc-subterms-of-context-rp-rw-rule-aux
    ;; valid-sc for the context returned
    (implies (and (valid-sc term a)
                  (valid-sc-subterms context a)
                  (rule-list-syntaxp rules-for-term)
                  (rp-syntaxp term))
             (valid-sc-subterms
              (mv-nth 3
                      (rp-rw-rule-aux term rules-for-term context iff-flg))
              a))
    :hints (("Goal"
             :in-theory (e/d () (;RULE-SYNTAXP
                                 VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP ))))))

(encapsulate
  nil

  (local
   (defthm lemma1
     (implies (and (valid-sc term a)
                   (is-rp term))
              (valid-sc (caddr term) a))
     :hints (("Goal"
              :in-theory (e/d (is-rp is-if context-from-rp
                                     ex-from-rp) ())))))

  (defthm eval-and-all-context-from-rp
    (implies (and (valid-sc term a)
                  (rp-syntaxp term)
                  (eval-and-all context a))
             (eval-and-all (context-from-rp term context) a))
    :hints (("Goal"
             :in-theory (e/d (eval-and-all
                              is-rp
                              context-from-rp)
                             (ex-from-rp-lemma1)))))

  (local
   (defthm lemma3
     (implies (and (not (equal (car term) 'if))
                   (not (equal (car term) 'rp))
                   (not (equal (car term) 'quote))
                   (valid-sc term a))
              (valid-sc-subterms (cdr term) a))
     :hints (("Goal"
              :in-theory (e/d (is-if
                               is-rp) ())))))

  (local
   (defthm lemma4
     (implies (rp-syntaxp term)
              (NOT (EQUAL (CAR (EX-FROM-RP TERM)) 'RP)))
     :hints (("Goal"
              :in-theory (e/d (is-rp ex-from-rp) ())))))

  (defthm-rp-match-lhs

    (defthm rp-match-lhs-returns-valid-context
      (implies
       (and (pseudo-termp2 term)
            (rp-syntaxp term)
            (pseudo-termp2 rule-lhs)
            (eval-and-all context a)
            (valid-sc term a)
            (not (include-fnc rule-lhs 'if)))
       (eval-and-all
        (rp-context-from (rp-match-lhs term rule-lhs context acc-bindings))
        a))
      :flag rp-match-lhs)

    (defthm rp-match-lhs-subterms-returns-valid-context
      (implies
       (and (pseudo-term-listp2 subterms)
            (pseudo-term-listp2 sublhs)
            (rp-syntaxp-lst subterms)
            (eval-and-all context a)
            (valid-sc-subterms subterms a)
            (not (include-fnc-subterms sublhs 'if)))
       (eval-and-all (rp-context-from
                      (rp-match-lhs-subterms subterms sublhs context acc-bindings))
                     a))
      :flag rp-match-lhs-subterms))

  (defthm rp-rw-rule-aux-returns-valid-context
    (implies (and (pseudo-termp2 term)
                  (rp-syntaxp term)
                  (rule-list-syntaxp rules-for-term)
                  (eval-and-all context a)
                  (valid-sc term a))
             (eval-and-all
              (mv-nth 3 (rp-rw-rule-aux term rules-for-term context iff-flg)) a))
    :hints (("Goal" :in-theory (e/d (rule-list-syntaxp
                                     rule-syntaxp-implies)
                                    (rp-iff-flag
                                     VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP
                                     rp-lhs
                                     rp-does-lhs-match
                                     rp-match-lhs))))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defthm SHOULD-TERM-BE-IN-CONS-implies
  (implies (should-term-be-in-cons rule-lhs term)
           (AND (CASE-MATCH rule-lhs (('CONS & &) T)
                  (& NIL))
                (QUOTEP TERM)
                (CONSP (UNQUOTE TERM))
                (IS-CONS RULE-LHS)))
  :hints (("Goal"
           :in-theory (e/d (should-term-be-in-cons
                            is-cons
                            is-quoted-pair) ())))
  :rule-classes :forward-chaining)

(encapsulate
  nil

  (defthm-all-vars-bound
    (defthm all-vars-bound-of-bigger
      (implies (all-vars-bound term acc-bindings)
               (all-vars-bound term (cons (cons x y)
                                          acc-bindings)))
      :flag all-vars-bound)
    (defthm all-vars-bound-of-bigger-subterms
      (implies (all-vars-bound-subterms subterms acc-bindings)
               (all-vars-bound-subterms subterms (cons (cons x y)
                                                       acc-bindings)))
      :flag all-vars-bound-subterms))

  (defthm-rp-match-lhs
    (defthm RP-MATCH-LHS-ALL-VARS-BOUND-lemma
      (implies
       (and (all-vars-bound RULE-LHS1 ACC-BINDINGS)
            (MV-NTH 2
                    (RP-MATCH-LHS term
                                  rule-lhs
                                  CONTEXT ACC-BINDINGS)))
       (ALL-VARS-BOUND RULE-LHS1
                       (MV-NTH 1
                               (RP-MATCH-LHS term
                                             rule-lhs
                                             CONTEXT ACC-BINDINGS))))
      :flag rp-match-lhs)

    (defthm RP-MATCH-LHS-ALL-VARS-BOUND-subterms-lemma
      (implies
       (and (all-vars-bound RULE-LHS1 ACC-BINDINGS)
            (MV-NTH 2
                    (rp-match-lhs-subterms
                     subterms
                     sublhs
                     CONTEXT ACC-BINDINGS)))
       (ALL-VARS-BOUND
        RULE-LHS1
        (MV-NTH 1
                (rp-match-lhs-subterms subterms
                                       sublhs
                                       CONTEXT ACC-BINDINGS))))
      :flag rp-match-lhs-subterms))

  (defthm-rp-match-lhs
    (defthm rp-match-lhs-binds-all
      (implies (and (mv-nth 2 (rp-match-lhs term rule-lhs
                                            context acc-bindings)))
               (all-vars-bound
                rule-lhs
                (mv-nth 1 (rp-match-lhs term rule-lhs
                                        context acc-bindings))))
      :flag rp-match-lhs)
    (defthm rp-match-lhs-binds-all-subterms
      (implies (and (mv-nth 2 (rp-match-lhs-subterms subterms
                                                     sublhs
                                                     context acc-bindings)))
               (all-vars-bound-subterms
                sublhs
                (mv-nth 1 (rp-match-lhs-subterms subterms sublhs
                                                 context acc-bindings))))
      :flag rp-match-lhs-subterms)))

(encapsulate
  nil
  (local
   (in-theory (e/d (bind-bindings-aux
                    put-term-in-cons) ())))

  (local
   (defthm lemma1
     (implies (EQUAL (CAR (EX-FROM-RP TERM)) 'QUOTE)
              (EQUAL (CADR (EX-FROM-RP TERM))
                     (RP-EVL TERM A)))
     :hints (("Goal"
              :in-theory (e/d (is-rp
                               ex-from-rp)
                              (EX-FROM-RP-LEMMA1))))))

  (local
   (defthm lemma2
     (implies (should-term-be-in-cons rule-lhs (EX-FROM-RP TERM))
              (EQUAL (CAR (EX-FROM-RP TERM)) 'QUOTE))
     :rule-classes :forward-chaining
     :hints (("Goal"
              :in-theory (e/d (should-term-be-in-cons
                               is-quoted-pair
                               quotep)
                              (ex-from-rp))))))

  (local
   (defthmd lemma3-lemma
     (equal (rp-evl term a)
            (rp-evl (ex-from-rp term) a))
     :hints (("Goal"
              :in-theory '(evl-of-extract-from-rp)))))

  (local
   (defthm lemma3
     (implies (and (EQUAL (CAR (EX-FROM-RP TERM))
                          (CAR RULE-LHS))
                   (consp rule-lhs)
                   (consp (EX-FROM-RP TERM))
                   (NOT (EQUAL (CAR RULE-LHS) 'QUOTE))
                   (equal (rp-evl-lst (cdr rule-lhs) a1)
                          (rp-evl-lst (cdr (EX-FROM-RP TERM)) a2)))
              (equal (equal (rp-evl rule-lhs a1)
                            (rp-evl term a2))
                     t))
     :hints (("Goal"
; :do-not '(preprocess)
              :use (:instance lemma3-lemma
                              (a a2))
              :in-theory (e/d (rp-evl-of-fncall-args)
                              (EVL-OF-EXTRACT-FROM-RP
                               ex-from-rp))))))

  (local
   (defthm lemma4
     (implies (SHOULD-TERM-BE-IN-CONS RULE-LHS (EX-FROM-RP TERM))
              (CONSP (RP-EVL TERM A)))
     :hints (("Goal"
              :use (:instance lemma3-lemma)
              :in-theory (e/d (should-term-be-in-cons)
                              (EVL-OF-EXTRACT-FROM-RP))))))

  (defthm-all-vars-bound
    (defthm all-vars-bound-BIND-BINDINGS-aux
      (implies (all-vars-bound term acc-bindings)
               (all-vars-bound term
                               (BIND-BINDINGS-AUX ACC-BINDINGS A)))
      :flag all-vars-bound)
    (defthm all-vars-bound-BIND-BINDINGS-aux-subterms
      (implies (all-vars-bound-subterms subterms acc-bindings)
               (all-vars-bound-subterms subterms
                                        (BIND-BINDINGS-AUX ACC-BINDINGS A)))
      :flag all-vars-bound-subterms))

  (defthm-all-vars-bound
    (defthm all-vars-bound-BIND-BINDINGS
      (implies (all-vars-bound term acc-bindings)
               (all-vars-bound term
                               (BIND-BINDINGS ACC-BINDINGS A)))
      :flag all-vars-bound)
    (defthm all-vars-bound-BIND-BINDINGS-subterms
      (implies (all-vars-bound-subterms subterms acc-bindings)
               (all-vars-bound-subterms subterms
                                        (BIND-BINDINGS ACC-BINDINGS A)))
      :flag all-vars-bound-subterms))

  (local
   (defthm lemma101
     (implies (ALISTP ACC-BINDINGS)
              (equal (CONSP
                      (ASSOC-EQUAL RULE-LHS
                                   (BIND-BINDINGS-AUX ACC-BINDINGS A)))
                     (CONSP (ASSOC-EQUAL RULE-LHS ACC-BINDINGS))))))

  (local
   (defthm-all-vars-bound
     (defthm lemma5-lemma1-term
       (implies
        (and
         (not (consp (assoc-equal rule-lhs acc-bindings)))
         #|(equal (rp-evl term
         (append acc-bindings a))
         rp-evl-term1-a)||#
         (all-vars-bound term acc-bindings)
         (pseudo-termp2 term)
         (symbolp rule-lhs)
         rule-lhs)
        (equal
         (equal
          (rp-evl term
                  (cons (cons rule-lhs val)
                        (append acc-bindings a)))
          (rp-evl term
                  (append acc-bindings a)))
         t))
       :flag all-vars-bound)
     (defthm lemma5-lemma1-subterms
       (implies
        (and
         (not (consp (assoc-equal rule-lhs acc-bindings)))
         #|(equal (rp-evl-lst subterms
         (append acc-bindings a))
         rp-evl-term1-a-subterms)||#
         (all-vars-bound-subterms subterms acc-bindings)
         (pseudo-term-listp2 subterms)
         (symbolp rule-lhs)
         rule-lhs)
        (equal
         (equal
          (rp-evl-lst subterms
                      (cons (cons rule-lhs val)
                            (append acc-bindings a)))
          (rp-evl-lst subterms
                      (append acc-bindings a)))
         t))
       :flag all-vars-bound-subterms)
     :hints (("Goal"
              :in-theory (e/d (rp-evl-of-fncall-args) ())))))

  (defthm lemma5-lemma1
    (implies
     (and
      (not (consp (assoc-equal rule-lhs acc-bindings)))
      (equal (rp-evl term
                     (append acc-bindings a))
             rp-evl-term1-a)
      (all-vars-bound term acc-bindings)
      (pseudo-termp2 term)
      (symbolp rule-lhs)
      rule-lhs)
     (equal
      (equal
       (rp-evl term
               (cons (cons rule-lhs val)
                     (append acc-bindings a)))
       rp-evl-term1-a)
      t)))

  #|(skip-proofs
  (local
  (defthm lemma5-lemma1
  (IMPLIES (AND
  (NOT (CONSP (ASSOC-EQUAL RULE-LHS ACC-BINDINGS)))
  (EQUAL
  (RP-EVL term (APPEND (BIND-BINDINGS-AUX ACC-BINDINGS A)
  A))
  rp-evl-term1-a)
  (ALL-VARS-BOUND TERM ACC-BINDINGS)
  (PSEUDO-TERMP2 TERM)
  (SYMBOLP RULE-LHS)
  RULE-LHS)
  (equal
  (EQUAL
  (RP-EVL TERM
  (CONS (CONS RULE-LHS val)
  (APPEND (BIND-BINDINGS-AUX ACC-BINDINGS A)
  A)))
  rp-evl-term1-a)
  t))
  :otf-flg t
  :hints (("Goal"
  ;;:cases ((equal rule-lhs1 rule-lhs))
  :in-theory (e/d () ()))))))||#

  (local
   (defthm-rp-match-lhs
     (defthm lemma5-term
       (implies
        (and (equal (rp-evl rule-lhs1 (bind-bindings acc-bindings a))
                    (rp-evl term1 a))
             (all-vars-bound rule-lhs1 acc-bindings)
             (pseudo-termp2 rule-lhs1)
             (pseudo-termp2 term)
             (pseudo-termp2 rule-lhs)
             (bindings-alistp acc-bindings)
             (mv-nth 2 (rp-match-lhs term
                                     rule-lhs
                                     context
                                     acc-bindings)))
        (equal (rp-evl
                rule-lhs1
                (bind-bindings
                 (mv-nth 1 (rp-match-lhs term
                                         rule-lhs
                                         context
                                         acc-bindings))
                 a))
               (rp-evl term1 a)))
       :flag rp-match-lhs)

     (defthm lemma5-subterms
       (implies
        (and (equal (rp-evl rule-lhs1 (bind-bindings acc-bindings a))
                    (rp-evl term1 a))
             (bindings-alistp acc-bindings)
             (pseudo-termp2 rule-lhs1)
             (pseudo-term-listp2 subterms)
             (pseudo-term-listp2 sublhs)
             (all-vars-bound rule-lhs1 acc-bindings)
             (mv-nth 2 (rp-match-lhs-subterms subterms
                                              sublhs
                                              context
                                              acc-bindings)))
        (equal (rp-evl
                rule-lhs1
                (bind-bindings
                 (mv-nth 1 (rp-match-lhs-subterms subterms
                                                  sublhs
                                                  context
                                                  acc-bindings))
                 a))
               (rp-evl term1 a)))
       :flag rp-match-lhs-subterms)))

  (defthm-rp-match-lhs

    (defthm rp-match-lhs-returns-valid-bindings-lemma
      (mv-let (rp-context bindings valid-bindings)
        (rp-match-lhs term rule-lhs context acc-bindings)
        (declare (ignorable rp-context))
        (implies (and valid-bindings
                      (bindings-alistp acc-bindings)
                      (not (include-fnc rule-lhs 'rp))
                      (alistp a)
                      (not (include-fnc rule-lhs 'synp))
                      (pseudo-termp2 rule-lhs)
                      (pseudo-termp2 term))
                 (equal (rp-evl (rp-apply-bindings rule-lhs bindings) a)
                        (rp-evl term a))))
      :flag rp-match-lhs)

    (defthm rp-match-lhs-subterms-returns-valid-bindings-lemma
      (mv-let (rp-context bindings valid-bindings)
        (rp-match-lhs-subterms subterms sublhs context acc-bindings)
        (declare (ignorable rp-context))
        (implies (and valid-bindings
                      (alistp a)
                      (not (include-fnc-subterms sublhs 'rp))
                      (not (include-fnc-subterms sublhs 'synp))
                      (bindings-alistp acc-bindings)
                      (pseudo-term-listp2 sublhs)
                      (pseudo-term-listp2 subterms))
                 (equal (rp-evl-lst (rp-apply-bindings-subterms sublhs
                                                                bindings)
                                    a)
                        (rp-evl-lst subterms a))))
      :flag rp-match-lhs-subterms)))

#|(local
 (include-book "measure-lemmas"))||#
#|
(local
 (mutual-recursion
  (defun
      rp-induct-fnc (rule-lhs term bindings)
    (declare (xargs :mode :logic
                    :measure (+ (cons-count term)
                                (cons-count rule-lhs)))
             (ignorable term))
    (cond
     ((or (atom term)
          (acl2::variablep rule-lhs))
      (b*
          ((binding (assoc-eq rule-lhs bindings))
           (res
            (if (consp binding)
                (rp-val binding)
              rule-lhs))
           (res (if nil (list 'quote res) res)))
        res))
     ((and (quotep rule-lhs)
           (quotep term))
      rule-lhs)
     ((and (is-synp rule-lhs)
           (is-synp term))
      ''t)
     ((and (consp rule-lhs) (atom (car rule-lhs))
           (consp term) (atom (car term)))
      (cons-with-hint (car rule-lhs)
                      (rp-induct-fnc-subterms (cdr rule-lhs)
                                              (cdr term)
                                              bindings)
                      rule-lhs))
     (t nil)))
  (defun
      rp-induct-fnc-subterms (sublhs subterms bindings)
    (declare (xargs :mode :logic
                    :measure (+ (cons-count subterms)
                                (cons-count sublhs)))
             (ignorable subterms))
    (if (and (atom sublhs)
             (atom subterms))
        sublhs
      (cons-with-hint (rp-induct-fnc (car sublhs)
                                     (car subterms)
                                     bindings)
                      (rp-induct-fnc-subterms (cdr sublhs)
                                              (cdr subterms)
                                              bindings)
                      sublhs)))))

(local
 (make-flag rp-induct-fnc :defthm-macro-name defthm-rp-induct-fnc))

(skip-proofs
 (local
  (defthm lemma1
    (implies (MV-NTH 2
                     (RP-MATCH-LHS-SUBTERMS SUBTERMS SUBLHS CONTEXT ACC-BINDINGS))
             (and (MV-NTH 2
                          (RP-MATCH-LHS (CAR SUBTERMS)
                                        (CAR sublhs)
                                        CONTEXT ACC-BINDINGS))
                  (MV-NTH 2
                          (RP-MATCH-LHS-SUBTERMS (CDR SUBTERMS)
                                                 (CDR SUBLHS)
                                                 CONTEXT ACC-BINDINGS)))))))

(skip-proofs
 (local
  (defthm lemma2
    (implies (MV-NTH 2
                     (RP-MATCH-LHS TERM RULE-LHS CONTEXT ACC-BINDINGS))
             (and (MV-NTH 2
                          (RP-MATCH-LHS-SUBTERMS (CDR TERM)
                                                 (CDR RULE-LHS)
                                                 CONTEXT ACC-BINDINGS))
                  (MV-NTH 2
                          (RP-MATCH-LHS-SUBTERMS (CaR TERM)
                                                 (CaR RULE-LHS)
                                                 CONTEXT ACC-BINDINGS))
                  )))))

(skip-proofs
 (local
  (defthm lemma3
    (implies (EQUAL
              (RP-EVL (RP-APPLY-BINDINGS (CAR SUBLHS)
                                         (MV-NTH 1
                                                 (RP-MATCH-LHS (CAR SUBTERMS)
                                                               (CAR SUBLHS)
                                                               CONTEXT ACC-BINDINGS)))
                      A)
              (RP-EVL (CAR SUBTERMS) A))
             (EQUAL
              (RP-EVL
               (RP-APPLY-BINDINGS
                (CAR SUBLHS)
                (MV-NTH 1
                        (RP-MATCH-LHS-SUBTERMS SUBTERMS SUBLHS CONTEXT ACC-BINDINGS)))
               A)
              (RP-EVL (CAR SUBTERMS) A))))))

(skip-proofs
 (local
  (defthm lemma4
    (implies
     (EQUAL
      (RP-EVL-LST (RP-APPLY-BINDINGS-SUBTERMS
                   (CDR SUBLHS)
                   (MV-NTH 1
                           (RP-MATCH-LHS-SUBTERMS (CDR SUBTERMS)
                                                  (CDR SUBLHS)
                                                  CONTEXT ACC-BINDINGS)))
                  A)
      (RP-EVL-LST (CDR SUBTERMS) A))
     (EQUAL
      (RP-EVL-LST
       (RP-APPLY-BINDINGS-SUBTERMS
        (CDR SUBLHS)
        (MV-NTH 1
                (RP-MATCH-LHS-SUBTERMS SUBTERMS SUBLHS CONTEXT ACC-BINDINGS)))
       A)
      (RP-EVL-LST (CDR SUBTERMS) A))))))

(local
 (defthm lemma5
   (implies (EQUAL (CAR (EX-FROM-RP TERM)) 'QUOTE)
            (EQUAL (CADR (EX-FROM-RP TERM))
                   (RP-EVL TERM A)))
   :hints (("Goal"
            :in-theory (e/d (is-rp ex-from-rp) (EX-FROM-RP-LEMMA1))))))

(local
 (in-theory (e/d (put-term-in-cons
                  rp-evl-constraint-0)
                 (rp-equal
                  RP-EVL-CONSTRAINT-1
                  rp-evl-of-rp-equal))))

(skip-proofs
 (local
  (defthm lemma6
    (implies (and (SYMBOLP TERM)
                  (pseudo-termp2 term2)
                  (RP-EQUAL TERM term2))
             (equal (EQUAL (CDR (ASSOC-EQUAL TERM A))
                           (RP-EVL term2 A))
                    t))
    :hints (("Goal"
             :use (:instance rp-evl-of-rp-equal
                             (term1 term)
                             (term2 term2))
             :in-theory (e/d () (rp-evl-of-rp-equal)))))))

(skip-proofs
 (defthm-rp-induct-fnc

   (defthm rp-match-lhs-returns-valid-bindings
     (mv-let (rp-context bindings valid-bindings)
       (rp-match-lhs term rule-lhs context acc-bindings)
       (declare (ignorable rp-context))
       (implies (and valid-bindings
                     (bindings-alistp acc-bindings)
                     (not (include-fnc rule-lhs 'rp))
                     (alistp a)
                     (not (include-fnc rule-lhs 'synp))
                     ;;(rp-does-lhs-match term rule-lhs)
                     (pseudo-termp2 rule-lhs)
                     (pseudo-termp2 term))
                (equal (rp-evl (rp-apply-bindings rule-lhs bindings) a)
                       (rp-evl term a))))
     :flag rp-induct-fnc)

   (defthm rp-match-lhs-subterms-returns-valid-bindings
     (mv-let (rp-context bindings valid-bindings)
       (rp-match-lhs-subterms subterms sublhs context acc-bindings)
       (declare (ignorable rp-context))
       (implies (and valid-bindings
                     (alistp a)
                     (not (include-fnc-subterms sublhs 'rp))
                     (not (include-fnc-subterms sublhs 'synp))
                     (bindings-alistp acc-bindings)
                     (pseudo-term-listp2 sublhs)
                     (pseudo-term-listp2 subterms))
                (equal (rp-evl-lst (rp-apply-bindings-subterms sublhs bindings) a)
                       (rp-evl-lst subterms a))
                #|(rp-equal2-subterms
                (rp-apply-bindings-subterms sublhs res-bindings)
                subterms)||#))
     :flag rp-induct-fnc-subterms)))||#

#|(skip-proofs
 (defthm-rp-match-lhs

   (defthm rp-match-lhs-returns-valid-bindings
     (mv-let (rp-context bindings valid-bindings)
       (rp-match-lhs term rule-lhs context acc-bindings)
       (declare (ignorable rp-context))
       (implies (and valid-bindings
                     (bindings-alistp acc-bindings)
                     (not (include-fnc rule-lhs 'rp))
                     (alistp a)
                     (not (include-fnc rule-lhs 'synp))
                     ;;(rp-does-lhs-match term rule-lhs)
                     (pseudo-termp2 rule-lhs)
                     (pseudo-termp2 term))
                (equal (rp-evl (rp-apply-bindings rule-lhs bindings) a)
                       (rp-evl term a))))
     :flag rp-match-lhs)

   (defthm rp-match-lhs-subterms-returns-valid-bindings
     (mv-let (rp-context bindings valid-bindings)
       (rp-match-lhs-subterms subterms sublhs context acc-bindings)
       (declare (ignorable rp-context))
       (implies (and valid-bindings
                     (alistp a)
                     (not (include-fnc-subterms sublhs 'rp))
                     (not (include-fnc-subterms sublhs 'synp))
                     (bindings-alistp acc-bindings)
                     (pseudo-term-listp2 sublhs)
                     (pseudo-term-listp2 subterms))
                (equal (rp-evl-lst (rp-apply-bindings-subterms sublhs bindings) a)
                       (rp-evl-lst subterms a))
                #|(rp-equal2-subterms
                (rp-apply-bindings-subterms sublhs res-bindings)
                subterms)||#))
     :flag rp-match-lhs-subterms)))||#

;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;

(encapsulate
  nil

  (defthm rp-rw-rule-aux-returns-valid-bindings
    (mv-let (rule rules-rest bindings rp-context)
      (rp-rw-rule-aux term rules-for-term context iff-flg)
      (declare (ignorable rules-rest rp-context))
      (implies (and rule
                    (alistp a)
                    (rule-list-syntaxp rules-for-term)
                    (pseudo-termp2 term))
               (equal (rp-evl (rp-apply-bindings (rp-lhs rule) bindings) a)
                      (rp-evl term a))
;(rp-equal2 (rp-apply-bindings (rp-lhs rule) bindings) term)
               ))
    :hints (("Goal"
             :induct (rp-rw-rule-aux term rules-for-term context iff-flg)
             :do-not-induct t
             :in-theory (e/d (rule-list-syntaxp
                              rule-syntaxp-implies)
                             (rp-iff-flag
                              rp-equal2-is-symmetric
                              no-free-variablep
                              VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP
                              SHOULD-TERM-BE-IN-CONS-LEMMA1
                              INCLUDE-FNC
                              rule-syntaxp
                              weak-custom-rewrite-rule-p
                              get-vars
                              rp-lhs
                              rp-does-lhs-match
                              rp-match-lhs)))))

  (defthm rp-rw-rule-aux-returns-valid-rulep
    (mv-let (rule rules-rest bindings rp-context)
      (rp-rw-rule-aux term rules-for-term context iff-flg)
      (declare (ignorable bindings rp-context))
      (implies (and rule
                    (valid-rulesp rules-for-term))
               (and (valid-rulep rule)
                    (valid-rulesp rules-rest))))
    :hints (("Goal" :in-theory (disable VALID-RULEP
                                        rp-does-lhs-match
                                        rp-match-lhs)))))