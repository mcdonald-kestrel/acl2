(NONNEGATIVE-INTEGER-QUOTIENT-BY-2
     (54 18
         (:REWRITE NONNEGATIVE-INTEGER-QUOTIENT-WHEN-<))
     (44 44 (:REWRITE DEFAULT-*-2))
     (44 44 (:REWRITE DEFAULT-*-1))
     (21 21 (:REWRITE DEFAULT-<-2))
     (21 21 (:REWRITE DEFAULT-<-1))
     (20 5 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (18 18 (:REWRITE DEFAULT-+-2))
     (18 18 (:REWRITE DEFAULT-+-1))
     (14 7 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (9 1 (:REWRITE DENOMINATOR-WHEN-INTEGERP))
     (7 7 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (7 7
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (7 7 (:REWRITE DEFAULT-UNARY-/))
     (5 5 (:TYPE-PRESCRIPTION RATIONALP-OF-MOD))
     (5 5
        (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
     (5 5
        (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
     (5 5
        (:REWRITE INTEGERP-OF-HALF-WHEN-MULT-OF-EXPT))
     (3 3
        (:TYPE-PRESCRIPTION FLOOR-TYPE-WHEN-NONPOSITIVE-AND-NONNEGATIVE))
     (3 3
        (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
     (3 3
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (1 1 (:REWRITE DEFAULT-NUMERATOR))
     (1 1 (:REWRITE DEFAULT-DENOMINATOR)))
(FLOOR-BY-2 (51 51
                (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
            (51 51
                (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
            (42 8 (:REWRITE FLOOR-WHEN-<))
            (24 3 (:LINEAR FLOOR-BOUND-ARG1-LINEAR))
            (16 12 (:REWRITE DEFAULT-*-2))
            (16 12 (:REWRITE DEFAULT-*-1))
            (16 10 (:REWRITE DEFAULT-<-1))
            (12 8
                (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
            (12 8
                (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
            (12 8
                (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
            (12 8
                (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
            (10 10 (:REWRITE DEFAULT-<-2))
            (8 8
               (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
            (8 8 (:REWRITE FLOOR-MINUS-ERIC-BETTER))
            (3 3
               (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
            (3 3
               (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
            (3 3
               (:LINEAR FLOOR-BY-2-BOUND-EVEN-LINEAR))
            (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
            (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
            (1 1
               (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM)))
(BVCOUNT)
(BVCOUNT-OF-0-ARG1)
(BVCOUNT-OF-0-ARG2
     (9 7 (:REWRITE DEFAULT-+-2))
     (7 7 (:REWRITE DEFAULT-+-1))
     (6 3 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (6 2 (:REWRITE UNICITY-OF-0))
     (4 4 (:REWRITE ZP-OPEN))
     (4 2 (:DEFINITION FIX))
     (3 3 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (3 3
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (3 3
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (3 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (3 3
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (3 3
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE)))
(EVENP-OF-BVCHOP
     (61 3 (:REWRITE MOD-WHEN-MULTIPLE))
     (38 26 (:REWRITE DEFAULT-*-2))
     (38 26 (:REWRITE DEFAULT-*-1))
     (30 15 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (26 26
         (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
     (17 3 (:REWRITE MOD-WHEN-<))
     (15 15 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (15 15
         (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (14 1 (:REWRITE GETBIT-IDENTITY))
     (13 10 (:REWRITE DEFAULT-<-1))
     (12 10 (:REWRITE DEFAULT-<-2))
     (12 3 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (10 2 (:REWRITE DEFAULT-UNARY-/))
     (9 2
        (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
     (7 7
        (:REWRITE INTEGERP-OF-HALF-WHEN-MULT-OF-EXPT))
     (7 1 (:REWRITE BVCHOP-IDENTITY))
     (5 3
        (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (5 3
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (5 2 (:REWRITE IFIX-WHEN-INTEGERP))
     (4 4
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (4 1
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (4 1
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (3 3
        (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (3 3
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (2 2
        (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
     (2 2 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
     (2 2 (:REWRITE UBP-LONGER-BETTER))
     (2 2 (:REWRITE MOD-OF-2-WHEN-EVEN-CHEAP))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (1 1 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (1 1
        (:REWRITE SLICE-WHEN-INDICES-ARE-NEGATIVE))
     (1 1 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (1 1 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (1 1
        (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (1 1 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (1 1 (:REWRITE SLICE-OUT-OF-ORDER))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (1 1
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (1 1 (:REWRITE GETBIT-IDENTITY-FREE))
     (1 1
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (1 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (1 1
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (1 1
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (1 1
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (1 1
        (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
     (1 1
        (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM)))
(BVCOUNT-BOUND
    (18 12 (:REWRITE DEFAULT-+-2))
    (18 12 (:REWRITE DEFAULT-+-1))
    (12 7 (:REWRITE DEFAULT-<-2))
    (12 3
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (10 5 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (7 7 (:REWRITE DEFAULT-<-1))
    (6 3 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (5 5 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (5 5
       (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (3 3 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
    (3 3 (:REWRITE ZP-OPEN))
    (3 3
       (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
    (3 3
       (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (3 3 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (3 3
       (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION)))
(UNSIGNED-BYTE-P-OF-BVCOUNT
    (11 6 (:REWRITE DEFAULT-+-1))
    (9 6 (:REWRITE DEFAULT-+-2))
    (4 1
       (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (2 2 (:REWRITE DEFAULT-<-2))
    (2 2 (:REWRITE DEFAULT-<-1))
    (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
    (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (1 1 (:REWRITE ZP-OPEN))
    (1 1
       (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
    (1 1
       (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
    (1 1
       (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (1 1
       (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (1 1
       (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION)))
(UNSIGNED-BYTE-P-OF-BVCOUNT-GEN)
(BVCOUNT-OF-BVCHOP
    (28 7
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (23 15 (:REWRITE DEFAULT-+-2))
    (23 15 (:REWRITE DEFAULT-+-1))
    (20 10 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (18 9 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (12 12 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
    (10 10
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (10 10 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (10 10
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
    (9 9 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (9 9
       (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (9 3 (:REWRITE GETBIT-OF-BVCHOP-TOO-HIGH))
    (8 8 (:REWRITE DEFAULT-<-2))
    (8 8 (:REWRITE DEFAULT-<-1))
    (7 1 (:REWRITE BVCHOP-IDENTITY))
    (4 1
       (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
    (2 2
       (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
    (1 1 (:REWRITE ZP-OPEN))
    (1 1
       (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
    (1 1
       (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
    (1 1 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
    (1 1 (:REWRITE UBP-LONGER-BETTER))
    (1 1
       (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
    (1 1
       (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
    (1 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
    (1 1
       (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
    (1 1
       (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
    (1 1
       (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
    (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT)))
(BVCOUNT-OF-SLICE-OF-0
    (190 6 (:REWRITE BVCHOP-IDENTITY))
    (160 4
         (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
    (56 4 (:REWRITE LOGTAIL-BECOMES-0))
    (46 34 (:REWRITE DEFAULT-+-2))
    (46 34 (:REWRITE DEFAULT-+-1))
    (44 21 (:REWRITE DEFAULT-<-1))
    (36 8
        (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
    (35 35 (:TYPE-PRESCRIPTION IFIX))
    (33 21 (:REWRITE DEFAULT-<-2))
    (32 16 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (32 9
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (27 27 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
    (24 24
        (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
    (24 24
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
    (22 11 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (22 4 (:REWRITE GETBIT-OF-BVCHOP-TOO-HIGH))
    (18 6
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
    (16 16 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (16 16 (:TYPE-PRESCRIPTION LOGTAIL-TYPE))
    (16 16
        (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
    (16 16
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (16 4
        (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
    (11 11
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (11 11 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (11 11
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
    (8 8
       (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
    (8 8 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
    (8 8 (:REWRITE UBP-LONGER-BETTER))
    (6 6
       (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
    (6 6 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
    (6 6
       (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
    (6 6
       (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
    (6 6
       (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
    (6 6 (:REWRITE BVCHOP-SUBST-CONSTANT))
    (4 4
       (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
    (4 4 (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1))
    (4 4
       (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
    (4 4
       (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (3 3
       (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
    (2 2 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
    (1 1 (:REWRITE ZP-OPEN)))
(BVCOUNT-UNROLL
    (112 55 (:REWRITE DEFAULT-+-1))
    (108 55 (:REWRITE DEFAULT-+-2))
    (72 18
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (54 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
    (43 23 (:REWRITE DEFAULT-<-2))
    (42 14
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
    (38 19 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (37 23 (:REWRITE DEFAULT-<-1))
    (36 18 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (34 2 (:DEFINITION NATP))
    (33 18 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (32 12 (:REWRITE FOLD-CONSTS-IN-+))
    (24 12
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
    (21 21 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (20 5 (:REWRITE ZP-OPEN))
    (19 19
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (18 18
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (18 18
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
    (15 5 (:REWRITE +-OF---AND-0))
    (14 14 (:TYPE-PRESCRIPTION POSP))
    (14 14
        (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
    (14 14
        (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
    (14 14
        (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
    (14 14 (:REWRITE UBP-LONGER-BETTER))
    (14 14 (:REWRITE BVCHOP-SUBST-CONSTANT))
    (14 5 (:REWRITE DEFAULT-UNARY-MINUS))
    (4 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
    (4 2 (:REWRITE NATP-WHEN-POWER-OF-2P))
    (2 2 (:TYPE-PRESCRIPTION NATP))
    (2 2
       (:REWRITE UNSIGNED-BYTE-P-OF-+-OF-CONSTANT-STRONG))
    (2 2
       (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
    (2 2
       (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
    (2 2 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
    (2 2
       (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
    (2 2 (:REWRITE BVCHOP-SUM-SUBST-CONST))
    (2 2
       (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT)))
(BVCOUNT-UNROLL2
    (72 49 (:REWRITE DEFAULT-+-2))
    (72 49 (:REWRITE DEFAULT-+-1))
    (60 15
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (36 12 (:REWRITE FOLD-CONSTS-IN-+))
    (33 15 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (32 16 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (30 15 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (24 6 (:REWRITE ZP-OPEN))
    (18 6 (:REWRITE +-OF---AND-0))
    (16 16 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (16 16
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (15 15
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (15 15
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
    (13 13 (:REWRITE DEFAULT-<-2))
    (13 13 (:REWRITE DEFAULT-<-1)))
(BVCOUNT-OF-1 (50 41 (:REWRITE DEFAULT-+-2))
              (48 41 (:REWRITE DEFAULT-+-1))
              (21 18 (:REWRITE DEFAULT-<-2))
              (21 3 (:DEFINITION NATP))
              (18 18 (:REWRITE DEFAULT-<-1))
              (16 8 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
              (11 11 (:TYPE-PRESCRIPTION POWER-OF-2P))
              (8 8
                 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
              (6 3 (:REWRITE NATP-WHEN-POWER-OF-2P))
              (5 5
                 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
              (3 3 (:TYPE-PRESCRIPTION NATP))
              (3 3
                 (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
              (3 3
                 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
              (3 3 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
              (1 1
                 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
              (1 1
                 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
              (1 1
                 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM)))
(BVCOUNT-WHEN-UNSIGNED-BYTE-P-1
     (65 5 (:LINEAR BVCOUNT-BOUND))
     (35 5 (:DEFINITION NATP))
     (14 7 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (12 12 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (10 5 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (7 7
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (7 7 (:REWRITE DEFAULT-<-2))
     (7 7 (:REWRITE DEFAULT-<-1))
     (5 5 (:TYPE-PRESCRIPTION NATP))
     (5 5
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (5 5
        (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
     (5 5 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P)))
(BVCOUNT-OF-1-ARG1
     (56 6 (:REWRITE GETBIT-IDENTITY))
     (52 2 (:LINEAR GETBIT-BOUND-LINEAR))
     (45 6
         (:REWRITE BVCOUNT-WHEN-UNSIGNED-BYTE-P-1))
     (44 9
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
     (24 6
         (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (20 5 (:REWRITE DEFAULT-<-1))
     (12 6 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (12 6 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (9 9
        (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
     (9 9 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
     (9 9 (:REWRITE UBP-LONGER-BETTER))
     (9 6 (:REWRITE DEFAULT-+-2))
     (9 6 (:REWRITE DEFAULT-+-1))
     (6 6 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (6 6
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (6 6
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (6 6 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (6 6
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (6 6 (:REWRITE GETBIT-IDENTITY-FREE))
     (5 5
        (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (5 5
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (5 5
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (5 5 (:REWRITE DEFAULT-<-2))
     (5 5
        (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
     (5 5
        (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM)))
(BVCOUNT-OF-BVCAT-IRREL
    (1506 31
          (:REWRITE BVCOUNT-WHEN-UNSIGNED-BYTE-P-1))
    (649 49
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
    (377 277 (:REWRITE DEFAULT-+-2))
    (377 277 (:REWRITE DEFAULT-+-1))
    (302 214 (:REWRITE DEFAULT-<-1))
    (288 16 (:REWRITE BVCAT-NUMERIC-BOUND))
    (246 214 (:REWRITE DEFAULT-<-2))
    (224 16
         (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT-GEN2))
    (208 16
         (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT-ALL-CASES))
    (168 84 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (144 36
         (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (143 143
         (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
    (128 16
         (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT-GEN))
    (126 9 (:REWRITE GETBIT-IDENTITY))
    (120 120
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
    (120 120
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
    (109 109 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (96 16 (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT2))
    (96 16 (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT))
    (90 45 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (85 85
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
    (84 84
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (80 80
        (:TYPE-PRESCRIPTION NATP-OF-BVCAT-TYPE))
    (63 9 (:REWRITE BVCHOP-IDENTITY))
    (56 56
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
    (56 56
        (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
    (56 56
        (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (50 25 (:REWRITE NATP-WHEN-POWER-OF-2P))
    (49 49
        (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
    (49 49
        (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
    (49 49 (:REWRITE UBP-LONGER-BETTER))
    (45 45
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (45 45
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
    (36 36 (:REWRITE FOLD-CONSTS-IN-+))
    (36 9
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
    (27 9 (:REWRITE GETBIT-OF-BVCHOP-TOO-HIGH))
    (25 25
        (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
    (25 25 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
    (24 5 (:DEFINITION POSP))
    (24 3
        (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
    (21 9 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
    (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
    (16 16 (:TYPE-PRESCRIPTION NATP))
    (15 9
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
    (13 13 (:REWRITE ZP-OPEN))
    (12 3
        (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
    (12 3
        (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
    (11 11 (:TYPE-PRESCRIPTION POSP))
    (11 3
        (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
    (9 9 (:REWRITE GETBIT-IDENTITY-FREE))
    (9 9
       (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
    (9 9
       (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
    (9 9
       (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
    (9 9 (:REWRITE BVCHOP-SUBST-CONSTANT))
    (4 4
       (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
    (3 3
       (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
    (3 3 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
    (3 3 (:REWRITE BVCAT-FIX-CONSTANT-ARG2)))
(BVCOUNT-OF-BVCAT-OF-1-ARG1
    (745 9
         (:REWRITE BVCOUNT-WHEN-UNSIGNED-BYTE-P-1))
    (665 3
         (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT-ALL-CASES))
    (450 38
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
    (225 9 (:REWRITE BVCHOP-1-BECOMES-GETBIT))
    (211 16 (:REWRITE GETBIT-IDENTITY))
    (141 6 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
    (128 65 (:REWRITE DEFAULT-<-1))
    (73 19
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (72 3 (:LINEAR BVCHOP-UPPER-BOUND))
    (66 33 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (65 65 (:REWRITE DEFAULT-<-2))
    (63 9 (:REWRITE BVCHOP-IDENTITY))
    (42 3
        (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
    (41 31 (:REWRITE DEFAULT-+-2))
    (41 31 (:REWRITE DEFAULT-+-1))
    (39 3 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
    (38 19 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (36 36 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (36 9
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
    (35 35
        (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
    (35 35
        (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
    (35 35 (:REWRITE UBP-LONGER-BETTER))
    (33 33
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (32 32
        (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
    (32 32
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
    (27 27 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
    (24 3
        (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT-GEN2))
    (23 23
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
    (20 20
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
    (20 20
        (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
    (20 20
        (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
    (19 19
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (19 19 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (19 19
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
    (16 16 (:REWRITE GETBIT-IDENTITY-FREE))
    (9 9
       (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
    (9 9 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
    (9 9
       (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
    (9 9
       (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
    (9 9
       (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
    (9 9 (:REWRITE BVCHOP-SUBST-CONSTANT))
    (9 3 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
    (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
    (6 3 (:REWRITE NATP-WHEN-POWER-OF-2P))
    (5 1
       (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
    (4 1
       (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
    (4 1
       (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
    (3 3 (:TYPE-PRESCRIPTION NATP))
    (3 3
       (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
    (3 3 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
    (3 3 (:REWRITE BVCHOP-BOUND))
    (3 1 (:DEFINITION POSP))
    (1 1 (:TYPE-PRESCRIPTION POSP))
    (1 1
       (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
    (1 1
       (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
    (1 1
       (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
    (1 1 (:REWRITE BVCAT-SUBST-1))
    (1 1 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
    (1 1 (:REWRITE BVCAT-FIX-CONSTANT-ARG2)))
(BVCOUNT-OF-BVCHOP-WHEN-UNSIGNED-BYTE-P
     (202 6
          (:REWRITE BVCOUNT-WHEN-UNSIGNED-BYTE-P-1))
     (108 14
          (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
     (84 14
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
     (48 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
     (46 40 (:REWRITE DEFAULT-<-2))
     (44 40 (:REWRITE DEFAULT-<-1))
     (32 14 (:REWRITE UBP-LONGER-BETTER))
     (14 14
         (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
     (11 1 (:REWRITE SLICE-OF-BVCHOP-LOW-GEN))
     (11 1 (:REWRITE SLICE-OF-BVCHOP-LOW))
     (8 5
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (6 2 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
     (6 2 (:REWRITE BVCOUNT-OF-BVCHOP))
     (6 2 (:REWRITE +-OF---AND-0))
     (6 2 (:DEFINITION POSP))
     (5 5 (:TYPE-PRESCRIPTION POSP))
     (5 5 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (5 3 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (5 1
        (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
     (5 1
        (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
     (4 2 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (4 2 (:LINEAR BVCHOP-UPPER-BOUND))
     (4 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (3 3
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (3 3
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (3 3
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (3 1 (:REWRITE SLICE-OUT-OF-ORDER))
     (3 1 (:REWRITE SLICE-OF-BVCHOP-TOO-HIGH))
     (3 1 (:REWRITE SLICE-OF-BVCHOP-TIGHTEN))
     (2 2 (:TYPE-PRESCRIPTION NATP))
     (2 2 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
     (2 2
        (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
     (2 2 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
     (2 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1))
     (2 2 (:REWRITE BVCHOP-BOUND))
     (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (1 1
        (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
     (1 1
        (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
     (1 1 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (1 1 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (1 1 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (1 1
        (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (1 1 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
     (1 1
        (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (1 1 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (1 1 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
     (1 1
        (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
     (1 1
        (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM)))
(BVCOUNT-TIGHTEN-SIZE
    (430 52
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
    (251 55
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
    (209 179 (:REWRITE DEFAULT-<-2))
    (179 179 (:REWRITE DEFAULT-<-1))
    (159 107 (:REWRITE DEFAULT-+-2))
    (155 107 (:REWRITE DEFAULT-+-1))
    (55 55
        (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
    (37 2
        (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
    (33 33
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (33 33 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (33 33
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
    (30 30
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (21 21 (:REWRITE ZP-OPEN))
    (16 8 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
    (9 2 (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1))
    (8 8 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (6 6
       (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
    (6 6
       (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
    (5 5
       (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
    (4 2 (:REWRITE IFIX-WHEN-INTEGERP))
    (3 1 (:DEFINITION IFIX))
    (2 2 (:TYPE-PRESCRIPTION LOGTAIL-TYPE))
    (2 2
       (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
    (1 1
       (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
    (1 1
       (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM)))
(BVCOUNT-OF-BVCHOP-GEN
     (929 23
          (:REWRITE BVCOUNT-WHEN-UNSIGNED-BYTE-P-1))
     (754 59
          (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
     (267 14 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
     (225 26 (:REWRITE BVCHOP-IDENTITY))
     (183 7 (:LINEAR BVCHOP-UPPER-BOUND))
     (141 68 (:REWRITE DEFAULT-<-1))
     (98 7
         (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
     (91 7 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
     (73 19
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (68 68 (:REWRITE DEFAULT-<-2))
     (59 59
         (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
     (59 59
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
     (59 59 (:REWRITE UBP-LONGER-BETTER))
     (58 29 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (56 56 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (50 8
         (:REWRITE BVCOUNT-OF-BVCHOP-WHEN-UNSIGNED-BYTE-P))
     (45 19 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (43 43
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (43 43
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (40 26
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (36 36 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (29 29
         (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (26 26 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (22 22
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (22 22
         (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
     (22 22
         (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (21 7 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
     (19 19
         (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (19 19
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (19 19
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (14 14 (:TYPE-PRESCRIPTION POSP))
     (14 7 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (11 11
         (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (7 7 (:TYPE-PRESCRIPTION NATP))
     (7 7 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
     (7 7
        (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
     (7 7 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
     (7 7 (:REWRITE BVCHOP-BOUND))
     (3 3
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE)))
(BVCOUNT-OF-BVCAT
   (14316 156
          (:REWRITE BVCOUNT-WHEN-UNSIGNED-BYTE-P-1))
   (12516 36
          (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT-ALL-CASES))
   (7776 622
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
   (3222 216
         (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
   (2979 329 (:REWRITE BVCHOP-IDENTITY))
   (2900 108 (:LINEAR BVCHOP-UPPER-BOUND))
   (1862 1066 (:REWRITE DEFAULT-<-1))
   (1404 108 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
   (1327 1327
         (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
   (1260 630
         (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
   (1166 293
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
   (1104 1066 (:REWRITE DEFAULT-<-2))
   (1008 72
         (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
   (983 767 (:REWRITE DEFAULT-+-2))
   (974 767 (:REWRITE DEFAULT-+-1))
   (965 965 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
   (900 36 (:REWRITE BVCHOP-1-BECOMES-GETBIT))
   (740 740 (:TYPE-PRESCRIPTION POWER-OF-2P))
   (630 630
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
   (624 157
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
   (622 622
        (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
   (622 622
        (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
   (622 622 (:REWRITE UBP-LONGER-BETTER))
   (609 609
        (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
   (609 609
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
   (589 43 (:REWRITE GETBIT-IDENTITY))
   (551 293 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
   (458 329
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
   (424 19
        (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
   (329 329 (:REWRITE BVCHOP-SUBST-CONSTANT))
   (314 157 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
   (308 36
        (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT-GEN2))
   (293 293
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
   (293 293
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
   (293 293
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
   (283 158
        (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
   (254 254
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
   (240 240
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
   (240 240
        (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
   (240 240
        (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
   (220 110 (:REWRITE NATP-WHEN-POWER-OF-2P))
   (212 72 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
   (171 19
        (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1))
   (157 157
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
   (157 157
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
   (148 148 (:TYPE-PRESCRIPTION POSP))
   (110 110 (:TYPE-PRESCRIPTION NATP))
   (110 110
        (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
   (110 110
        (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
   (89 89 (:REWRITE BVCOUNT-TIGHTEN-SIZE))
   (76 19 (:REWRITE IFIX-WHEN-INTEGERP))
   (76 19 (:DEFINITION IFIX))
   (72 72 (:REWRITE BVCHOP-BOUND))
   (66 14
       (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
   (57 19 (:DEFINITION POSP))
   (53 14
       (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
   (53 14
       (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
   (45 45 (:REWRITE DEFAULT-UNARY-MINUS))
   (43 43 (:REWRITE GETBIT-IDENTITY-FREE))
   (36 36 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
   (19 19 (:TYPE-PRESCRIPTION LOGTAIL-TYPE))
   (19 19
       (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
   (15 15
       (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
   (15 15 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
   (15 15 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
   (11 11
       (:TYPE-PRESCRIPTION NATP-OF-BVCAT-TYPE))
   (8 8
      (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
   (2 2 (:REWRITE BVCAT-SUBST-1)))
