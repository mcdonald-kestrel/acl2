(BOOLOR)
(BOOLEANP-OF-BOOLOR)
(BOOLOR-ASSOCIATIVE)
(BOOLOR-COMMUTATIVE)
(BOOLOR-COMMUTATIVE-2)
(BOOLOR-COMBINE-CONSTANTS)
(BOOLOR-SAME (6 2 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
             (4 4 (:TYPE-PRESCRIPTION BOOLEANP)))
(BOOLOR-SAME-2)
(BOOLOR-OF-T-ARG1)
(BOOLOR-OF-T-ARG2)
(BOOLOR-OF-NIL-ARG1 (6 2 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
                    (4 4 (:TYPE-PRESCRIPTION BOOLEANP)))
(BOOLOR-OF-NIL-ARG2 (4 2 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
                    (2 2 (:TYPE-PRESCRIPTION BOOLEANP)))
(BOOLOR-OF-NON-NIL)
(BOOLOR-OF-NON-NIL-ARG2 (2 2 (:REWRITE BOOLOR-OF-NON-NIL)))
(BOOLOR-OF-NOT-SAME (1 1 (:REWRITE BOOLOR-OF-NON-NIL-ARG2))
                    (1 1 (:REWRITE BOOLOR-OF-NON-NIL)))
(BOOLOR-OF-NOT-SAME-ALT (2 2 (:REWRITE BOOLOR-OF-NON-NIL-ARG2))
                        (2 2 (:REWRITE BOOLOR-OF-NON-NIL)))
(BOOLOR-OF-NOT-SAME-THREE-TERMS (4 4 (:REWRITE BOOLOR-OF-NON-NIL-ARG2))
                                (4 4 (:REWRITE BOOLOR-OF-NON-NIL))
                                (2 2 (:REWRITE BOOLOR-COMBINE-CONSTANTS)))
(BOOLOR-OF-NOT-SAME-THREE-TERMS-ALT
     (6 6 (:REWRITE BOOLOR-OF-NON-NIL-ARG2))
     (6 6 (:REWRITE BOOLOR-OF-NON-NIL))
     (3 3 (:REWRITE BOOLOR-COMBINE-CONSTANTS)))
(BOOLOR-NOT-HACK (11 11 (:REWRITE BOOLOR-OF-NON-NIL-ARG2))
                 (11 11 (:REWRITE BOOLOR-OF-NON-NIL))
                 (7 7 (:REWRITE BOOLOR-COMBINE-CONSTANTS)))
(BOOLOR-OF-NOT-OF-BOOLOR-SAME (3 3 (:REWRITE BOOLOR-OF-NON-NIL-ARG2))
                              (3 3 (:REWRITE BOOLOR-OF-NON-NIL))
                              (3 1 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
                              (2 2 (:TYPE-PRESCRIPTION BOOLEANP)))
(BOOLOR-OF-BOOL-FIX-ARG1 (3 3 (:REWRITE BOOLOR-OF-NON-NIL-ARG2))
                         (3 3 (:REWRITE BOOLOR-OF-NON-NIL))
                         (3 1 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
                         (2 2 (:TYPE-PRESCRIPTION BOOLEANP)))
(BOOLOR-OF-BOOL-FIX-ARG2 (3 1 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
                         (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
                         (2 2 (:REWRITE BOOLOR-OF-NON-NIL-ARG2))
                         (2 2 (:REWRITE BOOLOR-OF-NON-NIL)))
