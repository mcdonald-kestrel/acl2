(ALISTP-OF-GETPROPS (126 126 (:REWRITE CONS-CAR-CDR))
                    (119 119 (:REWRITE DEFAULT-SYMBOL-NAME))
                    (113 113
                         (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
                    (67 67 (:REWRITE SYMBOL-<-TRICHOTOMY))
                    (67 67 (:REWRITE SYMBOL-<-TRANSITIVE))
                    (67 67 (:REWRITE SYMBOL-<-ASYMMETRIC))
                    (58 58
                        (:REWRITE ASSOC-EQUAL-WHEN-NOT-CONSP-CHEAP)))
(FN-BODY)
(FN-DEFINEDP)
(ALL-FN-DEFINEDP (20 2 (:DEFINITION PLIST-WORLDP))
                 (14 14 (:REWRITE DEFAULT-CAR))
                 (7 7 (:REWRITE DEFAULT-CDR)))
(PSEUDO-TERMP-OF-FN-BODY (130 2 (:DEFINITION PSEUDO-TERMP))
                         (50 6 (:DEFINITION LENGTH))
                         (40 8 (:DEFINITION LEN))
                         (37 37 (:REWRITE DEFAULT-CDR))
                         (31 31 (:REWRITE DEFAULT-CAR))
                         (18 18 (:TYPE-PRESCRIPTION LEN))
                         (16 8 (:REWRITE DEFAULT-+-2))
                         (11 1 (:DEFINITION FGETPROP))
                         (8 8 (:REWRITE DEFAULT-+-1))
                         (8 4 (:DEFINITION TRUE-LISTP))
                         (6 2 (:DEFINITION SYMBOL-LISTP))
                         (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
                         (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
                         (2 2
                            (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
                         (2 2
                            (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
                         (2 2 (:REWRITE DEFAULT-COERCE-2))
                         (2 2 (:REWRITE DEFAULT-COERCE-1)))
(FN-FORMALS)
(TRUE-LISTP-OF-FN-FORMALS (11 1 (:DEFINITION FGETPROP))
                          (7 7 (:REWRITE DEFAULT-CDR))
                          (6 6 (:REWRITE DEFAULT-CAR))
                          (4 1 (:DEFINITION TRUE-LISTP))
                          (3 1 (:DEFINITION SYMBOL-LISTP)))
(SYMBOL-LISTP-OF-FN-FORMALS (11 1 (:DEFINITION FGETPROP))
                            (8 2 (:DEFINITION SYMBOL-LISTP))
                            (7 7 (:REWRITE DEFAULT-CDR))
                            (7 7 (:REWRITE DEFAULT-CAR)))
(PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP
     (13 13 (:REWRITE DEFAULT-CAR))
     (8 8
        (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
     (7 7 (:REWRITE DEFAULT-CDR))
     (6 6
        (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP)))
(EQLABLE-LISTP-WHEN-SYMBOL-LISTP-CHEAP (11 11 (:REWRITE DEFAULT-CAR))
                                       (4 4 (:REWRITE DEFAULT-CDR)))
(PSEUDO-TERM-LISTP-OF-FN-FORMALS)
(EQLABLE-LISTP-OF-FN-FORMALS)
(FN-ARITY)
(FN-GUARD)
(FN-HAS-MEASUREP)
(FN-MEASURE)
(PSEUDO-TERMP-OF-FN-MEASURE
     (134 2 (:DEFINITION PSEUDO-TERMP))
     (58 47 (:REWRITE DEFAULT-CDR))
     (50 6 (:DEFINITION LENGTH))
     (40 8 (:DEFINITION LEN))
     (37 37 (:REWRITE DEFAULT-CAR))
     (18 18 (:TYPE-PRESCRIPTION LEN))
     (16 8 (:REWRITE DEFAULT-+-2))
     (13 1 (:DEFINITION FGETPROP))
     (9 1 (:REWRITE CONSP-OF-ASSOC-EQUAL))
     (8 8 (:REWRITE DEFAULT-+-1))
     (8 4 (:DEFINITION TRUE-LISTP))
     (6 2 (:DEFINITION SYMBOL-LISTP))
     (6 1 (:DEFINITION ALISTP))
     (5 5 (:TYPE-PRESCRIPTION ASSOC-EQUAL-TYPE))
     (5 5 (:TYPE-PRESCRIPTION ALISTP))
     (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
     (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
     (4 2
        (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
     (2 2
        (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
     (2 2
        (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
     (2 2 (:REWRITE DEFAULT-COERCE-2))
     (2 2 (:REWRITE DEFAULT-COERCE-1))
     (2 1 (:DEFINITION NTH))
     (1 1
        (:REWRITE ASSOC-EQUAL-WHEN-NOT-CONSP-CHEAP)))
(FN-MEASURES (2 2 (:REWRITE DEFAULT-CAR))
             (1 1 (:REWRITE DEFAULT-CDR)))
(FN-RECURSIVEP)
(FN-SINGLY-RECURSIVEP)
(FN-MUTUALLY-RECURSIVEP)
(FN-RECURSIVE-PARTNERS)
(SYMBOL-LISTP-OF-FN-RECURSIVE-PARTNERS
     (21 10 (:REWRITE DEFAULT-CDR))
     (13 1 (:DEFINITION FGETPROP))
     (9 1 (:REWRITE CONSP-OF-ASSOC-EQUAL))
     (8 8 (:REWRITE DEFAULT-CAR))
     (8 2 (:DEFINITION SYMBOL-LISTP))
     (6 1 (:DEFINITION ALISTP))
     (5 5 (:TYPE-PRESCRIPTION ASSOC-EQUAL-TYPE))
     (5 5 (:TYPE-PRESCRIPTION ALISTP))
     (2 1 (:DEFINITION NTH))
     (1 1
        (:REWRITE ASSOC-EQUAL-WHEN-NOT-CONSP-CHEAP)))
(ARITIES-OKAYP (556 250 (:REWRITE DEFAULT-+-2))
               (462 6 (:DEFINITION ARITIES-OKAYP))
               (327 250 (:REWRITE DEFAULT-+-1))
               (144 36 (:DEFINITION INTEGER-ABS))
               (60 43 (:REWRITE DEFAULT-<-2))
               (47 43 (:REWRITE DEFAULT-<-1))
               (36 36 (:REWRITE DEFAULT-UNARY-MINUS))
               (34 34 (:REWRITE DEFAULT-COERCE-2))
               (34 34 (:REWRITE DEFAULT-COERCE-1))
               (27 9 (:REWRITE CONSP-OF-ASSOC-EQUAL))
               (26 13
                   (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
               (18 18
                   (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
               (18 18 (:REWRITE DEFAULT-REALPART))
               (18 18 (:REWRITE DEFAULT-NUMERATOR))
               (18 18 (:REWRITE DEFAULT-IMAGPART))
               (18 18 (:REWRITE DEFAULT-DENOMINATOR))
               (18 18
                   (:REWRITE ASSOC-EQUAL-WHEN-NOT-CONSP-CHEAP))
               (18 9 (:DEFINITION NTH))
               (16 16
                   (:TYPE-PRESCRIPTION TRUE-LISTP-OF-FN-FORMALS))
               (13 13
                   (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
               (9 3 (:DEFINITION SYMBOL-LISTP))
               (6 2
                  (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1)))
(CHECK-ARITIES-FN)
(DEFTHM-BODY)
(PSEUDO-TERMP-OF-DEFTHM-BODY
     (134 2 (:DEFINITION PSEUDO-TERMP))
     (50 6 (:DEFINITION LENGTH))
     (40 8 (:DEFINITION LEN))
     (37 37 (:REWRITE DEFAULT-CDR))
     (31 31 (:REWRITE DEFAULT-CAR))
     (18 18 (:TYPE-PRESCRIPTION LEN))
     (16 8 (:REWRITE DEFAULT-+-2))
     (11 1 (:DEFINITION FGETPROP))
     (8 8 (:REWRITE DEFAULT-+-1))
     (8 4 (:DEFINITION TRUE-LISTP))
     (6 2 (:DEFINITION SYMBOL-LISTP))
     (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
     (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
     (4 2
        (:REWRITE PSEUDO-TERM-LISTP-WHEN-SYMBOL-LISTP-CHEAP))
     (2 2
        (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
     (2 2
        (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
     (2 2 (:REWRITE DEFAULT-COERCE-2))
     (2 2 (:REWRITE DEFAULT-COERCE-1)))
(DEFTHM-BODY-UNTRANSLATED)
(DEFTHM-RULE-CLASSES)
(TRUE-LISTP-OF-DEFTHM-RULE-CLASSES)
(DEFINED-DEFTHMP)
(FILTER-0ARY-FNS (71 36 (:REWRITE DEFAULT-CDR))
                 (24 12 (:DEFINITION NTH))
                 (21 7 (:REWRITE CONSP-OF-ASSOC-EQUAL))
                 (19 19
                     (:REWRITE ASSOC-EQUAL-WHEN-NOT-CONSP-CHEAP))
                 (18 18 (:REWRITE DEFAULT-CAR))
                 (6 2
                    (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1)))
(ENLIST-ALL)
(CONS-ONTO-ALL)
(0-ARY-EXECUTABLE-COUNTERPART-THEORY)
(ALL-FUNCTIONS-IN-WORLD-AUX (32 32 (:REWRITE DEFAULT-CAR))
                            (23 23 (:REWRITE DEFAULT-CDR))
                            (10 5 (:DEFINITION TRUE-LISTP)))
(SYMBOL-LISTP-OF-ALL-FUNCTIONS-IN-WORLD-AUX (123 122 (:REWRITE DEFAULT-CAR))
                                            (90 89 (:REWRITE DEFAULT-CDR)))
(ALL-FUNCTIONS-IN-WORLD)
(SYMBOL-LISTP-OF-ALL-FUNCTIONS-IN-WORLD)
(ENSURE-ALL-THEOREMSP (20 2 (:DEFINITION PLIST-WORLDP))
                      (14 14 (:REWRITE DEFAULT-CAR))
                      (7 7 (:REWRITE DEFAULT-CDR)))