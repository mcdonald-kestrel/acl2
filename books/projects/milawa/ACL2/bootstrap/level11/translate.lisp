; Milawa - A Reflective Theorem Prover
; Copyright (C) 2005-2009 Kookamara LLC
;
; Contact:
;
;   Kookamara LLC
;   11410 Windermere Meadows
;   Austin, TX 78759, USA
;   http://www.kookamara.com/
;
; License: (An MIT/X11-style license)
;
;   Permission is hereby granted, free of charge, to any person obtaining a
;   copy of this software and associated documentation files (the "Software"),
;   to deal in the Software without restriction, including without limitation
;   the rights to use, copy, modify, merge, publish, distribute, sublicense,
;   and/or sell copies of the Software, and to permit persons to whom the
;   Software is furnished to do so, subject to the following conditions:
;
;   The above copyright notice and this permission notice shall be included in
;   all copies or substantial portions of the Software.
;
;   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;   DEALINGS IN THE SOFTWARE.
;
; Original author: Jared Davis <jared@kookamara.com>

(in-package "MILAWA")
(%interactive)


(%autoadmit logic.translate-and-term)

(%autoprove logic.termp-of-logic.translate-and-term
            (%autoinduct logic.translate-and-term)
            (%restrict default logic.translate-and-term (equal args 'args)))


(%autoadmit logic.translate-let-term)

(%autoprove lemma-for-logic.termp-of-logic.translate-let-term
            (%use (%instance (%thm subsetp-badguy-membership-property)
                             (x x)
                             (y (app (sort-symbols (difference (remove-duplicates x) y))
                                     y)))))

(%autoprove logic.termp-of-logic.translate-let-term
            (%enable default
                     logic.translate-let-term
                     lemma-for-logic.termp-of-logic.translate-let-term)
            (%disable default
                      sort-symbols-when-not-consp
                      remove-duplicates-when-unique
                      unusual-consp-rules
                      expensive-term/formula-inference))


(%autoadmit logic.translate-or-term)

(%autoprove logic.termp-of-logic.translate-or-term
            (%autoinduct logic.translate-or-term)
            (%restrict default logic.translate-or-term (equal args 'args)))


(%autoadmit logic.translate-list-term)

(%autoprove logic.termp-of-logic.translate-list-term
            (%autoinduct logic.translate-list-term)
            (%restrict default logic.translate-list-term (equal args 'args)))

(%autoadmit logic.translate-cond-term)

(%autoprove logic.termp-of-logic.translate-cond-term
            (%autoinduct logic.translate-cond-term)
            ;; ugh, worst variable-naming ever
            (%restrict default logic.translate-cond-term (equal tests 'thens)))




(%autoadmit logic.translate-let*-term)

(%autoprove logic.termp-of-logic.translate-let*-term
            (%autoinduct logic.translate-let*-term)
            (%restrict default logic.translate-let*-term (equal vars 'vars)))



(%autoadmit logic.flag-translate)
(%autoadmit logic.translate)
(%autoadmit logic.translate-list)

(%autoprove definition-of-logic.translate
            (%enable default logic.translate logic.translate-list)
            (%restrict default logic.flag-translate (equal x 'x)))

(%autoprove definition-of-logic.translate-list
            (%enable default logic.translate logic.translate-list)
            (%restrict default logic.flag-translate (equal x 'x)))

(%autoprove logic.flag-translate-of-term-removal
            (%enable default logic.translate))

(%autoprove logic.flag-translate-of-list-removal
            (%enable default logic.translate-list))

(%autoprove logic.translate-list-when-not-consp
            (%restrict default definition-of-logic.translate-list (equal x 'x)))

(%autoprove logic.translate-list-of-cons
            (%restrict default definition-of-logic.translate-list (equal x '(cons a x))))

(%autoprove consp-of-logic.translate-list
            (%cdr-induction x))

(%autoprove len-of-cdr-of-logic.translate-list
            (%cdr-induction x))

(%autoprove true-listp-of-cdr-of-logic.translate-list
            (%cdr-induction x))

(%autoprove booleanp-of-car-of-logic.translate-list
            (%cdr-induction x))







(defthmd lemma-1-for-logic.termp-of-logic.translate
  ;; BOZO unlocalize/rename -- change blimit to 1
  (implies (symbolp x)
           (equal (logic.termp x)
                  (and (not (equal x nil))
                       (not (equal x t)))))
  :rule-classes ((:rewrite :backchain-limit-lst 1))
  :hints(("Goal" :in-theory (enable logic.variablep
                                    definition-of-logic.termp))))

(defthmd lemma-2-for-logic.termp-of-logic.translate
  ;; BOZO unlocalize/rename
  (equal (logic.termp (cons 'quote x))
         (tuplep 1 x))
  :hints(("Goal" :in-theory (enable definition-of-logic.termp
                                    logic.constantp
                                    logic.variablep))))

(defthm lemma-for-logic.termp-of-logic.translate
  ;; BOZO unlocalize/rename
  (if (equal flag 'term)
      (implies (logic.translate x)
               (logic.termp (logic.translate x)))
    (logic.term-listp (cdr (logic.translate-list x))))
  :rule-classes nil)


(%autoprove lemma-1-for-logic.termp-of-logic.translate
            (%enable default logic.variablep)
            (%restrict default definition-of-logic.termp (equal x 'x)))

(%autoprove lemma-2-for-logic.termp-of-logic.translate
            (%enable default logic.constantp logic.variablep)
            (%restrict default definition-of-logic.termp (equal x '(cons 'quote x))))

(%autoprove lemma-for-logic.termp-of-logic.translate
            (%autoinduct logic.flag-translate flag x)
            (%enable default
                     lemma-1-for-logic.termp-of-logic.translate
                     lemma-2-for-logic.termp-of-logic.translate)
            (%disable default
                      logic.function-namep-when-consp
                      usual-consp-rules
                      uniquep-when-uniquep-of-domain
                      same-length-prefixes-equal-cheap
                      expensive-term/formula-inference
                      formula-decomposition
                      expensive-arithmetic-rules
                      expensive-arithmetic-rules-two
                      unusual-memberp-rules
                      unusual-subsetp-rules
                      unusual-consp-rules)
            (%forcingp nil)
            (%waterfall default 40)
            (%restrict default definition-of-logic.translate (equal x 'x))
            (%restrict default definition-of-logic.translate-list (equal x 'x))
            (%waterfall default 40)
            (%enable default
                     expensive-term/formula-inference
                     formula-decomposition
                     usual-consp-rules
                     logic.function-namep-when-consp
                     unusual-memberp-rules
                     unusual-subsetp-rules
                     expensive-arithmetic-rules-two
                     expensive-arithmetic-rules
                     unusual-consp-rules)
            (%forcingp t))

(%autoprove logic.termp-of-logic.translate
            (%use (%instance (%thm lemma-for-logic.termp-of-logic.translate)
                             (flag 'term))))

(%autoprove logic.term-listp-of-cdr-of-logic.translate-list
            (%use (%instance (%thm lemma-for-logic.termp-of-logic.translate)
                             (flag 'list))))







(defthm lemma-for-logic.translate-when-logic.termp
  ;; BOZO unlocalize/rename
  (if (equal flag 'term)
      (implies (logic.termp x)
               (equal (logic.translate x) x))
    (implies (logic.term-listp x)
             (and (car (logic.translate-list x))
                  (equal (cdr (logic.translate-list x))
                         (list-fix x)))))
  :rule-classes nil)



(%autoprove lemma-for-logic.translate-when-logic.termp
            ;; BOZO the acl2 proof is too hard to replicate.  Doing it live!
            (%logic.term-induction flag x)
            (%forcingp nil)
            (%auto)

            (%restrict default definition-of-logic.translate (equal x 'x))

            (%disable default
                      expensive-term/formula-inference
                      formula-decomposition
                      usual-consp-rules
                      logic.function-namep-when-consp
                      unusual-memberp-rules
                      unusual-subsetp-rules
                      expensive-arithmetic-rules-two
                      expensive-arithmetic-rules
                      unusual-consp-rules)
            (%waterfall default 40)

            (%disable default
                      logic.function-namep-of-car-when-logic.termp-and-not-logic.variablep
                      logic.term-listp-when-logic.variable-listp-cheap
                      logic.variable-listp-when-not-consp
                      same-length-prefixes-equal-cheap)
            (%restrict default definition-of-logic.termp (equal x 'x))
            (%enable default
                     logic.constantp
                     logic.variablep
                     logic.function
                     logic.functionp
                     logic.function-name
                     logic.function-args
                     logic.lambda
                     logic.lambdap
                     logic.lambda-formals
                     logic.lambda-actuals
                     logic.lambda-body)
            (%enable default usual-consp-rules)
            (%restrict default tuplep (logic.constantp n))
            (%restrict default memberp (logic.constantp x)))

(%autoprove logic.translate-when-logic.termp
            (%use (%instance (%thm lemma-for-logic.translate-when-logic.termp)
                             (flag 'term))))

(%autoprove logic.translate-when-logic.term-listp
            (%use (%instance (%thm lemma-for-logic.translate-when-logic.termp)
                             (flag 'list))))

(%ensure-exactly-these-rules-are-missing "../../logic/translate")

