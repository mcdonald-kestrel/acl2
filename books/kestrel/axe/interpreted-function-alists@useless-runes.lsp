(ADD-TO-INTERPRETED-FUNCTION-ALIST
 (249 3 (:DEFINITION PSEUDO-TERMP))
 (81 9 (:DEFINITION LENGTH))
 (66 12 (:DEFINITION LEN))
 (58 58 (:REWRITE DEFAULT-CDR))
 (54 54 (:REWRITE DEFAULT-CAR))
 (41 41 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (36 4 (:DEFINITION SYMBOL-LISTP))
 (32 16 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (32 16 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (27 27 (:TYPE-PRESCRIPTION LEN))
 (24 12 (:REWRITE DEFAULT-+-2))
 (21 1 (:DEFINITION SYMBOL-ALISTP))
 (20 10 (:REWRITE ALISTP-WHEN-PSEUDO-TERM-ALISTP-CHEAP))
 (18 6 (:DEFINITION TRUE-LISTP))
 (18 1 (:DEFINITION PLIST-WORLDP))
 (12 12 (:REWRITE DEFAULT-+-1))
 (10 10 (:TYPE-PRESCRIPTION PSEUDO-TERM-ALISTP))
 (10 5 (:REWRITE SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-ALISTP-CHEAP))
 (9 3 (:REWRITE PSEUDO-TERMP-OF-LOOKUP-EQUAL-WHEN-SYMBOL-TERM-ALISTP))
 (6 6 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (6 3 (:REWRITE SYMBOL-ALISTP-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (6 3 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (6 1 (:REWRITE SYMBOL-ALISTP-OF-CDR))
 (3 3 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (3 3 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (3 3 (:REWRITE PSEUDO-TERMP-OF-LAMBDA-BODY-CHEAP))
 (3 3 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-CONSP-CHEAP))
 (3 3 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-ASSOC-EQUAL-CHEAP))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(INTERPRETED-FUNCTION-ALISTP-OF-ADD-TO-INTERPRETED-FUNCTION-ALIST
 (166 2 (:DEFINITION PSEUDO-TERMP))
 (54 6 (:DEFINITION LENGTH))
 (38 38 (:REWRITE DEFAULT-CDR))
 (31 31 (:REWRITE DEFAULT-CAR))
 (19 19 (:TYPE-PRESCRIPTION LEN))
 (18 18 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (18 9 (:REWRITE DEFAULT-+-2))
 (16 8 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (12 6 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (12 4 (:DEFINITION TRUE-LISTP))
 (10 10 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-CONSP-CHEAP))
 (10 10 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-ASSOC-EQUAL-CHEAP))
 (9 9 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE PSEUDO-TERMP-OF-LOOKUP-EQUAL-WHEN-SYMBOL-TERM-ALISTP))
 (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 2 (:REWRITE SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-ALISTP-CHEAP))
 (4 2 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (2 2 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE PSEUDO-TERMP-OF-LAMBDA-BODY-CHEAP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE USE-ALL-INTERPRETED-FUNCTION-INFOP-2))
 (1 1 (:REWRITE USE-ALL-INTERPRETED-FUNCTION-INFOP))
 )
(ADD-FNS-TO-INTERPRETED-FUNCTION-ALIST
 (166 2 (:DEFINITION PSEUDO-TERMP))
 (117 117 (:REWRITE DEFAULT-CAR))
 (88 88 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (76 38 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (71 71 (:REWRITE DEFAULT-CDR))
 (54 6 (:DEFINITION LENGTH))
 (48 24 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (44 22 (:REWRITE SYMBOL-ALISTP-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (44 8 (:DEFINITION LEN))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (16 8 (:REWRITE DEFAULT-+-2))
 (12 4 (:DEFINITION TRUE-LISTP))
 (9 9 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-CONSP-CHEAP))
 (9 9 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-ASSOC-EQUAL-CHEAP))
 (8 8 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION ADD-TO-INTERPRETED-FUNCTION-ALIST))
 (6 2 (:REWRITE PSEUDO-TERMP-OF-LOOKUP-EQUAL-WHEN-SYMBOL-TERM-ALISTP))
 (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 2 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (2 2 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (2 2 (:TYPE-PRESCRIPTION ACONS))
 (2 2 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE PSEUDO-TERMP-OF-LAMBDA-BODY-CHEAP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(INTERPRETED-FUNCTION-ALISTP-OF-ADD-FNS-TO-INTERPRETED-FUNCTION-ALIST
 (332 4 (:DEFINITION PSEUDO-TERMP))
 (108 12 (:DEFINITION LENGTH))
 (88 88 (:REWRITE DEFAULT-CAR))
 (76 76 (:REWRITE DEFAULT-CDR))
 (37 37 (:TYPE-PRESCRIPTION LEN))
 (36 36 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (34 17 (:REWRITE DEFAULT-+-2))
 (32 16 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (24 12 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (24 8 (:DEFINITION TRUE-LISTP))
 (17 17 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-CONSP-CHEAP))
 (16 16 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-ASSOC-EQUAL-CHEAP))
 (12 4 (:REWRITE PSEUDO-TERMP-OF-LOOKUP-EQUAL-WHEN-SYMBOL-TERM-ALISTP))
 (8 8 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (8 4 (:REWRITE SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-ALISTP-CHEAP))
 (8 4 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (4 4 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (4 4 (:REWRITE PSEUDO-TERMP-OF-LAMBDA-BODY-CHEAP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE USE-ALL-INTERPRETED-FUNCTION-INFOP-2))
 (1 1 (:REWRITE USE-ALL-INTERPRETED-FUNCTION-INFOP))
 )
(MAKE-INTERPRETED-FUNCTION-ALIST)
(INTERPRETED-FUNCTION-ALISTP-OF-MAKE-INTERPRETED-FUNCTION-ALIST)
(INTERPRETED-FUNCTION-ALIST-COMPLETEP-AUX
 (447 339 (:REWRITE DEFAULT-CDR))
 (284 282 (:REWRITE DEFAULT-CAR))
 (269 269 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (212 106 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (188 94 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (170 24 (:REWRITE ALL-INTERPRETED-FUNCTION-INFOP-WHEN-NOT-CONSP))
 (138 69 (:REWRITE SYMBOL-ALISTP-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (86 43 (:REWRITE DEFAULT-+-2))
 (78 78 (:TYPE-PRESCRIPTION STRIP-CDRS))
 (70 35 (:REWRITE SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-ALISTP-CHEAP))
 (48 24 (:REWRITE ALL-INTERPRETED-FUNCTION-INFOP-WHEN-NOT-CONSP-CHEAP))
 (43 43 (:REWRITE DEFAULT-+-1))
 (35 5 (:DEFINITION SUBSETP-EQUAL))
 (18 6 (:DEFINITION MEMBER-EQUAL))
 (14 14 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (14 7 (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
 (11 11 (:REWRITE PSEUDO-TERMP-OF-LAMBDA-BODY-CHEAP))
 (9 9 (:REWRITE USE-ALL-INTERPRETED-FUNCTION-INFOP-2))
 (9 9 (:REWRITE USE-ALL-INTERPRETED-FUNCTION-INFOP))
 (9 1 (:DEFINITION SET-DIFFERENCE-EQUAL))
 (7 7 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 (6 6 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 )
(INTERPRETED-FUNCTION-ALIST-COMPLETEP
 (142 88 (:REWRITE DEFAULT-CAR))
 (98 70 (:REWRITE DEFAULT-CDR))
 (78 13 (:DEFINITION STRIP-CARS))
 (26 13 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (13 13 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 )
