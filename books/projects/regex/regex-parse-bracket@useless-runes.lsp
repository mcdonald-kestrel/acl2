(PARSE-BRACKET-INNER (161 161 (:REWRITE DEFAULT-+-2))
                     (161 161 (:REWRITE DEFAULT-+-1))
                     (126 120 (:REWRITE DEFAULT-<-2))
                     (120 120 (:REWRITE DEFAULT-<-1))
                     (68 68 (:REWRITE DEFAULT-CDR))
                     (45 45 (:REWRITE DEFAULT-CAR))
                     (10 10 (:REWRITE DEFAULT-UNARY-MINUS))
                     (10 10 (:LINEAR LENGTH-EQUIV-LINEAR))
                     (5 5 (:LINEAR LONGEST-IL-MAX-LEN))
                     (5 5 (:LINEAR BACKREF-LISTP-NTH-LINEAR)))
(PARSE-BRACKET-INNER-CHARSET (692 692 (:REWRITE DEFAULT-CDR))
                             (456 456 (:REWRITE DEFAULT-+-2))
                             (456 456 (:REWRITE DEFAULT-+-1))
                             (443 443 (:REWRITE DEFAULT-CAR))
                             (240 213 (:REWRITE DEFAULT-<-2))
                             (213 213 (:REWRITE DEFAULT-<-1))
                             (18 18 (:LINEAR LENGTH-EQUIV-LINEAR))
                             (9 9 (:LINEAR LONGEST-IL-MAX-LEN))
                             (9 9 (:LINEAR BACKREF-LISTP-NTH-LINEAR)))
(PARSE-BRACKET-INNER-REST-INTEGER (103 103 (:REWRITE DEFAULT-+-2))
                                  (103 103 (:REWRITE DEFAULT-+-1))
                                  (68 59 (:REWRITE DEFAULT-<-2))
                                  (59 59 (:REWRITE DEFAULT-<-1))
                                  (12 3 (:REWRITE INDEXP-CHARACTERP))
                                  (10 10 (:LINEAR LENGTH-EQUIV-LINEAR))
                                  (5 5 (:LINEAR LONGEST-IL-MAX-LEN))
                                  (5 5 (:LINEAR BACKREF-LISTP-NTH-LINEAR))
                                  (3 3 (:DEFINITION INDEXP))
                                  (3 3 (:DEFINITION =)))
(PARSE-BRACKET-INNER-REST-IDX
     (138 99 (:REWRITE DEFAULT-<-2))
     (107 107 (:REWRITE DEFAULT-+-2))
     (107 107 (:REWRITE DEFAULT-+-1))
     (105 99 (:REWRITE DEFAULT-<-1))
     (27 15 (:REWRITE INTEGERP-NUMBERP))
     (20 20 (:LINEAR LENGTH-EQUIV-LINEAR))
     (12 12
         (:REWRITE PARSE-BRACKET-INNER-REST-INTEGER))
     (12 3 (:REWRITE INDEXP-CHARACTERP))
     (10 10 (:LINEAR LONGEST-IL-MAX-LEN))
     (10 10 (:LINEAR BACKREF-LISTP-NTH-LINEAR))
     (3 3
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (3 3 (:DEFINITION =)))
(PARSE-BRACKET-INNER-REST-LEN (108 108 (:REWRITE DEFAULT-+-2))
                              (108 108 (:REWRITE DEFAULT-+-1))
                              (102 82 (:REWRITE DEFAULT-<-1))
                              (91 82 (:REWRITE DEFAULT-<-2))
                              (17 10 (:REWRITE INTEGERP-NUMBERP))
                              (12 3 (:REWRITE INDEXP-CHARACTERP))
                              (10 10 (:LINEAR LENGTH-EQUIV-LINEAR))
                              (7 7
                                 (:REWRITE PARSE-BRACKET-INNER-REST-INTEGER))
                              (5 5 (:LINEAR LONGEST-IL-MAX-LEN))
                              (5 5 (:LINEAR BACKREF-LISTP-NTH-LINEAR))
                              (3 3
                                 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                              (3 3 (:DEFINITION INDEXP))
                              (3 3 (:DEFINITION =)))
(PARSE-BRACKET-INNER-REST-IDX-COROLLARY)
(PARSE-BRACKET (24 24 (:REWRITE DEFAULT-+-2))
               (24 24 (:REWRITE DEFAULT-+-1))
               (22 21 (:REWRITE DEFAULT-<-2))
               (21 21 (:REWRITE DEFAULT-<-1))
               (2 2 (:LINEAR LENGTH-EQUIV-LINEAR))
               (1 1 (:LINEAR LONGEST-IL-MAX-LEN))
               (1 1 (:LINEAR BACKREF-LISTP-NTH-LINEAR)))
(PARSE-BRACKET-CHARSET (17 17 (:REWRITE DEFAULT-+-2))
                       (17 17 (:REWRITE DEFAULT-+-1))
                       (12 11 (:REWRITE DEFAULT-<-2))
                       (11 11 (:REWRITE DEFAULT-<-1))
                       (5 5 (:REWRITE DEFAULT-CAR))
                       (4 4 (:REWRITE DEFAULT-CDR)))
(PARSE-BRACKET-INTEGER (16 13 (:REWRITE DEFAULT-<-2))
                       (15 15 (:REWRITE DEFAULT-+-2))
                       (15 15 (:REWRITE DEFAULT-+-1))
                       (13 13 (:REWRITE DEFAULT-<-1))
                       (10 10 (:LINEAR LENGTH-EQUIV-LINEAR))
                       (5 5 (:LINEAR LONGEST-IL-MAX-LEN))
                       (5 5 (:LINEAR BACKREF-LISTP-NTH-LINEAR)))
(PARSE-BRACKET-INDEX (28 22 (:REWRITE DEFAULT-<-2))
                     (24 22 (:REWRITE DEFAULT-<-1))
                     (17 17 (:REWRITE DEFAULT-+-2))
                     (17 17 (:REWRITE DEFAULT-+-1))
                     (14 14 (:LINEAR LENGTH-EQUIV-LINEAR))
                     (7 7 (:LINEAR LONGEST-IL-MAX-LEN))
                     (7 7 (:LINEAR BACKREF-LISTP-NTH-LINEAR))
                     (1 1
                        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                     (1 1 (:REWRITE INTEGERP-NUMBERP)))
(PARSE-BRACKET-LEN (21 21
                       (:TYPE-PRESCRIPTION PARSE-BRACKET-INTEGER))
                   (10 10 (:LINEAR LENGTH-EQUIV-LINEAR))
                   (7 4 (:REWRITE DEFAULT-<-2))
                   (6 6 (:REWRITE DEFAULT-+-2))
                   (6 6 (:REWRITE DEFAULT-+-1))
                   (6 4 (:REWRITE DEFAULT-<-1))
                   (5 5 (:LINEAR LONGEST-IL-MAX-LEN))
                   (5 5 (:LINEAR BACKREF-LISTP-NTH-LINEAR))
                   (2 2
                      (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                   (2 2 (:REWRITE INTEGERP-NUMBERP))
                   (1 1 (:LINEAR PARSE-BRACKET-INDEX)))