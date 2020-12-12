(ALL-INTEGERP)
(ALL-INTEGERP-OF-CDR (1 1 (:REWRITE DEFAULT-CAR)))
(INTEGERP-OF-CAR-WHEN-ALL-INTEGERP (8 2 (:REWRITE ALL-INTEGERP-OF-CDR))
                                   (5 5 (:REWRITE DEFAULT-CAR))
                                   (2 2 (:REWRITE DEFAULT-CDR)))
(INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP (8 2 (:REWRITE ALL-INTEGERP-OF-CDR))
                                         (5 5 (:REWRITE DEFAULT-CAR))
                                         (2 2 (:REWRITE DEFAULT-CDR)))
(ALL-INTEGERP-OF-CONS (8 2 (:REWRITE ALL-INTEGERP-OF-CDR))
                      (4 2
                         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
                      (3 3 (:REWRITE DEFAULT-CDR))
                      (3 3 (:REWRITE DEFAULT-CAR)))
(ALL-INTEGERP-OF-APPEND
     (84 22 (:REWRITE ALL-INTEGERP-OF-CDR))
     (47 24
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
     (37 37 (:REWRITE DEFAULT-CAR))
     (36 18
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (28 28 (:REWRITE DEFAULT-CDR))
     (18 18 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (18 18 (:TYPE-PRESCRIPTION BINARY-APPEND)))
(ALL-INTEGERP-OF-NTHCDR (11 11 (:REWRITE DEFAULT-CAR))
                        (9 9 (:REWRITE DEFAULT-CDR))
                        (6 2 (:REWRITE COMMUTATIVITY-OF-+))
                        (4 4 (:REWRITE ZP-OPEN))
                        (4 4 (:REWRITE DEFAULT-+-2))
                        (4 4 (:REWRITE DEFAULT-+-1)))
(INTEGERP-OF-NTH-WHEN-ALL-INTEGERP
     (18 12 (:REWRITE DEFAULT-<-2))
     (15 9 (:REWRITE DEFAULT-+-2))
     (12 12 (:REWRITE DEFAULT-<-1))
     (12 6
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
     (9 9 (:REWRITE DEFAULT-CAR))
     (9 9 (:REWRITE DEFAULT-+-1))
     (8 2 (:REWRITE ALL-INTEGERP-OF-CDR))
     (6 6 (:REWRITE DEFAULT-CDR))
     (4 4 (:REWRITE ZP-OPEN)))
(ALL-INTEGERP-OF-UPDATE-NTH (30 21 (:REWRITE DEFAULT-CDR))
                            (21 12 (:REWRITE DEFAULT-CAR))
                            (17 9 (:REWRITE DEFAULT-+-2))
                            (9 9 (:REWRITE DEFAULT-+-1))
                            (8 4 (:REWRITE DEFAULT-<-1))
                            (5 4 (:REWRITE DEFAULT-<-2))
                            (2 2 (:REWRITE ZP-OPEN))
                            (1 1
                               (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(ALL-INTEGERP-OF-TRUE-LIST-FIX
     (23 6 (:REWRITE ALL-INTEGERP-OF-CDR))
     (16 8
         (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
     (15 15 (:REWRITE DEFAULT-CAR))
     (8 8 (:REWRITE DEFAULT-CDR)))
(ALL-INTEGERP-WHEN-NOT-CONSP)
(ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP)
(ALL-INTEGERP-OF-TAKE (80 64
                          (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
                      (42 30 (:REWRITE DEFAULT-<-1))
                      (34 34 (:REWRITE DEFAULT-CDR))
                      (32 20 (:REWRITE DEFAULT-+-2))
                      (30 30 (:REWRITE DEFAULT-<-2))
                      (20 20 (:REWRITE DEFAULT-+-1))
                      (6 6 (:REWRITE ZP-OPEN)))
