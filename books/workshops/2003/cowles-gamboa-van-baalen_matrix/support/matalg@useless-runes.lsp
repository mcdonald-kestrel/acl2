(COMMUTATIVITY-2-OF-M-+-LEMMA
     (370 2 (:DEFINITION M-BINARY-+-ROW-1))
     (276 4 (:DEFINITION M-BINARY-+-ROW))
     (112 16 (:REWRITE ALIST2P-AREF2-COMPRESS2))
     (100 100 (:TYPE-PRESCRIPTION ARRAY2P))
     (96 32 (:REWRITE ARRAY2P-ALIST2P))
     (48 16 (:REWRITE AREF2-COMPRESS2))
     (46 46
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (46 28 (:REWRITE DEFAULT-+-2))
     (36 28 (:REWRITE DEFAULT-+-1))
     (32 32 (:REWRITE ARRAY2P-ALIST2P-1))
     (32 16 (:DEFINITION FIX))
     (28 4
         (:REWRITE M-BINARY-+-ROW-REMOVE-COMPRESS2-2))
     (28 4
         (:REWRITE M-BINARY-+-ROW-REMOVE-COMPRESS2-1))
     (24 6 (:REWRITE ZP-OPEN))
     (24 6 (:REWRITE FOLD-CONSTS-IN-+))
     (14 2
         (:REWRITE M-BINARY-+-ROW-1-REMOVE-COMPRESS2-2))
     (14 2
         (:REWRITE M-BINARY-+-ROW-1-REMOVE-COMPRESS2-1))
     (12 10 (:REWRITE DEFAULT-CAR))
     (12 2 (:DEFINITION BINARY-APPEND))
     (8 6 (:REWRITE DEFAULT-CDR))
     (6 6 (:TYPE-PRESCRIPTION M-BINARY-+-ROW))
     (6 6 (:REWRITE DEFAULT-<-2))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 6 (:DEFINITION NOT))
     (6 2
        (:REWRITE EQUAL-LIST-DIMENSIONS-ARRAY2P))
     (4 4
        (:REWRITE M-=-ROW-IMPLIES-EQUAL-M-BINARY-+-ROW-2))
     (4 4
        (:REWRITE M-=-ROW-IMPLIES-EQUAL-M-BINARY-+-ROW-1))
     (4 2 (:REWRITE DEFAULT-*-2))
     (4 2 (:REWRITE DEFAULT-*-1))
     (2 2
        (:REWRITE M-=-ROW-1-IMPLIES-EQUAL-M-BINARY-+-ROW-1-2))
     (2 2
        (:REWRITE M-=-ROW-1-IMPLIES-EQUAL-M-BINARY-+-ROW-1-1))
     (2 2 (:REWRITE ARRAY2P-ALIST2P-$ARG2)))
(COMMUTATIVITY-2-OF-M-+)
(RIGHT-M-+-INVERSE-OF-M--_2-LEMMA (48 12 (:LINEAR ARRAY2P-LINEAR-MODULAR))
                                  (20 20 (:REWRITE DEFAULT-CAR))
                                  (12 4 (:REWRITE ARRAY2P-M-UNARY--))
                                  (10 10 (:REWRITE DEFAULT-CDR))
                                  (9 3 (:REWRITE ARRAY2P-ALIST2P))
                                  (3 3 (:REWRITE ARRAY2P-ALIST2P-1)))
(RIGHT-M-+-INVERSE-OF-M--_2)
(LEFT-M-+-INVERSE-OF-M--_2-LEMMA (48 12 (:LINEAR ARRAY2P-LINEAR-MODULAR))
                                 (20 20 (:REWRITE DEFAULT-CAR))
                                 (12 4 (:REWRITE ARRAY2P-M-UNARY--))
                                 (10 10 (:REWRITE DEFAULT-CDR))
                                 (9 3 (:REWRITE ARRAY2P-ALIST2P))
                                 (3 3 (:REWRITE ARRAY2P-ALIST2P-1)))
(LEFT-M-+-INVERSE-OF-M--_2)
(UNIQUENESS-OF-M-+-INVERSE (66 14 (:LINEAR ARRAY2P-LINEAR-MODULAR))
                           (24 24 (:REWRITE DEFAULT-CAR))
                           (12 12 (:REWRITE DEFAULT-CDR))
                           (12 4 (:REWRITE ARRAY2P-M-UNARY--))
                           (6 2
                              (:REWRITE EQUAL-LIST-DIMENSIONS-ARRAY2P))
                           (6 2 (:REWRITE DIMENSIONS-M-+-ARRAY2P))
                           (6 2 (:REWRITE ARRAY2P-M-+-1))
                           (6 2 (:REWRITE ARRAY2P-M-+))
                           (3 1 (:REWRITE ARRAY2P-ALIST2P))
                           (2 2 (:REWRITE ARRAY2P-ALIST2P-1)))
