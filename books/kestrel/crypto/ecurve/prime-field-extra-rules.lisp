; Elliptic Curve Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ECURVE")

(include-book "kestrel/prime-fields/prime-fields" :dir :system)
(include-book "std/util/defrule" :dir :system)
(include-book "xdoc/constructors" :dir :system)

(local (include-book "kestrel/prime-fields/prime-fields-rules" :dir :system))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc prime-field-extra-rules
  :short "Extra rules about prime fields."
  :long
  (xdoc::topstring
   (xdoc::p
    "These are candidate for inclusion in the prime fields library.
     They are in the elliptic curve library right now
     because they are used in proofs about elliptic curves,
     but they are general.")
   (xdoc::p
    "It may be possible to simplify some of the proofs,
     with better us of the exising prime field rules.")
   (xdoc::p
    "These extra rules may also need to be examined in relation to
     the intended normal forms of the existing prime field rules.")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule equal-of-mul-same-and-1 ; square roots of 1
  (implies (and (rtl::primep p)
                (fep x p))
           (equal (equal (mul x x p) 1)
                  (or (equal x 1)
                      (equal x (neg 1 p)))))
  :use (:instance pfield::equal-of-0-and-mul
        (p p) (x (add x 1 p)) (y (sub x 1 p)))
  :disable pfield::equal-of-0-and-mul)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule equal-of-div-and-0
  (implies (and (rtl::primep p)
                (fep a p)
                (fep b p)
                (not (equal b 0)))
           (equal (equal (div a b p) 0)
                  (equal a 0)))
  :enable div)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule mul-of-div-same-arg1-arg2
  (implies (and (rtl::primep p)
                (fep a p)
                (fep b p)
                (not (equal b 0)))
           (equal (mul b (div a b p) p)
                  a))
  :enable div)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule equal-of-div-and-div-same-arg2
  (implies (and (rtl::primep p)
                (fep a p)
                (fep b p)
                (fep c p)
                (not (equal c 0)))
           (equal (equal (div a c p)
                         (div b c p))
                  (equal a b)))
  :use ((:instance mul-of-div-same-arg1-arg2 (a a) (b c))
        (:instance mul-of-div-same-arg1-arg2 (a b) (b c)))
  :disable mul-of-div-same-arg1-arg2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule equal-of-1-and-div
  (implies (and (rtl::primep p)
                (fep a p)
                (fep b p)
                (not (equal b 0)))
           (equal (equal 1 (div a b p))
                  (equal a b)))
  :enable div
  :use lemma2
  :prep-lemmas
  ((defrule lemma1
     (implies (and (rtl::primep p)
                   (fep a p)
                   (fep b p)
                   (not (equal b 0)))
              (implies (equal (mul b 1 p)
                              (mul b (mul a (inv b p) p) p))
                       (equal a b)))
     :rule-classes nil)
   (defrule lemma2
     (implies (and (rtl::primep p)
                   (fep a p)
                   (fep b p)
                   (not (equal b 0)))
              (implies (equal 1 (mul a (inv b p) p))
                       (equal a b)))
     :rule-classes nil
     :use lemma1)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule equal-of-x-and-neg-x
  (implies (and (rtl::primep p)
                (> p 2)
                (fep x p))
           (equal (equal x (neg x p))
                  (equal x 0))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; solve for y in (x * y) = (z mod p) when x and z are constants:
(defrule equal-of-mul-constants-mod
  (implies (and (syntaxp (and (quotep x)
                              (quotep z)))
                (fep x p)
                (fep y p)
                (integerp z)
                (rtl::primep p))
           (equal (equal (mul x y p) (mod z p))
                  (if (equal x 0)
                      (equal (mod z p) 0)
                    (equal y (div z x p)))))
  :use (:instance pfield::equal-of-mul-constants
        (x (mod z p))
        (y x)
        (z y)
        (p p))
  :enable div)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule mul-of-minus1-becomes-neg-2
  (implies (fep x p)
           (equal (mul x (pfield::minus1 p) p)
                  (neg x p)))
  :use (:instance pfield::mul-of-minus1-becomes-neg (x x) (p p))
  :disable pfield::mul-of-minus1-becomes-neg)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule equal-of-minus1-and-div
  (implies (and (rtl::primep p)
                (fep a p)
                (fep b p)
                (not (equal b 0)))
           (equal (equal (pfield::minus1 p) (div a b p))
                  (equal a (neg b p))))
  :use (lemma3 lemma4)
  :prep-lemmas
  ((defrule lemma1
     (implies (and (rtl::primep p)
                   (fep a p)
                   (fep b p)
                   (not (equal b 0)))
              (implies (equal (mul b (pfield::minus1 p) p)
                              (mul b (mul a (inv b p) p) p))
                       (equal a (neg b p))))
     :rule-classes nil)
   (defrule lemma2
     (implies (and (rtl::primep p)
                   (fep a p)
                   (fep b p)
                   (not (equal b 0)))
              (implies (equal (pfield::minus1 p) (mul a (inv b p) p))
                       (equal a (neg b p))))
     :rule-classes nil
     :use lemma1)
   (defrule lemma3
     (implies (and (rtl::primep p)
                   (fep a p)
                   (fep b p)
                   (not (equal b 0)))
              (implies (equal (pfield::minus1 p) (div a b p))
                       (equal a (neg b p))))
     :rule-classes nil
     :enable div
     :use lemma2)
   (defrule lemma4
     (implies (and (rtl::primep p)
                   (fep a p)
                   (fep b p)
                   (not (equal b 0)))
              (implies (equal a (neg b p))
                       (equal (pfield::minus1 p) (div a b p))))
     :rule-classes nil
     :enable (div pfield::minus1)
     :prep-books ((include-book "arithmetic-3/top" :dir :system)))))
