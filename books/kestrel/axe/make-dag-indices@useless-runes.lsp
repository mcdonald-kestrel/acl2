(MAKE-DAG-INDICES-AUX
 (1584 21 (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-LINEAR))
 (1494 1494 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (1060 530 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (786 6 (:REWRITE USE-ALL-<-FOR-CAR))
 (723 9 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (558 42 (:DEFINITION NTH))
 (530 530 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (428 214 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (420 15 (:DEFINITION ASSOC-EQUAL))
 (373 33 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (349 52 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (336 21 (:DEFINITION LEN))
 (321 84 (:REWRITE DEFAULT-CAR))
 (222 96 (:REWRITE NTH-WHEN-NOT-CDDR))
 (212 146 (:REWRITE DEFAULT-CDR))
 (206 202 (:REWRITE USE-ALL-CONSP))
 (202 202 (:REWRITE USE-ALL-CONSP-2))
 (180 45 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (168 21 (:LINEAR NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
 (168 21 (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (150 3 (:REWRITE ALL-<-OF-CDR))
 (135 3 (:REWRITE ALL-CONSP-OF-CDR))
 (134 39 (:REWRITE DAG-VARIABLE-ALISTP-FORWARD-TO-ALIST))
 (133 112 (:REWRITE DEFAULT-+-2))
 (126 126 (:TYPE-PRESCRIPTION LEN))
 (120 15 (:DEFINITION ASSOC-KEYWORD))
 (115 112 (:REWRITE DEFAULT-+-1))
 (115 52 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (90 90 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (89 33 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (80 53 (:REWRITE DEFAULT-<-2))
 (77 53 (:REWRITE DEFAULT-<-1))
 (76 76 (:TYPE-PRESCRIPTION DAG-VARIABLE-ALISTP))
 (70 70 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (66 33 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (56 56 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (53 53 (:REWRITE USE-ALL-<-2))
 (53 53 (:REWRITE USE-ALL-<))
 (53 53 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (45 45 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (45 45 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (42 42 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (42 42 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (42 42 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (39 39 (:REWRITE ALISTP-WHEN-PSEUDO-DAGP-AUX))
 (34 34 (:REWRITE ALISTP-WHEN-BOUNDED-NATP-ALISTP))
 (33 33 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (33 33 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (33 33 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (32 32 (:REWRITE USE-ALL-<=-2))
 (32 32 (:REWRITE USE-ALL-<=))
 (31 10 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (30 10 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (28 2 (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (24 12 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
 (24 12 (:REWRITE CAR-OF-DARGS-BECOMES-NTH-0-OF-DARGS))
 (24 6 (:REWRITE NOT-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP))
 (21 21 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (21 21 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (20 3 (:REWRITE DAG-VARIABLE-ALISTP-OF-CONS-OF-CONS))
 (18 18 (:TYPE-PRESCRIPTION ALL-<))
 (15 15 (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (15 15 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (14 14 (:LINEAR ARRAY2P-LINEAR))
 (14 1 (:REWRITE SYMBOLP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-2))
 (12 12 (:REWRITE ZP-OPEN))
 (10 10 (:REWRITE USE-ALL-RATIONALP-2))
 (10 10 (:REWRITE USE-ALL-RATIONALP))
 (10 10 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (10 10 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (9 9 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (9 9 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (9 9 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (9 9 (:REWRITE ALL-<-TRANSITIVE))
 (8 8 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (7 7 (:REWRITE DAG-PARENT-ARRAYP-WHEN-WF-DAGP))
 (7 7 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE USE-ALL-NATP-2))
 (5 5 (:REWRITE USE-ALL-NATP))
 (5 5 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (4 4 (:TYPE-PRESCRIPTION MEMBERP))
 (2 2 (:REWRITE ADD-TO-PARENTS-OF-ATOMS-WITH-NAME-WHEN-ALL-CONSP))
 (2 1 (:REWRITE SYMBOLP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 )
(MV-NTH-0-OF-MAKE-DAG-INDICES-AUX
 (608 26 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (460 230 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (328 164 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (300 75 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (230 230 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (208 104 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (208 104 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (184 23 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (164 164 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (158 89 (:REWRITE DEFAULT-<-2))
 (158 89 (:REWRITE DEFAULT-<-1))
 (156 26 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (150 75 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (138 46 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (135 45 (:REWRITE FOLD-CONSTS-IN-+))
 (104 104 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (92 92 (:REWRITE DEFAULT-+-2))
 (92 92 (:REWRITE DEFAULT-+-1))
 (92 23 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (89 89 (:REWRITE USE-ALL-<=-2))
 (89 89 (:REWRITE USE-ALL-<=))
 (89 89 (:REWRITE USE-ALL-<-2))
 (89 89 (:REWRITE USE-ALL-<))
 (89 89 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (75 75 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (75 75 (:TYPE-PRESCRIPTION ARRAY1P))
 (64 52 (:REWRITE USE-ALL-CONSP))
 (52 52 (:REWRITE USE-ALL-CONSP-2))
 (46 46 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (46 46 (:REWRITE USE-ALL-RATIONALP-2))
 (46 46 (:REWRITE USE-ALL-RATIONALP))
 (33 33 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (33 33 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (31 31 (:REWRITE DEFAULT-CAR))
 (25 25 (:REWRITE USE-ALL-NATP-2))
 (25 25 (:REWRITE USE-ALL-NATP))
 (25 25 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (23 23 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (23 23 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (23 23 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (12 12 (:TYPE-PRESCRIPTION MEMBERP))
 )
(MV-NTH-1-OF-MAKE-DAG-INDICES-AUX
 (420 18 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (254 127 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (206 103 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (204 51 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (144 72 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (144 72 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (133 67 (:REWRITE DEFAULT-<-2))
 (133 67 (:REWRITE DEFAULT-<-1))
 (132 44 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (127 127 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (120 15 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (108 18 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (103 103 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (102 51 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (96 32 (:REWRITE FOLD-CONSTS-IN-+))
 (72 72 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (68 68 (:REWRITE DEFAULT-+-2))
 (68 68 (:REWRITE DEFAULT-+-1))
 (67 67 (:REWRITE USE-ALL-<=-2))
 (67 67 (:REWRITE USE-ALL-<=))
 (67 67 (:REWRITE USE-ALL-<-2))
 (67 67 (:REWRITE USE-ALL-<))
 (67 67 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (60 15 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (51 51 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (51 51 (:TYPE-PRESCRIPTION ARRAY1P))
 (48 34 (:REWRITE USE-ALL-CONSP))
 (44 44 (:REWRITE USE-ALL-RATIONALP-2))
 (44 44 (:REWRITE USE-ALL-RATIONALP))
 (34 34 (:REWRITE USE-ALL-CONSP-2))
 (30 30 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (27 27 (:REWRITE USE-ALL-NATP-2))
 (27 27 (:REWRITE USE-ALL-NATP))
 (27 27 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (27 27 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (27 27 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (21 21 (:REWRITE DEFAULT-CAR))
 (15 15 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (15 15 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (15 15 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (14 14 (:TYPE-PRESCRIPTION MEMBERP))
 (2 2 (:REWRITE ADD-TO-PARENTS-OF-ATOMS-WITH-NAME-WHEN-ALL-CONSP))
 )
(MV-NTH-2-OF-MAKE-DAG-INDICES-AUX
 (254 127 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (166 83 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (148 37 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (134 6 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (133 67 (:REWRITE DEFAULT-<-2))
 (133 67 (:REWRITE DEFAULT-<-1))
 (132 44 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (127 127 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (83 83 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (74 37 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (67 67 (:REWRITE USE-ALL-<=-2))
 (67 67 (:REWRITE USE-ALL-<=))
 (67 67 (:REWRITE USE-ALL-<-2))
 (67 67 (:REWRITE USE-ALL-<))
 (67 67 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (48 24 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (48 24 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (48 16 (:REWRITE FOLD-CONSTS-IN-+))
 (44 44 (:REWRITE USE-ALL-RATIONALP-2))
 (44 44 (:REWRITE USE-ALL-RATIONALP))
 (40 40 (:REWRITE DEFAULT-+-2))
 (40 40 (:REWRITE DEFAULT-+-1))
 (40 5 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (37 37 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (37 37 (:TYPE-PRESCRIPTION ARRAY1P))
 (36 6 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (30 22 (:REWRITE USE-ALL-CONSP))
 (27 27 (:REWRITE USE-ALL-NATP-2))
 (27 27 (:REWRITE USE-ALL-NATP))
 (27 27 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (27 27 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (27 27 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (24 24 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (22 22 (:REWRITE USE-ALL-CONSP-2))
 (20 5 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (10 10 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (8 8 (:TYPE-PRESCRIPTION MEMBERP))
 (8 8 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (5 5 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (5 5 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (2 2 (:REWRITE ADD-TO-PARENTS-OF-ATOMS-WITH-NAME-WHEN-ALL-CONSP))
 )
(DAG-PARENT-ARRAYP-OF-MV-NTH-0-OF-MAKE-DAG-INDICES-AUX
 (5114 19 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-<))
 (5012 24 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (4429 14 (:DEFINITION NAT-LISTP))
 (4019 17 (:DEFINITION BOUNDED-DAG-EXPRP))
 (2769 225 (:REWRITE DEFAULT-<-1))
 (2676 53 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2505 1 (:REWRITE RATIONALP-OF-ALEN1-WHEN-ARRAY1P))
 (2501 1 (:REWRITE ARRAY1P-OF-ADD-TO-PARENTS-OF-ATOMS-WITH-NAME))
 (2442 7 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
 (2260 7 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
 (2225 14 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
 (2020 1010 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (1924 962 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (1506 19 (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-<-SIMPLE))
 (1494 19 (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-BOUNDED-DAG-EXPRP))
 (1215 34 (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-BOUNDED-DAG-EXPRP-OF-AREF1))
 (817 817 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (711 13 (:REWRITE ALL-DARGP-OF-DARGS-WHEN-DAG-EXPRP0))
 (613 109 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (586 14 (:REWRITE NATP-OF-NTH-OF-DARGS))
 (464 14 (:REWRITE NATP-OF-NTH-WHEN-ALL-DARGP))
 (446 14 (:REWRITE NOT-<-OF-0-AND-NTH-OF-DARGS))
 (434 14 (:REWRITE <-OF-NTH-OF-DARGS))
 (408 102 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (370 185 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (370 185 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (364 109 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (331 225 (:REWRITE DEFAULT-<-2))
 (320 40 (:DEFINITION LEN))
 (310 14 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (282 24 (:REWRITE INTEGERP-OF-NTH-OF-DARGS))
 (252 14 (:REWRITE NOT-<-OF-NTH-OF-DARGS-OF-AREF1-AND-CONSTANT-WHEN-PSEUDO-DAG-ARRAYP))
 (238 180 (:REWRITE DEFAULT-+-2))
 (235 235 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (225 225 (:REWRITE USE-ALL-<-2))
 (225 225 (:REWRITE USE-ALL-<))
 (220 220 (:TYPE-PRESCRIPTION LEN))
 (210 14 (:REWRITE <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-GEN))
 (210 14 (:LINEAR NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
 (210 14 (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (209 9 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (207 207 (:REWRITE USE-ALL-<=-2))
 (207 207 (:REWRITE USE-ALL-<=))
 (185 185 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (180 180 (:REWRITE DEFAULT-+-1))
 (171 24 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (170 170 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (164 34 (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (162 15 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
 (161 14 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
 (140 28 (:REWRITE CAR-OF-DARGS-BECOMES-NTH-0-OF-DARGS))
 (131 31 (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (124 24 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (120 120 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
 (113 15 (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (112 14 (:DEFINITION NTH))
 (109 34 (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (104 104 (:TYPE-PRESCRIPTION BOUNDED-DAG-EXPRP))
 (94 24 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
 (94 24 (:REWRITE INTEGERP-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (91 91 (:TYPE-PRESCRIPTION NAT-LISTP))
 (85 85 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (84 14 (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (84 14 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (84 14 (:REWRITE <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (84 14 (:LINEAR <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (84 14 (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-LINEAR))
 (80 80 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (80 80 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (80 80 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (77 14 (:REWRITE NATP-OF-NTH-FROM-ALL-NATP))
 (70 14 (:REWRITE NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
 (68 68 (:TYPE-PRESCRIPTION DAG-EXPRP0))
 (64 64 (:TYPE-PRESCRIPTION ALL-<))
 (64 60 (:REWRITE USE-ALL-CONSP))
 (62 31 (:REWRITE BOUNDED-DAG-EXPRP-WHEN-MYQUOTEP-CHEAP))
 (60 60 (:REWRITE USE-ALL-CONSP-2))
 (60 15 (:REWRITE NOT-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP))
 (55 55 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (54 54 (:REWRITE DEFAULT-CDR))
 (53 53 (:TYPE-PRESCRIPTION ALL-NATP))
 (53 53 (:REWRITE USE-ALL-RATIONALP-2))
 (53 53 (:REWRITE USE-ALL-RATIONALP))
 (50 15 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
 (50 2 (:REWRITE LEN-OF-AREF1-WHEN-QUOTEP-AND-PSEUDO-DAG-ARRAYP-AUX))
 (49 14 (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
 (45 45 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (42 42 (:REWRITE NTH-WHEN-NOT-CDDR))
 (41 41 (:REWRITE USE-ALL-NATP-2))
 (41 41 (:REWRITE USE-ALL-NATP))
 (41 41 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (38 38 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (35 35 (:REWRITE DEFAULT-CAR))
 (34 34 (:REWRITE DAG-EXPRP0-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (34 34 (:REWRITE DAG-EXPRP0-WHEN-BOUNDED-DAG-EXPRP))
 (32 32 (:REWRITE DAG-PARENT-ARRAYP-WHEN-WF-DAGP))
 (31 31 (:TYPE-PRESCRIPTION MYQUOTEP))
 (31 31 (:REWRITE BOUNDED-DAG-EXPRP-WHEN-SYMBOLP-CHEAP))
 (31 31 (:REWRITE BOUNDED-DAG-EXPRP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (31 31 (:REWRITE BOUNDED-DAG-EXPRP-MONOTONE))
 (30 30 (:LINEAR ARRAY2P-LINEAR))
 (30 15 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
 (28 28 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (28 28 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (28 14 (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
 (28 14 (:REWRITE ALL-NATP-IMPLIES-ALL-INTEGERP-CHEAP))
 (28 14 (:REWRITE <-OF-NTH-0-WHEN-ALL-DARGP-LESS-THAN))
 (26 5 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (24 24 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (24 24 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-DARGP-LESS-THAN))
 (24 24 (:REWRITE INTEGERP-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (24 24 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (24 24 (:REWRITE ALL-<-TRANSITIVE))
 (21 21 (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (18 3 (:REWRITE ALL-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP-LIST))
 (15 15 (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-BETTER))
 (15 15 (:REWRITE ALL-DARGP-LESS-THAN-MONOTONE))
 (14 14 (:REWRITE NOT-<-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-GEN-CONSTANT))
 (14 14 (:REWRITE NOT-<-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-2))
 (14 14 (:REWRITE NATP-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (14 14 (:REWRITE NATP-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (14 14 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 (14 14 (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (14 14 (:REWRITE <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (14 14 (:REWRITE <-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-FREE))
 (14 14 (:REWRITE <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-GEN))
 (14 14 (:REWRITE <-OF-0-WHEN-ALL-DARGP-LESS-THAN))
 (14 14 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
 (14 14 (:LINEAR <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (13 13 (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
 (12 4 (:REWRITE ALL-DARGP-LESS-THAN-OF-0))
 (11 11 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (10 5 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
 (10 5 (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (8 4 (:REWRITE <-OF-NTH-OF-0-WHEN-ALL-<-CHEAP))
 (8 4 (:REWRITE <-OF-NTH-OF-0-AND-0-WHEN-ALL-NATP-CHEAP))
 (6 6 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-LIST))
 (6 6 (:REWRITE ADD-TO-PARENTS-OF-ATOMS-WITH-NAME-WHEN-ALL-CONSP))
 (4 4 (:TYPE-PRESCRIPTION MEMBERP))
 (4 4 (:REWRITE ALL-MYQUOTEP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN-SPECIAL-ALT))
 (3 3 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN-SPECIAL))
 (3 3 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN))
 (1 1 (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
 )
(ALEN1-OF-MV-NTH-0-OF-MAKE-DAG-INDICES-AUX
 (1860 876 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (876 876 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (671 1 (:REWRITE ALL-DARGP-OF-DARGS-WHEN-DAG-EXPRP0))
 (645 2 (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-BOUNDED-DAG-EXPRP-OF-AREF1))
 (619 1 (:DEFINITION BOUNDED-DAG-EXPRP))
 (564 1 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-<))
 (552 2 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (479 2 (:DEFINITION NAT-LISTP))
 (348 174 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (300 150 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (272 1 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
 (246 1 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
 (241 2 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
 (180 8 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (160 40 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (143 7 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (139 31 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (120 68 (:REWRITE DEFAULT-<-2))
 (116 68 (:REWRITE DEFAULT-<-1))
 (115 31 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (114 38 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (108 108 (:TYPE-PRESCRIPTION ADD-TO-PARENTS-OF-ATOMS-WITH-NAME))
 (106 53 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (106 53 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (75 50 (:REWRITE DEFAULT-+-2))
 (70 70 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (68 68 (:REWRITE USE-ALL-<-2))
 (68 68 (:REWRITE USE-ALL-<))
 (66 66 (:REWRITE USE-ALL-<=-2))
 (66 66 (:REWRITE USE-ALL-<=))
 (56 56 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (56 7 (:DEFINITION LEN))
 (53 53 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (50 50 (:REWRITE DEFAULT-+-1))
 (50 4 (:REWRITE INTEGERP-OF-NTH-OF-DARGS))
 (48 8 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (48 2 (:REWRITE NATP-OF-NTH-OF-DARGS))
 (38 38 (:TYPE-PRESCRIPTION LEN))
 (38 38 (:REWRITE USE-ALL-RATIONALP-2))
 (38 38 (:REWRITE USE-ALL-RATIONALP))
 (36 2 (:REWRITE NOT-<-OF-NTH-OF-DARGS-OF-AREF1-AND-CONSTANT-WHEN-PSEUDO-DAG-ARRAYP))
 (32 2 (:REWRITE NOT-<-OF-0-AND-NTH-OF-DARGS))
 (30 2 (:REWRITE <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-GEN))
 (30 2 (:REWRITE <-OF-NTH-OF-DARGS))
 (30 2 (:LINEAR NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
 (30 2 (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (28 28 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (27 27 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (26 22 (:REWRITE USE-ALL-CONSP))
 (25 25 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (25 1 (:REWRITE LEN-OF-AREF1-WHEN-QUOTEP-AND-PSEUDO-DAG-ARRAYP-AUX))
 (23 23 (:REWRITE USE-ALL-NATP-2))
 (23 23 (:REWRITE USE-ALL-NATP))
 (23 23 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (23 2 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
 (23 2 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (22 22 (:REWRITE USE-ALL-CONSP-2))
 (22 1 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (22 1 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
 (20 4 (:REWRITE CAR-OF-DARGS-BECOMES-NTH-0-OF-DARGS))
 (18 3 (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (18 3 (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (16 2 (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (16 2 (:DEFINITION NTH))
 (15 15 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
 (14 14 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (14 14 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (14 14 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (14 4 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
 (14 4 (:REWRITE INTEGERP-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (13 13 (:TYPE-PRESCRIPTION NAT-LISTP))
 (12 12 (:REWRITE DEFAULT-CAR))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (12 2 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (12 2 (:REWRITE <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (12 2 (:LINEAR <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (12 2 (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-LINEAR))
 (11 2 (:REWRITE NATP-OF-NTH-FROM-ALL-NATP))
 (10 10 (:TYPE-PRESCRIPTION BOUNDED-DAG-EXPRP))
 (10 2 (:REWRITE NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (8 1 (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (8 1 (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-OF-AREF1))
 (7 7 (:TYPE-PRESCRIPTION ALL-NATP))
 (7 7 (:REWRITE ADD-TO-PARENTS-OF-ATOMS-WITH-NAME-WHEN-ALL-CONSP))
 (7 2 (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (7 2 (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
 (6 6 (:REWRITE NTH-WHEN-NOT-CDDR))
 (6 6 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (6 3 (:REWRITE BOUNDED-DAG-EXPRP-WHEN-MYQUOTEP-CHEAP))
 (6 1 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
 (6 1 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
 (4 4 (:TYPE-PRESCRIPTION MEMBERP))
 (4 4 (:TYPE-PRESCRIPTION DAG-EXPRP0))
 (4 4 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (4 4 (:TYPE-PRESCRIPTION ALL-<))
 (4 4 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-DARGP-LESS-THAN))
 (4 4 (:REWRITE INTEGERP-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (4 4 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (4 2 (:REWRITE NATP-OF-NTH-WHEN-ALL-DARGP))
 (4 2 (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
 (4 2 (:REWRITE ALL-NATP-IMPLIES-ALL-INTEGERP-CHEAP))
 (4 2 (:REWRITE <-OF-NTH-0-WHEN-ALL-DARGP-LESS-THAN))
 (3 3 (:TYPE-PRESCRIPTION MYQUOTEP))
 (3 3 (:TYPE-PRESCRIPTION ALL-DARGP-LESS-THAN))
 (3 3 (:REWRITE BOUNDED-DAG-EXPRP-WHEN-SYMBOLP-CHEAP))
 (3 3 (:REWRITE BOUNDED-DAG-EXPRP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (3 3 (:REWRITE BOUNDED-DAG-EXPRP-MONOTONE))
 (3 3 (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (3 3 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
 (2 2 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (2 2 (:REWRITE NOT-<-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-GEN-CONSTANT))
 (2 2 (:REWRITE NOT-<-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-2))
 (2 2 (:REWRITE NATP-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (2 2 (:REWRITE NATP-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (2 2 (:REWRITE DAG-EXPRP0-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (2 2 (:REWRITE DAG-EXPRP0-WHEN-BOUNDED-DAG-EXPRP))
 (2 2 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (2 2 (:REWRITE ALL-<-TRANSITIVE))
 (2 2 (:REWRITE <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (2 2 (:REWRITE <-OF-NTH-WHEN-ALL-DARGP-LESS-THAN-FREE))
 (2 2 (:REWRITE <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-GEN))
 (2 2 (:REWRITE <-OF-0-WHEN-ALL-DARGP-LESS-THAN))
 (2 2 (:LINEAR <=-OF-0-AND-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (2 1 (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (2 1 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
 (2 1 (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-BOUNDED-DAG-EXPRP))
 (2 1 (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-<-SIMPLE))
 (1 1 (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-BETTER))
 (1 1 (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
 (1 1 (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (1 1 (:REWRITE ALL-DARGP-LESS-THAN-MONOTONE))
 )
(BOUNDED-DAG-PARENT-ENTRIESP-OF-MV-NTH-0-OF-MAKE-DAG-INDICES-AUX
 (2438 2438 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (2012 79 (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-LINEAR))
 (1378 95 (:DEFINITION NTH))
 (918 459 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (850 425 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (692 173 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (632 79 (:LINEAR NONNEG-OF-NTH-OF-DARGS-OF-AREF1))
 (632 79 (:LINEAR <-OF-NTH-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (538 14 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (524 4 (:REWRITE USE-ALL-<-FOR-CAR))
 (508 223 (:REWRITE NTH-WHEN-NOT-CDDR))
 (459 459 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (425 425 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (407 270 (:REWRITE DEFAULT-<-1))
 (382 30 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (346 346 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (298 270 (:REWRITE DEFAULT-<-2))
 (282 141 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (280 10 (:DEFINITION ASSOC-EQUAL))
 (279 263 (:REWRITE DEFAULT-+-2))
 (270 270 (:REWRITE USE-ALL-<-2))
 (270 270 (:REWRITE USE-ALL-<))
 (270 270 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (266 4 (:DEFINITION BOUNDED-DAG-EXPRP))
 (263 263 (:REWRITE DEFAULT-+-1))
 (256 16 (:DEFINITION LEN))
 (254 254 (:REWRITE USE-ALL-<=-2))
 (254 254 (:REWRITE USE-ALL-<=))
 (231 209 (:REWRITE USE-ALL-CONSP))
 (222 64 (:REWRITE DEFAULT-CAR))
 (216 6 (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-<-SIMPLE))
 (212 12 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (209 209 (:REWRITE USE-ALL-CONSP-2))
 (201 157 (:REWRITE DEFAULT-CDR))
 (184 184 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (174 27 (:REWRITE BOUNDED-DAG-PARENT-ENTRIESP-MONOTONE-GEN))
 (173 173 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (173 173 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (158 6 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-<))
 (130 130 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
 (123 41 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (114 6 (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-WHEN-BOUNDED-DAG-EXPRP))
 (103 40 (:REWRITE ZP-OPEN))
 (100 2 (:REWRITE ALL-<-OF-CDR))
 (98 14 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (96 96 (:TYPE-PRESCRIPTION LEN))
 (90 2 (:REWRITE ALL-CONSP-OF-CDR))
 (88 11 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (80 10 (:DEFINITION ASSOC-KEYWORD))
 (78 30 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (78 6 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
 (70 7 (:DEFINITION NFIX))
 (66 33 (:REWRITE CAR-OF-DARGS-BECOMES-NTH-0-OF-DARGS))
 (56 14 (:REWRITE NOT-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP))
 (41 41 (:REWRITE USE-ALL-RATIONALP-2))
 (41 41 (:REWRITE USE-ALL-RATIONALP))
 (40 40 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (40 40 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (38 14 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (36 12 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (32 32 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (32 32 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (32 32 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (32 4 (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (30 4 (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (28 28 (:TYPE-PRESCRIPTION ALL-<))
 (28 2 (:REWRITE ALL-DARGP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (27 27 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (26 26 (:LINEAR ARRAY2P-LINEAR))
 (24 24 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (24 12 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (24 6 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
 (24 4 (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (24 4 (:REWRITE ALL-<-OF-ALEN1-WHEN-PSEUDO-DAG-ARRAYP-LIST))
 (22 22 (:TYPE-PRESCRIPTION MEMBERP))
 (20 20 (:REWRITE USE-ALL-NATP-2))
 (20 20 (:REWRITE USE-ALL-NATP))
 (16 16 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (16 16 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (16 4 (:REWRITE DAG-EXPRP0-OF-AREF1-WHEN-BOUNDED-DAG-EXPRP-OF-AREF1))
 (14 14 (:TYPE-PRESCRIPTION BOUNDED-DAG-EXPRP))
 (14 14 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (14 14 (:REWRITE ALL-<-TRANSITIVE))
 (13 13 (:REWRITE DAG-PARENT-ARRAYP-WHEN-WF-DAGP))
 (12 12 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (12 12 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (12 12 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (12 6 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
 (11 11 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (10 10 (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (10 10 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (8 8 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-LIST))
 (8 8 (:REWRITE ADD-TO-PARENTS-OF-ATOMS-WITH-NAME-WHEN-ALL-CONSP))
 (8 4 (:REWRITE BOUNDED-DAG-EXPRP-WHEN-MYQUOTEP-CHEAP))
 (7 7 (:TYPE-PRESCRIPTION NFIX))
 (7 7 (:REWRITE INTEGERP-OF-ALEN1))
 (6 6 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (6 6 (:REWRITE ALL-DARGP-LESS-THAN-OF-DARGS-OF-AREF1))
 (6 6 (:REWRITE ALL-DARGP-LESS-THAN-MONOTONE))
 (4 4 (:TYPE-PRESCRIPTION MYQUOTEP))
 (4 4 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN-SPECIAL-ALT))
 (4 4 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN-SPECIAL))
 (4 4 (:REWRITE PSEUDO-DAG-ARRAYP-LIST-WHEN-ALL-DARGP-LESS-THAN))
 (4 4 (:REWRITE BOUNDED-DAG-EXPRP-WHEN-SYMBOLP-CHEAP))
 (4 4 (:REWRITE BOUNDED-DAG-EXPRP-WHEN-EQUAL-OF-QUOTE-AND-CAR-CHEAP))
 (4 4 (:REWRITE BOUNDED-DAG-EXPRP-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-BETTER))
 (4 4 (:REWRITE BOUNDED-DAG-EXPRP-MONOTONE))
 )
(MAKE-DAG-INDICES
 (230 169 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (169 169 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (2 2 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (1 1 (:REWRITE USE-ALL-<=-2))
 (1 1 (:REWRITE USE-ALL-<=))
 (1 1 (:REWRITE USE-ALL-<-2))
 (1 1 (:REWRITE USE-ALL-<))
 (1 1 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DAG-PARENT-ARRAYP-WHEN-WF-DAGP))
 (1 1 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 )
(MV-NTH-0-OF-MAKE-DAG-INDICES
 (83 1 (:DEFINITION MAKE-DAG-INDICES-AUX))
 (22 1 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (11 1 (:DEFINITION NATP))
 (8 8 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-AUX))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (8 2 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (8 1 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (6 1 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (5 2 (:REWRITE DEFAULT-<-2))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (4 4 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (4 2 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (4 2 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (4 1 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (3 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (2 2 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (2 2 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (2 2 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (2 2 (:TYPE-PRESCRIPTION DAG-PARENT-ARRAYP))
 (2 2 (:TYPE-PRESCRIPTION ARRAY1P))
 (2 2 (:REWRITE USE-ALL-CONSP-2))
 (2 2 (:REWRITE USE-ALL-CONSP))
 (2 2 (:REWRITE USE-ALL-<=-2))
 (2 2 (:REWRITE USE-ALL-<=))
 (2 2 (:REWRITE USE-ALL-<-2))
 (2 2 (:REWRITE USE-ALL-<))
 (2 2 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (1 1 (:TYPE-PRESCRIPTION ALL-CONSP))
 (1 1 (:REWRITE USE-ALL-RATIONALP-2))
 (1 1 (:REWRITE USE-ALL-RATIONALP))
 (1 1 (:REWRITE USE-ALL-NATP-2))
 (1 1 (:REWRITE USE-ALL-NATP))
 (1 1 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (1 1 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (1 1 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (1 1 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE ADD-TO-PARENTS-OF-ATOMS-WITH-NAME-WHEN-ALL-CONSP))
 )
(MV-NTH-1-OF-MAKE-DAG-INDICES
 (83 1 (:DEFINITION MAKE-DAG-INDICES-AUX))
 (22 1 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (11 1 (:DEFINITION NATP))
 (8 8 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-AUX))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (8 2 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (8 1 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (6 1 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (5 2 (:REWRITE DEFAULT-<-2))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (4 4 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (4 2 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (4 2 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (4 1 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (3 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (2 2 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (2 2 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (2 2 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (2 2 (:TYPE-PRESCRIPTION DAG-PARENT-ARRAYP))
 (2 2 (:TYPE-PRESCRIPTION ARRAY1P))
 (2 2 (:REWRITE USE-ALL-CONSP-2))
 (2 2 (:REWRITE USE-ALL-CONSP))
 (2 2 (:REWRITE USE-ALL-<=-2))
 (2 2 (:REWRITE USE-ALL-<=))
 (2 2 (:REWRITE USE-ALL-<-2))
 (2 2 (:REWRITE USE-ALL-<))
 (2 2 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (1 1 (:TYPE-PRESCRIPTION ALL-CONSP))
 (1 1 (:REWRITE USE-ALL-RATIONALP-2))
 (1 1 (:REWRITE USE-ALL-RATIONALP))
 (1 1 (:REWRITE USE-ALL-NATP-2))
 (1 1 (:REWRITE USE-ALL-NATP))
 (1 1 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (1 1 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (1 1 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (1 1 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE ADD-TO-PARENTS-OF-ATOMS-WITH-NAME-WHEN-ALL-CONSP))
 )
(MV-NTH-2-OF-MAKE-DAG-INDICES
 (83 1 (:DEFINITION MAKE-DAG-INDICES-AUX))
 (22 1 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (11 1 (:DEFINITION NATP))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (8 2 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (8 1 (:REWRITE NOT-EQUAL-OF-CAR-AND-QUOTE-WHEN-LEN-WRONG-AND-PSEUDO-DAG-ARRAYP-AUX))
 (6 1 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (5 2 (:REWRITE DEFAULT-<-2))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (4 4 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (4 2 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (4 2 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (4 1 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (3 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (2 2 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (2 2 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (2 2 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (2 2 (:TYPE-PRESCRIPTION DAG-PARENT-ARRAYP))
 (2 2 (:TYPE-PRESCRIPTION ARRAY1P))
 (2 2 (:REWRITE USE-ALL-CONSP-2))
 (2 2 (:REWRITE USE-ALL-CONSP))
 (2 2 (:REWRITE USE-ALL-<=-2))
 (2 2 (:REWRITE USE-ALL-<=))
 (2 2 (:REWRITE USE-ALL-<-2))
 (2 2 (:REWRITE USE-ALL-<))
 (2 2 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (1 1 (:TYPE-PRESCRIPTION ALL-CONSP))
 (1 1 (:REWRITE USE-ALL-RATIONALP-2))
 (1 1 (:REWRITE USE-ALL-RATIONALP))
 (1 1 (:REWRITE USE-ALL-NATP-2))
 (1 1 (:REWRITE USE-ALL-NATP))
 (1 1 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (1 1 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE PSEUDO-DAG-ARRAYP-AUX-MONOTONE))
 (1 1 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (1 1 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE ADD-TO-PARENTS-OF-ATOMS-WITH-NAME-WHEN-ALL-CONSP))
 )
(WF-DAGP-AFTER-MAKE-DAG-INDICES
 (90 45 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (45 45 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (45 45 (:TYPE-PRESCRIPTION ARRAY1P))
 (1 1 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 )
