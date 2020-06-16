(TRUNC (7 7 (:TYPE-PRESCRIPTION A14 . 1)))
(POS*)
(TRUNC-POS (658 14 (:DEFINITION EXPT))
           (202 69 (:REWRITE DEFAULT-*-2))
           (177 128 (:REWRITE DEFAULT-+-2))
           (155 128 (:REWRITE DEFAULT-+-1))
           (147 14 (:REWRITE ZIP-OPEN))
           (137 46 (:REWRITE A4))
           (126 7 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
           (119 7
                (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
           (98 19 (:REWRITE FL-INT))
           (98 19 (:REWRITE A10))
           (80 69 (:REWRITE DEFAULT-*-1))
           (72 50 (:REWRITE DEFAULT-<-2))
           (57 50 (:REWRITE DEFAULT-<-1))
           (49 21 (:REWRITE UNICITY-OF-0))
           (21 21 (:REWRITE FOLD-CONSTS-IN-+))
           (14 6
               (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 2))
           (10 6
               (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 2))
           (6 6
              (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                       . 1))
           (6 6 (:LINEAR *-WEAKLY-MONOTONIC . 1))
           (6 6
              (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                       . 1))
           (6 6 (:LINEAR *-STRONGLY-MONOTONIC . 1))
           (4 4 (:REWRITE A5))
           (1 1 (:REWRITE A3)))
(TRUNC-NEG (658 14 (:DEFINITION EXPT))
           (214 73 (:REWRITE DEFAULT-*-2))
           (193 136 (:REWRITE DEFAULT-+-2))
           (171 136 (:REWRITE DEFAULT-+-1))
           (147 14 (:REWRITE ZIP-OPEN))
           (137 46 (:REWRITE A4))
           (119 7
                (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
           (98 19 (:REWRITE FL-INT))
           (98 19 (:REWRITE A10))
           (84 73 (:REWRITE DEFAULT-*-1))
           (72 50 (:REWRITE DEFAULT-<-2))
           (57 50 (:REWRITE DEFAULT-<-1))
           (21 21 (:REWRITE FOLD-CONSTS-IN-+))
           (14 6
               (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 2))
           (10 6
               (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 2))
           (8 8 (:REWRITE A5))
           (6 6
              (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                       . 1))
           (6 6 (:LINEAR *-WEAKLY-MONOTONIC . 1))
           (6 6
              (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                       . 1))
           (6 6 (:LINEAR *-STRONGLY-MONOTONIC . 1))
           (1 1 (:REWRITE A3)))
(TRUNC-ZERO (54 2 (:DEFINITION EXPT))
            (18 4 (:REWRITE COMMUTATIVITY-OF-+))
            (14 2 (:REWRITE ZIP-OPEN))
            (14 1 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
            (12 6 (:REWRITE DEFAULT-*-2))
            (12 1
                (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
            (10 10 (:REWRITE DEFAULT-+-2))
            (10 10 (:REWRITE DEFAULT-+-1))
            (8 6 (:REWRITE DEFAULT-*-1))
            (6 2 (:REWRITE A4))
            (4 4 (:DEFINITION FIX))
            (4 2 (:REWRITE UNICITY-OF-1))
            (4 2 (:REWRITE UNICITY-OF-0))
            (3 3 (:TYPE-PRESCRIPTION A14 . 2))
            (3 3 (:TYPE-PRESCRIPTION A14 . 1))
            (3 3 (:REWRITE DEFAULT-<-2))
            (3 3 (:REWRITE DEFAULT-<-1))
            (2 2
               (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION)))
(SGN-TRUNC (23 22 (:REWRITE DEFAULT-<-2))
           (23 22 (:REWRITE DEFAULT-<-1)))
(ABS-TRUNC (3255 81 (:DEFINITION EXPT))
           (1005 367 (:REWRITE DEFAULT-*-2))
           (804 627 (:REWRITE DEFAULT-+-2))
           (750 81 (:REWRITE ZIP-OPEN))
           (726 627 (:REWRITE DEFAULT-+-1))
           (606 201 (:REWRITE A4))
           (452 367 (:REWRITE DEFAULT-*-1))
           (370 63 (:REWRITE FL-INT))
           (370 63 (:REWRITE A10))
           (263 185 (:REWRITE DEFAULT-<-1))
           (219 185 (:REWRITE DEFAULT-<-2))
           (210 30
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
           (81 81 (:REWRITE FOLD-CONSTS-IN-+))
           (42 30
               (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 2))
           (30 30
               (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 1))
           (30 30
               (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 1))
           (30 30 (:LINEAR *-STRONGLY-MONOTONIC . 1))
           (26 26 (:LINEAR *-WEAKLY-MONOTONIC . 1)))
(TRUNC-UPPER-BOUND (1325 43 (:DEFINITION EXPT))
                   (461 155 (:REWRITE DEFAULT-*-2))
                   (324 262 (:REWRITE DEFAULT-+-2))
                   (289 262 (:REWRITE DEFAULT-+-1))
                   (271 43 (:REWRITE ZIP-OPEN))
                   (229 155 (:REWRITE DEFAULT-*-1))
                   (228 14
                        (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
                   (208 14
                        (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                   (177 14
                        (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                                 . 2))
                   (120 15 (:REWRITE A10))
                   (117 65 (:REWRITE DEFAULT-<-1))
                   (97 10 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
                   (88 65 (:REWRITE DEFAULT-<-2))
                   (70 14
                       (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                                . 1))
                   (35 7 (:REWRITE FL+INT))
                   (26 26 (:REWRITE FOLD-CONSTS-IN-+))
                   (14 14
                       (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                                . 2))
                   (14 14
                       (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                                . 1))
                   (14 14 (:LINEAR *-STRONGLY-MONOTONIC . 2))
                   (14 14 (:LINEAR *-STRONGLY-MONOTONIC . 1))
                   (6 2 (:REWRITE ABS-POS))
                   (1 1 (:REWRITE A5)))
(RATIONALP-TRUNC)
(TRUNC-0-0 (15 14 (:REWRITE DEFAULT-<-2))
           (15 14 (:REWRITE DEFAULT-<-1)))
(TRUNC-UPPER-POS (2 2 (:REWRITE DEFAULT-<-2))
                 (2 2 (:REWRITE DEFAULT-<-1)))
(EXPO-TRUNC-UPPER-BOUND (376 8 (:DEFINITION EXPT))
                        (141 141 (:TYPE-PRESCRIPTION A14 . 1))
                        (109 38 (:REWRITE DEFAULT-*-2))
                        (107 71 (:REWRITE DEFAULT-+-2))
                        (86 71 (:REWRITE DEFAULT-+-1))
                        (84 8 (:REWRITE ZIP-OPEN))
                        (79 27 (:REWRITE A4))
                        (68 4
                            (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                        (52 38 (:REWRITE DEFAULT-*-1))
                        (45 23 (:REWRITE DEFAULT-<-2))
                        (40 4 (:REWRITE FL-INT))
                        (40 4 (:REWRITE A10))
                        (31 31 (:TYPE-PRESCRIPTION SIG))
                        (28 12 (:REWRITE UNICITY-OF-0))
                        (26 23 (:REWRITE DEFAULT-<-1))
                        (12 12 (:REWRITE FOLD-CONSTS-IN-+))
                        (2 2
                           (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                                    . 2))
                        (2 2
                           (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                                    . 1))
                        (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 2))
                        (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 1))
                        (2 2
                           (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                                    . 2))
                        (2 2
                           (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                                    . 1))
                        (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 2))
                        (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(EXPO-TRUNC-LOWER-BOUND (1272 40 (:DEFINITION EXPT))
                        (336 114 (:REWRITE DEFAULT-*-2))
                        (316 248 (:REWRITE DEFAULT-+-2))
                        (285 248 (:REWRITE DEFAULT-+-1))
                        (227 40 (:REWRITE ZIP-OPEN))
                        (162 9 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
                        (153 9
                             (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                        (140 114 (:REWRITE DEFAULT-*-1))
                        (88 53 (:REWRITE DEFAULT-<-2))
                        (81 53 (:REWRITE DEFAULT-<-1))
                        (57 8 (:REWRITE A10))
                        (36 18 (:REWRITE UNICITY-OF-1))
                        (31 31 (:REWRITE FOLD-CONSTS-IN-+)))
(EXPO-TRUNC (445 15 (:DEFINITION EXPT))
            (108 33 (:REWRITE DEFAULT-*-2))
            (102 77 (:REWRITE DEFAULT-+-2))
            (92 50 (:REWRITE DEFAULT-<-2))
            (89 50 (:REWRITE DEFAULT-<-1))
            (81 77 (:REWRITE DEFAULT-+-1))
            (64 16 (:REWRITE A4))
            (45 15 (:REWRITE ZIP-OPEN))
            (33 33 (:REWRITE DEFAULT-*-1))
            (16 8 (:REWRITE UNICITY-OF-0)))
(TRUNC-LOWER-1-1 (161 4 (:DEFINITION EXPT))
                 (73 73 (:TYPE-PRESCRIPTION A14 . 1))
                 (45 13 (:REWRITE DEFAULT-*-2))
                 (37 30 (:REWRITE DEFAULT-+-2))
                 (34 30 (:REWRITE DEFAULT-+-1))
                 (27 4 (:REWRITE ZIP-OPEN))
                 (18 1 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
                 (17 1
                     (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                 (15 13 (:REWRITE DEFAULT-*-1))
                 (7 6 (:REWRITE DEFAULT-<-2))
                 (6 6 (:REWRITE DEFAULT-<-1))
                 (6 2 (:REWRITE ABS-POS))
                 (4 4
                    (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 2))
                 (4 4
                    (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 1))
                 (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
                 (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
                 (4 4
                    (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 2))
                 (4 4
                    (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 1))
                 (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
                 (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1))
                 (4 2 (:REWRITE UNICITY-OF-1))
                 (3 3 (:REWRITE FOLD-CONSTS-IN-+)))
(TRUNC-LOWER-1-2)
(TRUNC-LOWER-1-3 (4 4 (:REWRITE DEFAULT-<-2))
                 (4 4 (:REWRITE DEFAULT-<-1))
                 (4 4 (:REWRITE DEFAULT-*-2))
                 (4 4 (:REWRITE DEFAULT-*-1))
                 (4 2
                    (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 2))
                 (3 3 (:REWRITE DEFAULT-+-2))
                 (3 3 (:REWRITE DEFAULT-+-1))
                 (2 2
                    (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 2))
                 (2 2
                    (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 1))
                 (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 2))
                 (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 1))
                 (2 2
                    (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 1)))
(TRUNC-LOWER-1 (902 26 (:DEFINITION EXPT))
               (288 94 (:REWRITE DEFAULT-*-2))
               (223 163 (:REWRITE DEFAULT-+-2))
               (196 163 (:REWRITE DEFAULT-+-1))
               (190 60 (:REWRITE A4))
               (178 26 (:REWRITE ZIP-OPEN))
               (149 94 (:REWRITE DEFAULT-*-1))
               (136 8
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
               (72 9 (:REWRITE A10))
               (59 25 (:REWRITE UNICITY-OF-0))
               (58 36 (:REWRITE DEFAULT-<-2))
               (51 36 (:REWRITE DEFAULT-<-1))
               (40 4 (:LINEAR A13))
               (35 4 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
               (24 24 (:REWRITE FOLD-CONSTS-IN-+))
               (15 3 (:REWRITE FL+INT))
               (6 2 (:REWRITE ABS-POS))
               (2 2 (:REWRITE A5))
               (2 2 (:REWRITE A3)))
(TRUNC-LOWER-2-1 (318 318 (:TYPE-PRESCRIPTION A14 . 1))
                 (290 6 (:DEFINITION EXPT))
                 (94 18 (:REWRITE COMMUTATIVITY-OF-+))
                 (72 6 (:REWRITE ZIP-OPEN))
                 (71 27 (:REWRITE DEFAULT-*-2))
                 (64 4 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
                 (58 48 (:REWRITE DEFAULT-+-2))
                 (58 4
                     (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                 (54 48 (:REWRITE DEFAULT-+-1))
                 (47 27 (:REWRITE DEFAULT-*-1))
                 (39 13 (:REWRITE A4))
                 (29 2
                     (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                              . 2))
                 (25 12 (:REWRITE DEFAULT-<-1))
                 (22 12 (:REWRITE DEFAULT-<-2))
                 (22 10 (:REWRITE UNICITY-OF-0))
                 (20 18 (:DEFINITION FIX))
                 (16 8 (:REWRITE UNICITY-OF-1))
                 (12 3
                     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
                 (6 2 (:REWRITE ABS-POS))
                 (2 2
                    (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 1))
                 (2 2
                    (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 2))
                 (2 2
                    (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 1))
                 (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 2))
                 (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-LOWER-2 (424 8 (:DEFINITION EXPT))
               (310 310 (:TYPE-PRESCRIPTION A14 . 1))
               (124 43 (:REWRITE DEFAULT-*-2))
               (119 78 (:REWRITE DEFAULT-+-2))
               (108 8 (:REWRITE ZIP-OPEN))
               (106 78 (:REWRITE DEFAULT-+-1))
               (92 6
                   (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
               (78 26 (:REWRITE A4))
               (63 43 (:REWRITE DEFAULT-*-1))
               (43 17 (:REWRITE DEFAULT-<-2))
               (36 16 (:REWRITE UNICITY-OF-0))
               (33 17 (:REWRITE DEFAULT-<-1))
               (20 2 (:REWRITE FL-INT))
               (20 2 (:REWRITE A10))
               (16 16 (:TYPE-PRESCRIPTION SIG))
               (12 12 (:REWRITE FOLD-CONSTS-IN-+))
               (9 3 (:REWRITE ABS-POS))
               (2 2 (:REWRITE A5))
               (2 2
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (2 2
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 2))
               (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 1))
               (2 2
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (2 2
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 2))
               (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 1))
               (1 1 (:REWRITE A3)))
(TRUNC-LOWER-POS (205 205 (:TYPE-PRESCRIPTION A14 . 1))
                 (78 2 (:DEFINITION EXPT))
                 (59 23 (:REWRITE DEFAULT-*-2))
                 (55 2
                     (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                              . 2))
                 (55 2 (:LINEAR *-STRONGLY-MONOTONIC . 2))
                 (48 25 (:REWRITE DEFAULT-+-2))
                 (37 25 (:REWRITE DEFAULT-+-1))
                 (26 2 (:REWRITE ZIP-OPEN))
                 (25 14 (:REWRITE DEFAULT-<-2))
                 (24 2
                     (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                 (23 23 (:REWRITE DEFAULT-*-1))
                 (18 14 (:REWRITE DEFAULT-<-1))
                 (18 6 (:REWRITE UNICITY-OF-0))
                 (6 2 (:REWRITE A4))
                 (4 4 (:REWRITE A5))
                 (2 2
                    (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 2))
                 (2 2
                    (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 1))
                 (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 2))
                 (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 1))
                 (2 2
                    (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 1))
                 (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-LOWER-3 (424 8 (:DEFINITION EXPT))
               (313 313 (:TYPE-PRESCRIPTION A14 . 1))
               (124 43 (:REWRITE DEFAULT-*-2))
               (119 78 (:REWRITE DEFAULT-+-2))
               (108 8 (:REWRITE ZIP-OPEN))
               (106 78 (:REWRITE DEFAULT-+-1))
               (92 6
                   (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
               (78 26 (:REWRITE A4))
               (63 43 (:REWRITE DEFAULT-*-1))
               (41 18 (:REWRITE DEFAULT-<-2))
               (37 18 (:REWRITE DEFAULT-<-1))
               (36 16 (:REWRITE UNICITY-OF-0))
               (20 2 (:REWRITE FL-INT))
               (20 2 (:REWRITE A10))
               (16 16 (:TYPE-PRESCRIPTION SIG))
               (12 12 (:REWRITE FOLD-CONSTS-IN-+))
               (9 3 (:REWRITE ABS-POS))
               (2 2 (:REWRITE A5))
               (2 2
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (2 2
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 2))
               (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 1))
               (2 2
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (2 2
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 2))
               (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 1))
               (1 1 (:REWRITE A3)))
(TRUNC-LOWER-4-1 (781 781 (:TYPE-PRESCRIPTION A14 . 1))
                 (579 15 (:DEFINITION EXPT))
                 (373 163 (:REWRITE DEFAULT-*-2))
                 (253 163 (:REWRITE DEFAULT-*-1))
                 (236 156 (:REWRITE DEFAULT-+-2))
                 (225 156 (:REWRITE DEFAULT-+-1))
                 (189 26
                      (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                               . 2))
                 (181 15 (:REWRITE ZIP-OPEN))
                 (166 15
                      (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                 (135 62 (:REWRITE DEFAULT-<-1))
                 (109 26
                      (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                               . 1))
                 (89 26
                     (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                              . 2))
                 (89 26
                     (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                              . 1))
                 (74 62 (:REWRITE DEFAULT-<-2))
                 (60 30 (:REWRITE UNICITY-OF-0)))
(TRUNC-LOWER-4-2 (4 4 (:REWRITE DEFAULT-<-2))
                 (4 4 (:REWRITE DEFAULT-<-1))
                 (4 4 (:REWRITE DEFAULT-*-2))
                 (4 4 (:REWRITE DEFAULT-*-1))
                 (3 3 (:REWRITE DEFAULT-+-2))
                 (3 3 (:REWRITE DEFAULT-+-1))
                 (2 2 (:REWRITE ABS-POS)))
(TRUNC-LOWER-4 (399 399 (:TYPE-PRESCRIPTION A14 . 1))
               (226 6 (:DEFINITION EXPT))
               (112 49 (:REWRITE DEFAULT-*-2))
               (74 49 (:REWRITE DEFAULT-<-1))
               (74 6 (:REWRITE ZIP-OPEN))
               (73 52 (:REWRITE DEFAULT-+-1))
               (72 52 (:REWRITE DEFAULT-+-2))
               (68 6
                   (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
               (67 49 (:REWRITE DEFAULT-*-1))
               (67 4
                   (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 2))
               (52 49 (:REWRITE DEFAULT-<-2))
               (47 4
                   (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 2))
               (24 12 (:REWRITE UNICITY-OF-0))
               (20 8 (:REWRITE A4))
               (4 4
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (4 4
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-DIFF-1 (18 18 (:REWRITE DEFAULT-<-2))
              (18 18 (:REWRITE DEFAULT-<-1))
              (18 18 (:REWRITE DEFAULT-+-2))
              (18 18 (:REWRITE DEFAULT-+-1))
              (18 18 (:REWRITE DEFAULT-*-2))
              (18 18 (:REWRITE DEFAULT-*-1)))
(TRUNC-DIFF (394 6 (:DEFINITION EXPT))
            (249 249 (:TYPE-PRESCRIPTION A14 . 1))
            (133 82 (:REWRITE DEFAULT-+-2))
            (125 82 (:REWRITE DEFAULT-+-1))
            (106 6 (:REWRITE ZIP-OPEN))
            (104 67 (:REWRITE DEFAULT-<-2))
            (84 67 (:REWRITE DEFAULT-<-1))
            (84 37 (:REWRITE DEFAULT-*-2))
            (70 22 (:REWRITE A4))
            (37 37 (:REWRITE DEFAULT-*-1))
            (12 12 (:REWRITE FOLD-CONSTS-IN-+)))
(TRUNC-DIFF-POS (315 5 (:DEFINITION EXPT))
                (275 275 (:TYPE-PRESCRIPTION A14 . 1))
                (94 62 (:REWRITE DEFAULT-+-2))
                (86 5 (:REWRITE ZIP-OPEN))
                (75 5
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                (73 62 (:REWRITE DEFAULT-+-1))
                (63 30 (:REWRITE DEFAULT-*-2))
                (61 38 (:REWRITE DEFAULT-<-2))
                (54 17 (:REWRITE A4))
                (46 38 (:REWRITE DEFAULT-<-1))
                (30 30 (:REWRITE DEFAULT-*-1))
                (9 9 (:REWRITE FOLD-CONSTS-IN-+)))
(TRUNC-DIFF-EXPO-1 (388 388 (:TYPE-PRESCRIPTION A14 . 1))
                   (318 6 (:DEFINITION EXPT))
                   (105 71 (:REWRITE DEFAULT-+-2))
                   (89 36 (:REWRITE DEFAULT-*-2))
                   (84 71 (:REWRITE DEFAULT-+-1))
                   (69 6 (:REWRITE ZIP-OPEN))
                   (56 2 (:REWRITE ABS-POS))
                   (49 16 (:REWRITE A4))
                   (48 19 (:REWRITE DEFAULT-<-1))
                   (47 19 (:REWRITE DEFAULT-<-2))
                   (36 36 (:REWRITE DEFAULT-*-1))
                   (10 10 (:REWRITE FOLD-CONSTS-IN-+))
                   (10 2
                       (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                   (4 2 (:REWRITE RATIONALP-ABS)))
(TRUNC-REWRITE (1951 34 (:DEFINITION EXPT))
               (774 288 (:REWRITE DEFAULT-*-2))
               (586 364 (:REWRITE DEFAULT-+-2))
               (578 34 (:REWRITE ZIP-OPEN))
               (480 364 (:REWRITE DEFAULT-+-1))
               (476 23
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
               (343 288 (:REWRITE DEFAULT-*-1))
               (335 113 (:REWRITE A4))
               (239 13 (:DEFINITION EXPO1))
               (213 13 (:DEFINITION EXPO2))
               (207 18 (:REWRITE A10))
               (198 72
                    (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 2))
               (168 59 (:REWRITE UNICITY-OF-0))
               (138 124 (:REWRITE DEFAULT-<-1))
               (128 124 (:REWRITE DEFAULT-<-2))
               (102 72
                    (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                             . 2))
               (92 72
                   (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 1))
               (72 72
                   (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 1))
               (72 72 (:LINEAR *-WEAKLY-MONOTONIC . 1))
               (65 65 (:REWRITE FOLD-CONSTS-IN-+))
               (43 23 (:REWRITE A5))
               (32 8 (:REWRITE RATIONALP-+))
               (8 8 (:REWRITE A3))
               (8 8 (:LINEAR FL-WEAKLY-MONOTONIC . 1)))
(TRUNC-EXACTP-1 (332 4 (:DEFINITION EXPT))
                (101 66 (:REWRITE DEFAULT-+-2))
                (88 4 (:REWRITE ZIP-OPEN))
                (86 86 (:TYPE-PRESCRIPTION A14 . 1))
                (84 66 (:REWRITE DEFAULT-+-1))
                (83 39 (:REWRITE A4))
                (80 4 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
                (76 4
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                (73 29 (:REWRITE DEFAULT-*-2))
                (33 29 (:REWRITE DEFAULT-*-1))
                (15 15 (:REWRITE FOLD-CONSTS-IN-+))
                (10 8 (:REWRITE DEFAULT-<-2))
                (10 8 (:REWRITE DEFAULT-<-1))
                (4 4
                   (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 2))
                (4 4
                   (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 1))
                (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
                (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
                (4 4
                   (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 2))
                (4 4
                   (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 1))
                (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
                (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1))
                (3 1 (:REWRITE ABS-POS)))
(TRUNC-EXACTP-2 (30 26 (:REWRITE DEFAULT-*-2))
                (28 26 (:REWRITE DEFAULT-*-1))
                (8 8 (:REWRITE A5)))
(TRUNC-EXACTP-3)
(TRUNC-EXACTP-4)
(TRUNC-EXACTP-5)
(TRUNC-EXACTP-6 (2694 26 (:DEFINITION EXPT))
                (900 374 (:REWRITE DEFAULT-*-2))
                (768 26 (:REWRITE ZIP-OPEN))
                (756 450 (:REWRITE DEFAULT-+-2))
                (658 26
                     (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                (618 450 (:REWRITE DEFAULT-+-1))
                (464 130 (:REWRITE A4))
                (441 21 (:DEFINITION EXPO1))
                (416 416 (:TYPE-PRESCRIPTION A14 . 1))
                (399 21 (:DEFINITION EXPO2))
                (374 374 (:REWRITE DEFAULT-*-1))
                (282 78 (:REWRITE UNICITY-OF-0))
                (233 191 (:REWRITE DEFAULT-<-1))
                (222 42 (:REWRITE COMMUTATIVITY-OF-*))
                (191 191 (:REWRITE DEFAULT-<-2))
                (144 24 (:REWRITE A9))
                (82 34 (:REWRITE A5))
                (78 78 (:REWRITE FOLD-CONSTS-IN-+)))
(TRUNC-EXACTP-A (3903 53 (:DEFINITION EXPT))
                (1067 53 (:REWRITE ZIP-OPEN))
                (1031 362 (:REWRITE DEFAULT-*-2))
                (972 48
                     (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
                (935 659 (:REWRITE DEFAULT-+-2))
                (821 659 (:REWRITE DEFAULT-+-1))
                (450 362 (:REWRITE DEFAULT-*-1))
                (138 138 (:REWRITE FOLD-CONSTS-IN-+))
                (119 90 (:REWRITE DEFAULT-<-1))
                (107 90 (:REWRITE DEFAULT-<-2))
                (16 4 (:REWRITE A10)))
(TRUNC-DIFF-EXPO)
(TRUNC-EXACTP-B-1 (490 6 (:DEFINITION EXPT))
                  (136 6 (:REWRITE ZIP-OPEN))
                  (133 90 (:REWRITE DEFAULT-+-2))
                  (124 6 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
                  (118 6
                       (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                  (112 90 (:REWRITE DEFAULT-+-1))
                  (107 49 (:REWRITE A4))
                  (104 43 (:REWRITE DEFAULT-*-2))
                  (97 97 (:TYPE-PRESCRIPTION A14 . 1))
                  (53 43 (:REWRITE DEFAULT-*-1))
                  (21 21 (:REWRITE FOLD-CONSTS-IN-+))
                  (17 13 (:REWRITE DEFAULT-<-1))
                  (15 13 (:REWRITE DEFAULT-<-2))
                  (15 3 (:REWRITE FL-INT))
                  (15 3 (:REWRITE A10))
                  (4 2 (:REWRITE ABS-POS)))
(TRUNC-EXACTP-B-2 (573 7 (:DEFINITION EXPT))
                  (160 7 (:REWRITE ZIP-OPEN))
                  (146 7 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
                  (141 97 (:REWRITE DEFAULT-+-2))
                  (139 7
                       (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                  (134 50 (:REWRITE DEFAULT-*-2))
                  (121 97 (:REWRITE DEFAULT-+-1))
                  (115 48 (:REWRITE A4))
                  (77 77 (:TYPE-PRESCRIPTION A14 . 1))
                  (77 50 (:REWRITE DEFAULT-*-1))
                  (26 2 (:REWRITE FL-INT))
                  (26 2 (:REWRITE A10))
                  (21 21 (:REWRITE FOLD-CONSTS-IN-+))
                  (19 14 (:REWRITE DEFAULT-<-1))
                  (16 14 (:REWRITE DEFAULT-<-2))
                  (7 3 (:REWRITE ABS-POS))
                  (1 1 (:REWRITE A5)))
(TRUNC-EXACTP-B (166 2 (:DEFINITION EXPT))
                (58 8 (:REWRITE COMMUTATIVITY-OF-+))
                (48 2 (:REWRITE ZIP-OPEN))
                (44 2 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
                (42 2
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                (40 12 (:REWRITE DEFAULT-*-2))
                (37 26 (:REWRITE DEFAULT-+-2))
                (32 26 (:REWRITE DEFAULT-+-1))
                (28 10 (:REWRITE A4))
                (21 21 (:TYPE-PRESCRIPTION A14 . 1))
                (18 10 (:DEFINITION FIX))
                (16 6 (:REWRITE UNICITY-OF-0))
                (14 12 (:REWRITE DEFAULT-*-1))
                (12 4 (:REWRITE UNICITY-OF-1))
                (6 6 (:REWRITE FOLD-CONSTS-IN-+))
                (6 4 (:REWRITE DEFAULT-<-1))
                (4 4 (:REWRITE DEFAULT-<-2)))
(TRUNC-EXACTP-C (810 10 (:DEFINITION EXPT))
                (444 444 (:TYPE-PRESCRIPTION A14 . 1))
                (220 10 (:REWRITE ZIP-OPEN))
                (211 140 (:REWRITE DEFAULT-+-2))
                (190 10
                     (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                (188 140 (:REWRITE DEFAULT-+-1))
                (167 57 (:REWRITE DEFAULT-*-2))
                (151 51 (:REWRITE A4))
                (83 53 (:REWRITE DEFAULT-<-2))
                (75 30 (:REWRITE UNICITY-OF-0))
                (60 53 (:REWRITE DEFAULT-<-1))
                (57 57 (:REWRITE DEFAULT-*-1))
                (30 30 (:REWRITE FOLD-CONSTS-IN-+)))
(TRUNC-MONOTONE (19 14 (:REWRITE DEFAULT-<-2))
                (16 14 (:REWRITE DEFAULT-<-1))
                (15 2 (:REWRITE TRUNC-EXACTP-C)))
(TRUNC-POS-REWRITE (914 12 (:DEFINITION EXPT))
                   (269 107 (:REWRITE DEFAULT-*-2))
                   (255 155 (:REWRITE DEFAULT-+-2))
                   (252 12 (:REWRITE ZIP-OPEN))
                   (216 10
                        (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
                   (208 10
                        (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
                   (197 155 (:REWRITE DEFAULT-+-1))
                   (167 57 (:REWRITE A4))
                   (145 107 (:REWRITE DEFAULT-*-1))
                   (104 8 (:DEFINITION EXPO1))
                   (88 8 (:DEFINITION EXPO2))
                   (82 30 (:REWRITE UNICITY-OF-0))
                   (82 10 (:REWRITE A10))
                   (57 49 (:REWRITE DEFAULT-<-1))
                   (53 49 (:REWRITE DEFAULT-<-2))
                   (34 34 (:REWRITE FOLD-CONSTS-IN-+))
                   (20 8
                       (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                                . 2))
                   (14 8
                       (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                                . 2))
                   (8 8
                      (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                               . 1))
                   (8 8 (:LINEAR *-WEAKLY-MONOTONIC . 1))
                   (8 8
                      (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                               . 1))
                   (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 1))
                   (4 4 (:LINEAR FL-WEAKLY-MONOTONIC . 1))
                   (1 1 (:REWRITE A5)))
(TRUNC-TRUNC-1 (2226 41 (:DEFINITION EXPT))
               (605 41 (:REWRITE ZIP-OPEN))
               (568 32
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
               (565 432 (:REWRITE DEFAULT-+-2))
               (524 200 (:REWRITE DEFAULT-*-2))
               (524 32
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
               (503 432 (:REWRITE DEFAULT-+-1))
               (305 200 (:REWRITE DEFAULT-*-1))
               (249 249 (:TYPE-PRESCRIPTION A14 . 1))
               (148 64 (:REWRITE UNICITY-OF-1))
               (82 10 (:REWRITE FL-INT))
               (82 10 (:REWRITE A10))
               (78 78 (:REWRITE FOLD-CONSTS-IN-+))
               (69 54 (:REWRITE DEFAULT-<-2))
               (64 54 (:REWRITE DEFAULT-<-1))
               (4 4
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (4 4
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
               (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
               (4 4
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (4 4
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
               (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-TRUNC-2 (808 12 (:DEFINITION EXPT))
               (228 12 (:REWRITE ZIP-OPEN))
               (216 12
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
               (203 150 (:REWRITE DEFAULT-+-2))
               (200 12
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
               (184 70 (:REWRITE DEFAULT-*-2))
               (178 150 (:REWRITE DEFAULT-+-1))
               (166 166 (:TYPE-PRESCRIPTION A14 . 1))
               (100 70 (:REWRITE DEFAULT-*-1))
               (56 24 (:REWRITE UNICITY-OF-1))
               (52 4 (:REWRITE FL-INT))
               (52 4 (:REWRITE A10))
               (43 43 (:REWRITE FOLD-CONSTS-IN-+))
               (22 18 (:REWRITE DEFAULT-<-2))
               (22 18 (:REWRITE DEFAULT-<-1))
               (4 4
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (4 4
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
               (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
               (4 4
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (4 4
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
               (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(EXPT-INVERSE (66 29 (:REWRITE DEFAULT-*-2))
              (56 8 (:REWRITE ZIP-OPEN))
              (48 4
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
              (44 44 (:REWRITE DEFAULT-+-2))
              (44 44 (:REWRITE DEFAULT-+-1))
              (38 6 (:REWRITE DEFAULT-UNARY-/))
              (29 29 (:REWRITE DEFAULT-*-1))
              (28 2 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
              (14 7 (:REWRITE UNICITY-OF-0))
              (13 13 (:DEFINITION FIX))
              (12 12 (:REWRITE DEFAULT-<-2))
              (12 12 (:REWRITE DEFAULT-<-1))
              (12 6 (:REWRITE UNICITY-OF-1))
              (11 3 (:REWRITE A4))
              (8 8 (:LINEAR /-WEAKLY-MONOTONIC))
              (8 8 (:LINEAR /-STRONGLY-MONOTONIC)))
(TRUNC-TRUNC-3 (456 7 (:DEFINITION EXPT))
               (131 131 (:TYPE-PRESCRIPTION A14 . 1))
               (127 7 (:REWRITE ZIP-OPEN))
               (122 7 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
               (120 46 (:REWRITE DEFAULT-*-2))
               (112 7
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
               (92 72 (:REWRITE DEFAULT-+-2))
               (84 72 (:REWRITE DEFAULT-+-1))
               (72 46 (:REWRITE DEFAULT-*-1))
               (64 24 (:REWRITE A4))
               (52 4 (:REWRITE FL-INT))
               (52 4 (:REWRITE A10))
               (42 18 (:REWRITE UNICITY-OF-0))
               (16 16 (:REWRITE FOLD-CONSTS-IN-+))
               (15 13 (:REWRITE DEFAULT-<-2))
               (15 13 (:REWRITE DEFAULT-<-1))
               (4 4
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (4 4
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
               (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
               (4 4
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (4 4
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
               (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-TRUNC-4 (1413 22 (:DEFINITION EXPT))
               (395 22 (:REWRITE ZIP-OPEN))
               (384 22
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
               (351 22
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
               (331 128 (:REWRITE DEFAULT-*-2))
               (299 234 (:REWRITE DEFAULT-+-2))
               (269 234 (:REWRITE DEFAULT-+-1))
               (187 82 (:REWRITE A4))
               (165 128 (:REWRITE DEFAULT-*-1))
               (130 10 (:REWRITE FL-INT))
               (130 10 (:REWRITE A10))
               (50 50 (:REWRITE FOLD-CONSTS-IN-+))
               (36 28 (:REWRITE DEFAULT-<-1))
               (31 28 (:REWRITE DEFAULT-<-2))
               (12 12
                   (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 2))
               (12 12
                   (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 1))
               (12 12 (:LINEAR *-WEAKLY-MONOTONIC . 2))
               (12 12 (:LINEAR *-WEAKLY-MONOTONIC . 1))
               (12 12
                   (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 2))
               (12 12
                   (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                            . 1))
               (12 12 (:LINEAR *-STRONGLY-MONOTONIC . 2))
               (12 12 (:LINEAR *-STRONGLY-MONOTONIC . 1))
               (2 2 (:LINEAR FL-WEAKLY-MONOTONIC . 2))
               (2 2 (:LINEAR FL-WEAKLY-MONOTONIC . 1)))
(TRUNC-TRUNC-5 (499 7 (:DEFINITION EXPT))
               (138 7 (:REWRITE ZIP-OPEN))
               (132 132 (:TYPE-PRESCRIPTION A14 . 1))
               (130 7 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
               (121 7
                    (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
               (117 42 (:REWRITE DEFAULT-*-2))
               (109 81 (:REWRITE DEFAULT-+-2))
               (97 81 (:REWRITE DEFAULT-+-1))
               (82 33 (:REWRITE A4))
               (56 42 (:REWRITE DEFAULT-*-1))
               (26 2 (:REWRITE FL-INT))
               (26 2 (:REWRITE A10))
               (18 18 (:REWRITE FOLD-CONSTS-IN-+))
               (16 13 (:REWRITE DEFAULT-<-1))
               (15 13 (:REWRITE DEFAULT-<-2))
               (4 4
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (4 4
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
               (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
               (4 4
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
               (4 4
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
               (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
               (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-TRUNC (648 8 (:DEFINITION EXPT))
             (176 8 (:REWRITE ZIP-OPEN))
             (164 56 (:REWRITE DEFAULT-*-2))
             (160 111 (:REWRITE DEFAULT-+-2))
             (160 8 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
             (152 8
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
             (138 111 (:REWRITE DEFAULT-+-1))
             (123 43 (:REWRITE A4))
             (112 112 (:TYPE-PRESCRIPTION A14 . 1))
             (92 56 (:REWRITE DEFAULT-*-1))
             (60 40 (:DEFINITION FIX))
             (60 24 (:REWRITE UNICITY-OF-0))
             (52 4 (:REWRITE FL-INT))
             (52 4 (:REWRITE A10))
             (40 16 (:REWRITE UNICITY-OF-1))
             (30 16 (:REWRITE DEFAULT-<-1))
             (24 24 (:REWRITE FOLD-CONSTS-IN-+))
             (20 16 (:REWRITE DEFAULT-<-2))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(PLUS-TRUNC-1 (652 8 (:DEFINITION EXPT))
              (201 129 (:REWRITE DEFAULT-+-2))
              (180 8 (:REWRITE ZIP-OPEN))
              (169 169 (:TYPE-PRESCRIPTION A14 . 1))
              (164 129 (:REWRITE DEFAULT-+-1))
              (164 57 (:REWRITE DEFAULT-*-2))
              (164 8 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
              (156 8
                   (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
              (144 66 (:REWRITE A4))
              (71 57 (:REWRITE DEFAULT-*-1))
              (29 29 (:REWRITE FOLD-CONSTS-IN-+))
              (16 11 (:REWRITE DEFAULT-<-1))
              (14 11 (:REWRITE DEFAULT-<-2))
              (14 2 (:REWRITE FL-INT))
              (14 2 (:REWRITE A10))
              (4 4
                 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 2))
              (4 4
                 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 1))
              (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
              (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
              (4 4
                 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 2))
              (4 4
                 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 1))
              (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
              (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(PLUS-TRUNC-2 (1403 17 (:DEFINITION EXPT))
              (402 250 (:REWRITE DEFAULT-+-2))
              (400 17 (:REWRITE ZIP-OPEN))
              (370 370 (:TYPE-PRESCRIPTION A14 . 1))
              (367 115 (:REWRITE DEFAULT-*-2))
              (366 17
                   (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
              (349 17
                   (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
              (338 250 (:REWRITE DEFAULT-+-1))
              (278 121 (:REWRITE A4))
              (129 115 (:REWRITE DEFAULT-*-1))
              (77 5 (:REWRITE FL-INT))
              (59 59 (:REWRITE FOLD-CONSTS-IN-+))
              (44 29 (:REWRITE DEFAULT-<-1))
              (31 29 (:REWRITE DEFAULT-<-2))
              (4 4
                 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 2))
              (4 4
                 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 1))
              (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
              (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
              (4 4
                 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 2))
              (4 4
                 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 1))
              (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
              (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(PLUS-TRUNC (1549 19 (:DEFINITION EXPT))
            (516 317 (:REWRITE DEFAULT-+-2))
            (428 19 (:REWRITE ZIP-OPEN))
            (410 140 (:REWRITE DEFAULT-*-2))
            (408 317 (:REWRITE DEFAULT-+-1))
            (371 19
                 (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
            (325 140 (:REWRITE A4))
            (299 299 (:TYPE-PRESCRIPTION A14 . 1))
            (188 140 (:REWRITE DEFAULT-*-1))
            (105 9 (:REWRITE FL-INT))
            (69 69 (:REWRITE FOLD-CONSTS-IN-+))
            (58 40 (:REWRITE DEFAULT-<-1))
            (55 40 (:REWRITE DEFAULT-<-2))
            (43 3 (:REWRITE FL+INT))
            (2 2
               (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 2))
            (2 2
               (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 1))
            (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 2))
            (2 2 (:LINEAR *-WEAKLY-MONOTONIC . 1))
            (2 2
               (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 2))
            (2 2
               (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                        . 1))
            (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 2))
            (2 2 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-PLUS-1 (228 228 (:TYPE-PRESCRIPTION A14 . 1))
              (100 4 (:DEFINITION EXPT))
              (28 8 (:REWRITE DEFAULT-*-2))
              (24 8 (:REWRITE COMMUTATIVITY-OF-+))
              (17 10 (:REWRITE DEFAULT-<-2))
              (16 16 (:REWRITE DEFAULT-+-2))
              (16 16 (:REWRITE DEFAULT-+-1))
              (16 10 (:REWRITE DEFAULT-<-1))
              (8 8 (:REWRITE DEFAULT-*-1))
              (8 4 (:REWRITE ZIP-OPEN)))
(TRUNC-PLUS-2 (179 62 (:REWRITE DEFAULT-*-2))
              (132 120 (:REWRITE DEFAULT-+-2))
              (122 71 (:REWRITE DEFAULT-<-2))
              (120 120 (:REWRITE DEFAULT-+-1))
              (83 71 (:REWRITE DEFAULT-<-1))
              (62 62 (:REWRITE DEFAULT-*-1)))
(TRUNC-PLUS-3 (1634 1634 (:TYPE-PRESCRIPTION A14 . 1))
              (1098 45 (:DEFINITION EXPT))
              (309 90 (:REWRITE DEFAULT-*-2))
              (253 244 (:REWRITE DEFAULT-+-2))
              (244 244 (:REWRITE DEFAULT-+-1))
              (128 70 (:REWRITE DEFAULT-<-2))
              (90 90 (:REWRITE DEFAULT-*-1))
              (83 70 (:REWRITE DEFAULT-<-1))
              (64 16 (:REWRITE A4))
              (61 45 (:REWRITE ZIP-OPEN))
              (16 8 (:REWRITE UNICITY-OF-0))
              (8 8 (:DEFINITION FIX)))
(TRUNC-PLUS-4 (756 24 (:DEFINITION EXPT))
              (216 173 (:REWRITE DEFAULT-+-2))
              (203 62 (:REWRITE DEFAULT-*-2))
              (187 173 (:REWRITE DEFAULT-+-1))
              (101 24 (:REWRITE ZIP-OPEN))
              (71 40 (:REWRITE A4))
              (71 3
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
              (62 62 (:REWRITE DEFAULT-*-1))
              (59 49 (:REWRITE DEFAULT-<-2))
              (55 49 (:REWRITE DEFAULT-<-1))
              (34 1 (:REWRITE INTEGERP-EXPT))
              (24 24 (:REWRITE FOLD-CONSTS-IN-+)))
(TRUNC-PLUS (322 14 (:DEFINITION EXPT))
            (220 220 (:TYPE-PRESCRIPTION A14 . 1))
            (104 31 (:REWRITE DEFAULT-*-2))
            (102 89 (:REWRITE DEFAULT-+-2))
            (90 89 (:REWRITE DEFAULT-+-1))
            (42 35 (:REWRITE DEFAULT-<-2))
            (36 35 (:REWRITE DEFAULT-<-1))
            (31 31 (:REWRITE DEFAULT-*-1))
            (14 14 (:REWRITE ZIP-OPEN))
            (6 6 (:REWRITE A4))
            (3 3 (:REWRITE FOLD-CONSTS-IN-+)))
(TRUNC-N+K-1 (79 1 (:DEFINITION EXPT))
             (67 67 (:TYPE-PRESCRIPTION A14 . 1))
             (27 4 (:REWRITE COMMUTATIVITY-OF-+))
             (22 13 (:REWRITE DEFAULT-+-2))
             (20 1 (:REWRITE ZIP-OPEN))
             (17 13 (:REWRITE DEFAULT-+-1))
             (17 1
                 (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
             (16 5 (:REWRITE A4))
             (13 5 (:REWRITE DEFAULT-*-2))
             (10 4 (:REWRITE DEFAULT-<-2))
             (7 3 (:REWRITE UNICITY-OF-0))
             (5 5 (:REWRITE DEFAULT-*-1))
             (4 4 (:REWRITE DEFAULT-<-1))
             (3 3 (:REWRITE FOLD-CONSTS-IN-+)))
(TRUNC-N+K-2 (715 9 (:DEFINITION EXPT))
             (247 148 (:REWRITE DEFAULT-+-2))
             (206 148 (:REWRITE DEFAULT-+-1))
             (184 9 (:REWRITE ZIP-OPEN))
             (178 178 (:TYPE-PRESCRIPTION A14 . 1))
             (157 9
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
             (151 60 (:REWRITE DEFAULT-*-2))
             (149 52 (:REWRITE A4))
             (118 1 (:REWRITE TRUNC-EXACTP-C))
             (116 1 (:REWRITE EXACTP2))
             (60 60 (:REWRITE DEFAULT-*-1))
             (46 27 (:REWRITE DEFAULT-<-2))
             (31 31 (:REWRITE FOLD-CONSTS-IN-+))
             (29 27 (:REWRITE DEFAULT-<-1))
             (1 1 (:TYPE-PRESCRIPTION EXACTP)))
(TRUNC-N+K-3 (604 8 (:DEFINITION EXPT))
             (224 120 (:REWRITE DEFAULT-+-2))
             (204 84 (:REWRITE DEFAULT-*-2))
             (189 189 (:TYPE-PRESCRIPTION EXPO2))
             (189 189 (:TYPE-PRESCRIPTION EXPO1))
             (160 8 (:REWRITE ZIP-OPEN))
             (158 120 (:REWRITE DEFAULT-+-1))
             (132 60 (:REWRITE A4))
             (120 4
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
             (120 4 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
             (118 84 (:REWRITE DEFAULT-*-1))
             (104 8 (:DEFINITION EXPO1))
             (98 98 (:TYPE-PRESCRIPTION A14 . 1))
             (88 8 (:DEFINITION EXPO2))
             (51 43 (:REWRITE DEFAULT-<-1))
             (48 16 (:REWRITE UNICITY-OF-0))
             (43 43 (:REWRITE DEFAULT-<-2))
             (38 38 (:REWRITE FOLD-CONSTS-IN-+))
             (34 4 (:REWRITE FL-INT))
             (34 4 (:REWRITE A10)))
(TRUNC-N+K-4 (740 9 (:DEFINITION EXPT))
             (232 151 (:REWRITE DEFAULT-+-2))
             (218 8 (:REWRITE ZIP-OPEN))
             (211 151 (:REWRITE DEFAULT-+-1))
             (198 10
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
             (194 10
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
             (192 68 (:REWRITE DEFAULT-*-2))
             (100 68 (:REWRITE DEFAULT-*-1))
             (60 24 (:REWRITE UNICITY-OF-0))
             (43 43 (:REWRITE FOLD-CONSTS-IN-+))
             (28 4 (:REWRITE FL-INT))
             (28 4 (:REWRITE A10))
             (16 12 (:REWRITE DEFAULT-<-2))
             (16 12 (:REWRITE DEFAULT-<-1))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-N+K-5 (1310 19 (:DEFINITION EXPT))
             (456 280 (:REWRITE DEFAULT-+-2))
             (410 280 (:REWRITE DEFAULT-+-1))
             (374 14 (:REWRITE ZIP-OPEN))
             (369 132 (:REWRITE DEFAULT-*-2))
             (342 16
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
             (166 132 (:REWRITE DEFAULT-*-1))
             (125 11 (:REWRITE FL-INT))
             (108 42 (:REWRITE UNICITY-OF-0))
             (84 84 (:REWRITE FOLD-CONSTS-IN-+))
             (35 25 (:REWRITE DEFAULT-<-1))
             (29 25 (:REWRITE DEFAULT-<-2))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-N+K-6 (1559 19 (:DEFINITION EXPT))
             (511 327 (:REWRITE DEFAULT-+-2))
             (458 327 (:REWRITE DEFAULT-+-1))
             (456 17 (:REWRITE ZIP-OPEN))
             (414 144 (:REWRITE DEFAULT-*-2))
             (414 21
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
             (405 21
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
             (222 144 (:REWRITE DEFAULT-*-1))
             (89 89 (:REWRITE FOLD-CONSTS-IN-+))
             (56 8 (:REWRITE FL-INT))
             (56 8 (:REWRITE A10))
             (34 25 (:REWRITE DEFAULT-<-2))
             (33 25 (:REWRITE DEFAULT-<-1))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-N+K-7 (574 7 (:DEFINITION EXPT))
             (217 128 (:REWRITE DEFAULT-+-2))
             (191 128 (:REWRITE DEFAULT-+-1))
             (170 6 (:REWRITE ZIP-OPEN))
             (167 59 (:REWRITE DEFAULT-*-2))
             (154 8 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
             (114 6 (:REWRITE A10))
             (73 59 (:REWRITE DEFAULT-*-1))
             (56 2 (:REWRITE FL-INT))
             (40 2 (:REWRITE FL+INT))
             (37 37 (:REWRITE FOLD-CONSTS-IN-+))
             (17 13 (:REWRITE DEFAULT-<-2))
             (15 13 (:REWRITE DEFAULT-<-1))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-N+K-8 (1053 16 (:DEFINITION EXPT))
             (421 235 (:REWRITE DEFAULT-+-2))
             (368 235 (:REWRITE DEFAULT-+-1))
             (329 109 (:REWRITE DEFAULT-*-2))
             (294 11 (:REWRITE ZIP-OPEN))
             (268 13
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
             (153 6 (:REWRITE FL-INT))
             (129 109 (:REWRITE DEFAULT-*-1))
             (70 70 (:REWRITE FOLD-CONSTS-IN-+))
             (28 22 (:REWRITE DEFAULT-<-2))
             (27 22 (:REWRITE DEFAULT-<-1))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-N+K-9 (1017 15 (:DEFINITION EXPT))
             (451 253 (:REWRITE DEFAULT-+-2))
             (378 253 (:REWRITE DEFAULT-+-1))
             (278 11 (:REWRITE ZIP-OPEN))
             (257 98 (:REWRITE DEFAULT-*-2))
             (252 13
                  (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
             (124 4 (:REWRITE FL-INT))
             (119 98 (:REWRITE DEFAULT-*-1))
             (100 4 (:REWRITE FL+INT))
             (71 71 (:REWRITE FOLD-CONSTS-IN-+))
             (29 21 (:REWRITE DEFAULT-<-2))
             (24 21 (:REWRITE DEFAULT-<-1))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 2))
             (4 4
                (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                         . 1))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
             (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-N+K-10 (28 13 (:REWRITE DEFAULT-+-2))
              (23 11 (:REWRITE DEFAULT-<-2))
              (19 6 (:REWRITE DEFAULT-*-2))
              (13 13 (:REWRITE DEFAULT-+-1))
              (12 4 (:REWRITE COMMUTATIVITY-OF-+))
              (11 11 (:REWRITE DEFAULT-<-1))
              (6 6 (:REWRITE DEFAULT-*-1))
              (3 3 (:REWRITE ZIP-OPEN)))
(TRUNC-N+K-11 (845 26 (:DEFINITION EXPT))
              (272 187 (:REWRITE DEFAULT-+-2))
              (243 82 (:REWRITE DEFAULT-*-2))
              (228 187 (:REWRITE DEFAULT-+-1))
              (138 8 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
              (132 24 (:REWRITE ZIP-OPEN))
              (102 7
                   (:REWRITE REARRANGE-NEGATIVE-COEFS-EQUAL))
              (101 82 (:REWRITE DEFAULT-*-1))
              (77 5 (:REWRITE FL-INT))
              (71 3 (:REWRITE FL+INT))
              (43 35 (:REWRITE DEFAULT-<-2))
              (37 35 (:REWRITE DEFAULT-<-1))
              (35 15 (:REWRITE UNICITY-OF-1))
              (31 2 (:REWRITE INTEGERP-EXPT))
              (19 19 (:REWRITE FOLD-CONSTS-IN-+))
              (10 10
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
              (10 10
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
              (10 10 (:LINEAR *-WEAKLY-MONOTONIC . 2))
              (10 10 (:LINEAR *-WEAKLY-MONOTONIC . 1))
              (10 10
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
              (10 10
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
              (10 10 (:LINEAR *-STRONGLY-MONOTONIC . 2))
              (10 10 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-N+K-12 (2656 34 (:DEFINITION EXPT))
              (1085 595 (:REWRITE DEFAULT-+-2))
              (880 595 (:REWRITE DEFAULT-+-1))
              (706 32 (:REWRITE ZIP-OPEN))
              (644 244 (:REWRITE DEFAULT-*-2))
              (474 6 (:REWRITE TRUNC-EXACTP-C))
              (464 4 (:REWRITE EXACTP2))
              (272 244 (:REWRITE DEFAULT-*-1))
              (151 86 (:REWRITE DEFAULT-<-2))
              (140 140 (:REWRITE FOLD-CONSTS-IN-+))
              (124 4 (:REWRITE FL-INT))
              (100 4 (:REWRITE FL+INT))
              (98 86 (:REWRITE DEFAULT-<-1))
              (8 8
                 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 2))
              (8 8
                 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 1))
              (8 8 (:LINEAR *-WEAKLY-MONOTONIC . 2))
              (8 8 (:LINEAR *-WEAKLY-MONOTONIC . 1))
              (8 8
                 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 2))
              (8 8
                 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 1))
              (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 2))
              (8 8 (:LINEAR *-STRONGLY-MONOTONIC . 1))
              (4 4 (:TYPE-PRESCRIPTION EXACTP)))
(TRUNC-N+K-13 (1804 1009 (:REWRITE DEFAULT-+-2))
              (1421 1009 (:REWRITE DEFAULT-+-1))
              (1229 452 (:REWRITE DEFAULT-*-2))
              (566 452 (:REWRITE DEFAULT-*-1))
              (266 153 (:REWRITE DEFAULT-<-2))
              (235 235 (:REWRITE FOLD-CONSTS-IN-+))
              (172 153 (:REWRITE DEFAULT-<-1))
              (116 4 (:REWRITE FL-INT))
              (88 4 (:REWRITE FL+INT))
              (28 28
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
              (28 28
                  (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
              (28 28 (:LINEAR *-WEAKLY-MONOTONIC . 2))
              (28 28 (:LINEAR *-WEAKLY-MONOTONIC . 1))
              (28 28
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 2))
              (28 28
                  (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                           . 1))
              (28 28 (:LINEAR *-STRONGLY-MONOTONIC . 2))
              (28 28 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-N+K-14 (553 7 (:DEFINITION EXPT))
              (220 118 (:REWRITE DEFAULT-+-2))
              (186 118 (:REWRITE DEFAULT-+-1))
              (169 169 (:TYPE-PRESCRIPTION A14 . 1))
              (141 51 (:REWRITE DEFAULT-*-2))
              (140 7 (:REWRITE ZIP-OPEN))
              (126 7 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
              (120 43 (:REWRITE A4))
              (61 51 (:REWRITE DEFAULT-*-1))
              (49 21 (:REWRITE UNICITY-OF-0))
              (25 25 (:REWRITE FOLD-CONSTS-IN-+))
              (23 16 (:REWRITE DEFAULT-<-2))
              (16 16 (:REWRITE DEFAULT-<-1))
              (4 4
                 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 2))
              (4 4
                 (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 1))
              (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
              (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
              (4 4
                 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 2))
              (4 4
                 (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                          . 1))
              (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
              (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))
(TRUNC-N+K (648 8 (:DEFINITION EXPT))
           (322 322 (:TYPE-PRESCRIPTION A14 . 1))
           (214 128 (:REWRITE DEFAULT-+-2))
           (184 128 (:REWRITE DEFAULT-+-1))
           (178 58 (:REWRITE DEFAULT-*-2))
           (176 8 (:REWRITE ZIP-OPEN))
           (160 8 (:REWRITE REARRANGE-NEGATIVE-COEFS-<))
           (124 44 (:REWRITE A4))
           (68 58 (:REWRITE DEFAULT-*-1))
           (60 24 (:REWRITE UNICITY-OF-0))
           (26 26 (:REWRITE FOLD-CONSTS-IN-+))
           (22 18 (:REWRITE DEFAULT-<-2))
           (22 18 (:REWRITE DEFAULT-<-1))
           (4 4
              (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                       . 2))
           (4 4
              (:LINEAR *-WEAKLY-MONOTONIC-NEGATIVE-MULTIPLIER
                       . 1))
           (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 2))
           (4 4 (:LINEAR *-WEAKLY-MONOTONIC . 1))
           (4 4
              (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                       . 2))
           (4 4
              (:LINEAR *-STRONGLY-MONOTONIC-NEGATIVE-MULTIPLIER
                       . 1))
           (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 2))
           (4 4 (:LINEAR *-STRONGLY-MONOTONIC . 1)))