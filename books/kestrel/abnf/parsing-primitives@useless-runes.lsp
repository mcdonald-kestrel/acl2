(ABNF::PARSE-ANY)
(ABNF::MAYBE-MSGP-OF-PARSE-ANY.ERROR?
  (41 1
      (:REWRITE NAT-LIST-FIX-WHEN-NAT-LISTP))
  (35 1 (:DEFINITION NAT-LISTP))
  (26 1 (:REWRITE MAYBE-MSGP-WHEN-MSGP))
  (21 1 (:DEFINITION MSGP))
  (20 1 (:DEFINITION NATP))
  (17 2
      (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
  (14 1 (:DEFINITION CHARACTER-ALISTP))
  (13 1 (:DEFINITION INTEGER-LISTP))
  (12 7 (:REWRITE DEFAULT-CAR))
  (11 11
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                . 2))
  (11 11
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                . 1))
  (10 5 (:REWRITE DEFAULT-CDR))
  (7 7 (:TYPE-PRESCRIPTION NAT-LISTP))
  (7 7 (:TYPE-PRESCRIPTION INTEGER-LISTP))
  (6 2 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
  (4 4 (:TYPE-PRESCRIPTION CHARACTER-ALISTP))
  (4 2
     (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
  (3 3 (:TYPE-PRESCRIPTION MSGP))
  (2 2
     (:REWRITE MSGP-WHEN-MEMBER-EQUAL-OF-MSG-LISTP))
  (2 2
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
  (2 1 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
  (2 1
     (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
  (2 1
     (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
  (1 1 (:REWRITE DEFAULT-<-2))
  (1 1 (:REWRITE DEFAULT-<-1)))
(ABNF::RETURN-TYPE-OF-PARSE-ANY.NAT?
     (79 3
         (:REWRITE NAT-LIST-FIX-WHEN-NAT-LISTP))
     (68 2 (:DEFINITION NAT-LISTP))
     (40 2 (:DEFINITION NATP))
     (34 4
         (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
     (26 2 (:DEFINITION INTEGER-LISTP))
     (16 6 (:REWRITE DEFAULT-CDR))
     (16 6 (:REWRITE DEFAULT-CAR))
     (15 15
         (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                   . 2))
     (15 15
         (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                   . 1))
     (14 14 (:TYPE-PRESCRIPTION INTEGER-LISTP))
     (10 4 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
     (8 4
        (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
     (4 2
        (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
     (4 2
        (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
     (2 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE DEFAULT-<-1)))
(ABNF::NAT-LISTP-OF-PARSE-ANY.REST-INPUT
     (126 3 (:DEFINITION NAT-LISTP))
     (85 5
         (:REWRITE NAT-LIST-FIX-WHEN-NAT-LISTP))
     (60 3 (:DEFINITION NATP))
     (51 6
         (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
     (39 3 (:DEFINITION INTEGER-LISTP))
     (25 10 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
     (24 9 (:REWRITE DEFAULT-CDR))
     (20 20
         (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                   . 2))
     (20 20
         (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                   . 1))
     (18 8 (:REWRITE DEFAULT-CAR))
     (12 6
         (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
     (9 3 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
     (6 3
        (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1)))
(ABNF::NATP-OF-PARSE-ANY
     (79 3
         (:REWRITE NAT-LIST-FIX-WHEN-NAT-LISTP))
     (68 2 (:DEFINITION NAT-LISTP))
     (40 2 (:DEFINITION NATP))
     (34 4
         (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
     (26 2 (:DEFINITION INTEGER-LISTP))
     (16 6 (:REWRITE DEFAULT-CDR))
     (16 6 (:REWRITE DEFAULT-CAR))
     (14 14 (:TYPE-PRESCRIPTION INTEGER-LISTP))
     (14 14
         (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                   . 2))
     (14 14
         (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                   . 1))
     (10 4 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
     (8 4
        (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
     (4 2
        (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
     (4 2
        (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
     (2 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE DEFAULT-<-1)))
(ABNF::LEN-OF-PARSE-ANY-LINEAR-<=
   (1543 15
         (:REWRITE NAT-LIST-FIX-WHEN-NAT-LISTP))
   (1476 23 (:DEFINITION NAT-LISTP))
   (1039 97
         (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
   (912 59 (:DEFINITION INTEGER-LISTP))
   (868 23 (:DEFINITION NATP))
   (560 28
        (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
   (392 85
        (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
   (248 124
        (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
   (239 163 (:REWRITE DEFAULT-CDR))
   (163 163
        (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                  . 2))
   (163 163
        (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                  . 1))
   (121 111 (:REWRITE DEFAULT-CAR))
   (115 49 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
   (55 42 (:REWRITE DEFAULT-<-2))
   (55 23
       (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
   (52 42 (:REWRITE DEFAULT-<-1))
   (48 24 (:REWRITE DEFAULT-+-2))
   (24 24 (:REWRITE DEFAULT-+-1))
   (3 3
      (:REWRITE CDR-OF-NAT-LIST-FIX-X-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV)))
(ABNF::LEN-OF-PARSE-ANY-LINEAR-<
   (1543 15
         (:REWRITE NAT-LIST-FIX-WHEN-NAT-LISTP))
   (1476 23 (:DEFINITION NAT-LISTP))
   (1039 97
         (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
   (912 59 (:DEFINITION INTEGER-LISTP))
   (868 23 (:DEFINITION NATP))
   (560 28
        (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
   (392 85
        (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
   (248 124
        (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
   (239 163 (:REWRITE DEFAULT-CDR))
   (162 162
        (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                  . 2))
   (162 162
        (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                  . 1))
   (121 111 (:REWRITE DEFAULT-CAR))
   (115 49 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
   (55 42 (:REWRITE DEFAULT-<-1))
   (55 23
       (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
   (49 42 (:REWRITE DEFAULT-<-2))
   (45 24 (:REWRITE DEFAULT-+-2))
   (24 24 (:REWRITE DEFAULT-+-1))
   (3 3
      (:REWRITE CDR-OF-NAT-LIST-FIX-X-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV)))
(ABNF::PARSE-ANY-OF-NAT-LIST-FIX-INPUT)
(ABNF::PARSE-ANY-OF-NAT-LIST-FIX-INPUT-NORMALIZE-CONST)
(ABNF::PARSE-ANY-NAT-LIST-EQUIV-CONGRUENCE-ON-INPUT)
(ABNF::PARSE-EXACT
     (17 2
         (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
     (16 8 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
     (13 1 (:DEFINITION INTEGER-LISTP))
     (7 7 (:TYPE-PRESCRIPTION INTEGER-LISTP))
     (7 7
        (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                  . 2))
     (7 7
        (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                  . 1))
     (4 2
        (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
     (3 3 (:REWRITE DEFAULT-CDR))
     (3 3 (:REWRITE DEFAULT-CAR))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (2 2
        (:REWRITE ABNF::PARSE-ANY-OF-NAT-LIST-FIX-INPUT-NORMALIZE-CONST))
     (2 1
        (:REWRITE ABNF::RETURN-TYPE-OF-PARSE-ANY.NAT?))
     (2 1
        (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP)))
(ABNF::MAYBE-MSGP-OF-PARSE-EXACT.ERROR?
 (36 35 (:REWRITE DEFAULT-CAR))
 (26 26
     (:REWRITE ABNF::PARSE-ANY-OF-NAT-LIST-FIX-INPUT-NORMALIZE-CONST))
 (20 20
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
 (17 17 (:REWRITE DEFAULT-CDR))
 (17 13
     (:REWRITE ABNF::RETURN-TYPE-OF-PARSE-ANY.NAT?))
 (14 14
     (:REWRITE MSGP-WHEN-MEMBER-EQUAL-OF-MSG-LISTP))
 (12 12
     (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
               . 2))
 (12 12
     (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
               . 1))
 (7 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (2 2
    (:REWRITE ABNF::TREE-LEAFTERM-OF-NAT-LIST-FIX-GET-NORMALIZE-CONST))
 (2 2
    (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2
    (:REWRITE CONS-OF-NFIX-X-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV))
 (2 2
    (:REWRITE CONS-OF-NAT-LIST-FIX-Y-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV)))
(ABNF::RETURN-TYPE-OF-PARSE-EXACT.TREE?
   (52 52
       (:REWRITE ABNF::PARSE-ANY-OF-NAT-LIST-FIX-INPUT-NORMALIZE-CONST))
   (13 9 (:REWRITE DEFAULT-<-1))
   (9 9 (:REWRITE DEFAULT-<-2))
   (7 2
      (:REWRITE ABNF::TREEP-WHEN-MAYBE-TREEP))
   (4 4
      (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
   (3 3
      (:REWRITE ABNF::TREE-LEAFTERM-OF-NAT-LIST-FIX-GET-NORMALIZE-CONST))
   (3 3
      (:REWRITE CONS-OF-NFIX-X-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV))
   (3 3
      (:REWRITE CONS-OF-NAT-LIST-FIX-Y-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV))
   (2 2
      (:REWRITE ABNF::TREEP-WHEN-PARSE-TREEP))
   (2 2
      (:REWRITE ABNF::TREEP-WHEN-IN-TREE-SETP-BINDS-FREE-X)))
(ABNF::NAT-LISTP-OF-PARSE-EXACT.REST-INPUT
   (220 4 (:DEFINITION NAT-LISTP))
   (88 4
       (:REWRITE NAT-LISTP-OF-CDR-WHEN-NAT-LISTP))
   (80 4 (:DEFINITION NATP))
   (68 8
       (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
   (57 57
       (:REWRITE ABNF::PARSE-ANY-OF-NAT-LIST-FIX-INPUT-NORMALIZE-CONST))
   (52 4 (:DEFINITION INTEGER-LISTP))
   (43 19 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
   (28 28 (:TYPE-PRESCRIPTION INTEGER-LISTP))
   (28 23
       (:REWRITE ABNF::RETURN-TYPE-OF-PARSE-ANY.NAT?))
   (20 20
       (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                 . 2))
   (20 20
       (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                 . 1))
   (20 4 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
   (16 8
       (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
   (12 10 (:REWRITE DEFAULT-<-1))
   (10 10 (:REWRITE DEFAULT-<-2))
   (8 8 (:REWRITE DEFAULT-CDR))
   (8 8 (:REWRITE DEFAULT-CAR))
   (8 4
      (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
   (4 4
      (:REWRITE ABNF::TREE-LEAFTERM-OF-NAT-LIST-FIX-GET-NORMALIZE-CONST))
   (4 4
      (:REWRITE CONS-OF-NFIX-X-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV))
   (4 4
      (:REWRITE CONS-OF-NAT-LIST-FIX-Y-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV))
   (2 2
      (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(ABNF::LEN-OF-PARSE-EXACT-LINEAR-<=
  (84 42 (:REWRITE DEFAULT-+-2))
  (64 64
      (:REWRITE ABNF::PARSE-ANY-OF-NAT-LIST-FIX-INPUT-NORMALIZE-CONST))
  (42 42 (:REWRITE DEFAULT-+-1))
  (39 39 (:REWRITE DEFAULT-CDR))
  (36 36
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                . 2))
  (36 36
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                . 1))
  (31 18 (:REWRITE DEFAULT-<-1))
  (27 18 (:REWRITE DEFAULT-<-2))
  (4 4
     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
  (3 3
     (:REWRITE ABNF::TREE-LEAFTERM-OF-NAT-LIST-FIX-GET-NORMALIZE-CONST))
  (3 3
     (:REWRITE CONS-OF-NFIX-X-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV))
  (3 3
     (:REWRITE CONS-OF-NAT-LIST-FIX-Y-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV)))
(ABNF::LEN-OF-PARSE-EXACT-LINEAR-<
  (84 12 (:DEFINITION LEN))
  (43 43
      (:REWRITE ABNF::PARSE-ANY-OF-NAT-LIST-FIX-INPUT-NORMALIZE-CONST))
  (24 12 (:REWRITE DEFAULT-+-2))
  (22 18
      (:REWRITE ABNF::RETURN-TYPE-OF-PARSE-ANY.NAT?))
  (16 10 (:REWRITE DEFAULT-<-1))
  (13 10 (:REWRITE DEFAULT-<-2))
  (12 12 (:REWRITE DEFAULT-CDR))
  (12 12 (:REWRITE DEFAULT-+-1))
  (12 12
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                . 2))
  (12 12
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                . 1))
  (3 3
     (:REWRITE ABNF::TREE-LEAFTERM-OF-NAT-LIST-FIX-GET-NORMALIZE-CONST))
  (3 3
     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
  (3 3
     (:REWRITE CONS-OF-NFIX-X-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV))
  (3 3
     (:REWRITE CONS-OF-NAT-LIST-FIX-Y-NORMALIZE-CONST-UNDER-NAT-LIST-EQUIV)))
(ABNF::PARSE-EXACT-OF-NFIX-NAT)
(ABNF::PARSE-EXACT-OF-NFIX-NAT-NORMALIZE-CONST)
(ABNF::PARSE-EXACT-NAT-EQUIV-CONGRUENCE-ON-NAT)
(ABNF::PARSE-EXACT-OF-NAT-LIST-FIX-INPUT)
(ABNF::PARSE-EXACT-OF-NAT-LIST-FIX-INPUT-NORMALIZE-CONST)
(ABNF::PARSE-EXACT-NAT-LIST-EQUIV-CONGRUENCE-ON-INPUT)