(DOUBLE-M-+-S-* (148 20 (:LINEAR ARRAY2P-LINEAR-MODULAR))
                (148 2 (:DEFINITION M-BINARY-+-ROW-1))
                (112 4 (:DEFINITION M-BINARY-+-ROW))
                (64 62 (:REWRITE DEFAULT-CAR))
                (52 20 (:REWRITE ARRAY2P-S-*))
                (36 8 (:REWRITE DIMENSIONS-M-+-ARRAY2P))
                (36 8 (:REWRITE ARRAY2P-M-+-1))
                (34 32 (:REWRITE DEFAULT-CDR))
                (33 11 (:REWRITE ARRAY2P-ALIST2P))
                (30 10
                    (:REWRITE EQUAL-LIST-DIMENSIONS-ARRAY2P))
                (28 8 (:REWRITE ARRAY2P-M-+))
                (24 6 (:REWRITE ZP-OPEN))
                (20 20 (:REWRITE DEFAULT-+-1))
                (18 6 (:REWRITE FOLD-CONSTS-IN-+))
                (16 16
                    (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                (12 2 (:DEFINITION BINARY-APPEND))
                (11 11 (:REWRITE ARRAY2P-ALIST2P-1))
                (6 6 (:TYPE-PRESCRIPTION M-BINARY-+-ROW))
                (6 6
                   (:REWRITE M-=-ROW-1-IMPLIES-EQUAL-M-BINARY-+-ROW-1-2))
                (6 6
                   (:REWRITE M-=-ROW-1-IMPLIES-EQUAL-M-BINARY-+-ROW-1-1))
                (6 6 (:REWRITE DEFAULT-<-2))
                (6 6 (:REWRITE DEFAULT-<-1))
                (4 4
                   (:REWRITE M-=-ROW-IMPLIES-EQUAL-M-BINARY-+-ROW-2))
                (4 4
                   (:REWRITE M-=-ROW-IMPLIES-EQUAL-M-BINARY-+-ROW-1))
                (3 3 (:REWRITE ARRAY2P-ALIST2P-$ARG2))
                (2 2 (:REWRITE DEFAULT-*-2))
                (2 2 (:REWRITE DEFAULT-*-1)))
(M-*-M--_LEFT-LEMMA (66 14 (:LINEAR ARRAY2P-LINEAR-MODULAR))
                    (21 21 (:REWRITE DEFAULT-CAR))
                    (12 4 (:REWRITE ARRAY2P-M-UNARY--))
                    (11 11 (:REWRITE DEFAULT-CDR))
                    (6 2 (:REWRITE ARRAY2P-M-*-1))
                    (6 2 (:REWRITE ARRAY2P-M-*)))
(M-*-M--_LEFT (90 16 (:LINEAR ARRAY2P-LINEAR-MODULAR))
              (54 54 (:REWRITE DEFAULT-CAR))
              (30 6 (:REWRITE ARRAY2P-M-UNARY--))
              (27 27 (:REWRITE DEFAULT-CDR))
              (12 4 (:REWRITE ARRAY2P-M-*-1))
              (12 4 (:REWRITE ARRAY2P-M-*))
              (2 2 (:REWRITE ARRAY2P-ALIST2P-1)))
(M-*-M--_RIGHT-LEMMA (66 14 (:LINEAR ARRAY2P-LINEAR-MODULAR))
                     (26 26 (:REWRITE DEFAULT-CAR))
                     (15 15 (:REWRITE DEFAULT-CDR))
                     (12 4 (:REWRITE ARRAY2P-M-UNARY--))
                     (6 2 (:REWRITE ARRAY2P-M-*-1))
                     (6 2 (:REWRITE ARRAY2P-M-*))
                     (3 1 (:REWRITE ARRAY2P-ALIST2P))
                     (1 1 (:REWRITE DEFAULT-<-2))
                     (1 1 (:REWRITE DEFAULT-<-1))
                     (1 1 (:REWRITE ARRAY2P-ALIST2P-1)))
(M-*-M--_RIGHT (90 16 (:LINEAR ARRAY2P-LINEAR-MODULAR))
               (54 54 (:REWRITE DEFAULT-CAR))
               (30 6 (:REWRITE ARRAY2P-M-UNARY--))
               (27 27 (:REWRITE DEFAULT-CDR))
               (12 4 (:REWRITE ARRAY2P-M-*-1))
               (12 4 (:REWRITE ARRAY2P-M-*))
               (2 2 (:REWRITE ARRAY2P-ALIST2P-1)))
(UNIQUENESS-OF-M-*-INVERSE (108 28 (:LINEAR ARRAY2P-LINEAR-MODULAR))
                           (103 103 (:REWRITE DEFAULT-CAR))
                           (83 11 (:REWRITE RIGHT-M-*-INVERSE-OF-M-/))
                           (83 8
                               (:REWRITE NON-SINGULAR-IMPLIES-SQUARE))
                           (58 10 (:REWRITE LEFT-M-*-INVERSE-OF-M-/))
                           (45 14 (:REWRITE ARRAY2P-ALIST2P))
                           (37 37 (:REWRITE DEFAULT-CDR))
                           (14 14 (:REWRITE ARRAY2P-ALIST2P-1))
                           (12 4 (:REWRITE ARRAY2P-M-*-1))
                           (12 4 (:REWRITE ARRAY2P-M-*))
                           (3 1 (:REWRITE ARRAY2P-M-/)))
(M-/-M-*-LEMMA (428 214
                    (:TYPE-PRESCRIPTION ARRAY2P-CONSP-HEADER))
               (108 16 (:REWRITE RIGHT-M-*-INVERSE-OF-M-/))
               (91 91 (:REWRITE DEFAULT-CAR))
               (51 17 (:REWRITE ARRAY2P-ALIST2P))
               (50 4
                   (:REWRITE NON-SINGULAR-IMPLIES-SQUARE))
               (48 16 (:LINEAR ARRAY2P-LINEAR-MODULAR))
               (25 25 (:REWRITE DEFAULT-CDR))
               (17 17 (:REWRITE ARRAY2P-ALIST2P-1)))
(SUBGOAL-8-HACK (124 62
                     (:TYPE-PRESCRIPTION ARRAY2P-CONSP-HEADER))
                (24 8 (:LINEAR ARRAY2P-LINEAR-MODULAR))
                (14 14 (:REWRITE DEFAULT-CAR))
                (13 1 (:REWRITE ARRAY2P-ALIST2P))
                (6 1 (:REWRITE ARRAY2P-M-*))
                (5 5 (:REWRITE DEFAULT-CDR))
                (4 2 (:REWRITE ARRAY2P-M-/))
                (4 1 (:REWRITE ARRAY2P-M-*-1))
                (1 1 (:REWRITE ARRAY2P-ALIST2P-1)))
(M-/-M-* (1170 111 (:REWRITE LEFT-M-*-INVERSE-OF-M-/))
         (1029 1029 (:REWRITE DEFAULT-CAR))
         (684 102 (:REWRITE RIGHT-M-*-INVERSE-OF-M-/))
         (542 110 (:LINEAR ARRAY2P-LINEAR-MODULAR))
         (350 110 (:REWRITE ARRAY2P-ALIST2P))
         (347 347 (:REWRITE DEFAULT-CDR))
         (225 18
              (:REWRITE NON-SINGULAR-IMPLIES-SQUARE))
         (129 129 (:REWRITE ARRAY2P-ALIST2P-1))
         (118 31 (:REWRITE ARRAY2P-M-*))
         (102 31 (:REWRITE ARRAY2P-M-*-1))
         (46 22 (:REWRITE ARRAY2P-M-/)))
(M--_M-0 (2 2 (:REWRITE DEFAULT-<-2))
         (2 2 (:REWRITE DEFAULT-<-1))
         (1 1 (:REWRITE ARRAY2P-ALIST2P-1)))
(M-=_S-*_M-- (276 40 (:LINEAR ARRAY2P-LINEAR-MODULAR))
             (132 40 (:REWRITE ARRAY2P-S-*))
             (48 12 (:REWRITE ARRAY2P-M-UNARY--))
             (40 40 (:REWRITE DEFAULT-CAR))
             (20 20 (:REWRITE DEFAULT-CDR))
             (6 2 (:REWRITE ARRAY2P-ALIST2P))
             (5 3 (:REWRITE DEFAULT-*-2))
             (4 3 (:REWRITE DEFAULT-*-1))
             (3 3
                (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
             (2 2 (:REWRITE ARRAY2P-ALIST2P-1)))
(DISTRIBUTIVITY-OF-M--_OVER-M-+ (252 36 (:LINEAR ARRAY2P-LINEAR-MODULAR))
                                (70 70 (:REWRITE DEFAULT-CAR))
                                (60 12 (:REWRITE ARRAY2P-S-*))
                                (60 12 (:REWRITE ARRAY2P-M-UNARY--))
                                (36 12 (:REWRITE DIMENSIONS-M-+-ARRAY2P))
                                (36 12 (:REWRITE ARRAY2P-M-+-1))
                                (36 12 (:REWRITE ARRAY2P-M-+))
                                (28 28 (:REWRITE DEFAULT-CDR))
                                (18 6
                                    (:REWRITE EQUAL-LIST-DIMENSIONS-ARRAY2P))
                                (6 2 (:REWRITE ARRAY2P-ALIST2P))
                                (2 2 (:REWRITE ARRAY2P-ALIST2P-1)))