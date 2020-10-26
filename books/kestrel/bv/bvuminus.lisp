; Arithmetic negation of a bit-vector
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "bvminus")
(include-book "bvplus")
(local (include-book "kestrel/arithmetic-light/expt" :dir :system))

;fixme define bvminus in terms of this?
(defun bvuminus (size x)
  (declare (type (integer 0 *) size))
  (bvminus size 0 x))

(defthm integerp-of-bvuminus
  (integerp (bvuminus size x)))

(defthm natp-of-bvuminus
  (natp (bvuminus size x)))

(defthm bvuminus-when-arg-is-not-an-integer
  (implies (not (integerp x))
           (equal (bvuminus size x)
                  0))
  :hints (("Goal" :in-theory (enable bvuminus))))

(defthm bvuminus-equal-constant
  (implies (and (syntaxp (and (quotep k)
                              (quotep size)))
                (natp size))
           (equal (equal k (bvuminus size x))
                  (and (unsigned-byte-p size k)
                       (equal (bvuminus size k) (bvchop size x)))))
  :hints (("Goal" :in-theory (enable unsigned-byte-p bvchop-of-sum-cases bvplus bvuminus bvminus))))

;0 is special, because its negation is always the same number (0 itself)
(defthm equal-of-0-and-bvuminus
  (equal (equal 0 (bvuminus size x))
         (equal 0 (bvchop size x)))
  :hints (("Goal" :use (:instance bvuminus-equal-constant (k 0)))))

(defthm bvuminus-of-bvuminus
  (equal (bvuminus size (bvuminus size x))
         (bvchop size x))
  :hints (("Goal" :in-theory (enable BVCHOP-WHEN-I-IS-NOT-AN-INTEGER bvchop-of-sum-cases bvplus bvuminus bvminus))))

(defthm bvuminus-of-0
  (equal (bvuminus size 0)
         0)
  :hints (("Goal" :in-theory (e/d (bvuminus bvminus ;bozo
                                            bvchop-when-i-is-not-an-integer)
                                  (;bvminus-becomes-bvplus-of-bvuminus
                                   )))))

(defthm bvminus-of-bvuminus
  (equal (bvminus size x (bvuminus size y))
         (bvplus size x y))
  :hints (("Goal" :in-theory (enable bvchop-when-i-is-not-an-integer
                                     bvchop-of-sum-cases
                                     bvplus
                                     bvuminus
                                     bvminus))))


(defthm bvminus-when-arg1-is-not-an-integer
  (implies (not (integerp x))
           (equal (bvminus size x y)
                  (bvuminus size y)))
  :hints (("Goal" :in-theory (enable bvminus bvuminus))))

(defthm bvuminus-when-bvchop-known-subst
  (implies (and (equal free (bvchop size x))
                (syntaxp (and (quotep free)
                              (not (quotep x)) ;prevents loops
                              )))
           (equal (bvuminus size x)
                  (bvuminus size free) ;gets computed if size is a constant
                  ))
  :hints (("Goal" :cases ((natp size))
           :in-theory (enable bvuminus bvminus ;bozo
                              bvchop-when-i-is-not-an-integer))))
