(UNSIGNED-BYTE-LISTP)
(UNSIGNED-BYTE-LISTP)
(UNSIGNED-BYTE-LISTP-REWRITE (48 48 (:REWRITE DEFAULT-CDR))
                             (35 35 (:REWRITE DEFAULT-CAR))
                             (24 11
                                 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
                             (21 21
                                 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2)))
(UNSIGNED-BYTE-LISTP-FORWARD
     (63 14 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
     (36 8 (:DEFINITION MEMBER-EQUAL))
     (29 29 (:REWRITE DEFAULT-CDR))
     (28 28 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (24 9
         (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
     (21 18
         (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
     (20 20 (:REWRITE DEFAULT-CAR))
     (14 14 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
     (6 3
        (:REWRITE ALL-UNSIGNED-BYTE-P-OF-CDR)))