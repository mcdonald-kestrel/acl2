(|mbt|)
(|mbt_dollar|)
(C::*PROGRAM*-WELL-FORMED)
(C::|*PROGRAM*-mbt-CORRECT|
 (117 75 (:REWRITE C::EXEC-EXPR-OF-CALL))
 (64
    64
    (:REWRITE
         C::CONS-OF-FRAME-LIST-FIX-Y-NORMALIZE-CONST-UNDER-FRAME-LIST-EQUIV))
 (64
    64
    (:REWRITE C::CONS-OF-FRAME-FIX-X-NORMALIZE-CONST-UNDER-FRAME-LIST-EQUIV))
 (48 48 (:REWRITE OMAP::UPDATE-WHEN-EMPTY))
 (48 48
     (:REWRITE C::FRAME-OF-STORE-FIX-STORE-NORMALIZE-CONST))
 (48 48
     (:REWRITE C::FRAME-OF-IDENT-FIX-FUNCTION-NORMALIZE-CONST))
 (48 48
     (:REWRITE C::DENV-OF-FUN-ENV-FIX-FUNCTIONS-NORMALIZE-CONST))
 (48 48
     (:REWRITE C::DENV-OF-FRAME-LIST-FIX-CALL-STACK-NORMALIZE-CONST))
 (45 45
     (:REWRITE C::EXEC-EXPR-OF-NFIX-LIMIT-NORMALIZE-CONST))
 (45 45
     (:REWRITE C::EXEC-EXPR-OF-EXPR-FIX-E-NORMALIZE-CONST))
 (45 45
     (:REWRITE C::EXEC-EXPR-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (42 42
     (:TYPE-PRESCRIPTION C::EXPR-KIND$INLINE))
 (38 38
     (:REWRITE
          C::VALUE-RESULT-KIND$INLINE-OF-VALUE-RESULT-FIX-X-NORMALIZE-CONST))
 (24 22 (:REWRITE DEFAULT-CDR))
 (24 22 (:REWRITE DEFAULT-CAR))
 (19 19
     (:REWRITE C::SINT-LT-OF-SINT-FIX-Y-NORMALIZE-CONST))
 (19 19
     (:REWRITE C::SINT-LT-OF-SINT-FIX-X-NORMALIZE-CONST))
 (18 18
     (:REWRITE C::TOP-FRAME-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (18 18
     (:REWRITE C::EXEC-IDENT-OF-IDENT-FIX-ID-NORMALIZE-CONST))
 (18 18
     (:REWRITE C::EXEC-IDENT-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (18 18
     (:REWRITE C::CAR-OF-FRAME-LIST-FIX-X-NORMALIZE-CONST-UNDER-FRAME-EQUIV))
 (12 12 (:TYPE-PRESCRIPTION C::EXEC-STMT))
 (9
   9
   (:REWRITE C::EXEC-BINARY-STRICT-OF-VALUE-RESULT-FIX-ARG2-NORMALIZE-CONST))
 (9
   9
   (:REWRITE C::EXEC-BINARY-STRICT-OF-VALUE-RESULT-FIX-ARG1-NORMALIZE-CONST))
 (9 9
    (:REWRITE C::EXEC-BINARY-STRICT-OF-BINOP-FIX-OP-NORMALIZE-CONST))
 (9 9
    (:REWRITE C::EXEC-BINARY-OF-VALUE-RESULT-FIX-ARG2-NORMALIZE-CONST))
 (9 9
    (:REWRITE C::EXEC-BINARY-OF-VALUE-RESULT-FIX-ARG1-NORMALIZE-CONST))
 (9 9
    (:REWRITE C::EXEC-BINARY-OF-BINOP-FIX-OP-NORMALIZE-CONST))
 (9 9
    (:REWRITE C::ERROR-OF-IDENTITY-INFO-NORMALIZE-CONST))
 (6 1
    (:REWRITE C::VALUE-RESULTP-WHEN-ERRORP))
 (5
  5
  (:REWRITE
   C::VALUE-OPTION-RESULT-KIND$INLINE-OF-VALUE-OPTION-RESULT-FIX-X-NORMALIZE-CONST))
 (5 2
    (:REWRITE C::VALUE-OPTION-FIX-WHEN-NONE))
 (4
  4
  (:REWRITE
       C::VALUE-RESULT-OK->GET$INLINE-OF-VALUE-RESULT-FIX-X-NORMALIZE-CONST))
 (4 4
    (:REWRITE
         C::STORE-RESULT-KIND$INLINE-OF-STORE-RESULT-FIX-X-NORMALIZE-CONST))
 (3
  3
  (:REWRITE
      C::VALUE-RESULT-ERR->GET$INLINE-OF-VALUE-RESULT-FIX-X-NORMALIZE-CONST))
 (3 3
    (:REWRITE C::EXEC-BLOCK-ITEM-OF-NFIX-LIMIT-NORMALIZE-CONST))
 (3 3
    (:REWRITE C::EXEC-BLOCK-ITEM-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (3 3
    (:REWRITE C::EXEC-BLOCK-ITEM-OF-BLOCK-ITEM-FIX-ITEM-NORMALIZE-CONST))
 (2 2 (:TYPE-PRESCRIPTION C::ERRORP))
 (2
  2
  (:REWRITE
   C::VALUE-OPTION-RESULT-OK->GET$INLINE-OF-VALUE-OPTION-RESULT-FIX-X-NORMALIZE-CONST))
 (2
  2
  (:REWRITE
       C::STORE-RESULT-OK->GET$INLINE-OF-STORE-RESULT-FIX-X-NORMALIZE-CONST))
 (2 2
    (:REWRITE C::PUSH-FRAME-OF-FRAME-FIX-FRAME-NORMALIZE-CONST))
 (2 2
    (:REWRITE C::PUSH-FRAME-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (2 2
    (:REWRITE C::INIT-STORE-OF-VALUE-LIST-FIX-ACTUALS-NORMALIZE-CONST))
 (2 2
    (:REWRITE C::INIT-STORE-OF-PARAM-DECL-LIST-FIX-FORMALS-NORMALIZE-CONST))
 (2 2
    (:REWRITE C::EXEC-BLOCK-ITEM-LIST-OF-ATOM))
 (2 2
    (:REWRITE
         C::CDR-OF-VALUE-LIST-FIX-X-NORMALIZE-CONST-UNDER-VALUE-LIST-EQUIV))
 (1 1
    (:TYPE-PRESCRIPTION C::VALUE-OPTION-FIX$INLINE))
 (1 1
    (:REWRITE C::VALUE-RESULT-OK-OF-SINT-FIX-GET-NORMALIZE-CONST))
 (1
  1
  (:REWRITE
   C::VALUE-OPTION-RESULT-ERR->GET$INLINE-OF-VALUE-OPTION-RESULT-FIX-X-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-STMT-OF-STMT-FIX-S-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-STMT-OF-NFIX-LIMIT-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-STMT-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-FUN-OF-VALUE-LIST-FIX-ARGS-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-FUN-OF-NFIX-LIMIT-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-FUN-OF-IDENT-FIX-FUN-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-FUN-OF-DENV-FIX-ENV-NORMALIZE-CONST)))
(C::|*PROGRAM*-mbt_dollar-CORRECT|
 (117 75 (:REWRITE C::EXEC-EXPR-OF-CALL))
 (64
    64
    (:REWRITE
         C::CONS-OF-FRAME-LIST-FIX-Y-NORMALIZE-CONST-UNDER-FRAME-LIST-EQUIV))
 (64
    64
    (:REWRITE C::CONS-OF-FRAME-FIX-X-NORMALIZE-CONST-UNDER-FRAME-LIST-EQUIV))
 (48 48 (:REWRITE OMAP::UPDATE-WHEN-EMPTY))
 (48 48
     (:REWRITE C::FRAME-OF-STORE-FIX-STORE-NORMALIZE-CONST))
 (48 48
     (:REWRITE C::FRAME-OF-IDENT-FIX-FUNCTION-NORMALIZE-CONST))
 (48 48
     (:REWRITE C::DENV-OF-FUN-ENV-FIX-FUNCTIONS-NORMALIZE-CONST))
 (48 48
     (:REWRITE C::DENV-OF-FRAME-LIST-FIX-CALL-STACK-NORMALIZE-CONST))
 (45 45
     (:REWRITE C::EXEC-EXPR-OF-NFIX-LIMIT-NORMALIZE-CONST))
 (45 45
     (:REWRITE C::EXEC-EXPR-OF-EXPR-FIX-E-NORMALIZE-CONST))
 (45 45
     (:REWRITE C::EXEC-EXPR-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (42 42
     (:TYPE-PRESCRIPTION C::EXPR-KIND$INLINE))
 (38 38
     (:REWRITE
          C::VALUE-RESULT-KIND$INLINE-OF-VALUE-RESULT-FIX-X-NORMALIZE-CONST))
 (24 22 (:REWRITE DEFAULT-CDR))
 (24 22 (:REWRITE DEFAULT-CAR))
 (19 19
     (:REWRITE C::SINT-LT-OF-SINT-FIX-Y-NORMALIZE-CONST))
 (19 19
     (:REWRITE C::SINT-LT-OF-SINT-FIX-X-NORMALIZE-CONST))
 (18 18
     (:REWRITE C::TOP-FRAME-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (18 18
     (:REWRITE C::EXEC-IDENT-OF-IDENT-FIX-ID-NORMALIZE-CONST))
 (18 18
     (:REWRITE C::EXEC-IDENT-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (18 18
     (:REWRITE C::CAR-OF-FRAME-LIST-FIX-X-NORMALIZE-CONST-UNDER-FRAME-EQUIV))
 (12 12 (:TYPE-PRESCRIPTION C::EXEC-STMT))
 (9
   9
   (:REWRITE C::EXEC-BINARY-STRICT-OF-VALUE-RESULT-FIX-ARG2-NORMALIZE-CONST))
 (9
   9
   (:REWRITE C::EXEC-BINARY-STRICT-OF-VALUE-RESULT-FIX-ARG1-NORMALIZE-CONST))
 (9 9
    (:REWRITE C::EXEC-BINARY-STRICT-OF-BINOP-FIX-OP-NORMALIZE-CONST))
 (9 9
    (:REWRITE C::EXEC-BINARY-OF-VALUE-RESULT-FIX-ARG2-NORMALIZE-CONST))
 (9 9
    (:REWRITE C::EXEC-BINARY-OF-VALUE-RESULT-FIX-ARG1-NORMALIZE-CONST))
 (9 9
    (:REWRITE C::EXEC-BINARY-OF-BINOP-FIX-OP-NORMALIZE-CONST))
 (9 9
    (:REWRITE C::ERROR-OF-IDENTITY-INFO-NORMALIZE-CONST))
 (6 1
    (:REWRITE C::VALUE-RESULTP-WHEN-ERRORP))
 (5
  5
  (:REWRITE
   C::VALUE-OPTION-RESULT-KIND$INLINE-OF-VALUE-OPTION-RESULT-FIX-X-NORMALIZE-CONST))
 (5 2
    (:REWRITE C::VALUE-OPTION-FIX-WHEN-NONE))
 (4
  4
  (:REWRITE
       C::VALUE-RESULT-OK->GET$INLINE-OF-VALUE-RESULT-FIX-X-NORMALIZE-CONST))
 (4 4
    (:REWRITE
         C::STORE-RESULT-KIND$INLINE-OF-STORE-RESULT-FIX-X-NORMALIZE-CONST))
 (3
  3
  (:REWRITE
      C::VALUE-RESULT-ERR->GET$INLINE-OF-VALUE-RESULT-FIX-X-NORMALIZE-CONST))
 (3 3
    (:REWRITE C::EXEC-BLOCK-ITEM-OF-NFIX-LIMIT-NORMALIZE-CONST))
 (3 3
    (:REWRITE C::EXEC-BLOCK-ITEM-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (3 3
    (:REWRITE C::EXEC-BLOCK-ITEM-OF-BLOCK-ITEM-FIX-ITEM-NORMALIZE-CONST))
 (2 2 (:TYPE-PRESCRIPTION C::ERRORP))
 (2
  2
  (:REWRITE
   C::VALUE-OPTION-RESULT-OK->GET$INLINE-OF-VALUE-OPTION-RESULT-FIX-X-NORMALIZE-CONST))
 (2
  2
  (:REWRITE
       C::STORE-RESULT-OK->GET$INLINE-OF-STORE-RESULT-FIX-X-NORMALIZE-CONST))
 (2 2
    (:REWRITE C::PUSH-FRAME-OF-FRAME-FIX-FRAME-NORMALIZE-CONST))
 (2 2
    (:REWRITE C::PUSH-FRAME-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (2 2
    (:REWRITE C::INIT-STORE-OF-VALUE-LIST-FIX-ACTUALS-NORMALIZE-CONST))
 (2 2
    (:REWRITE C::INIT-STORE-OF-PARAM-DECL-LIST-FIX-FORMALS-NORMALIZE-CONST))
 (2 2
    (:REWRITE C::EXEC-BLOCK-ITEM-LIST-OF-ATOM))
 (2 2
    (:REWRITE
         C::CDR-OF-VALUE-LIST-FIX-X-NORMALIZE-CONST-UNDER-VALUE-LIST-EQUIV))
 (1 1
    (:TYPE-PRESCRIPTION C::VALUE-OPTION-FIX$INLINE))
 (1 1
    (:REWRITE C::VALUE-RESULT-OK-OF-SINT-FIX-GET-NORMALIZE-CONST))
 (1
  1
  (:REWRITE
   C::VALUE-OPTION-RESULT-ERR->GET$INLINE-OF-VALUE-OPTION-RESULT-FIX-X-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-STMT-OF-STMT-FIX-S-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-STMT-OF-NFIX-LIMIT-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-STMT-OF-DENV-FIX-ENV-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-FUN-OF-VALUE-LIST-FIX-ARGS-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-FUN-OF-NFIX-LIMIT-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-FUN-OF-IDENT-FIX-FUN-NORMALIZE-CONST))
 (1 1
    (:REWRITE C::EXEC-FUN-OF-DENV-FIX-ENV-NORMALIZE-CONST)))
