(LEFTROTATE (84 36 (:REWRITE DEFAULT-+-2))
            (48 12 (:REWRITE DEFAULT-UNARY-MINUS))
            (36 36 (:REWRITE DEFAULT-+-1))
            (36 18 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
            (34 3
                (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
            (30 18 (:REWRITE DEFAULT-<-1))
            (28 3 (:REWRITE MOD-WHEN-MULTIPLE))
            (24 18 (:REWRITE DEFAULT-<-2))
            (18 18 (:TYPE-PRESCRIPTION POWER-OF-2P))
            (12 6 (:REWRITE INTEGERP-OF-*))
            (9 3 (:REWRITE MOD-WHEN-<))
            (8 8 (:REWRITE DEFAULT-*-2))
            (8 8 (:REWRITE DEFAULT-*-1))
            (8 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
            (6 6 (:REWRITE FOLD-CONSTS-IN-+))
            (6 6 (:REWRITE DEFAULT-UNARY-/))
            (6 2 (:REWRITE COMMUTATIVITY-OF-*))
            (3 3
               (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
            (3 3
               (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
            (3 3
               (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
            (3 3
               (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
            (3 3
               (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
            (3 3
               (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE)))
(UNSIGNED-BYTE-P-OF-LEFTROTATE
     (368 23
          (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (322 23 (:REWRITE MOD-WHEN-MULTIPLE))
     (301 2 (:DEFINITION POSP))
     (295 3 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (270 6 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (252 6 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (184 46 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (164 82 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (160 4
          (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
     (151 3 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (149 1 (:REWRITE <-OF-+-OF---AND-0-ARG2))
     (138 46 (:REWRITE COMMUTATIVITY-OF-*))
     (92 92 (:REWRITE DEFAULT-*-2))
     (92 92 (:REWRITE DEFAULT-*-1))
     (92 46 (:REWRITE INTEGERP-OF-*))
     (85 85 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (69 23 (:REWRITE MOD-WHEN-<))
     (68 42 (:REWRITE DEFAULT-<-2))
     (51 42 (:REWRITE DEFAULT-<-1))
     (48 33 (:REWRITE DEFAULT-+-2))
     (46 46 (:REWRITE DEFAULT-UNARY-/))
     (44 2
         (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
     (36 33 (:REWRITE DEFAULT-+-1))
     (33 3 (:REWRITE BVCAT-OF-BVCHOP-TIGHTEN))
     (33 3
         (:REWRITE BVCAT-OF-BVCHOP-HIGH-TIGHTEN))
     (23 23
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (23 23
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (23 23
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (23 23
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (23 23
         (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (20 5
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (12 3 (:REWRITE DEFAULT-UNARY-MINUS))
     (9 3
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (8 4
        (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
     (7 3
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (7 3
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (6 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (6 3 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (6 3
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (5 5
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (5 2
        (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
     (4 4
        (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
     (4 4 (:TYPE-PRESCRIPTION LOGTAIL$INLINE))
     (4 4
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (4 4
        (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
     (4 2
        (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
     (4 1 (:REWRITE SLICE-TOO-HIGH-IS-0))
     (3 3 (:TYPE-PRESCRIPTION POSP))
     (3 3 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (3 3 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (3 3
        (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (3 3 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (3 3
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (3 3 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (3 1
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
     (3 1
        (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
     (3 1 (:REWRITE LOGTAIL-BECOMES-0))
     (2 2 (:TYPE-PRESCRIPTION SLICE))
     (2 2 (:REWRITE FOLD-CONSTS-IN-+))
     (1 1 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (1 1
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1
        (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1)))
(LEFTROTATE16)
(LEFTROTATE32)
(LEFTROTATE64)
(LEFTROTATE-OF-0-ARG2
     (177 12 (:REWRITE BVCHOP-IDENTITY))
     (132 4
          (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
     (68 34 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (55 11 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (51 30 (:REWRITE DEFAULT-<-2))
     (45 7 (:DEFINITION NATP))
     (45 5 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
     (42 30 (:REWRITE DEFAULT-<-1))
     (41 41 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (40 10 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
     (34 34 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (31 11
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (28 12
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (28 12
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (25 11
         (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (19 19 (:TYPE-PRESCRIPTION NATP))
     (16 16
         (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
     (16 16 (:TYPE-PRESCRIPTION LOGTAIL$INLINE))
     (15 15 (:TYPE-PRESCRIPTION POSP))
     (14 12 (:REWRITE DEFAULT-+-2))
     (14 7 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (13 12 (:REWRITE DEFAULT-+-1))
     (13 12
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (12 12 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (12 4
         (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
     (12 4 (:REWRITE LOGTAIL-BECOMES-0))
     (10 10
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (9 1
        (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
     (8 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
     (8 1 (:REWRITE BVCAT-OF-BVCHOP-TIGHTEN))
     (8 1
        (:REWRITE BVCAT-OF-BVCHOP-HIGH-TIGHTEN))
     (7 2 (:REWRITE SLICE-OUT-OF-ORDER))
     (6 1 (:DEFINITION POSP))
     (4 4 (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1))
     (4 2 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (3 3
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (3 1
        (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
     (3 1
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
     (3 1 (:REWRITE SLICE-TOO-HIGH-IS-0))
     (3 1 (:REWRITE +-OF---AND-0))
     (2 2 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (2 2 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (2 2
        (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (2 2 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (1 1
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
     (1 1
        (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (1 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
     (1 1
        (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (1 1 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (1 1 (:REWRITE BVCAT-FIX-CONSTANT-ARG2)))
(LEFTROTATE32-OF-0-ARG1)
(LEFTROTATE-OF-0-ARG3
     (122 4
          (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
     (90 5 (:REWRITE BVCHOP-IDENTITY))
     (76 5 (:DEFINITION POSP))
     (70 70
         (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
     (70 70
         (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
     (70 70
         (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
     (70 20
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (58 3
         (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
     (56 3 (:REWRITE SLICE-TOO-HIGH-IS-0))
     (52 26 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (49 24 (:REWRITE DEFAULT-+-2))
     (49 3 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (48 20 (:REWRITE DEFAULT-<-2))
     (34 3 (:REWRITE SLICE-OUT-OF-ORDER))
     (32 2
         (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (27 24 (:REWRITE DEFAULT-+-1))
     (26 26 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (25 1 (:REWRITE <-OF-+-OF---AND-0-ARG2))
     (22 22
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (22 20 (:REWRITE DEFAULT-<-1))
     (22 2 (:REWRITE MOD-WHEN-MULTIPLE))
     (21 3 (:REWRITE IFIX-WHEN-INTEGERP))
     (20 20
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (16 16 (:TYPE-PRESCRIPTION IFIX))
     (16 5
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (16 5
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (15 5
         (:LINEAR MOD-BOUND-LINEAR-ARG2-STRONG))
     (15 3 (:REWRITE DEFAULT-UNARY-MINUS))
     (14 14 (:TYPE-PRESCRIPTION POSP))
     (10 4 (:REWRITE DEFAULT-UNARY-/))
     (10 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (8 4 (:REWRITE INTEGERP-OF-*))
     (8 2 (:REWRITE MOD-WHEN-<))
     (7 1 (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1))
     (6 6 (:REWRITE DEFAULT-*-2))
     (6 6 (:REWRITE DEFAULT-*-1))
     (6 2 (:REWRITE COMMUTATIVITY-OF-*))
     (5 5 (:TYPE-PRESCRIPTION NATP))
     (5 5
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (5 5
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (5 5 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (5 5 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (5 5 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (5 3 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (4 4
        (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
     (4 4 (:TYPE-PRESCRIPTION LOGTAIL$INLINE))
     (4 2
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (3 3
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
     (3 3
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
     (3 3 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (3 3 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (3 3
        (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (3 3 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (3 3
        (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (3 3 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
     (3 1 (:REWRITE LOGTAIL-BECOMES-0))
     (3 1 (:REWRITE INTEGERP-OF-MOD))
     (2 2
        (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (2 2
        (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (2 2
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (2 2
        (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (1 1
        (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
     (1 1 (:REWRITE LOGTAIL-OF-0-ARG2))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+)))
(LEFTROTATE32-OF-0-ARG2)
(LEFTROTATE-OF-PLUS
     (794 4 (:REWRITE SLICE-OUT-OF-ORDER))
     (715 55
          (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (702 54 (:REWRITE MOD-WHEN-MULTIPLE))
     (656 16 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (608 16 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (546 4 (:DEFINITION POSP))
     (534 4 (:REWRITE <-OF-+-OF---AND-0-ARG2))
     (532 4 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (432 108
          (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (332 109 (:REWRITE COMMUTATIVITY-OF-*))
     (294 4
          (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
     (288 4
          (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
     (270 2 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (236 118
          (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (219 219 (:REWRITE DEFAULT-*-2))
     (219 219 (:REWRITE DEFAULT-*-1))
     (162 54 (:REWRITE MOD-WHEN-<))
     (133 75 (:REWRITE DEFAULT-<-2))
     (122 122 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (108 108 (:REWRITE INTEGERP-OF-*))
     (92 2 (:REWRITE BVCHOP-IDENTITY))
     (91 75 (:REWRITE DEFAULT-<-1))
     (88 4
         (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
     (55 55
         (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (54 54
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (54 54
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (54 54
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (54 54
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (54 2 (:REWRITE BVCAT-OF-BVCHOP-TIGHTEN))
     (54 2
         (:REWRITE BVCAT-OF-BVCHOP-HIGH-TIGHTEN))
     (42 12 (:REWRITE DEFAULT-+-2))
     (40 10
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (24 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (12 12 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (12 12 (:REWRITE DEFAULT-+-1))
     (10 10
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (10 4
         (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
     (10 2
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (10 2
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (8 8
        (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
     (8 8 (:TYPE-PRESCRIPTION LOGTAIL$INLINE))
     (8 4 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (8 4
        (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
     (8 2 (:REWRITE SLICE-TOO-HIGH-IS-0))
     (8 2
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (6 6 (:TYPE-PRESCRIPTION POSP))
     (6 2
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
     (6 2
        (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
     (6 2 (:REWRITE LOGTAIL-BECOMES-0))
     (6 2
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (5 1 (:REWRITE DISTRIBUTIVITY))
     (4 4 (:TYPE-PRESCRIPTION SLICE))
     (4 4 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (4 4 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (4 4
        (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (4 4 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (4 4
        (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
     (2 2 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (2 2
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
     (2 2 (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1))
     (2 2
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (2 2 (:REWRITE BVCHOP-SUBST-CONSTANT)))
(LEFTROTATE32-OF-BVCHOP-5
     (794 4 (:REWRITE SLICE-OUT-OF-ORDER))
     (691 55 (:REWRITE MOD-WHEN-MULTIPLE))
     (691 55
          (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (656 16 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (608 16 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (546 4 (:DEFINITION POSP))
     (534 4 (:REWRITE <-OF-+-OF---AND-0-ARG2))
     (532 4 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (424 106
          (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (318 106 (:REWRITE COMMUTATIVITY-OF-*))
     (294 4
          (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
     (288 4
          (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
     (271 3 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (230 115
          (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (212 212 (:REWRITE DEFAULT-*-2))
     (212 212 (:REWRITE DEFAULT-*-1))
     (161 55 (:REWRITE MOD-WHEN-<))
     (132 74 (:REWRITE DEFAULT-<-2))
     (119 119 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (106 106 (:REWRITE INTEGERP-OF-*))
     (95 3 (:REWRITE BVCHOP-IDENTITY))
     (93 74 (:REWRITE DEFAULT-<-1))
     (88 4
         (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
     (55 55
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (55 55
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (55 55
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (55 55
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (55 55
         (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (54 2 (:REWRITE BVCAT-OF-BVCHOP-TIGHTEN))
     (54 2
         (:REWRITE BVCAT-OF-BVCHOP-HIGH-TIGHTEN))
     (40 10
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (40 10 (:REWRITE DEFAULT-+-2))
     (24 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (14 14 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (11 3
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (11 3
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (10 10
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (10 10 (:REWRITE DEFAULT-+-1))
     (10 4
         (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
     (9 3
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (8 8
        (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
     (8 8 (:TYPE-PRESCRIPTION LOGTAIL$INLINE))
     (8 4 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (8 4
        (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
     (8 2 (:REWRITE SLICE-TOO-HIGH-IS-0))
     (7 3
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (6 6 (:TYPE-PRESCRIPTION POSP))
     (6 2
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
     (6 2
        (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
     (6 2 (:REWRITE LOGTAIL-BECOMES-0))
     (4 4 (:TYPE-PRESCRIPTION SLICE))
     (4 4 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (4 4 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (4 4
        (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (4 4 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (4 4
        (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
     (3 3
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (3 3 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (2 2 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (2 2
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
     (2 2
        (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1)))
(UNSIGNED-BYTE-P-32-OF-LEFTROTATE32)
(UNSIGNED-BYTE-P-OF-LEFTROTATE32
     (299 23 (:REWRITE MOD-WHEN-MULTIPLE))
     (299 23
          (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (273 2 (:DEFINITION POSP))
     (267 3 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (246 6 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (228 6 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (184 46 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (146 4
          (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
     (138 46 (:REWRITE COMMUTATIVITY-OF-*))
     (137 3 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (135 1 (:REWRITE <-OF-+-OF---AND-0-ARG2))
     (118 59 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (92 92 (:REWRITE DEFAULT-*-2))
     (92 92 (:REWRITE DEFAULT-*-1))
     (69 23 (:REWRITE MOD-WHEN-<))
     (66 40 (:REWRITE DEFAULT-<-2))
     (62 62 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (49 40 (:REWRITE DEFAULT-<-1))
     (46 46 (:REWRITE INTEGERP-OF-*))
     (44 2
         (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
     (29 3 (:REWRITE BVCAT-OF-BVCHOP-TIGHTEN))
     (29 3
         (:REWRITE BVCAT-OF-BVCHOP-HIGH-TIGHTEN))
     (24 6 (:REWRITE DEFAULT-+-2))
     (23 23
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (23 23
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (23 23
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (23 23
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (23 23
         (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (20 5
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (12 4
         (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
     (12 3 (:REWRITE DEFAULT-UNARY-MINUS))
     (9 6 (:REWRITE DEFAULT-+-1))
     (9 3
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (7 3
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (7 3
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (6 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (6 3 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (6 3
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (5 5
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (5 2
        (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
     (4 4
        (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
     (4 4 (:TYPE-PRESCRIPTION LOGTAIL$INLINE))
     (4 4
        (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
     (4 2
        (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
     (4 1 (:REWRITE SLICE-TOO-HIGH-IS-0))
     (3 3 (:TYPE-PRESCRIPTION POSP))
     (3 3 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (3 3 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (3 3
        (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (3 3 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (3 3
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (3 3 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (3 1
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
     (3 1
        (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
     (3 1 (:REWRITE LOGTAIL-BECOMES-0))
     (2 2 (:TYPE-PRESCRIPTION SLICE))
     (1 1 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (1 1
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1
        (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1)))
(BVCHOP-OF-LEFTROTATE32-DOES-NOTHING
     (20 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
     (14 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
     (2 1 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (1 1 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1)))
(LEFTROTATE32-OF-BVCHOP-ARG2
     (1908 41
           (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
     (1167 15
           (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (844 70 (:REWRITE MOD-WHEN-MULTIPLE))
     (844 70
          (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (728 59
          (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
     (565 25 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
     (498 249
          (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (444 138
          (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (414 138 (:REWRITE COMMUTATIVITY-OF-*))
     (395 162 (:REWRITE DEFAULT-<-2))
     (276 276 (:REWRITE DEFAULT-*-2))
     (276 276 (:REWRITE DEFAULT-*-1))
     (273 2 (:DEFINITION POSP))
     (269 269 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (249 162 (:REWRITE DEFAULT-<-1))
     (226 130
          (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
     (222 88 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (211 88
          (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (208 70 (:REWRITE MOD-WHEN-<))
     (174 42 (:REWRITE LOGTAIL-BECOMES-0))
     (161 8 (:REWRITE SLICE-TOO-HIGH-IS-0))
     (149 7
          (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
     (138 138 (:REWRITE INTEGERP-OF-*))
     (130 130 (:TYPE-PRESCRIPTION LOGTAIL$INLINE))
     (111 91
          (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (111 91
          (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (109 91
          (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (106 30
          (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
     (100 88
          (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (98 2 (:LINEAR <=-OF-LOGTAIL-SAME-LINEAR))
     (91 91 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (70 70
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (70 70
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (70 70
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (70 70
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (70 70
         (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (64 16 (:REWRITE DEFAULT-+-2))
     (42 42
         (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1))
     (40 20 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (29 3 (:REWRITE BVCAT-OF-BVCHOP-TIGHTEN))
     (29 3
         (:REWRITE BVCAT-OF-BVCHOP-HIGH-TIGHTEN))
     (24 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (22 16 (:REWRITE DEFAULT-+-1))
     (18 8
         (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
     (17 3
         (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
     (15 15 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (15 15 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (15 15
         (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (15 15 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (9 7 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (8 8
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
     (7 7 (:TYPE-PRESCRIPTION POSP))
     (7 7
        (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (7 7 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
     (6 3
        (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
     (5 5
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (4 4
        (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
     (4 4 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
     (3 3 (:TYPE-PRESCRIPTION SLICE))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(LEFTROTATE32-OF-BVCHOP-HELPER
     (794 4 (:REWRITE SLICE-OUT-OF-ORDER))
     (691 55 (:REWRITE MOD-WHEN-MULTIPLE))
     (691 55
          (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (656 16 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (608 16 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (546 4 (:DEFINITION POSP))
     (534 4 (:REWRITE <-OF-+-OF---AND-0-ARG2))
     (532 4 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (424 106
          (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (318 106 (:REWRITE COMMUTATIVITY-OF-*))
     (294 4
          (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
     (288 4
          (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
     (271 3 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (230 115
          (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (212 212 (:REWRITE DEFAULT-*-2))
     (212 212 (:REWRITE DEFAULT-*-1))
     (161 55 (:REWRITE MOD-WHEN-<))
     (132 74 (:REWRITE DEFAULT-<-2))
     (119 119 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (106 106 (:REWRITE INTEGERP-OF-*))
     (95 3 (:REWRITE BVCHOP-IDENTITY))
     (93 74 (:REWRITE DEFAULT-<-1))
     (88 4
         (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
     (55 55
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (55 55
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (55 55
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (55 55
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (55 55
         (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (54 2 (:REWRITE BVCAT-OF-BVCHOP-TIGHTEN))
     (54 2
         (:REWRITE BVCAT-OF-BVCHOP-HIGH-TIGHTEN))
     (40 10
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (40 10 (:REWRITE DEFAULT-+-2))
     (24 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (14 14 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (11 3
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (11 3
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (10 10
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (10 10 (:REWRITE DEFAULT-+-1))
     (10 4
         (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
     (9 3
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (8 8
        (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
     (8 8 (:TYPE-PRESCRIPTION LOGTAIL$INLINE))
     (8 4 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (8 4
        (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
     (8 2 (:REWRITE SLICE-TOO-HIGH-IS-0))
     (7 3
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (6 6 (:TYPE-PRESCRIPTION POSP))
     (6 2
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
     (6 2
        (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
     (6 2 (:REWRITE LOGTAIL-BECOMES-0))
     (4 4 (:TYPE-PRESCRIPTION SLICE))
     (4 4 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (4 4 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (4 4
        (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (4 4 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (4 4
        (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
     (3 3
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (3 3 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (2 2 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (2 2
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
     (2 2
        (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1)))
(LEFTROTATE32-OF-BVCHOP (18 6 (:REWRITE BVCHOP-IDENTITY))
                        (10 10 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
                        (7 6
                           (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
                        (6 6
                           (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
                        (6 6
                           (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
                        (6 6 (:REWRITE BVCHOP-SUBST-CONSTANT))
                        (5 5
                           (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
                        (5 5 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
                        (5 5
                           (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
                        (3 1
                           (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
                        (1 1 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP)))
(LEFTROTATE-OF-MOD-SAME
     (816 70
          (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (682 70 (:REWRITE MOD-WHEN-MULTIPLE))
     (626 4 (:REWRITE SLICE-OUT-OF-ORDER))
     (620 20 (:LINEAR MOD-BOUND-LINEAR-ARG1))
     (560 20 (:LINEAR MOD-BOUND-LINEAR-ARG2))
     (468 2
          (:REWRITE INTEGERP-OF-*-OF-/-AND-MOD-SAME))
     (434 217
          (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (434 4 (:DEFINITION POSP))
     (420 4 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
     (276 138 (:REWRITE INTEGERP-OF-*))
     (238 4
          (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
     (232 4
          (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
     (221 221 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (214 2 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (214 2 (:REWRITE <-OF-+-OF---AND-0-ARG2))
     (208 2 (:REWRITE +-OF---AND-0))
     (146 140 (:REWRITE DEFAULT-*-2))
     (146 140 (:REWRITE DEFAULT-*-1))
     (143 91 (:REWRITE DEFAULT-<-2))
     (138 138 (:REWRITE DEFAULT-UNARY-/))
     (116 91 (:REWRITE DEFAULT-<-1))
     (92 2 (:REWRITE BVCHOP-IDENTITY))
     (88 4
         (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
     (73 70
         (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (73 70
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (73 70
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (70 70
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (70 70
         (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (59 35 (:REWRITE DEFAULT-+-2))
     (54 2 (:REWRITE BVCAT-OF-BVCHOP-TIGHTEN))
     (54 2
         (:REWRITE BVCAT-OF-BVCHOP-HIGH-TIGHTEN))
     (40 10
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (35 35 (:REWRITE DEFAULT-+-1))
     (24 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (12 12 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (12 2 (:REWRITE COMMUTATIVITY-OF-*))
     (10 10
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (10 4
         (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
     (10 2
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (10 2
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (8 8
        (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
     (8 8 (:TYPE-PRESCRIPTION LOGTAIL$INLINE))
     (8 4 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (8 4
        (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
     (8 2 (:REWRITE SLICE-TOO-HIGH-IS-0))
     (8 2
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (6 6 (:TYPE-PRESCRIPTION POSP))
     (6 2
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
     (6 2
        (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
     (6 2 (:REWRITE LOGTAIL-BECOMES-0))
     (6 2
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (4 4 (:TYPE-PRESCRIPTION SLICE))
     (4 4 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (4 4 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (4 4
        (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (4 4 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (4 4
        (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (4 4 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
     (2 2 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (2 2
        (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
     (2 2 (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1))
     (2 2 (:REWRITE FOLD-CONSTS-IN-+))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (2 2
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (2 2 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (1 1
        (:REWRITE MOD-OF-MOD-WHEN-MULTIPLE-SAFE)))
(LEFTROTATE32-OF-MOD
     (13 1 (:REWRITE MOD-WHEN-MULTIPLE))
     (13 1
         (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (8 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 2 (:REWRITE COMMUTATIVITY-OF-*))
     (4 4 (:REWRITE DEFAULT-*-2))
     (4 4 (:REWRITE DEFAULT-*-1))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (3 1 (:REWRITE MOD-WHEN-<))
     (2 2 (:TYPE-PRESCRIPTION RATIONALP-OF-MOD))
     (2 2
        (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
     (2 2
        (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
     (2 2 (:REWRITE INTEGERP-OF-*))
     (1 1
        (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (1 1
        (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (1 1
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (1 1
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (1 1
        (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP)))
(LEFTROTATE-BECOMES-LEFTROTATE32)
(LEFTROTATE-BECOMES-LEFTROTATE64)
(LEFTROTATE-OF-LEFTROTATE
     (19964 320
            (:REWRITE UNSIGNED-BYTE-P-OF-+-WHEN-<-OF-LOGTAIL-AND-EXPT))
     (9851 196 (:REWRITE SLICE-TOO-HIGH-IS-0))
     (7767 2519 (:REWRITE DEFAULT-+-2))
     (6416 1890 (:REWRITE DEFAULT-<-2))
     (4940 1890 (:REWRITE DEFAULT-<-1))
     (4896 2519 (:REWRITE DEFAULT-+-1))
     (3629 552
           (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (3442 1721
           (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (3008 332 (:REWRITE LOGTAIL-BECOMES-0))
     (2997 552 (:REWRITE MOD-WHEN-MULTIPLE))
     (2373 1258
           (:TYPE-PRESCRIPTION LOGTAIL-NON-POSITIVE))
     (2328 110
           (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
     (2282 33 (:LINEAR <=-OF-LOGTAIL-SAME-LINEAR))
     (2015 2015 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (1879 62 (:DEFINITION POSP))
     (1538 1538 (:REWRITE FOLD-CONSTS-IN-+))
     (1440 808 (:REWRITE INTEGERP-OF-*))
     (1359 551 (:REWRITE MOD-WHEN-<))
     (1258 1258
           (:TYPE-PRESCRIPTION LOGTAIL$INLINE))
     (1186 387 (:REWRITE DEFAULT-UNARY-MINUS))
     (1076 318
           (:REWRITE LOGTAIL-WHEN-NOT-INTEGERP-ARG2))
     (871 22 (:REWRITE SLICE-OF-BVCHOP-TOO-HIGH))
     (820 820 (:REWRITE DEFAULT-*-2))
     (820 820 (:REWRITE DEFAULT-*-1))
     (810 810 (:REWRITE DEFAULT-UNARY-/))
     (730 196
          (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
     (591 124
          (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (588 294 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (581 124
          (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (552 552
          (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (552 552
          (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (552 552
          (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (552 552
          (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (552 552
          (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (551 14 (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT2))
     (551 14 (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT))
     (547 14
          (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT-GEN))
     (523 337
          (:REWRITE LOGTAIL-WHEN-NOT-POSP-ARG1))
     (474 102
          (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (474 22 (:REWRITE SLICE-OF-BVCHOP-LOW))
     (462 22 (:REWRITE SLICE-OF-BVCHOP-TIGHTEN))
     (440 196
          (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
     (413 102
          (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (353 124
          (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (347 11 (:REWRITE BVCAT-OF-BVCHOP-TIGHTEN))
     (347 11
          (:REWRITE BVCAT-OF-BVCHOP-HIGH-TIGHTEN))
     (285 46
          (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
     (270 270 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
     (270 270
          (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
     (270 270 (:REWRITE SLICE-SUBST-IN-CONSTANT))
     (263 263 (:REWRITE SLICE-TOO-HIGH-LEMMA))
     (252 14
          (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT-ALL-CASES))
     (188 46
          (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
     (183 183 (:TYPE-PRESCRIPTION POSP))
     (156 2
          (:REWRITE UNSIGNED-BYTE-P-OF-SLICE-GEN))
     (124 124 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (120 8 (:REWRITE LOGTAIL-OF-BVCAT))
     (111 7 (:REWRITE <-OF-MINUS-AND-CONSTANT))
     (108 4 (:REWRITE BVCHOP-OF-BVCAT-SAME))
     (102 1 (:REWRITE SLICE-OF-BVCAT-TOO-HIGH))
     (64 62 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
     (64 8
         (:REWRITE LOGTAIL-OF-BVCAT-WHEN-EXTENDS-INTO-UPPER))
     (64 8 (:REWRITE LOGTAIL-OF-BVCAT-LOW))
     (64 1
         (:REWRITE SLICE-OF-BVCAT-HACK-GEN-BETTER))
     (62 62
         (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
     (62 62 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
     (42 1 (:REWRITE SLICE-OF-BVCAT-HACK-2))
     (42 1 (:REWRITE SLICE-OF-BVCAT-HACK))
     (42 1 (:REWRITE SLICE-OF-BVCAT))
     (38 38
         (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (36 36 (:LINEAR SLICE-UPPER-BOUND-LINEAR))
     (33 1 (:REWRITE SLICE-OF-BVCAT-LOW-BETTER))
     (33 1
         (:REWRITE SLICE-OF-BVCAT-HACK-GEN-BETTER-CASE-1))
     (32 6 (:REWRITE COMMUTATIVITY-OF-*))
     (30 1
         (:REWRITE SLICE-OF-BVCAT-HACK-GEN-BETTER-CASE-3))
     (30 1
         (:REWRITE SLICE-OF-BVCAT-HACK-GEN-BETTER-CASE-2))
     (26 2 (:REWRITE DISTRIBUTIVITY))
     (18 1 (:REWRITE SLICE-OF-BVCAT-LOW))
     (9 9 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
     (2 2 (:REWRITE EQUAL-OF-MOD-SAME))
     (1 1 (:REWRITE *-OF---ARG1)))
(LEFTROTATE-32-OF-BVCHOP-5
     (13 1 (:REWRITE MOD-WHEN-MULTIPLE))
     (13 1
         (:REWRITE MOD-WHEN-INTEGERP-OF-QUOTIENT))
     (8 2 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 2 (:REWRITE COMMUTATIVITY-OF-*))
     (4 4 (:REWRITE DEFAULT-*-2))
     (4 4 (:REWRITE DEFAULT-*-1))
     (3 3 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (3 1 (:REWRITE MOD-WHEN-<))
     (2 2 (:TYPE-PRESCRIPTION RATIONALP-OF-MOD))
     (2 2
        (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE-2))
     (2 2
        (:TYPE-PRESCRIPTION INTEGERP-OF-MOD-TYPE))
     (2 2 (:REWRITE INTEGERP-OF-*))
     (1 1
        (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (1 1
        (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (1 1
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (1 1
        (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (1 1
        (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP)))
