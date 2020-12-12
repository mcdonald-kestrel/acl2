(NTHCDR-OF-CONS (19 3 (:REWRITE DEFAULT-CDR))
                (16 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
                (11 5 (:REWRITE ZP-OPEN))
                (8 8 (:TYPE-PRESCRIPTION LEN))
                (8 8 (:REWRITE DEFAULT-+-2))
                (8 8 (:REWRITE DEFAULT-+-1))
                (6 2 (:REWRITE FOLD-CONSTS-IN-+))
                (6 2
                   (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                (4 4 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                (2 2 (:REWRITE DEFAULT-<-2))
                (2 2 (:REWRITE DEFAULT-<-1))
                (2 2 (:DEFINITION NOT)))
(NTHCDR-OF-NIL (6 2 (:REWRITE COMMUTATIVITY-OF-+))
               (4 4 (:REWRITE ZP-OPEN))
               (4 4 (:REWRITE DEFAULT-+-2))
               (4 4 (:REWRITE DEFAULT-+-1)))
(NTHCDR-OF-0 (22 11
                 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
             (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP)))
(NTHCDR-WHEN-NOT-POSP
     (40 20
         (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1)))
(NTHCDR-WHEN-NOT-CONSP-CHEAP
     (38 19
         (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (19 19 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (10 2 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (10 1 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (6 2 (:DEFINITION POSP))
     (5 5 (:TYPE-PRESCRIPTION LEN))
     (4 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (2 2 (:TYPE-PRESCRIPTION POSP))
     (2 2 (:REWRITE ZP-OPEN))
     (2 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1))
     (1 1 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (1 1 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (1 1
        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP)))
(LEN-OF-NTHCDR (154 16 (:REWRITE DEFAULT-CDR))
               (92 71 (:REWRITE DEFAULT-+-2))
               (90 78 (:REWRITE DEFAULT-<-1))
               (89 78 (:REWRITE DEFAULT-<-2))
               (78 71 (:REWRITE DEFAULT-+-1))
               (66 22 (:DEFINITION POSP))
               (24 12 (:REWRITE ZP-OPEN))
               (22 22 (:TYPE-PRESCRIPTION POSP))
               (17 17 (:REWRITE DEFAULT-UNARY-MINUS))
               (15 15 (:REWRITE CONSP-WHEN-LEN-GREATER))
               (4 4
                  (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(ACL2-COUNT-OF-NTHCDR-WEAK-LINEAR
     (284 18 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (246 130 (:REWRITE DEFAULT-+-2))
     (183 130 (:REWRITE DEFAULT-+-1))
     (144 10 (:REWRITE LEN-OF-NTHCDR))
     (112 82 (:REWRITE DEFAULT-<-2))
     (105 82 (:REWRITE DEFAULT-<-1))
     (69 18 (:DEFINITION NFIX))
     (41 39 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (40 24
         (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (37 35 (:REWRITE FOLD-CONSTS-IN-+))
     (36 36 (:REWRITE DEFAULT-UNARY-MINUS))
     (31 15 (:REWRITE DEFAULT-CDR))
     (25 5 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (16 16 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (15 15 (:REWRITE DEFAULT-NUMERATOR))
     (15 15 (:REWRITE DEFAULT-DENOMINATOR))
     (15 15 (:REWRITE DEFAULT-COERCE-2))
     (15 15 (:REWRITE DEFAULT-COERCE-1))
     (15 5 (:DEFINITION POSP))
     (14 14 (:REWRITE DEFAULT-REALPART))
     (14 14 (:REWRITE DEFAULT-IMAGPART))
     (13 13 (:REWRITE DEFAULT-CAR))
     (10 10 (:REWRITE ZP-OPEN))
     (10 2 (:REWRITE LEN-OF-CDR))
     (7 3 (:REWRITE UNICITY-OF-0))
     (6 1 (:REWRITE ASSOCIATIVITY-OF-+))
     (5 5 (:TYPE-PRESCRIPTION POSP))
     (4 3 (:DEFINITION FIX)))
(ACL2-COUNT-OF-NTHCDR-STRONG-LINEAR
     (4232 2292 (:REWRITE DEFAULT-+-2))
     (3136 2292 (:REWRITE DEFAULT-+-1))
     (2604 144 (:REWRITE LEN-OF-NTHCDR))
     (1332 1121 (:REWRITE DEFAULT-<-2))
     (1201 1121 (:REWRITE DEFAULT-<-1))
     (1068 288 (:DEFINITION NFIX))
     (660 660 (:REWRITE DEFAULT-UNARY-MINUS))
     (641 641 (:REWRITE FOLD-CONSTS-IN-+))
     (606 606 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (576 288
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (384 40 (:REWRITE COMMUTATIVITY-2-OF-+))
     (326 310 (:REWRITE DEFAULT-CAR))
     (320 308 (:REWRITE DEFAULT-CDR))
     (288 288 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (258 258 (:REWRITE DEFAULT-REALPART))
     (258 258 (:REWRITE DEFAULT-NUMERATOR))
     (258 258 (:REWRITE DEFAULT-IMAGPART))
     (258 258 (:REWRITE DEFAULT-DENOMINATOR))
     (258 258 (:REWRITE DEFAULT-COERCE-2))
     (258 258 (:REWRITE DEFAULT-COERCE-1))
     (255 255 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (244 52 (:REWRITE LEN-OF-CDR))
     (240 160 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (96 24
         (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (20 20 (:TYPE-PRESCRIPTION POSP)))
(NTHCDR-IFF (110 12 (:REWRITE CONSP-FROM-LEN-CHEAP))
            (94 77 (:REWRITE DEFAULT-<-2))
            (77 77 (:REWRITE DEFAULT-<-1))
            (61 13 (:REWRITE DEFAULT-CDR))
            (39 13 (:DEFINITION POSP))
            (26 22 (:REWRITE DEFAULT-+-2))
            (26 22 (:REWRITE DEFAULT-+-1))
            (16 12
                (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
            (13 13 (:TYPE-PRESCRIPTION POSP))
            (11 11 (:REWRITE CONSP-WHEN-LEN-GREATER))
            (10 10 (:REWRITE ZP-OPEN))
            (8 8
               (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(NOT-EQUAL-WHEN-<-OF-LENS)
(EQUAL-OF-NTHCDR-SAME (68 64 (:REWRITE DEFAULT-+-2))
                      (65 64 (:REWRITE DEFAULT-+-1))
                      (44 35 (:REWRITE DEFAULT-<-2))
                      (37 35 (:REWRITE DEFAULT-<-1))
                      (30 10 (:DEFINITION POSP))
                      (10 10 (:TYPE-PRESCRIPTION POSP))
                      (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
                      (3 3 (:REWRITE CONSP-WHEN-LEN-GREATER)))
(NTHCDR-WHEN-EQUAL-OF-LEN (27 3 (:REWRITE CONSP-FROM-LEN-CHEAP))
                          (24 2 (:DEFINITION TRUE-LISTP))
                          (24 1 (:DEFINITION NTHCDR))
                          (18 12 (:REWRITE DEFAULT-<-2))
                          (14 12 (:REWRITE DEFAULT-<-1))
                          (13 3 (:REWRITE DEFAULT-CDR))
                          (10 10 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                          (10 2 (:REWRITE NTHCDR-WHEN-NOT-POSP))
                          (6 2 (:DEFINITION POSP))
                          (3 3 (:REWRITE CONSP-WHEN-LEN-GREATER))
                          (3 1 (:REWRITE COMMUTATIVITY-OF-+))
                          (2 2 (:TYPE-PRESCRIPTION POSP))
                          (2 2
                             (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
                          (2 2 (:REWRITE DEFAULT-+-2))
                          (2 2 (:REWRITE DEFAULT-+-1))
                          (2 2
                             (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                          (1 1 (:REWRITE ZP-OPEN)))
(INTEGERP-OF-ONE-LESS (2 2
                         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                      (2 1 (:REWRITE DEFAULT-+-2))
                      (1 1 (:REWRITE DEFAULT-+-1)))
(CONSP-OF-NTHCDR (840 46 (:REWRITE CONSP-FROM-LEN-CHEAP))
                 (163 130 (:REWRITE DEFAULT-+-2))
                 (163 118 (:REWRITE DEFAULT-<-2))
                 (138 130 (:REWRITE DEFAULT-+-1))
                 (126 118 (:REWRITE DEFAULT-<-1))
                 (54 18 (:DEFINITION POSP))
                 (36 18 (:REWRITE ZP-OPEN))
                 (24 24 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                 (18 18 (:TYPE-PRESCRIPTION POSP))
                 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
                 (10 2 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
                 (6 6
                    (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(NTHCDR-OPENER-ALT (339 23 (:REWRITE DEFAULT-CDR))
                   (206 22 (:REWRITE CONSP-FROM-LEN-CHEAP))
                   (114 114 (:TYPE-PRESCRIPTION LEN))
                   (100 7 (:REWRITE LEN-OF-CDR))
                   (96 5 (:REWRITE CONSP-OF-NTHCDR))
                   (60 48 (:REWRITE DEFAULT-<-2))
                   (57 19 (:DEFINITION POSP))
                   (53 46 (:REWRITE DEFAULT-+-2))
                   (51 7 (:REWRITE EQUAL-OF-LEN-AND-0))
                   (48 48 (:REWRITE DEFAULT-<-1))
                   (46 46 (:REWRITE DEFAULT-+-1))
                   (43 39 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                   (39 15
                       (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                   (25 25
                       (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
                   (25 25 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                   (19 19 (:TYPE-PRESCRIPTION POSP))
                   (15 5 (:DEFINITION NFIX))
                   (12 12 (:REWRITE CONSP-WHEN-LEN-GREATER))
                   (5 5
                      (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(NTHCDR-OPENER-ALT2 (96 25 (:REWRITE DEFAULT-CDR))
                    (51 51 (:REWRITE DEFAULT-+-2))
                    (51 51 (:REWRITE DEFAULT-+-1))
                    (37 37 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                    (29 6 (:REWRITE DEFAULT-CAR))
                    (25 21 (:REWRITE DEFAULT-<-2))
                    (21 21 (:REWRITE DEFAULT-<-1))
                    (20 5 (:REWRITE ZP-OPEN))
                    (18 6 (:DEFINITION POSP))
                    (17 17
                        (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
                    (17 17 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                    (6 6 (:TYPE-PRESCRIPTION POSP))
                    (5 4
                       (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP)))
(CAR-OF-NTHCDR (233 24 (:REWRITE CONSP-FROM-LEN-CHEAP))
               (190 17 (:REWRITE CONSP-OF-NTHCDR))
               (120 87 (:REWRITE DEFAULT-<-2))
               (87 87 (:REWRITE DEFAULT-<-1))
               (56 56 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
               (45 15 (:DEFINITION POSP))
               (43 22 (:REWRITE ZP-OPEN))
               (37 36 (:REWRITE DEFAULT-+-2))
               (36 36 (:REWRITE DEFAULT-+-1))
               (35 7 (:REWRITE LEN-OF-CDR))
               (24 24 (:REWRITE CONSP-WHEN-LEN-GREATER))
               (23 23 (:REWRITE DEFAULT-CDR))
               (22 22 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
               (18 6 (:REWRITE FOLD-CONSTS-IN-+))
               (15 15 (:TYPE-PRESCRIPTION POSP))
               (4 4
                  (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(NTH-OF-NTHCDR (206 156 (:REWRITE DEFAULT-<-2))
               (195 172 (:REWRITE DEFAULT-+-2))
               (172 172 (:REWRITE DEFAULT-+-1))
               (160 156 (:REWRITE DEFAULT-<-1))
               (156 156 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
               (86 29 (:REWRITE DEFAULT-CAR))
               (59 25 (:REWRITE FOLD-CONSTS-IN-+))
               (52 52 (:REWRITE CONSP-WHEN-LEN-GREATER))
               (48 16 (:DEFINITION POSP))
               (25 25 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
               (16 16 (:TYPE-PRESCRIPTION POSP))
               (9 9
                  (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
               (4 4
                  (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(NTHCDR-OF-TRUE-LIST-FIX (353 46 (:REWRITE CONSP-FROM-LEN-CHEAP))
                         (162 5 (:DEFINITION NTH))
                         (82 70 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                         (76 61 (:REWRITE DEFAULT-<-2))
                         (65 55 (:REWRITE DEFAULT-+-2))
                         (61 61 (:REWRITE DEFAULT-<-1))
                         (56 16 (:REWRITE DEFAULT-CAR))
                         (55 55 (:REWRITE DEFAULT-+-1))
                         (50 21
                             (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                         (39 13 (:DEFINITION POSP))
                         (25 25 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                         (23 23 (:REWRITE CONSP-WHEN-LEN-GREATER))
                         (17 7 (:REWRITE FOLD-CONSTS-IN-+))
                         (13 13 (:TYPE-PRESCRIPTION POSP))
                         (4 4
                            (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(TRUE-LIST-FIX-OF-NTHCDR)
(CDR-OF-NTHCDR (267 32 (:REWRITE CONSP-FROM-LEN-CHEAP))
               (120 7 (:REWRITE CONSP-OF-NTHCDR))
               (98 7 (:REWRITE LEN-OF-CDR))
               (77 60 (:REWRITE DEFAULT-<-2))
               (63 21 (:DEFINITION POSP))
               (60 60 (:REWRITE DEFAULT-<-1))
               (58 54 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
               (56 48 (:REWRITE DEFAULT-+-2))
               (49 7 (:REWRITE EQUAL-OF-LEN-AND-0))
               (48 48 (:REWRITE DEFAULT-+-1))
               (40 40 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
               (29 17 (:REWRITE ZP-OPEN))
               (21 21 (:TYPE-PRESCRIPTION POSP))
               (18 18 (:REWRITE CONSP-WHEN-LEN-GREATER))
               (5 5
                  (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(3-CDRS (162 15 (:REWRITE CONSP-FROM-LEN-CHEAP))
        (82 8 (:REWRITE LEN-OF-CDR))
        (30 6 (:REWRITE EQUAL-OF-LEN-AND-0))
        (26 14 (:REWRITE DEFAULT-+-2))
        (14 14 (:REWRITE DEFAULT-+-1))
        (14 7 (:REWRITE DEFAULT-<-2))
        (13 13 (:REWRITE CONSP-WHEN-LEN-GREATER))
        (12 12 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
        (12 3 (:REWRITE FOLD-CONSTS-IN-+))
        (7 7 (:REWRITE DEFAULT-<-1))
        (4 4
           (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
        (2 2
           (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN)))
(NTHCDR-OF-1 (22 11
                 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
             (18 2 (:REWRITE DEFAULT-CDR))
             (16 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
             (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
             (8 8 (:TYPE-PRESCRIPTION LEN))
             (6 2
                (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
             (4 4 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
             (2 2
                (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
             (2 2 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN)))
(EQUAL-OF-LEN-OF-NTHCDR-AND-LEN
     (11 7 (:REWRITE DEFAULT-<-1))
     (7 7 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (7 7 (:REWRITE DEFAULT-<-2))
     (7 4 (:REWRITE DEFAULT-+-2))
     (5 4 (:REWRITE DEFAULT-+-1))
     (3 3 (:REWRITE ZP-OPEN))
     (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
     (2 2
        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP)))
(NTHCDR-OF-APPEND-GEN (862 862 (:TYPE-PRESCRIPTION BINARY-APPEND))
                      (593 57 (:REWRITE DEFAULT-CDR))
                      (241 8 (:REWRITE CAR-OF-NTHCDR))
                      (233 8 (:DEFINITION NTH))
                      (195 16 (:REWRITE CONSP-OF-NTHCDR))
                      (191 42 (:DEFINITION POSP))
                      (168 135 (:REWRITE DEFAULT-<-2))
                      (145 127 (:REWRITE DEFAULT-+-2))
                      (135 135 (:REWRITE DEFAULT-<-1))
                      (131 59
                           (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
                      (130 127 (:REWRITE DEFAULT-+-1))
                      (97 24 (:REWRITE DEFAULT-CAR))
                      (59 59 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                      (42 42 (:TYPE-PRESCRIPTION POSP))
                      (15 15 (:REWRITE CONSP-WHEN-LEN-GREATER))
                      (13 7 (:REWRITE DEFAULT-UNARY-MINUS))
                      (7 7
                         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                      (1 1
                         (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(NTHCDR-OF-CDR-COMBINE (57 5 (:REWRITE DEFAULT-CDR))
                       (48 5 (:REWRITE CONSP-FROM-LEN-CHEAP))
                       (24 2 (:REWRITE LEN-OF-CDR))
                       (20 20 (:TYPE-PRESCRIPTION LEN))
                       (18 6 (:REWRITE NTHCDR-WHEN-NOT-POSP))
                       (11 9 (:REWRITE DEFAULT-+-2))
                       (10 2 (:REWRITE EQUAL-OF-LEN-AND-0))
                       (9 9 (:REWRITE DEFAULT-+-1))
                       (9 3 (:DEFINITION POSP))
                       (8 6 (:REWRITE DEFAULT-<-2))
                       (6 6
                          (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
                       (6 6 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                       (6 6 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                       (6 6 (:REWRITE DEFAULT-<-1))
                       (4 4 (:REWRITE CONSP-WHEN-LEN-GREATER))
                       (3 3 (:TYPE-PRESCRIPTION POSP))
                       (3 1
                          (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                       (2 2 (:REWRITE ZP-OPEN))
                       (2 2
                          (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(NTHCDR-OF-CDR-COMBINE-STRONG
     (68 14 (:REWRITE DEFAULT-CDR))
     (52 6 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (24 24 (:TYPE-PRESCRIPTION LEN))
     (16 15 (:REWRITE DEFAULT-+-2))
     (15 15 (:REWRITE DEFAULT-+-1))
     (15 5 (:DEFINITION POSP))
     (13 13
         (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
     (13 13 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (12 4
         (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (12 1 (:REWRITE LEN-OF-CDR))
     (11 10 (:REWRITE DEFAULT-<-2))
     (11 10 (:REWRITE DEFAULT-<-1))
     (10 10 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (5 5 (:TYPE-PRESCRIPTION POSP))
     (5 1 (:REWRITE EQUAL-OF-LEN-AND-0))
     (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (1 1 (:TYPE-PRESCRIPTION NATP))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN)))
(NTHCDR-OF-NTHCDR (284 24 (:REWRITE DEFAULT-CDR))
                  (164 20 (:REWRITE CONSP-FROM-LEN-CHEAP))
                  (117 39 (:DEFINITION POSP))
                  (106 106 (:TYPE-PRESCRIPTION LEN))
                  (96 5 (:REWRITE CONSP-OF-NTHCDR))
                  (83 59
                      (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
                  (80 73 (:REWRITE DEFAULT-<-2))
                  (79 73 (:REWRITE DEFAULT-<-1))
                  (65 63 (:REWRITE DEFAULT-+-2))
                  (63 63 (:REWRITE DEFAULT-+-1))
                  (59 59 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                  (59 23
                      (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
                  (45 45 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
                  (40 2 (:REWRITE LEN-OF-CDR))
                  (39 39 (:TYPE-PRESCRIPTION POSP))
                  (31 22 (:REWRITE ZP-OPEN))
                  (26 2 (:REWRITE EQUAL-OF-LEN-AND-0))
                  (6 6
                     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                  (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER)))
(CDR-OF-CDR-BECOMES-NTHCDR
     (34 4 (:REWRITE DEFAULT-CDR))
     (28 3 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (22 11
         (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (12 12 (:TYPE-PRESCRIPTION LEN))
     (12 1 (:REWRITE LEN-OF-CDR))
     (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (5 1 (:REWRITE EQUAL-OF-LEN-AND-0))
     (4 4 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (3 1
        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER))
     (2 1 (:REWRITE DEFAULT-<-2))
     (2 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (1 1
        (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
     (1 1 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (1 1 (:REWRITE DEFAULT-<-1))
     (1 1 (:REWRITE DEFAULT-+-1))
     (1 1
        (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
     (1 1 (:DEFINITION NOT)))
(NTHCDR-WHEN-<-OF-LEN
     (58 29
         (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (29 29 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (22 1 (:DEFINITION NTHCDR))
     (11 2 (:REWRITE DEFAULT-CDR))
     (10 8 (:REWRITE DEFAULT-<-1))
     (10 3 (:REWRITE CONSP-FROM-LEN-CHEAP))
     (9 8 (:REWRITE DEFAULT-<-2))
     (6 6 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
     (6 2 (:REWRITE NTHCDR-WHEN-NOT-POSP))
     (4 2
        (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
     (4 1 (:DEFINITION TRUE-LISTP))
     (3 3 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
     (3 1 (:REWRITE COMMUTATIVITY-OF-+))
     (3 1 (:DEFINITION POSP))
     (2 2
        (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
     (2 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1))
     (1 1 (:TYPE-PRESCRIPTION POSP)))
(TRUE-LISTP-OF-NTHCDR-2 (103 85 (:REWRITE DEFAULT-<-2))
                        (98 85 (:REWRITE DEFAULT-<-1))
                        (49 37 (:REWRITE DEFAULT-+-2))
                        (37 37 (:REWRITE DEFAULT-+-1))
                        (30 10 (:DEFINITION POSP))
                        (16 16 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
                        (14 14 (:REWRITE CONSP-WHEN-LEN-GREATER))
                        (10 10 (:TYPE-PRESCRIPTION POSP))
                        (3 3
                           (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
                        (1 1
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
