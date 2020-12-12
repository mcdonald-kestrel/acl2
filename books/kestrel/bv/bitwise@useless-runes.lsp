(EVENP-OF-EXPT2
     (7 3 (:REWRITE DEFAULT-*-2))
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 1 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (5 3 (:REWRITE DEFAULT-*-1))
     (4 4 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (3 1 (:TYPE-PRESCRIPTION RATIONALP-OF-MOD))
     (3 1 (:DEFINITION POSP))
     (2 2
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (2 2 (:REWRITE INTEGERP-OF-*))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (1 1 (:TYPE-PRESCRIPTION POSP))
     (1 1
        (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
     (1 1
        (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
     (1 1
        (:REWRITE INTEGERP-OF-HALF-WHEN-MULT-OF-EXPT)))
(EVENP-BECOMES-EQUAL-OF-0-AND-MOD
     (80 8
         (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (78 8 (:REWRITE MOD-WHEN-MULTIPLE))
     (36 2
         (:LINEAR MOD-BOUND-LINEAR-ARG2-STRONG))
     (30 2 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (18 8 (:REWRITE MOD-WHEN-<))
     (12 3 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (8 8
        (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (8 8
        (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (8 8
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (8 8
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (8 8
        (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (8 8 (:REWRITE MOD-OF-2-WHEN-EVEN-CHEAP))
     (8 2 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (7 7 (:REWRITE DEFAULT-<-2))
     (7 7 (:REWRITE DEFAULT-<-1))
     (6 6 (:REWRITE DEFAULT-*-2))
     (6 6 (:REWRITE DEFAULT-*-1))
     (4 4 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
     (3 3 (:REWRITE INTEGERP-OF-*))
     (2 2
        (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
     (2 2
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (1 1
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM)))
(EVENP-OF-MOD-OF-EXPT-OF-2
     (248 6 (:REWRITE MOD-WHEN-<))
     (152 6
          (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (125 6 (:REWRITE MOD-WHEN-MULTIPLE))
     (102 1
          (:LINEAR MOD-BOUND-LINEAR-ARG2-STRONG))
     (83 1 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (39 12 (:REWRITE INTEGERP-OF-*))
     (38 16 (:REWRITE DEFAULT-*-2))
     (34 6 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (30 15 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (30 6 (:REWRITE DEFAULT-UNARY-/))
     (26 16 (:REWRITE DEFAULT-*-1))
     (24 2
         (:REWRITE INTEGERP-OF-HALF-OF-MOD-OF-EXPT))
     (22 4 (:REWRITE COMMUTATIVITY-OF-*))
     (17 6
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (16 6 (:LINEAR EXPT-BOUND-LINEAR))
     (15 15 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (15 15
         (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (13 7 (:REWRITE DEFAULT-<-2))
     (12 7 (:REWRITE DEFAULT-<-1))
     (12 6
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (11 6
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (11 6
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (8 3 (:REWRITE MOD-OF-2-WHEN-EVEN-CHEAP))
     (6 6
        (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (6 6
        (:REWRITE INTEGERP-OF-HALF-WHEN-MULT-OF-EXPT))
     (6 6 (:LINEAR EXPT-BOUND-LINEAR-WEAK))
     (4 1 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (3 1 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (1 1
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (1 1
        (:REWRITE MOD-OF-MOD-WHEN-MULTIPLE-SAFE))
     (1 1 (:REWRITE DEFAULT-+-1)))
(BVNOT-OF-BVAND (118 1 (:REWRITE BVAND-WITH-MASK-BETTER))
                (116 1 (:DEFINITION LOGMASKP))
                (71 11 (:REWRITE BVCHOP-IDENTITY))
                (62 3
                    (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
                (34 34 (:TYPE-PRESCRIPTION LOGNOT))
                (24 10
                    (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
                (23 1 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
                (21 21 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
                (18 10 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
                (18 10
                    (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
                (16 8 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
                (16 7
                    (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
                (15 12 (:REWRITE DEFAULT-<-1))
                (14 14 (:LINEAR EXPT-BOUND-LINEAR))
                (14 6 (:REWRITE LOGNOT-WHEN-NOT-INTEGERP))
                (14 1 (:DEFINITION INTEGER-LENGTH))
                (13 13 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
                (12 12 (:REWRITE DEFAULT-<-2))
                (11 11 (:REWRITE BVCHOP-SUBST-CONSTANT))
                (10 10 (:TYPE-PRESCRIPTION POSP))
                (10 10
                    (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
                (10 10
                    (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
                (10 1 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
                (10 1 (:REWRITE <-OF-LOGNOT-AND-0))
                (9 9 (:TYPE-PRESCRIPTION POWER-OF-2P))
                (8 8
                   (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
                (8 1 (:DEFINITION EXPT2$INLINE))
                (7 7 (:TYPE-PRESCRIPTION BVAND-TYPE))
                (7 7
                   (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
                (7 7 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
                (7 7 (:REWRITE UBP-LONGER-BETTER))
                (7 3 (:REWRITE DEFAULT-+-2))
                (7 1 (:DEFINITION NFIX))
                (6 3
                   (:REWRITE LOGIOR-WHEN-NOT-INTEGERP-ARG2))
                (6 3
                   (:REWRITE LOGIOR-WHEN-NOT-INTEGERP-ARG1))
                (5 5
                   (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
                (4 1
                   (:REWRITE EQUAL-OF-LOGNOT-AND-CONSTANT))
                (4 1
                   (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
                (4 1
                   (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
                (4 1 (:DEFINITION FIX))
                (3 3 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
                (3 3 (:REWRITE DEFAULT-+-1))
                (3 1 (:REWRITE FLOOR-WHEN-<))
                (3 1
                   (:REWRITE BVOR-WHEN-SIZE-IS-NOT-POSITIVE))
                (3 1
                   (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
                (2 2
                   (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
                (2 1 (:REWRITE NATP-WHEN-POWER-OF-2P))
                (2 1
                   (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG2-CHEAP))
                (2 1
                   (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG1-CHEAP))
                (2 1
                   (:REWRITE BVOR-WHEN-NOT-INTEGERP-ARG3))
                (2 1
                   (:REWRITE BVOR-WHEN-NOT-INTEGERP-ARG2))
                (2 1 (:DEFINITION IFIX))
                (1 1 (:TYPE-PRESCRIPTION NATP))
                (1 1 (:TYPE-PRESCRIPTION LOGMASKP))
                (1 1 (:REWRITE ZIP-OPEN))
                (1 1
                   (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
                (1 1 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
                (1 1
                   (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
                (1 1
                   (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
                (1 1
                   (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
                (1 1
                   (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
                (1 1
                   (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
                (1 1 (:REWRITE FLOOR-MINUS-ERIC-BETTER))
                (1 1
                   (:REWRITE BVOR-WHEN-SIZE-IS-NOT-INTEGERP))
                (1 1
                   (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
                (1 1
                   (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
                (1 1 (:REWRITE BVAND-WITH-MASK))
                (1 1
                   (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
                (1 1 (:REWRITE BVAND-OF-CONSTANT)))
(BVNOT-OF-BVOR (742 3 (:REWRITE BVAND-WITH-MASK-BETTER))
               (737 2 (:DEFINITION LOGMASKP))
               (364 6
                    (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
               (260 24 (:REWRITE BVCHOP-IDENTITY))
               (175 2 (:DEFINITION INTEGER-LENGTH))
               (144 144 (:TYPE-PRESCRIPTION LOGNOT))
               (118 5 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
               (117 2 (:REWRITE FLOOR-WHEN-<))
               (68 23
                   (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
               (63 6 (:REWRITE <-OF-LOGNOT-AND-0))
               (62 5 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
               (47 19
                   (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
               (44 35 (:REWRITE DEFAULT-<-1))
               (43 19 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
               (42 42 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
               (41 41 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
               (41 19
                   (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
               (40 7
                   (:REWRITE EQUAL-OF-LOGNOT-AND-CONSTANT))
               (35 35 (:REWRITE DEFAULT-<-2))
               (34 34 (:LINEAR EXPT-BOUND-LINEAR))
               (32 16 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
               (29 22 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
               (26 2 (:REWRITE ZIP-OPEN))
               (24 24 (:REWRITE BVCHOP-SUBST-CONSTANT))
               (23 23
                   (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
               (23 23
                   (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
               (23 23 (:REWRITE UBP-LONGER-BETTER))
               (21 21 (:TYPE-PRESCRIPTION POWER-OF-2P))
               (20 7 (:DEFINITION IFIX))
               (19 19 (:TYPE-PRESCRIPTION POSP))
               (19 19
                   (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
               (19 19
                   (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
               (16 16
                   (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
               (16 6 (:REWRITE DEFAULT-+-2))
               (16 2 (:DEFINITION EXPT2$INLINE))
               (15 15
                   (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
               (14 6 (:REWRITE LOGNOT-WHEN-NOT-INTEGERP))
               (14 2 (:DEFINITION NFIX))
               (14 1 (:REWRITE UNSIGNED-BYTE-P-OF-LOGAND))
               (10 5 (:REWRITE NATP-WHEN-POWER-OF-2P))
               (9 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
               (8 2 (:DEFINITION FIX))
               (7 7 (:TYPE-PRESCRIPTION BVOR-TYPE))
               (6 6 (:REWRITE DEFAULT-+-1))
               (6 3
                  (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG2-CHEAP))
               (6 3
                  (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG1-CHEAP))
               (6 2
                  (:TYPE-PRESCRIPTION LOGAND-NON-POSITIVE-TYPE))
               (5 5 (:TYPE-PRESCRIPTION NATP))
               (5 5
                  (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
               (5 5 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
               (4 4
                  (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
               (4 1
                  (:REWRITE BVOR-WHEN-NOT-INTEGERP-ARG3))
               (4 1
                  (:REWRITE BVOR-WHEN-NOT-INTEGERP-ARG2))
               (3 3
                  (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
               (3 3
                  (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
               (3 3
                  (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
               (3 3 (:REWRITE BVAND-WITH-MASK))
               (3 3
                  (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
               (3 2
                  (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
               (3 2
                  (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
               (3 2
                  (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
               (3 2
                  (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
               (3 1
                  (:REWRITE BVOR-WHEN-SIZE-IS-NOT-POSITIVE))
               (3 1 (:REWRITE BVOR-NUMERIC-BOUND))
               (3 1
                  (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
               (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
               (2 2
                  (:TYPE-PRESCRIPTION LOGAND-NON-NEGATIVE-TYPE))
               (2 2
                  (:TYPE-PRESCRIPTION LOGAND-NEGATIVE-TYPE))
               (2 2 (:TYPE-PRESCRIPTION BINARY-LOGAND))
               (2 2
                  (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
               (2 2 (:REWRITE FLOOR-MINUS-ERIC-BETTER))
               (2 1
                  (:REWRITE LOGIOR-WHEN-NOT-INTEGERP-ARG2))
               (2 1
                  (:REWRITE LOGIOR-WHEN-NOT-INTEGERP-ARG1))
               (2 1
                  (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
               (2 1
                  (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
               (1 1
                  (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
               (1 1 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG2))
               (1 1
                  (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
               (1 1
                  (:REWRITE BVOR-WHEN-SIZE-IS-NOT-INTEGERP))
               (1 1 (:REWRITE BVCHOP-BOUND))
               (1 1 (:REWRITE BVAND-OF-CONSTANT)))
(FLOOR2-FLOOR2-SUB1-INDUCT
     (6 6
        (:TYPE-PRESCRIPTION FLOOR-TYPE-WHEN-NONPOSITIVE-AND-NONNEGATIVE))
     (6 6
        (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
     (6 6
        (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER)))
(INTEGERP-OF-*-OF-1/2-BECOMES-EVENP
     (8 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (3 3 (:REWRITE DEFAULT-*-2))
     (3 3 (:REWRITE DEFAULT-*-1))
     (2 2 (:TYPE-PRESCRIPTION RATIONALP-OF-MOD))
     (2 2
        (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
     (2 2
        (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
     (2 2
        (:REWRITE INTEGERP-OF-HALF-WHEN-MULT-OF-EXPT))
     (2 2 (:REWRITE INTEGERP-OF-*)))
(EVENP-WHEN-EQUAL-OF-MOD-OF-EXPT-AND-0
     (60 3 (:REWRITE MOD-WHEN-MULTIPLE))
     (47 3 (:REWRITE MOD-WHEN-<))
     (34 7 (:REWRITE INTEGERP-OF-*))
     (30 6 (:REWRITE DEFAULT-UNARY-/))
     (22 11 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (20 8 (:REWRITE DEFAULT-*-2))
     (11 11 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (11 11
         (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (11 5 (:REWRITE DEFAULT-<-2))
     (10 10
         (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
     (10 10 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
     (9 3
        (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (9 3
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (8 8 (:REWRITE DEFAULT-*-1))
     (6 1 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
     (5 5 (:REWRITE DEFAULT-<-1))
     (4 4
        (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (4 4 (:LINEAR EXPT-BOUND-LINEAR-WEAK))
     (4 1 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (4 1 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (3 3
        (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (3 3
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (3 1 (:REWRITE DEFAULT-+-2))
     (1 1
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (1 1 (:REWRITE DEFAULT-+-1)))
(EVENP-WHEN-EQUAL-OF-MOD-OF-2-AND-0-CHEAP
     (15 1 (:REWRITE MOD-WHEN-MULTIPLE))
     (15 1
         (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (8 8
        (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
     (8 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 2 (:REWRITE COMMUTATIVITY-OF-*))
     (5 1 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (4 4 (:REWRITE DEFAULT-*-2))
     (4 4 (:REWRITE DEFAULT-*-1))
     (4 1 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
     (4 1 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3
        (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (3 1 (:REWRITE MOD-WHEN-<))
     (2 2
        (:REWRITE INTEGERP-OF-HALF-WHEN-MULT-OF-EXPT))
     (2 2 (:REWRITE INTEGERP-OF-*))
     (2 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE DEFAULT-<-1))
     (1 1
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (1 1
        (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (1 1
        (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (1 1
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (1 1
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (1 1 (:REWRITE MOD-OF-2-WHEN-EVEN-CHEAP))
     (1 1
        (:REWRITE EVENP-WHEN-EQUAL-OF-MOD-OF-EXPT-AND-0))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE)))
(MOD-OF-2-AND-EXPT-OF-2
     (406 14
          (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (280 14 (:REWRITE MOD-WHEN-MULTIPLE))
     (154 28 (:REWRITE INTEGERP-OF-*))
     (140 28 (:REWRITE DEFAULT-UNARY-/))
     (88 44 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (84 28 (:REWRITE DEFAULT-*-2))
     (44 44 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (44 44
         (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (42 14
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (42 14
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (31 13 (:REWRITE DEFAULT-<-2))
     (28 28 (:REWRITE DEFAULT-*-1))
     (14 14
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (14 14
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (14 14
         (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (13 13 (:REWRITE DEFAULT-<-1))
     (12 4 (:REWRITE DEFAULT-+-2))
     (6 1 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
     (4 4 (:REWRITE DEFAULT-+-1))
     (2 2 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
     (2 2
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE)))
(MOD-OF-1-AND-EXPT-OF-2
     (161 7 (:REWRITE MOD-WHEN-MULTIPLE))
     (161 7
          (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (109 7 (:REWRITE MOD-WHEN-<))
     (70 14 (:REWRITE DEFAULT-UNARY-/))
     (56 14 (:REWRITE UNICITY-OF-1))
     (42 14 (:REWRITE DEFAULT-*-2))
     (42 14 (:DEFINITION FIX))
     (30 15 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (23 9 (:REWRITE DEFAULT-<-2))
     (21 7
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (21 7
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (15 15 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (15 15
         (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (14 14 (:REWRITE DEFAULT-*-1))
     (10 10 (:LINEAR EXPT-BOUND-LINEAR))
     (9 9 (:REWRITE DEFAULT-<-1))
     (8 8 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
     (8 8
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (7 7
        (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (7 7
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (7 7
        (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (6 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
     (2 2 (:REWRITE DEFAULT-+-1))
     (1 1
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE)))
(MOD-OF-FLOOR-OF-2-AND-EXPT2-OF-ONE-LESS
     (330 9 (:REWRITE MOD-WHEN-<))
     (228 9 (:REWRITE MOD-WHEN-MULTIPLE))
     (114 21 (:REWRITE INTEGERP-OF-*))
     (96 96
         (:TYPE-PRESCRIPTION FLOOR-TYPE-WHEN-NONPOSITIVE-AND-NONNEGATIVE))
     (96 96
         (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
     (96 96
         (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
     (92 4 (:LINEAR FLOOR-BOUND-BETTER-LINEAR))
     (90 18 (:REWRITE DEFAULT-UNARY-/))
     (76 40 (:REWRITE DEFAULT-*-2))
     (76 4 (:LINEAR FLOOR-UPPER-BOUND-LINEAR))
     (71 2 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (64 40 (:REWRITE DEFAULT-*-1))
     (58 29 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (43 25 (:REWRITE DEFAULT-<-2))
     (39 9
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (37 25 (:REWRITE DEFAULT-<-1))
     (29 29 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (29 29
         (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (27 9
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (27 9 (:REWRITE FLOOR-WHEN-<))
     (21 9
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (21 9
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (16 4 (:LINEAR FLOOR-BOUND-ARG1-LINEAR))
     (14 14 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
     (12 12
         (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (12 3 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (10 10
         (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
     (9 9
        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
     (9 9
        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
     (9 9
        (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
     (9 9
        (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
     (9 9
        (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
     (9 9 (:REWRITE FLOOR-MINUS-ERIC-BETTER))
     (8 8 (:LINEAR EXPT-BOUND-LINEAR-WEAK))
     (7 4
        (:REWRITE <-OF-FLOOR-OF-CONSTANT-AND-CONSTANT-GEN))
     (7 3 (:REWRITE DEFAULT-+-2))
     (6 6
        (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (6 1 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
     (3 3 (:REWRITE DEFAULT-+-1))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE)))
(LOGAND-OF-BVCHOP
     (1348 1348
           (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
     (1252 59 (:REWRITE MOD-WHEN-MULTIPLE))
     (1023 3 (:REWRITE FLOOR-UNIQUE-EQUAL-VERSION))
     (892 892 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
     (783 783
          (:TYPE-PRESCRIPTION LOGAND-NEGATIVE-TYPE))
     (709 94 (:REWRITE FLOOR-WHEN-<))
     (678 46 (:REWRITE MOD-WHEN-<))
     (534 78 (:REWRITE DEFAULT-UNARY-/))
     (504 90
          (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG2-CHEAP))
     (438 222 (:REWRITE DEFAULT-*-2))
     (422 102 (:REWRITE DEFAULT-+-2))
     (366 102 (:REWRITE DEFAULT-+-1))
     (348 52 (:REWRITE INTEGERP-OF-*))
     (327 219 (:REWRITE DEFAULT-<-2))
     (310 90
          (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG1-CHEAP))
     (285 219 (:REWRITE DEFAULT-<-1))
     (254 222 (:REWRITE DEFAULT-*-1))
     (214 107
          (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (201 58 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
     (140 26 (:REWRITE *-OF--1))
     (132 46
          (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (128 128 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (123 35 (:REWRITE DEFAULT-UNARY-MINUS))
     (116 46
          (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (94 94
         (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
     (94 94
         (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
     (94 94
         (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
     (94 94
         (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
     (94 94
         (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
     (94 94 (:REWRITE FLOOR-MINUS-ERIC-BETTER))
     (62 46
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (62 46
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (55 55
         (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (42 21 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (26 26
         (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
     (26 26 (:REWRITE *-OF---ARG1))
     (26 8
         (:REWRITE <-OF-FLOOR-OF-CONSTANT-AND-CONSTANT-GEN))
     (23 11
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
     (21 21 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
     (20 20 (:REWRITE MOD-OF-2-WHEN-EVEN-CHEAP))
     (13 13
         (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
     (13 13
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
     (12 12
         (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
     (12 12
         (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
     (3 3 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (3 3
        (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (2 2
        (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (2 2
        (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1
        (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
     (1 1
        (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM)))
(BVXOR-OF-BVAND-SAME-ARG2-HELPER
     (231 3 (:REWRITE BVAND-WITH-MASK-BETTER))
     (226 2 (:DEFINITION LOGMASKP))
     (198 32
          (:REWRITE LOGIOR-WHEN-NOT-INTEGERP-ARG2))
     (124 6
          (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (106 32
          (:REWRITE LOGIOR-WHEN-NOT-INTEGERP-ARG1))
     (93 31
         (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG1-CHEAP))
     (59 31
         (:REWRITE LOGAND-WHEN-NOT-INTEGERP-ARG2-CHEAP))
     (58 58
         (:TYPE-PRESCRIPTION LOGAND-NEGATIVE-TYPE))
     (42 42 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
     (28 2 (:DEFINITION INTEGER-LENGTH))
     (26 26 (:LINEAR EXPT-BOUND-LINEAR))
     (20 20
         (:TYPE-PRESCRIPTION <-OF-LOGIOR-AND-0-TYPE))
     (20 10 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (16 5
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (16 2 (:DEFINITION EXPT2$INLINE))
     (14 14
         (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
     (14 14
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
     (14 14
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
     (14 14 (:REWRITE UBP-LONGER-BETTER))
     (14 6 (:REWRITE DEFAULT-+-2))
     (14 2
         (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
     (14 2 (:DEFINITION NFIX))
     (12 10 (:REWRITE DEFAULT-<-2))
     (12 10 (:REWRITE DEFAULT-<-1))
     (12 8 (:REWRITE LOGNOT-WHEN-NOT-INTEGERP))
     (11 5 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (10 10 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (10 5
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (10 5
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (8 8 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
     (8 8 (:REWRITE LOGAND-COMBINE-CONSTANTS))
     (8 5
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (8 2 (:DEFINITION FIX))
     (7 5
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (7 1 (:REWRITE UNSIGNED-BYTE-P-OF-LOGIOR))
     (6 6 (:REWRITE DEFAULT-+-1))
     (6 2 (:REWRITE FLOOR-WHEN-<))
     (6 2
        (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
     (6 2
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-POSITIVE))
     (6 1
        (:REWRITE LOGXOR-WHEN-NOT-INTEGERP-ARG2))
     (6 1
        (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
     (5 5 (:TYPE-PRESCRIPTION POSP))
     (5 5 (:TYPE-PRESCRIPTION NATP))
     (5 5 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (5 2
        (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
     (4 4 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
     (4 4
        (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (4 3
        (:REWRITE BVAND-WHEN-SIZE-IS-NOT-INTEGERP))
     (4 1
        (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
     (3 3
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
     (3 3
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
     (3 3 (:REWRITE BVAND-WITH-MASK))
     (3 1
        (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
     (2 2 (:TYPE-PRESCRIPTION LOGMASKP))
     (2 2 (:REWRITE ZIP-OPEN))
     (2 2
        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
     (2 2
        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
     (2 2
        (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
     (2 2
        (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
     (2 2
        (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
     (2 2 (:REWRITE FLOOR-MINUS-ERIC-BETTER))
     (2 2 (:REWRITE BVAND-OF-CONSTANT))
     (2 1
        (:REWRITE LOGXOR-WHEN-NOT-INTEGERP-ARG1))
     (2 1
        (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
     (1 1
        (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
     (1 1
        (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
     (1 1 (:REWRITE BVXOR-SUBST-ARG3))
     (1 1 (:REWRITE BVXOR-SUBST-ARG2))
     (1 1
        (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
     (1 1
        (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM)))
(BVXOR-OF-BVAND-SAME-ARG2
     (962 5 (:REWRITE BVAND-WITH-MASK-BETTER))
     (952 5 (:DEFINITION LOGMASKP))
     (495 15
          (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (186 101
          (:TYPE-PRESCRIPTION <-OF-0-AND-EXPT))
     (171 5 (:DEFINITION INTEGER-LENGTH))
     (159 8 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
     (123 13 (:REWRITE BVCHOP-IDENTITY))
     (106 106 (:TYPE-PRESCRIPTION INTEGER-LENGTH))
     (106 4 (:LINEAR BVCHOP-UPPER-BOUND))
     (101 101
          (:TYPE-PRESCRIPTION INTEGERP-OF-EXPT-TYPE))
     (100 5 (:REWRITE FLOOR-WHEN-<))
     (76 68 (:LINEAR EXPT-BOUND-LINEAR-WEAK))
     (68 68 (:LINEAR EXPT-BOUND-LINEAR))
     (60 30 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (53 36 (:REWRITE DEFAULT-<-1))
     (52 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
     (42 14
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUNDS))
     (40 5 (:DEFINITION EXPT2$INLINE))
     (36 36 (:REWRITE DEFAULT-<-2))
     (36 15 (:REWRITE DEFAULT-+-2))
     (36 9
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (35 35 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (35 5 (:DEFINITION NFIX))
     (34 34 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (30 30
         (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (27 9 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (22 13
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (20 5 (:DEFINITION FIX))
     (19 5 (:REWRITE ZIP-OPEN))
     (18 15 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
     (16 4
         (:REWRITE BVAND-WHEN-X-IS-NOT-AN-INTEGER))
     (15 15
         (:REWRITE SIZE-NON-NEGATIVE-WHEN-UNSIGNED-BYTE-P-FREE))
     (15 15 (:REWRITE DEFAULT-+-1))
     (14 14
         (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
     (14 14
         (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
     (14 14 (:REWRITE UBP-LONGER-BETTER))
     (13 13 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (12 3
         (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
     (11 4
         (:REWRITE BVAND-WHEN-Y-IS-NOT-AN-INTEGER))
     (10 10
         (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (10 5 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (10 5
         (:REWRITE BVAND-WITH-MASK-BETTER-ERIC-ALT))
     (9 9 (:TYPE-PRESCRIPTION POSP))
     (9 9
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (9 9
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (9 9
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (9 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
     (8 4 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
     (6 6 (:TYPE-PRESCRIPTION LOGMASKP))
     (5 5
        (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
     (5 5 (:REWRITE NATP-WHEN-UNSIGNED-BYTE-P))
     (5 5
        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
     (5 5
        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
     (5 5
        (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
     (5 5
        (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
     (5 5
        (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
     (5 5 (:REWRITE FLOOR-MINUS-ERIC-BETTER))
     (5 5
        (:REWRITE BVAND-WITH-MASK-BETTER-ERIC))
     (5 5 (:REWRITE BVAND-WITH-MASK))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 4 (:REWRITE BVAND-OF-CONSTANT))
     (4 4
        (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
     (4 4
        (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
     (4 3
        (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
     (3 3 (:REWRITE BVXOR-SUBST-ARG3))
     (3 3 (:REWRITE BVXOR-SUBST-ARG2))
     (1 1 (:TYPE-PRESCRIPTION BVNOT))
     (1 1
        (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
     (1 1 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG2))
     (1 1
        (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (1 1 (:REWRITE BVCHOP-BOUND)))
