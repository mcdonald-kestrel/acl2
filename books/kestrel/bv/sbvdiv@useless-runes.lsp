(SBVDIV
     (42 3 (:DEFINITION EXPT))
     (13 13 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (12 4 (:REWRITE BVCHOP-IDENTITY))
     (11 3 (:REWRITE COMMUTATIVITY-OF-+))
     (9 3 (:REWRITE DEFAULT-*-2))
     (8 8 (:REWRITE DEFAULT-+-2))
     (8 8 (:REWRITE DEFAULT-+-1))
     (7 1 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
     (7 1 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
     (6 6 (:REWRITE DEFAULT-<-2))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (6 2 (:REWRITE FOLD-CONSTS-IN-+))
     (6 2 (:DEFINITION NATP))
     (5 5 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (4 4
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (4 4 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (4 4
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (4 4
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (4 4
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (4 4
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (4 4 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (4 2 (:REWRITE ZIP-OPEN))
     (4 2 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (3 3 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
     (3 3
        (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
     (3 3
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (3 3 (:REWRITE DEFAULT-*-1))
     (3 1 (:REWRITE GETBIT-IDENTITY))
     (3 1 (:REWRITE DEFAULT-UNARY-MINUS))
     (3 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
     (2 2 (:TYPE-PRESCRIPTION NATP))
     (2 1 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (1 1
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (1 1
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (1 1 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (1 1
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (1 1 (:REWRITE GETBIT-IDENTITY-FREE)))
(UNSIGNED-BYTE-P-OF-SBVDIV
     (76 2
         (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (58 1 (:REWRITE DEFAULT-UNARY-/))
     (40 8 (:DEFINITION POSP))
     (26 13 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (25 17 (:REWRITE DEFAULT-<-1))
     (23 17 (:REWRITE DEFAULT-<-2))
     (18 2 (:DEFINITION NFIX))
     (14 14 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (14 2 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
     (14 2 (:LINEAR <-OF-LOGEXT-LINEAR-UPPER))
     (14 2 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
     (12 6 (:REWRITE DEFAULT-+-2))
     (11 1
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (11 1
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (10 6 (:REWRITE DEFAULT-+-1))
     (10 2 (:REWRITE COMMUTATIVITY-OF-+))
     (9 9 (:TYPE-PRESCRIPTION POSP))
     (9 4 (:REWRITE DEFAULT-UNARY-MINUS))
     (8 2 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
     (7 7
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (7 1 (:REWRITE EQUAL-OF-0-AND-BVCHOP))
     (6 2
        (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (3 1
        (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
     (3 1 (:REWRITE DEFAULT-NUMERATOR))
     (3 1 (:REWRITE DEFAULT-DENOMINATOR))
     (3 1
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (3 1 (:REWRITE BVCHOP-IDENTITY))
     (2 2
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (2 2 (:DEFINITION IFIX))
     (2 1 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (2 1 (:REWRITE DEFAULT-*-2))
     (2 1 (:REWRITE DEFAULT-*-1))
     (2 1
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (2 1
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT)))
(NATP-OF-SBVDIV)
(INTEGERP-OF-SBVDIV)
(SBVDIV-OF-BVCHOP-ARG2
     (610 2 (:REWRITE DEFAULT-UNARY-/))
     (330 2 (:REWRITE EQUAL-OF-0-AND-BVCHOP))
     (170 12 (:DEFINITION EXPT))
     (152 4
          (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (136 4 (:LINEAR BVCHOP-UPPER-BOUND))
     (122 8 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
     (120 4 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
     (108 4 (:LINEAR <-OF-LOGEXT-LINEAR-UPPER))
     (66 33 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (64 16 (:REWRITE COMMUTATIVITY-OF-+))
     (59 17
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (56 44 (:REWRITE DEFAULT-+-2))
     (52 44 (:REWRITE DEFAULT-+-1))
     (51 39 (:REWRITE DEFAULT-<-1))
     (51 17 (:REWRITE BVCHOP-IDENTITY))
     (47 39 (:REWRITE DEFAULT-<-2))
     (41 41 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (40 14 (:REWRITE DEFAULT-*-2))
     (40 8 (:DEFINITION NATP))
     (37 17
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (36 36
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (36 36
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (36 12
         (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
     (36 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
     (36 4 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
     (36 4 (:DEFINITION NFIX))
     (34 34 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (31 17 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (30 30 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (30 12 (:REWRITE DEFAULT-UNARY-MINUS))
     (24 17
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (24 17
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (24 8 (:REWRITE FOLD-CONSTS-IN-+))
     (18 10 (:REWRITE ZIP-OPEN))
     (17 17
         (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (17 17 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (16 14 (:REWRITE DEFAULT-*-1))
     (16 8 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (15 15 (:TYPE-PRESCRIPTION NATP))
     (14 14
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (13 13 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
     (10 10
         (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (7 7 (:TYPE-PRESCRIPTION POSP))
     (6 2 (:REWRITE DEFAULT-NUMERATOR))
     (6 2 (:REWRITE DEFAULT-DENOMINATOR))
     (4 4 (:DEFINITION IFIX)))
(SBVDIV-OF-BVCHOP-ARG3
     (606 2 (:REWRITE DEFAULT-UNARY-/))
     (326 2 (:REWRITE EQUAL-OF-0-AND-BVCHOP))
     (170 12 (:DEFINITION EXPT))
     (152 4
          (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (136 4 (:LINEAR BVCHOP-UPPER-BOUND))
     (122 8 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
     (120 4 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
     (108 4 (:LINEAR <-OF-LOGEXT-LINEAR-UPPER))
     (64 16 (:REWRITE COMMUTATIVITY-OF-+))
     (62 31 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (56 44 (:REWRITE DEFAULT-+-2))
     (55 17
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (52 44 (:REWRITE DEFAULT-+-1))
     (51 39 (:REWRITE DEFAULT-<-1))
     (51 17 (:REWRITE BVCHOP-IDENTITY))
     (47 39 (:REWRITE DEFAULT-<-2))
     (44 16 (:REWRITE DEFAULT-*-2))
     (40 8 (:DEFINITION NATP))
     (39 39 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (37 17
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (36 36
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (36 36
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (36 12
         (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
     (36 4 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
     (36 4 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
     (36 4 (:DEFINITION NFIX))
     (34 34 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (31 17 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (30 30 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
     (30 12 (:REWRITE DEFAULT-UNARY-MINUS))
     (24 17
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (24 17
         (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (24 8 (:REWRITE FOLD-CONSTS-IN-+))
     (20 16 (:REWRITE DEFAULT-*-1))
     (18 10 (:REWRITE ZIP-OPEN))
     (17 17
         (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (17 17 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (16 8 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (15 15 (:TYPE-PRESCRIPTION NATP))
     (14 14
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (13 13 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
     (10 10
         (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (7 7 (:TYPE-PRESCRIPTION POSP))
     (6 2 (:REWRITE DEFAULT-NUMERATOR))
     (6 2 (:REWRITE DEFAULT-DENOMINATOR))
     (4 4 (:DEFINITION IFIX)))
(SBVDIV-TOTAL
    (216 15 (:DEFINITION EXPT))
    (57 15 (:REWRITE COMMUTATIVITY-OF-+))
    (54 18 (:REWRITE BVCHOP-IDENTITY))
    (45 15 (:REWRITE DEFAULT-*-2))
    (42 42 (:REWRITE DEFAULT-+-2))
    (42 42 (:REWRITE DEFAULT-+-1))
    (42 6 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
    (36 12 (:REWRITE FOLD-CONSTS-IN-+))
    (35 5 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
    (33 11 (:REWRITE GETBIT-IDENTITY))
    (33 11 (:DEFINITION NATP))
    (27 27 (:REWRITE DEFAULT-<-2))
    (27 27 (:REWRITE DEFAULT-<-1))
    (24 12 (:REWRITE ZIP-OPEN))
    (22 11 (:REWRITE NATP-WHEN-POWER-OF-2P))
    (22 11 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
    (18 6 (:REWRITE DEFAULT-UNARY-MINUS))
    (15 15 (:REWRITE DEFAULT-*-1))
    (14 14 (:TYPE-PRESCRIPTION POWER-OF-2P))
    (13 13 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
    (13 13
        (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
    (13 13
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
    (11 11 (:TYPE-PRESCRIPTION NATP))
    (11 11
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
    (11 11
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
    (11 11 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
    (11 11
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
    (11 11 (:REWRITE GETBIT-IDENTITY-FREE))
    (9 9
       (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
    (9 9
       (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
    (9 9
       (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
    (6 3 (:REWRITE INTEGERP-WHEN-POWER-OF-2P)))
(SBVDIV-TOTAL-BECOMES-SBVDIV
     (130 4
          (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (75 15 (:DEFINITION POSP))
     (59 2 (:REWRITE DEFAULT-UNARY-/))
     (46 23 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (37 28 (:REWRITE DEFAULT-<-2))
     (37 28 (:REWRITE DEFAULT-<-1))
     (30 6 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
     (30 4 (:DEFINITION NFIX))
     (23 23 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (22 12 (:REWRITE DEFAULT-+-2))
     (21 3 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
     (21 3 (:LINEAR <-OF-LOGEXT-LINEAR-UPPER))
     (21 3 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
     (20 3
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (20 3
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (18 18 (:TYPE-PRESCRIPTION POSP))
     (18 12 (:REWRITE DEFAULT-+-1))
     (18 4 (:REWRITE COMMUTATIVITY-OF-+))
     (16 8 (:REWRITE DEFAULT-UNARY-MINUS))
     (15 5
         (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
     (14 14
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (14 2 (:REWRITE EQUAL-OF-0-AND-BVCHOP))
     (12 3 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (9 3
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (9 3 (:REWRITE BVCHOP-IDENTITY))
     (6 6 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (6 3
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (6 3
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (5 2 (:REWRITE DEFAULT-NUMERATOR))
     (5 2 (:REWRITE DEFAULT-DENOMINATOR))
     (4 4
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (4 4 (:DEFINITION IFIX))
     (4 2 (:REWRITE DEFAULT-*-1))
     (3 3 (:TYPE-PRESCRIPTION NATP))
     (3 3
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (3 3 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (3 2 (:REWRITE DEFAULT-*-2))
     (2 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
     (1 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE)))
(TRUNCATE-OF-0)
(SBVDIV-OF-0-ARG1
     (83 1 (:REWRITE DEFAULT-UNARY-/))
     (76 2
         (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (53 1 (:REWRITE BVCHOP-IDENTITY))
     (51 1 (:REWRITE UNSIGNED-BYTE-P-OF-0-ARG1))
     (32 1 (:REWRITE EQUAL-OF-LOGEXT-OF-1-AND-0))
     (20 10 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (18 6
         (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
     (18 2 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
     (18 2 (:DEFINITION NFIX))
     (14 1 (:LINEAR GETBIT-BOUND-LINEAR))
     (13 13
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (13 7 (:REWRITE DEFAULT-<-1))
     (13 2 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
     (12 12 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (12 6 (:REWRITE DEFAULT-+-2))
     (12 2 (:LINEAR <-OF-LOGEXT-LINEAR-UPPER))
     (11 7 (:REWRITE DEFAULT-<-2))
     (10 6 (:REWRITE DEFAULT-+-1))
     (10 2 (:REWRITE COMMUTATIVITY-OF-+))
     (10 2 (:DEFINITION NATP))
     (9 4 (:REWRITE DEFAULT-UNARY-MINUS))
     (7 7 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (6 6 (:TYPE-PRESCRIPTION GETBIT-TYPE))
     (6 2
        (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
     (6 2 (:REWRITE GETBIT-IDENTITY))
     (4 2 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (4 2 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
     (3 1 (:REWRITE DEFAULT-NUMERATOR))
     (3 1 (:REWRITE DEFAULT-DENOMINATOR))
     (2 2 (:TYPE-PRESCRIPTION NATP))
     (2 2
        (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
     (2 2 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
     (2 2
        (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
     (2 2 (:REWRITE GETBIT-IDENTITY-FREE))
     (2 2 (:DEFINITION IFIX))
     (2 1 (:REWRITE DEFAULT-*-2))
     (2 1 (:REWRITE DEFAULT-*-1))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT)))
(SBVDIV-OF-0-ARG2
     (58 1 (:REWRITE DEFAULT-UNARY-/))
     (40 8 (:DEFINITION POSP))
     (22 11 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (14 2 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
     (14 2 (:LINEAR <-OF-LOGEXT-LINEAR-UPPER))
     (14 2 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
     (12 10 (:REWRITE DEFAULT-<-2))
     (11 11 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (10 10 (:TYPE-PRESCRIPTION POSP))
     (10 10 (:REWRITE DEFAULT-<-1))
     (8 2 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
     (8 2 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (7 1 (:REWRITE EQUAL-OF-0-AND-BVCHOP))
     (6 6 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
     (6 2
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (6 2 (:REWRITE BVCHOP-IDENTITY))
     (4 2
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (4 2
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (4 2
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (4 2
        (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (3 1
        (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
     (3 1 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
     (2 2 (:TYPE-PRESCRIPTION NATP))
     (2 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 2 (:REWRITE BVCHOP-SUBST-CONSTANT))
     (2 2 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
     (2 1 (:REWRITE DEFAULT-NUMERATOR))
     (2 1 (:REWRITE DEFAULT-DENOMINATOR))
     (2 1 (:REWRITE DEFAULT-*-2))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (1 1 (:REWRITE DEFAULT-*-1)))
(SBVDIV-OF-0-ARG3 (8 2 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
                  (5 1 (:DEFINITION POSP))
                  (4 2 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
                  (3 1
                     (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
                  (3 1 (:REWRITE BVCHOP-IDENTITY))
                  (2 2 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
                  (2 2 (:TYPE-PRESCRIPTION POWER-OF-2P))
                  (2 2 (:TYPE-PRESCRIPTION POSP))
                  (2 1
                     (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
                  (2 1
                     (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
                  (1 1 (:TYPE-PRESCRIPTION NATP))
                  (1 1 (:REWRITE DEFAULT-<-2))
                  (1 1 (:REWRITE DEFAULT-<-1))
                  (1 1
                     (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
                  (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT)))
(SBVDIV-TOTAL-OF-0)
(UNSIGNED-BYTE-P-FORCED-OF-SBVDIV
     (76 2
         (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (58 1 (:REWRITE DEFAULT-UNARY-/))
     (40 8 (:DEFINITION POSP))
     (26 13 (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
     (22 16 (:REWRITE DEFAULT-<-1))
     (21 16 (:REWRITE DEFAULT-<-2))
     (18 2 (:DEFINITION NFIX))
     (15 15 (:TYPE-PRESCRIPTION POWER-OF-2P))
     (14 2 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
     (14 2 (:LINEAR <-OF-LOGEXT-LINEAR-UPPER))
     (14 2 (:LINEAR <-OF-LOGEXT-LINEAR-LOWER))
     (12 6 (:REWRITE DEFAULT-+-2))
     (11 1
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
     (11 1
         (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
     (10 6 (:REWRITE DEFAULT-+-1))
     (10 2 (:REWRITE COMMUTATIVITY-OF-+))
     (9 9 (:TYPE-PRESCRIPTION POSP))
     (9 4 (:REWRITE DEFAULT-UNARY-MINUS))
     (8 2 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
     (7 7
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (7 1 (:REWRITE EQUAL-OF-0-AND-BVCHOP))
     (6 2
        (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
     (4 2 (:REWRITE NATP-WHEN-POWER-OF-2P))
     (4 1 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
     (3 1
        (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
     (3 1 (:REWRITE DEFAULT-NUMERATOR))
     (3 1 (:REWRITE DEFAULT-DENOMINATOR))
     (3 1
        (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
     (3 1 (:REWRITE BVCHOP-IDENTITY))
     (2 2 (:DEFINITION IFIX))
     (2 1 (:REWRITE DEFAULT-*-2))
     (2 1 (:REWRITE DEFAULT-*-1))
     (2 1
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
     (2 1
        (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1
        (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
     (1 1 (:REWRITE BVCHOP-SUBST-CONSTANT)))
(SBVDIVDOWN)
(SBVDIV-SAME (1038 75 (:DEFINITION EXPT))
             (295 42 (:DEFINITION NATP))
             (281 77 (:REWRITE COMMUTATIVITY-OF-+))
             (247 88 (:REWRITE DEFAULT-*-2))
             (221 207 (:REWRITE DEFAULT-+-1))
             (214 107
                  (:REWRITE INTEGERP-WHEN-POWER-OF-2P))
             (213 207 (:REWRITE DEFAULT-+-2))
             (207 23 (:LINEAR <-OF-LOGEXT-SAME-LINEAR))
             (194 68 (:REWRITE BVCHOP-IDENTITY))
             (174 64
                  (:REWRITE LOGEXT-WHEN-I-IS-NOT-AN-INTEGER))
             (150 129 (:REWRITE DEFAULT-<-1))
             (149 149 (:TYPE-PRESCRIPTION POWER-OF-2P))
             (146 146
                  (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
             (138 46 (:REWRITE FOLD-CONSTS-IN-+))
             (133 129 (:REWRITE DEFAULT-<-2))
             (114 46
                  (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
             (97 88 (:REWRITE DEFAULT-*-1))
             (96 54
                 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
             (92 46 (:REWRITE ZIP-OPEN))
             (84 42 (:REWRITE NATP-WHEN-POWER-OF-2P))
             (83 32 (:REWRITE DEFAULT-UNARY-MINUS))
             (76 2
                 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
             (64 64 (:REWRITE LOGEXT-WHEN-SIZE-NOT-POSP))
             (58 58
                 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
             (55 55
                 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
             (54 54
                 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
             (50 50 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
             (46 46
                 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
             (46 46 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
             (42 42 (:TYPE-PRESCRIPTION NATP))
             (31 11 (:REWRITE BVCHOP-IMPOSSIBLE-VALUE))
             (18 2 (:DEFINITION NFIX))
             (9 4 (:REWRITE DEFAULT-DENOMINATOR))
             (5 2 (:REWRITE DEFAULT-NUMERATOR))
             (2 2 (:DEFINITION IFIX)))
