(NTHCDR-UPDATE-NTH-BETTER (1482 70 (:REWRITE DEFAULT-CAR))
                          (1170 862 (:REWRITE DEFAULT-+-2))
                          (1123 727 (:REWRITE DEFAULT-<-2))
                          (1069 748 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                          (923 862 (:REWRITE DEFAULT-+-1))
                          (818 727 (:REWRITE DEFAULT-<-1))
                          (274 274 (:REWRITE CONSP-WHEN-LEN-GREATER))
                          (255 65 (:DEFINITION POSP))
                          (142 142 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                          (135 135
                               (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
                          (117 117 (:REWRITE FOLD-CONSTS-IN-+))
                          (93 93 (:REWRITE DEFAULT-UNARY-MINUS))
                          (80 26 (:REWRITE <-OF-+-OF---AND-0-ARG2))
                          (65 65 (:TYPE-PRESCRIPTION POSP))
                          (40 20 (:REWRITE EQUAL-OF-0-AND-+-OF---ALT))
                          (30 30
                              (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
                          (13 13
                              (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(UPDATE-SUBRANGE (10 9 (:REWRITE DEFAULT-<-2))
                 (10 9 (:REWRITE DEFAULT-<-1))
                 (8 7 (:REWRITE DEFAULT-+-1))
                 (7 7 (:REWRITE DEFAULT-+-2))
                 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
                 (5 5
                    (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
                 (4 4
                    (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
                 (4 4 (:REWRITE +-COMBINE-CONSTANTS))
                 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
                 (1 1
                    (:REWRITE INTEGERP-OF-+-WHEN-INTEGERP-2))
                 (1 1
                    (:REWRITE INTEGERP-OF-+-WHEN-INTEGERP-1)))
(UPDATE-NTH-OF-UPDATE-SUBRANGE-DIFF
     (508 44 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (188 26 (:REWRITE DEFAULT-CAR))
     (159 81 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (78 70 (:REWRITE DEFAULT-<-2))
     (70 70 (:REWRITE DEFAULT-<-1))
     (40 8 (:REWRITE LEN-OF-CDR))
     (39 39 (:REWRITE DEFAULT-+-2))
     (39 39 (:REWRITE DEFAULT-+-1))
     (16 16 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (8 8
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (8 8
        (:REWRITE <-OF-+-COMBINE-CONSTANTS-1)))
(UPDATE-NTH-OF-UPDATE-SUBRANGE-DIFF-BACK
     (186 62
          (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
     (62 62 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (4 4 (:REWRITE DEFAULT-<-2))
     (4 4 (:REWRITE DEFAULT-<-1)))
(TRUE-LISTP-OF-UPDATE-SUBRANGE
     (162 16 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (155 11 (:DEFINITION TRUE-LISTP))
     (78 78 (:TYPE-PRESCRIPTION LEN))
     (58 36 (:REWRITE DEFAULT-<-2))
     (44 36 (:REWRITE DEFAULT-<-1))
     (29 13 (:REWRITE DEFAULT-CDR))
     (23 16
         (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (21 18 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (16 16
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (14 14 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (3 3 (:REWRITE DEFAULT-CAR))
     (2 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1)))
(UPDATE-SUBRANGE)
(NTH-OF-UPDATE-SUBRANGE-SAME
     (500 48 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (127 96 (:REWRITE DEFAULT-<-2))
     (107 11 (:REWRITE LEN-OF-CDR))
     (96 96 (:REWRITE DEFAULT-<-1))
     (71 63 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (71 63 (:REWRITE DEFAULT-+-2))
     (63 63 (:REWRITE DEFAULT-+-1))
     (53 22
         (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (46 24 (:REWRITE +-COMBINE-CONSTANTS))
     (41 41 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (36 8 (:REWRITE EQUAL-OF-LEN-AND-0))
     (32 32 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (31 31 (:REWRITE DEFAULT-CAR))
     (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
     (15 15 (:REWRITE FOLD-CONSTS-IN-+))
     (14 14
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (11 11
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(NTH-OF-UPDATE-SUBRANGE-DIFF-1
     (313 29 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (94 71 (:REWRITE DEFAULT-<-2))
     (71 71 (:REWRITE DEFAULT-<-1))
     (48 36 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (36 36 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (32 32 (:REWRITE DEFAULT-+-2))
     (32 32 (:REWRITE DEFAULT-+-1))
     (27 27 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (27 7
         (:REWRITE NTH-OF-UPDATE-SUBRANGE-SAME))
     (25 13
         (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (24 24 (:REWRITE DEFAULT-CAR))
     (20 4 (:REWRITE LEN-OF-CDR))
     (18 18 (:REWRITE ZP-OPEN))
     (16 4
         (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
     (12 4 (:REWRITE +-COMBINE-CONSTANTS))
     (9 9 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (4 4 (:TYPE-PRESCRIPTION UPDATE-NTH))
     (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (4 4
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(NTH-OF-UPDATE-SUBRANGE-DIFF-2
     (313 29 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (99 76 (:REWRITE DEFAULT-<-2))
     (76 76 (:REWRITE DEFAULT-<-1))
     (48 36 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (36 36 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (32 32 (:REWRITE DEFAULT-+-2))
     (32 32 (:REWRITE DEFAULT-+-1))
     (31 7
         (:REWRITE NTH-OF-UPDATE-SUBRANGE-DIFF-1))
     (27 27 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (26 14
         (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (24 24 (:REWRITE DEFAULT-CAR))
     (20 4 (:REWRITE LEN-OF-CDR))
     (18 18 (:REWRITE ZP-OPEN))
     (16 4
         (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
     (15 7
         (:REWRITE NTH-OF-UPDATE-SUBRANGE-SAME))
     (12 4 (:REWRITE +-COMBINE-CONSTANTS))
     (10 10
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (4 4 (:TYPE-PRESCRIPTION UPDATE-NTH))
     (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (4 4
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(NTH-OF-UPDATE-SUBRANGE (174 9 (:DEFINITION NTH))
                        (92 9 (:REWRITE CONSP-FROM-LEN-CHEAP))
                        (45 45 (:TYPE-PRESCRIPTION LEN))
                        (43 34 (:REWRITE DEFAULT-<-2))
                        (34 34 (:REWRITE DEFAULT-<-1))
                        (22 7 (:REWRITE ZP-OPEN))
                        (12 12 (:REWRITE DEFAULT-+-2))
                        (12 12 (:REWRITE DEFAULT-+-1))
                        (10 9 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                        (10 9
                            (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                        (9 9 (:REWRITE DEFAULT-CDR))
                        (9 9 (:REWRITE CONSP-WHEN-LEN-GREATER))
                        (7 7 (:REWRITE DEFAULT-CAR))
                        (4 4 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
                        (3 3 (:REWRITE FOLD-CONSTS-IN-+))
                        (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
                        (3 3 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
                        (3 3
                           (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
                        (3 3 (:REWRITE +-COMBINE-CONSTANTS)))
(ARITH-HELPER (6 6
                 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
              (6 4 (:REWRITE DEFAULT-+-2))
              (6 4 (:REWRITE DEFAULT-+-1))
              (5 5
                 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
              (5 5
                 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
              (2 2 (:REWRITE DEFAULT-UNARY-MINUS)))
(UPDATE-SUBRANGE-COMBINE-ADJACENT-1
     (1456 125 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (339 250 (:REWRITE DEFAULT-<-2))
     (252 216 (:REWRITE DEFAULT-+-2))
     (250 250 (:REWRITE DEFAULT-<-1))
     (231 216 (:REWRITE DEFAULT-+-1))
     (194 98
          (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (141 61 (:REWRITE DEFAULT-CAR))
     (138 10 (:REWRITE LEN-OF-APPEND))
     (95 95 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (80 80
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (76 38
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (43 5 (:REWRITE COMMUTATIVITY-OF-+))
     (38 38 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (19 19
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (19 19
         (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (17 17 (:REWRITE FOLD-CONSTS-IN-+))
     (12 12
         (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
     (10 2 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
     (9 3 (:REWRITE <-OF-+-AND-+-CANCEL-1)))
(TAKE-OF-UPDATE-SUBRANGE-IRREL
     (218 20 (:REWRITE TAKE-DOES-NOTHING))
     (109 11 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (62 56 (:REWRITE DEFAULT-<-1))
     (61 56 (:REWRITE DEFAULT-<-2))
     (48 36 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (27 27 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (20 8
         (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (20 4 (:REWRITE LEN-OF-CDR))
     (14 14 (:REWRITE DEFAULT-+-2))
     (14 14 (:REWRITE DEFAULT-+-1))
     (12 4 (:REWRITE +-COMBINE-CONSTANTS))
     (12 3
         (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
     (9 9 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (6 6
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 6 (:REWRITE DEFAULT-CAR))
     (4 4
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (4 4 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (3 3 (:TYPE-PRESCRIPTION UPDATE-NTH))
     (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP)))
(UPDATE-SUBRANGE-START-START
     (78 9 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (43 5 (:REWRITE DEFAULT-CDR))
     (39 39 (:TYPE-PRESCRIPTION LEN))
     (21 21 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (21 9
         (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (15 15 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (11 8 (:REWRITE DEFAULT-<-2))
     (8 8 (:REWRITE DEFAULT-<-1))
     (3 3 (:REWRITE DEFAULT-+-2))
     (3 3 (:REWRITE DEFAULT-+-1))
     (3 3 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (2 2 (:REWRITE ZP-OPEN))
     (1 1
        (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE-DIFF))
     (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (1 1
        (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT)))
(UPDATE-NTH-OF-UPDATE-NTH-BECOMES-UPDATE-SUBRANGE
     (21 21 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (3 3 (:REWRITE DEFAULT-+-2))
     (3 3 (:REWRITE DEFAULT-+-1))
     (1 1 (:REWRITE DEFAULT-CDR))
     (1 1 (:REWRITE DEFAULT-CAR))
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1))
     (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
     (1 1
        (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT)))
(UPDATE-SUBRANGE-SPLIT-OFF-LAST-ELEM
     (1194 1194
           (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (261 45 (:REWRITE DEFAULT-CAR))
     (152 108 (:REWRITE DEFAULT-<-2))
     (135 114 (:REWRITE DEFAULT-+-2))
     (114 114 (:REWRITE DEFAULT-+-1))
     (108 108 (:REWRITE DEFAULT-<-1))
     (63 63 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (28 5
         (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-BECOMES-UPDATE-SUBRANGE))
     (22 22
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (18 18
         (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (18 18
         (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (11 11
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (10 10 (:REWRITE FOLD-CONSTS-IN-+))
     (10 2 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
     (9 9 (:REWRITE DEFAULT-UNARY-MINUS))
     (1 1 (:REWRITE NTH-0-CONS)))
(UPDATE-NTH-OF-UPDATE-SUBRANGE
     (81 81 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (6 2
        (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE-DIFF))
     (5 5 (:REWRITE DEFAULT-+-2))
     (5 5 (:REWRITE DEFAULT-+-1))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (1 1 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+))
     (1 1
        (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (1 1
        (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
     (1 1
        (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
     (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
     (1 1
        (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (1 1 (:REWRITE +-COMBINE-CONSTANTS))
     (1 1
        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP)))
(UPDATE-SUBRANGE-OF-UPDATE-SUBRANGE-SAME
     (2016 77
           (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (824 80 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (655 104 (:REWRITE LEN-OF-CDR))
     (456 447 (:REWRITE DEFAULT-+-2))
     (448 64 (:REWRITE COMMUTATIVITY-2-OF-+))
     (447 447 (:REWRITE DEFAULT-+-1))
     (259 241 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (256 64
          (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (199 169 (:REWRITE DEFAULT-<-2))
     (184 82
          (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (180 95
          (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (169 169 (:REWRITE DEFAULT-<-1))
     (166 166 (:REWRITE FOLD-CONSTS-IN-+))
     (117 9 (:REWRITE EQUAL-OF-LEN-AND-0))
     (101 44 (:REWRITE DEFAULT-CAR))
     (80 38 (:REWRITE EQUAL-OF-0-AND-+-OF---ALT))
     (78 78
         (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (64 64 (:REWRITE DEFAULT-UNARY-MINUS))
     (64 64 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (56 12
         (:REWRITE UPDATE-SUBRANGE-COMBINE-ADJACENT-1))
     (52 26 (:REWRITE +-OF-+-OF---SAME))
     (48 48
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (43 43 (:DEFINITION FIX))
     (34 34
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (20 4
         (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-BECOMES-UPDATE-SUBRANGE))
     (17 17
         (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
     (7 7 (:REWRITE EQUAL-OF-0-AND-+-OF--))
     (6 6 (:REWRITE ZP-OPEN)))
(UPDATE-SUBRANGE-OF-TAKE (305 32 (:REWRITE CONSP-FROM-LEN-CHEAP))
                         (285 13 (:REWRITE TAKE-DOES-NOTHING))
                         (278 278 (:TYPE-PRESCRIPTION LEN))
                         (277 277
                              (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
                         (254 7
                              (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
                         (220 13 (:REWRITE LEN-OF-CDR))
                         (133 11 (:REWRITE DEFAULT-CDR))
                         (131 12 (:REWRITE EQUAL-OF-LEN-AND-0))
                         (96 65 (:REWRITE DEFAULT-<-2))
                         (84 71 (:REWRITE DEFAULT-+-2))
                         (83 71 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                         (79 65 (:REWRITE DEFAULT-<-1))
                         (79 43
                             (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                         (77 71 (:REWRITE DEFAULT-+-1))
                         (47 24
                             (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
                         (40 40
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                         (35 9 (:REWRITE DEFAULT-CAR))
                         (29 29 (:REWRITE FOLD-CONSTS-IN-+))
                         (22 22
                             (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
                         (22 16 (:REWRITE DEFAULT-UNARY-MINUS))
                         (20 20 (:REWRITE CONSP-WHEN-LEN-GREATER))
                         (17 3 (:REWRITE LEN-OF-TAKE))
                         (14 3 (:DEFINITION NFIX))
                         (9 3 (:REWRITE <-OF-+-OF---AND-0-ARG2))
                         (8 8
                            (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
                         (7 7
                            (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
                         (5 1 (:REWRITE <-OF-+-OF---AND-0-ARG1))
                         (4 4 (:REWRITE ZP-OPEN))
                         (2 2
                            (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
                         (1 1
                            (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN)))
(UPDATE-SUBRANGE-REORDER
     (2043 62
           (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (991 104 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (779 63 (:REWRITE LEN-OF-CDR))
     (400 32 (:REWRITE EQUAL-OF-LEN-AND-0))
     (344 311 (:REWRITE DEFAULT-+-2))
     (343 49 (:REWRITE COMMUTATIVITY-2-OF-+))
     (311 311 (:REWRITE DEFAULT-+-1))
     (260 248 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (247 186 (:REWRITE DEFAULT-<-2))
     (232 157 (:REWRITE +-COMBINE-CONSTANTS))
     (196 49
          (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (186 186 (:REWRITE DEFAULT-<-1))
     (173 18
          (:REWRITE UPDATE-SUBRANGE-COMBINE-ADJACENT-1))
     (125 125 (:REWRITE FOLD-CONSTS-IN-+))
     (122 79
          (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (76 38 (:REWRITE +-OF-+-OF---SAME))
     (75 75 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (73 73
         (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (72 41 (:REWRITE DEFAULT-CAR))
     (68 38
         (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (65 65 (:REWRITE DEFAULT-UNARY-MINUS))
     (54 5
         (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-DIFF))
     (45 12
         (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-BECOMES-UPDATE-SUBRANGE))
     (44 44 (:DEFINITION FIX))
     (36 10 (:DEFINITION NFIX))
     (28 28
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (20 10 (:REWRITE EQUAL-OF-0-AND-+-OF---ALT))
     (12 12
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (11 5 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
     (10 10 (:TYPE-PRESCRIPTION NFIX))
     (6 6
        (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
     (5 5 (:REWRITE EQUAL-OF-0-AND-+-OF--))
     (5 5
        (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (4 2
        (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-SAME-VAL))
     (2 2 (:REWRITE ZP-OPEN)))
(TAKE-OF-UPDATE-SUBRANGE (180 20 (:REWRITE TAKE-DOES-NOTHING))
                         (102 102 (:TYPE-PRESCRIPTION LEN))
                         (60 6 (:REWRITE CONSP-FROM-LEN-CHEAP))
                         (55 6
                             (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
                         (46 2 (:REWRITE LEN-OF-CDR))
                         (36 36 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
                         (30 2 (:REWRITE EQUAL-OF-LEN-AND-0))
                         (29 20 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                         (25 19 (:REWRITE DEFAULT-<-2))
                         (23 2 (:REWRITE DEFAULT-CDR))
                         (23 2 (:REWRITE DEFAULT-CAR))
                         (19 19 (:REWRITE DEFAULT-<-1))
                         (19 6
                             (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                         (11 6 (:REWRITE DEFAULT-+-2))
                         (6 6 (:REWRITE DEFAULT-+-1))
                         (4 4
                            (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                         (4 4
                            (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
                         (2 2 (:REWRITE ZP-OPEN))
                         (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER))
                         (2 2 (:DEFINITION FIX)))
(NTHCDR-OF-UPDATE-SUBRANGE (633 633
                                (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
                           (309 9
                                (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
                           (139 14 (:REWRITE CONSP-FROM-LEN-CHEAP))
                           (115 14 (:REWRITE LEN-OF-CDR))
                           (81 71 (:REWRITE DEFAULT-<-1))
                           (79 71 (:REWRITE DEFAULT-<-2))
                           (64 61 (:REWRITE DEFAULT-+-2))
                           (63 9 (:REWRITE COMMUTATIVITY-2-OF-+))
                           (62 22 (:REWRITE NTHCDR-WHEN-NOT-POSP))
                           (61 61 (:REWRITE DEFAULT-+-1))
                           (56 32 (:REWRITE +-COMBINE-CONSTANTS))
                           (39 3 (:REWRITE EQUAL-OF-LEN-AND-0))
                           (37 37 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                           (36 22
                               (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
                           (36 9
                               (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
                           (30 10 (:DEFINITION POSP))
                           (22 22 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                           (22 22 (:REWRITE FOLD-CONSTS-IN-+))
                           (22 12
                               (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
                           (20 8
                               (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
                           (12 12 (:REWRITE CONSP-WHEN-LEN-GREATER))
                           (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
                           (10 10 (:TYPE-PRESCRIPTION POSP))
                           (10 10
                               (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                           (10 10
                               (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
                           (10 5 (:REWRITE +-OF-+-OF---SAME))
                           (8 4 (:REWRITE EQUAL-OF-0-AND-+-OF---ALT))
                           (7 7 (:DEFINITION FIX))
                           (6 6 (:REWRITE DEFAULT-CAR))
                           (4 4
                              (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
                           (4 4 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
                           (2 2
                              (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
                           (1 1 (:REWRITE EQUAL-OF-0-AND-+-OF--)))
(UPDATE-SUBRANGE-OUT-OF-ORDER (19 19 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
                              (4 4
                                 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                              (4 2 (:REWRITE DEFAULT-<-2))
                              (4 2 (:REWRITE DEFAULT-<-1)))
(NTHCDR-OF-UPDATE-SUBRANGE-LESS
     (1462 500
           (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (1157 697
           (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (648 9
          (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (302 32 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (229 13 (:REWRITE LEN-OF-CDR))
     (140 12 (:REWRITE EQUAL-OF-LEN-AND-0))
     (132 111 (:REWRITE DEFAULT-<-2))
     (113 100 (:REWRITE DEFAULT-+-2))
     (111 111 (:REWRITE DEFAULT-<-1))
     (104 10 (:REWRITE DEFAULT-CDR))
     (100 100 (:REWRITE DEFAULT-+-1))
     (66 14
         (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (65 59 (:REWRITE +-COMBINE-CONSTANTS))
     (61 61 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (57 57 (:REWRITE FOLD-CONSTS-IN-+))
     (46 28
         (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (42 14 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (29 29 (:REWRITE DEFAULT-UNARY-MINUS))
     (29 11
         (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (26 13 (:REWRITE +-OF-+-OF---SAME))
     (23 23 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (23 20
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
     (21 21
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (21 21
         (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (21 7 (:DEFINITION POSP))
     (20 20
         (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (19 14
         (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
     (15 5 (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE))
     (14 14 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (14 14 (:DEFINITION FIX))
     (10 10 (:TYPE-PRESCRIPTION NATP))
     (10 10
         (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (10 10 (:REWRITE DEFAULT-CAR))
     (7 7 (:TYPE-PRESCRIPTION POSP))
     (2 2
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (1 1
        (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN)))
(LEN-OF-UPDATE-SUBRANGE (352 8
                             (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
                        (200 21 (:REWRITE CONSP-FROM-LEN-CHEAP))
                        (160 8 (:REWRITE LEN-OF-CDR))
                        (135 99 (:REWRITE DEFAULT-<-2))
                        (112 99 (:REWRITE DEFAULT-<-1))
                        (107 83 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                        (104 8 (:REWRITE EQUAL-OF-LEN-AND-0))
                        (77 48
                            (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                        (63 53 (:REWRITE DEFAULT-+-2))
                        (56 8 (:REWRITE COMMUTATIVITY-2-OF-+))
                        (53 53 (:REWRITE DEFAULT-+-1))
                        (47 47 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
                        (45 5 (:REWRITE DEFAULT-CDR))
                        (32 8
                            (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
                        (26 26
                            (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                        (16 16 (:REWRITE FOLD-CONSTS-IN-+))
                        (16 16 (:REWRITE CONSP-WHEN-LEN-GREATER))
                        (16 16 (:REWRITE +-COMBINE-CONSTANTS))
                        (16 8 (:REWRITE +-OF-+-OF---SAME))
                        (12 3
                            (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
                        (10 10
                            (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
                        (10 10
                            (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
                        (10 10
                            (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
                        (10 10
                            (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
                        (9 9 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
                        (9 9
                           (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
                        (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
                        (8 8 (:REWRITE DEFAULT-CAR))
                        (8 8 (:DEFINITION FIX))
                        (3 3 (:TYPE-PRESCRIPTION UPDATE-NTH))
                        (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP)))
(CONSP-OF-UPDATE-SUBRANGE (152 2 (:DEFINITION UPDATE-SUBRANGE))
                          (88 2
                              (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
                          (66 66 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
                          (40 2 (:REWRITE LEN-OF-CDR))
                          (38 26 (:REWRITE DEFAULT-<-2))
                          (26 26 (:REWRITE DEFAULT-<-1))
                          (26 2 (:REWRITE EQUAL-OF-LEN-AND-0))
                          (26 2 (:DEFINITION NTH))
                          (18 2 (:REWRITE DEFAULT-CDR))
                          (17 17 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                          (14 12 (:REWRITE DEFAULT-+-2))
                          (14 2 (:REWRITE COMMUTATIVITY-2-OF-+))
                          (12 12 (:REWRITE DEFAULT-+-1))
                          (12 8
                              (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                          (8 8 (:REWRITE CONSP-WHEN-LEN-GREATER))
                          (8 2
                             (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
                          (4 4 (:REWRITE FOLD-CONSTS-IN-+))
                          (4 4 (:REWRITE +-COMBINE-CONSTANTS))
                          (4 2 (:REWRITE +-OF-+-OF---SAME))
                          (2 2
                             (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
                          (2 2
                             (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
                          (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
                          (2 2 (:REWRITE DEFAULT-CAR))
                          (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
                          (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
                          (2 2
                             (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
                          (2 2
                             (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
                          (2 2 (:DEFINITION FIX)))
(CAR-OF-UPDATE-SUBRANGE (489 42 (:REWRITE CONSP-FROM-LEN-CHEAP))
                        (397 11
                             (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
                        (204 51
                             (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
                        (155 16 (:REWRITE LEN-OF-CDR))
                        (140 107 (:REWRITE DEFAULT-<-2))
                        (125 9 (:REWRITE CONSP-OF-UPDATE-SUBRANGE))
                        (114 107 (:REWRITE DEFAULT-<-1))
                        (91 5 (:REWRITE LEN-OF-UPDATE-SUBRANGE))
                        (89 79 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                        (78 73 (:REWRITE DEFAULT-+-2))
                        (77 11 (:REWRITE COMMUTATIVITY-2-OF-+))
                        (73 73 (:REWRITE DEFAULT-+-1))
                        (65 5 (:REWRITE EQUAL-OF-LEN-AND-0))
                        (60 36 (:REWRITE +-COMBINE-CONSTANTS))
                        (51 51 (:TYPE-PRESCRIPTION TRUE-LISTP))
                        (45 33
                            (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
                        (44 11
                            (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
                        (37 5 (:DEFINITION MAX))
                        (31 31 (:REWRITE CONSP-WHEN-LEN-GREATER))
                        (29 29
                            (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
                        (26 26 (:REWRITE FOLD-CONSTS-IN-+))
                        (24 14
                            (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
                        (14 7 (:REWRITE +-OF-+-OF---SAME))
                        (12 12
                            (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
                        (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
                        (9 9 (:DEFINITION FIX))
                        (9 5 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
                        (8 4 (:REWRITE EQUAL-OF-0-AND-+-OF---ALT))
                        (7 7
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                        (5 5
                           (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
                        (4 4
                           (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
                        (2 2
                           (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
                        (1 1 (:REWRITE EQUAL-OF-0-AND-+-OF--)))
(CAR-OF-UPDATE-SUBRANGE-OF-0
     (275 6
          (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (253 25 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (203 17 (:REWRITE LEN-OF-CDR))
     (98 10 (:REWRITE EQUAL-OF-LEN-AND-0))
     (66 33
         (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
     (57 49 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (50 36 (:REWRITE DEFAULT-<-2))
     (50 9
         (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (48 36 (:REWRITE DEFAULT-+-2))
     (37 36 (:REWRITE DEFAULT-<-1))
     (37 18
         (:REWRITE UPDATE-SUBRANGE-OUT-OF-ORDER))
     (36 36 (:REWRITE DEFAULT-+-1))
     (33 33 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (20 20 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (18 6 (:REWRITE COMMUTATIVITY-OF-+))
     (15 5 (:REWRITE +-COMBINE-CONSTANTS))
     (10 2
         (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-DIFF))
     (9 6
        (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-BECOMES-UPDATE-SUBRANGE))
     (8 2
        (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (6 6
        (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (6 6
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (5 5 (:DEFINITION FIX))
     (4 4 (:TYPE-PRESCRIPTION NFIX))
     (4 2 (:REWRITE +-OF-+-OF---SAME))
     (3 3
        (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
     (3 1
        (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-SAME-VAL))
     (2 2 (:REWRITE EQUAL-OF-0-AND-+-OF---ALT))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(CDR-OF-UPDATE-SUBRANGE-FROM-NON-ZERO
     (763 21
          (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (393 46 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (281 281 (:TYPE-PRESCRIPTION LEN))
     (266 28 (:REWRITE COMMUTATIVITY-2-OF-+))
     (209 14 (:REWRITE LEN-OF-CDR))
     (188 174 (:REWRITE DEFAULT-+-2))
     (182 28 (:REWRITE COMMUTATIVITY-OF-+))
     (174 174 (:REWRITE DEFAULT-+-1))
     (168 23
          (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (148 122 (:REWRITE DEFAULT-<-2))
     (122 122 (:REWRITE DEFAULT-<-1))
     (115 12 (:REWRITE EQUAL-OF-LEN-AND-0))
     (84 8 (:REWRITE CONSP-OF-UPDATE-SUBRANGE))
     (68 68 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (63 63 (:REWRITE FOLD-CONSTS-IN-+))
     (56 14
         (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (55 33
         (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (51 15
         (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (35 35 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (21 21 (:REWRITE DEFAULT-UNARY-MINUS))
     (15 5 (:REWRITE EQUAL-OF-0-AND-+-OF---ALT))
     (13 13
         (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (10 10 (:REWRITE EQUAL-OF-0-AND-+-OF--))
     (7 7 (:REWRITE DEFAULT-CAR))
     (4 4
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (2 2
        (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN)))
(CDR-OF-UPDATE-SUBRANGE-FROM-ZERO
     (313 5
          (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (247 17 (:REWRITE LEN-OF-CDR))
     (244 25 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (198 198 (:TYPE-PRESCRIPTION LEN))
     (134 14 (:REWRITE EQUAL-OF-LEN-AND-0))
     (98 8 (:REWRITE DEFAULT-CDR))
     (63 9
         (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (52 35 (:REWRITE DEFAULT-+-2))
     (44 44 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (44 28 (:REWRITE DEFAULT-<-2))
     (42 42 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (35 35 (:REWRITE DEFAULT-+-1))
     (28 28 (:REWRITE DEFAULT-<-1))
     (23 8
         (:REWRITE UPDATE-SUBRANGE-OUT-OF-ORDER))
     (22 22 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (19 13
         (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (17 5 (:REWRITE COMMUTATIVITY-OF-+))
     (15 5 (:REWRITE +-COMBINE-CONSTANTS))
     (9 3 (:REWRITE <-OF-+-OF---AND-0-ARG1))
     (6 6
        (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (6 6
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (6 2
        (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (5 5 (:REWRITE DEFAULT-CAR))
     (5 5 (:DEFINITION FIX))
     (4 2 (:REWRITE +-OF-+-OF---SAME))
     (3 3
        (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN)))
(NTHCDR-OF-UPDATE-SUBRANGE-LESS-BETTER
     (406 170
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (273 135
          (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (170 170 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (21 5 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (18 18 (:REWRITE DEFAULT-+-2))
     (18 18 (:REWRITE DEFAULT-+-1))
     (18 17 (:REWRITE DEFAULT-<-2))
     (17 17 (:REWRITE DEFAULT-<-1))
     (12 4 (:DEFINITION POSP))
     (9 1 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
     (5 5
        (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
     (5 5 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (4 4 (:TYPE-PRESCRIPTION POSP))
     (4 4 (:REWRITE FOLD-CONSTS-IN-+))
     (4 4
        (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (4 4 (:REWRITE +-COMBINE-CONSTANTS))
     (3 3 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (3 3
        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (2 2
        (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (1 1
        (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (1 1
        (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (1 1 (:REWRITE CONSP-WHEN-LEN-GREATER)))
(EQUAL-OF-UPDATE-NTH-OF-0 (44 6 (:REWRITE CONSP-FROM-LEN-CHEAP))
                          (32 8 (:REWRITE DEFAULT-CDR))
                          (22 11
                              (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
                          (12 5
                              (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                          (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
                          (9 9 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                          (4 2 (:REWRITE DEFAULT-<-2))
                          (3 3 (:REWRITE CONSP-WHEN-LEN-GREATER))
                          (2 2 (:REWRITE DEFAULT-CAR))
                          (2 2 (:REWRITE DEFAULT-<-1)))
(IND)
(TAKE-OF-UPDATE-SUBRANGE-OF-0-LOW
     (1247 20 (:REWRITE TAKE-DOES-NOTHING))
     (951 951 (:TYPE-PRESCRIPTION LEN))
     (850 52 (:REWRITE LEN-OF-CDR))
     (781 84 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (482 54
          (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (468 44 (:REWRITE EQUAL-OF-LEN-AND-0))
     (269 6 (:REWRITE LEN-OF-UPDATE-SUBRANGE))
     (257 24 (:REWRITE DEFAULT-CDR))
     (241 21 (:REWRITE DEFAULT-CAR))
     (198 3
          (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (173 103 (:REWRITE DEFAULT-+-2))
     (167 167 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (143 89 (:REWRITE DEFAULT-<-2))
     (103 103 (:REWRITE DEFAULT-+-1))
     (102 60
          (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (89 89 (:REWRITE DEFAULT-<-1))
     (63 63 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (44 6 (:DEFINITION MAX))
     (36 36
         (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (34 17 (:TYPE-PRESCRIPTION MAX))
     (31 7 (:REWRITE ZP-OPEN))
     (30 10 (:REWRITE +-COMBINE-CONSTANTS))
     (16 16
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (11 3 (:REWRITE COMMUTATIVITY-OF-+))
     (10 6
         (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (9 2 (:REWRITE TAKE-OF-UPDATE-SUBRANGE))
     (7 7
        (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
     (6 3
        (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE-DIFF))
     (6 1 (:REWRITE CONSP-OF-UPDATE-SUBRANGE))
     (6 1
        (:REWRITE CDR-OF-UPDATE-SUBRANGE-FROM-NON-ZERO))
     (5 2
        (:REWRITE TAKE-OF-UPDATE-SUBRANGE-IRREL))
     (4 4 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
     (3 3 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (3 3 (:TYPE-PRESCRIPTION NATP))
     (2 2 (:TYPE-PRESCRIPTION NFIX)))
(UPDATE-SUBRANGE-OF-0 (75 25 (:TYPE-PRESCRIPTION BINARY-APPEND))
                      (68 2
                          (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
                      (56 6 (:REWRITE CONSP-FROM-LEN-CHEAP))
                      (45 45 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
                      (40 2 (:REWRITE LEN-OF-CDR))
                      (36 3 (:REWRITE TAKE-DOES-NOTHING))
                      (27 21 (:REWRITE DEFAULT-<-1))
                      (26 21 (:REWRITE DEFAULT-<-2))
                      (26 2 (:REWRITE EQUAL-OF-LEN-AND-0))
                      (26 2 (:DEFINITION NTH))
                      (18 2 (:REWRITE DEFAULT-CDR))
                      (16 16 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                      (16 12
                          (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                      (14 12 (:REWRITE DEFAULT-+-2))
                      (12 12 (:REWRITE DEFAULT-+-1))
                      (6 2 (:REWRITE COMMUTATIVITY-OF-+))
                      (4 4 (:REWRITE CONSP-WHEN-LEN-GREATER))
                      (4 4
                         (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
                      (4 2
                         (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE-DIFF))
                      (4 2
                         (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
                      (4 2 (:REWRITE +-OF-+-OF---SAME))
                      (3 3
                         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                      (3 3 (:REWRITE NTHCDR-WHEN-NOT-POSP))
                      (3 3
                         (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
                      (3 3 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                      (3 3
                         (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
                      (3 3
                         (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
                      (2 2 (:REWRITE DEFAULT-CAR))
                      (2 2 (:DEFINITION FIX))
                      (1 1
                         (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-LESS-BETTER))
                      (1 1
                         (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-LESS))
                      (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
                      (1 1
                         (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT)))
(IND2)
(NTHCDR-OF-UPDATE-SUBRANGE-HALF
     (1710 1644
           (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (1614 538 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (788 21
          (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (476 119
          (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
     (281 242 (:REWRITE DEFAULT-+-2))
     (243 242 (:REWRITE DEFAULT-+-1))
     (216 196 (:REWRITE DEFAULT-<-2))
     (198 196 (:REWRITE DEFAULT-<-1))
     (181 41 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (112 28 (:DEFINITION POSP))
     (107 40
          (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (103 28
          (:REWRITE UPDATE-SUBRANGE-OUT-OF-ORDER))
     (79 2
         (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
     (78 78 (:REWRITE FOLD-CONSTS-IN-+))
     (67 67 (:REWRITE DEFAULT-UNARY-MINUS))
     (66 12
         (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-LESS-BETTER))
     (53 3 (:DEFINITION TRUE-LISTP))
     (52 38
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (43 43 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (43 1 (:REWRITE TRUE-LISTP-OF-NTHCDR-2))
     (42 15 (:REWRITE DEFAULT-CAR))
     (42 2 (:LINEAR LEN-OF-CDR-LINEAR))
     (37 37 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (29 1
         (:REWRITE EQUAL-OF-APPEND-AND-APPEND-WHEN-EQUAL-OF-LEN-AND-LEN))
     (28 28 (:TYPE-PRESCRIPTION POSP))
     (16 6 (:REWRITE EQUAL-OF-0-AND-+-OF---ALT))
     (11 11 (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE))
     (10 2 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
     (8 1 (:REWRITE LEN-OF-TAKE))
     (7 7
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (4 4
        (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
     (1 1 (:REWRITE EQUAL-OF-0-AND-+-OF--)))
(NTHCDR-OF-UPDATE-SUBRANGE-LESS-BETTER-BETTER
     (350 144
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (342 3 (:DEFINITION UPDATE-SUBRANGE))
     (233 119
          (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (214 3
          (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (144 144 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (84 9 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (77 11 (:REWRITE COMMUTATIVITY-2-OF-+))
     (60 3 (:REWRITE LEN-OF-CDR))
     (42 39 (:REWRITE DEFAULT-+-2))
     (41 35 (:REWRITE DEFAULT-<-2))
     (39 39 (:REWRITE DEFAULT-+-1))
     (39 3 (:REWRITE EQUAL-OF-LEN-AND-0))
     (39 3 (:DEFINITION NTH))
     (35 35 (:REWRITE DEFAULT-<-1))
     (27 3 (:REWRITE DEFAULT-CDR))
     (24 5
         (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (22 22 (:REWRITE FOLD-CONSTS-IN-+))
     (22 22 (:REWRITE +-COMBINE-CONSTANTS))
     (21 5 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (20 20 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (19 13
         (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (19 1
         (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-LESS-BETTER))
     (19 1
         (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-HALF))
     (13 13 (:REWRITE DEFAULT-UNARY-MINUS))
     (12 4 (:REWRITE <-OF-+-OF---AND-0-ARG2))
     (12 4 (:DEFINITION POSP))
     (10 5 (:REWRITE +-OF-+-OF---SAME))
     (7 7 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (7 7
        (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (6 6 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (6 6 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
     (6 6
        (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (6 2 (:REWRITE <-OF-+-OF---AND-0-ARG1))
     (5 5
        (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
     (5 5 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (5 5
        (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (5 5
        (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (5 5 (:DEFINITION FIX))
     (4 4 (:TYPE-PRESCRIPTION POSP))
     (4 4 (:TYPE-PRESCRIPTION NATP))
     (3 3 (:REWRITE DEFAULT-CAR)))
(NTHCDR-OF-UPDATE-SUBRANGE-BETTER
     (162 54
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (79 1 (:DEFINITION UPDATE-SUBRANGE))
     (54 54 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (54 54 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (44 1
         (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (28 3 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (20 1
         (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-HALF))
     (20 1 (:REWRITE LEN-OF-CDR))
     (15 13 (:REWRITE DEFAULT-<-2))
     (15 13 (:REWRITE DEFAULT-<-1))
     (13 1 (:REWRITE EQUAL-OF-LEN-AND-0))
     (13 1 (:DEFINITION NTH))
     (9 2
        (:REWRITE UPDATE-SUBRANGE-OUT-OF-ORDER))
     (9 1 (:REWRITE DEFAULT-CDR))
     (8 7 (:REWRITE DEFAULT-+-2))
     (8 7 (:REWRITE DEFAULT-+-1))
     (7 7 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (7 5
        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (7 1 (:REWRITE COMMUTATIVITY-2-OF-+))
     (6 2 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (4 1
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (3 3
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (3 3 (:REWRITE FOLD-CONSTS-IN-+))
     (3 3 (:REWRITE +-COMBINE-CONSTANTS))
     (3 1
        (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-LESS-BETTER-BETTER))
     (3 1
        (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-LESS-BETTER))
     (3 1
        (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-LESS))
     (3 1 (:DEFINITION POSP))
     (2 2
        (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
     (2 2 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (2 2
        (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (2 2
        (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
     (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (2 1 (:REWRITE +-OF-+-OF---SAME))
     (1 1 (:TYPE-PRESCRIPTION POSP))
     (1 1 (:REWRITE DEFAULT-CAR))
     (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (1 1
        (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (1 1 (:DEFINITION FIX)))
(TAKE-OF-UPDATE-SUBRANGE-LEMMA
     (7184 93 (:REWRITE TAKE-DOES-NOTHING))
     (3647 166 (:REWRITE LEN-OF-CDR))
     (2956 243 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (2356 185
           (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (2246 39 (:REWRITE LEN-OF-NTHCDR))
     (1650 77 (:REWRITE DEFAULT-CDR))
     (1647 36 (:REWRITE LEN-OF-UPDATE-SUBRANGE))
     (1478 141 (:REWRITE EQUAL-OF-LEN-AND-0))
     (981 598 (:REWRITE DEFAULT-+-2))
     (787 519 (:REWRITE DEFAULT-<-2))
     (717 586 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (681 598 (:REWRITE DEFAULT-+-1))
     (652 9 (:REWRITE CAR-OF-NTHCDR))
     (635 54 (:REWRITE DEFAULT-CAR))
     (602 519 (:REWRITE DEFAULT-<-1))
     (543 11 (:DEFINITION NTH))
     (426 213 (:TYPE-PRESCRIPTION MAX))
     (394 9 (:REWRITE CONSP-OF-NTHCDR))
     (346 206
          (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (266 36 (:DEFINITION MAX))
     (192 192 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (188 4
          (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-HALF))
     (182 115
          (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (162 57
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (152 4
          (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-LESS-BETTER))
     (132 132 (:REWRITE FOLD-CONSTS-IN-+))
     (132 132
          (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (112 108 (:REWRITE DEFAULT-UNARY-MINUS))
     (82 41 (:REWRITE +-OF-+-OF---SAME))
     (77 77 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (57 57 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (54 14 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (43 10 (:REWRITE CONSP-OF-UPDATE-SUBRANGE))
     (40 12 (:DEFINITION POSP))
     (34 6
         (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-BETTER))
     (32 4
         (:REWRITE NTH-OF-UPDATE-SUBRANGE-SAME))
     (32 4
         (:REWRITE NTH-OF-UPDATE-SUBRANGE-DIFF-2))
     (30 30
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (24 4
         (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-LESS))
     (24 4 (:REWRITE NTH-OF-UPDATE-SUBRANGE))
     (22 22 (:TYPE-PRESCRIPTION NATP))
     (19 4
         (:REWRITE TAKE-OF-UPDATE-SUBRANGE-IRREL))
     (18 14
         (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
     (18 9
         (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
     (14 14 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (14 14
         (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
     (12 12 (:TYPE-PRESCRIPTION POSP))
     (12 4
         (:REWRITE NTH-OF-UPDATE-SUBRANGE-DIFF-1)))
(UPDATE-SUBRANGE-REWRITE (1032 244 (:TYPE-PRESCRIPTION BINARY-APPEND))
                         (124 10 (:REWRITE TAKE-DOES-NOTHING))
                         (60 60 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
                         (54 46 (:REWRITE DEFAULT-<-2))
                         (52 46 (:REWRITE DEFAULT-<-1))
                         (40 40 (:REWRITE DEFAULT-+-2))
                         (40 40 (:REWRITE DEFAULT-+-1))
                         (30 10 (:REWRITE NTHCDR-WHEN-NOT-POSP))
                         (30 2 (:REWRITE EQUAL-OF-LEN-AND-0))
                         (22 4 (:REWRITE CONSP-FROM-LEN-CHEAP))
                         (18 18 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                         (16 16
                             (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                         (16 4 (:DEFINITION POSP))
                         (12 12 (:REWRITE FOLD-CONSTS-IN-+))
                         (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
                         (12 12 (:REWRITE +-COMBINE-CONSTANTS))
                         (12 6
                             (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
                         (10 10
                             (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
                         (10 10 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                         (8 8
                            (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
                         (4 4 (:TYPE-PRESCRIPTION POSP))
                         (4 4
                            (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
                         (4 4
                            (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
                         (4 4 (:REWRITE CONSP-WHEN-LEN-GREATER))
                         (2 2
                            (:REWRITE UPDATE-SUBRANGE-OUT-OF-ORDER))
                         (2 2
                            (:REWRITE NTHCDR-OF-UPDATE-SUBRANGE-BETTER))
                         (2 2 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
                         (2 2
                            (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT)))
(UPDATE-SUBRANGE-REWRITE-BETTER
     (1275 300 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (83 83 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (65 6 (:REWRITE TAKE-DOES-NOTHING))
     (13 13 (:REWRITE DEFAULT-<-2))
     (13 13 (:REWRITE DEFAULT-<-1))
     (12 6
         (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
     (11 11
         (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (9 9 (:REWRITE DEFAULT-+-2))
     (9 9 (:REWRITE DEFAULT-+-1))
     (6 6 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (3 3 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (3 3
        (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
     (3 3 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (3 3 (:REWRITE FOLD-CONSTS-IN-+))
     (3 3
        (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (3 3
        (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
     (3 3 (:REWRITE +-COMBINE-CONSTANTS)))
(UPDATE-SUBRANGE-FROM-0
     (162 81
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (162 27
          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (113 113 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (81 27 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (27 27 (:TYPE-PRESCRIPTION UPDATE-SUBRANGE))
     (10 1
         (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
     (7 1 (:DEFINITION TRUE-LISTP))
     (4 4 (:REWRITE DEFAULT-+-2))
     (4 4 (:REWRITE DEFAULT-+-1))
     (3 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (2 2
        (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
     (2 2 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (2 2 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (2 2
        (:REWRITE APPEND-WHEN-NOT-CONSP-ARG1-CHEAP))
     (2 2
        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (2 1 (:REWRITE DEFAULT-CDR))
     (1 1
        (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (1 1
        (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS)))
(UPDATE-SUBRANGE-NOT-NIL1)
(UPDATE-SUBRANGE-NOT-NIL2)
(UPDATE-SUBRANGE-OF-TRUE-LIST-FIX
     (975 83 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (724 18
          (:REWRITE UPDATE-NTH-OF-UPDATE-SUBRANGE))
     (609 20
          (:REWRITE TRUE-LIST-FIX-WHEN-TRUE-LISTP))
     (565 69 (:REWRITE LEN-OF-CDR))
     (550 21 (:DEFINITION TRUE-LISTP))
     (346 3 (:REWRITE CDR-OF-TRUE-LIST-FIX))
     (214 156 (:REWRITE DEFAULT-<-2))
     (189 166 (:REWRITE DEFAULT-+-2))
     (174 22 (:REWRITE EQUAL-OF-LEN-AND-0))
     (172 167 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (166 166 (:REWRITE DEFAULT-+-1))
     (163 156 (:REWRITE DEFAULT-<-1))
     (153 78 (:REWRITE +-COMBINE-CONSTANTS))
     (148 148 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (126 18 (:REWRITE COMMUTATIVITY-2-OF-+))
     (114 48
          (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
     (92 46
         (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
     (78 78 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (72 18
         (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (70 32
         (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
     (59 3 (:REWRITE LEN-OF-TRUE-LIST-FIX))
     (55 10
         (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-BECOMES-UPDATE-SUBRANGE))
     (48 3
         (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-DIFF))
     (45 45 (:REWRITE FOLD-CONSTS-IN-+))
     (38 3 (:REWRITE CONSP-OF-TRUE-LIST-FIX))
     (33 33 (:REWRITE DEFAULT-CAR))
     (33 33
         (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
     (28 28
         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (27 27
         (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
     (24 24 (:TYPE-PRESCRIPTION TRUE-LIST-FIX))
     (24 6 (:DEFINITION NFIX))
     (22 14 (:REWRITE EQUAL-OF-0-AND-+-OF---ALT))
     (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
     (18 9 (:REWRITE +-OF-+-OF---SAME))
     (14 14
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (14 14
         (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
     (14 14 (:DEFINITION FIX))
     (14 8 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
     (12 2
         (:REWRITE UPDATE-NTH-OF-UPDATE-NTH-SAME-VAL))
     (8 8
        (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
     (6 6 (:TYPE-PRESCRIPTION NFIX))
     (6 3 (:REWRITE CAR-OF-TRUE-LIST-FIX))
     (5 5 (:REWRITE <-+-CANCEL-1-ALT))
     (1 1 (:REWRITE EQUAL-OF-0-AND-+-OF--)))
(NTHCDR-WHEN-<=-OF-LEN (33 4 (:DEFINITION TRUE-LISTP))
                       (29 5 (:REWRITE CONSP-FROM-LEN-CHEAP))
                       (24 1 (:DEFINITION NTHCDR))
                       (16 11 (:REWRITE DEFAULT-<-2))
                       (13 5 (:REWRITE DEFAULT-CDR))
                       (11 11 (:REWRITE DEFAULT-<-1))
                       (10 10 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                       (7 2 (:DEFINITION POSP))
                       (5 5 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                       (4 4
                          (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
                       (4 4 (:REWRITE CONSP-WHEN-LEN-GREATER))
                       (3 1 (:REWRITE COMMUTATIVITY-OF-+))
                       (3 1
                          (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
                       (2 2 (:TYPE-PRESCRIPTION POSP))
                       (2 2 (:REWRITE DEFAULT-+-2))
                       (2 2 (:REWRITE DEFAULT-+-1))
                       (1 1 (:REWRITE ZP-OPEN)))
(UPDATE-SUBRANGE-ALL (28 4 (:REWRITE CONSP-FROM-LEN-CHEAP))
                     (23 1 (:REWRITE UPDATE-SUBRANGE-FROM-0))
                     (11 1 (:REWRITE UPDATE-SUBRANGE-REWRITE))
                     (10 10 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                     (10 7 (:REWRITE DEFAULT-<-2))
                     (10 7 (:REWRITE DEFAULT-<-1))
                     (6 6
                        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                     (4 4 (:REWRITE CONSP-WHEN-LEN-GREATER))
                     (3 3 (:REWRITE DEFAULT-CDR))
                     (2 1 (:REWRITE DEFAULT-+-2))
                     (1 1 (:TYPE-PRESCRIPTION NATP))
                     (1 1 (:REWRITE DEFAULT-+-1)))
