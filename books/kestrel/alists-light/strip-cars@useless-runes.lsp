(CONSP-OF-STRIP-CARS (6 6 (:REWRITE DEFAULT-CAR))
                     (3 3 (:REWRITE DEFAULT-CDR)))
(LEN-OF-STRIP-CARS (18 8 (:REWRITE DEFAULT-CDR))
                   (14 7 (:REWRITE DEFAULT-+-2))
                   (7 7 (:REWRITE DEFAULT-+-1))
                   (6 6 (:REWRITE DEFAULT-CAR))
                   (6 6 (:REWRITE CONSP-OF-STRIP-CARS)))
(STRIP-CARS-OF-CONS (8 8 (:REWRITE DEFAULT-CAR))
                    (3 3 (:REWRITE DEFAULT-CDR)))
(CAR-OF-STRIP-CARS (2 2 (:REWRITE DEFAULT-CDR))
                   (2 2 (:REWRITE CONSP-OF-STRIP-CARS)))
(CADR-OF-STRIP-CARS (12 9 (:REWRITE DEFAULT-CAR))
                    (8 5 (:REWRITE DEFAULT-CDR)))
(NTH-OF-STRIP-CARS (24 23 (:REWRITE DEFAULT-CAR))
                   (14 7 (:REWRITE DEFAULT-CDR))
                   (6 6 (:REWRITE ZP-OPEN))
                   (6 2 (:REWRITE CAR-OF-STRIP-CARS))
                   (5 5 (:REWRITE DEFAULT-+-2))
                   (5 5 (:REWRITE DEFAULT-+-1)))
(STRIP-CARS-OF-APPEND (38 37 (:REWRITE DEFAULT-CAR))
                      (28 18 (:REWRITE DEFAULT-CDR))
                      (9 3 (:REWRITE CAR-OF-STRIP-CARS))
                      (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
                      (6 6 (:REWRITE CONSP-OF-STRIP-CARS)))
(STRIP-CARS-OF-CDR (8 8 (:REWRITE DEFAULT-CAR)))
(MEMBER-EQUAL-OF-STRIP-CARS-IFF (77 74 (:REWRITE DEFAULT-CAR))
                                (44 24 (:REWRITE DEFAULT-CDR))
                                (18 6 (:REWRITE CAR-OF-STRIP-CARS))
                                (12 12 (:REWRITE CONSP-OF-STRIP-CARS)))
