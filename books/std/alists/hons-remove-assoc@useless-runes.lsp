(HONS-REMOVE-ASSOC-OF-CONS
 (26 26 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE DEFAULT-CDR))
 )
(HONS-REMOVE-ASSOC-OF-ATOM)
(HONS-REMOVE-ASSOC-COMMUTES
 (193 193 (:REWRITE DEFAULT-CAR))
 (119 119 (:REWRITE DEFAULT-CDR))
 )
(HONS-ASSOC-EQUAL-REMOVE-ASSOC
 (292 283 (:REWRITE DEFAULT-CAR))
 (127 124 (:REWRITE DEFAULT-CDR))
 )
(HONS-REMOVE-ASSOC-OF-FAST-ALIST-FORK
 (299 288 (:REWRITE DEFAULT-CAR))
 (190 182 (:REWRITE DEFAULT-CDR))
 )
(HONS-REMOVE-ASSOC-OF-APPEND
 (110 109 (:REWRITE DEFAULT-CAR))
 (71 70 (:REWRITE DEFAULT-CDR))
 (27 27 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(HONS-REMOVE-ASSOC-WHEN-NOT-HONS-ASSOC-EQUAL
 (292 37 (:REWRITE ALIST-FIX-WHEN-ALISTP))
 (197 37 (:DEFINITION ALISTP))
 (148 148 (:TYPE-PRESCRIPTION ALISTP))
 (132 132 (:REWRITE DEFAULT-CDR))
 )
(ALISTP-OF-HONS-REMOVE-ASSOC
 (218 12 (:REWRITE HONS-REMOVE-ASSOC-WHEN-NOT-HONS-ASSOC-EQUAL))
 (185 15 (:DEFINITION HONS-ASSOC-EQUAL))
 (90 90 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (88 87 (:REWRITE DEFAULT-CAR))
 (45 44 (:REWRITE DEFAULT-CDR))
 (14 14 (:DEFINITION HONS-EQUAL))
 (12 12 (:REWRITE HONS-REMOVE-ASSOC-OF-ATOM))
 )
(HONS-REMOVE-ASSOC-OF-ALIST-FIX
 (697 696 (:REWRITE DEFAULT-CDR))
 (560 31 (:REWRITE HONS-ASSOC-EQUAL-OF-ALIST-FIX))
 (302 31 (:REWRITE ALIST-FIX-WHEN-ALISTP))
 (254 222 (:REWRITE HONS-REMOVE-ASSOC-OF-ATOM))
 (232 232 (:DEFINITION HONS-EQUAL))
 (221 37 (:DEFINITION ALISTP))
 (152 152 (:TYPE-PRESCRIPTION ALISTP))
 (1 1 (:REWRITE CDR-CONS))
 )
