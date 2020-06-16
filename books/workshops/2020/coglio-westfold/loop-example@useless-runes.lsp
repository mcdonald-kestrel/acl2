(H)
(APPLYN (18 18
            (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(APPLYTEN)
(ALPHA-IMAGE)
(BETA-IMAGE)
(BETA-OF-ALPHA)
(ALPHA-OF-BETA)
(DOMA-GUARD)
(DOMB-GUARD)
(ALPHA-GUARD)
(BETA-GUARD)
(APT::DEFISO-IDENTITY-ALPHA-IMAGE)
(APT::DEFISO-IDENTITY-BETA-IMAGE)
(APT::DEFISO-IDENTITY-BETA-OF-ALPHA)
(APT::DEFISO-IDENTITY-ALPHA-OF-BETA)
(APT::DEFISO-IDENTITY-DOMA-GUARD)
(APT::DEFISO-IDENTITY-DOMB-GUARD)
(APT::DEFISO-IDENTITY-ALPHA-GUARD)
(APT::DEFISO-IDENTITY-BETA-GUARD)
(APT::DEFISO-IDENTITY-ALPHA-INJECTIVE)
(APT::DEFISO-IDENTITY-BETA-INJECTIVE)
(ALPHA-IMAGE (32 32
                 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
             (3 2 (:REWRITE DEFAULT-<-2))
             (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
             (2 2 (:REWRITE DEFAULT-<-1))
             (2 2 (:REWRITE DEFAULT-+-2))
             (2 2 (:REWRITE DEFAULT-+-1)))
(BETA-IMAGE (32 32
                (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
            (3 2 (:REWRITE DEFAULT-<-2))
            (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
            (2 2 (:REWRITE DEFAULT-<-1))
            (2 2 (:REWRITE DEFAULT-+-2))
            (2 2 (:REWRITE DEFAULT-+-1)))
(BETA-OF-ALPHA (1 1 (:REWRITE NATP-RW))
               (1 1 (:REWRITE DEFAULT-<-2))
               (1 1 (:REWRITE DEFAULT-<-1)))
(ALPHA-OF-BETA (1 1 (:REWRITE NATP-RW))
               (1 1 (:REWRITE DEFAULT-<-2))
               (1 1 (:REWRITE DEFAULT-<-1)))
(DOMA-GUARD)
(DOMB-GUARD)
(ALPHA-GUARD)
(BETA-GUARD)
(DEFISO-ISODATA-APPLYN-1-ALPHA-IMAGE
     (2 2
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|)))
(DEFISO-ISODATA-APPLYN-1-BETA-IMAGE
     (2 2
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|)))
(DEFISO-ISODATA-APPLYN-1-BETA-OF-ALPHA)
(DEFISO-ISODATA-APPLYN-1-ALPHA-OF-BETA)
(DEFISO-ISODATA-APPLYN-1-DOMA-GUARD)
(DEFISO-ISODATA-APPLYN-1-DOMB-GUARD)
(DEFISO-ISODATA-APPLYN-1-ALPHA-GUARD)
(DEFISO-ISODATA-APPLYN-1-BETA-GUARD)
(DEFISO-ISODATA-APPLYN-1-ALPHA-INJECTIVE)
(DEFISO-ISODATA-APPLYN-1-BETA-INJECTIVE)
(OLDP-OF-REC-CALL-ARGS (47 47
                           (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
                       (3 2 (:REWRITE DEFAULT-<-2))
                       (2 2 (:REWRITE DEFAULT-<-1))
                       (1 1 (:REWRITE ZP-OPEN))
                       (1 1 (:REWRITE DEFAULT-+-2))
                       (1 1 (:REWRITE DEFAULT-+-1)))
(OLD-GUARD)
(APPLYN$NOT-NORMALIZED)
(APPLYN0 (3 3
            (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(APPLYN0$NOT-NORMALIZED)
(APPLYN0-TO-APPLYN)
(APPLYN-TO-APPLYN0)
(APPLYN0 (22 22
             (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(APPLYN0$NOT-NORMALIZED)
(APPLYN1 (163 126 (:REWRITE DEFAULT-<-2))
         (130 126 (:REWRITE DEFAULT-<-1))
         (121 77 (:REWRITE DEFAULT-UNARY-MINUS))
         (100 100 (:REWRITE DEFAULT-+-2))
         (100 100 (:REWRITE DEFAULT-+-1))
         (59 59
             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(APPLYN0-BEFORE-VS-AFTER-0 (2 2 (:REWRITE NATP-RW)))
(APPLYN1-COPY)
(APPLYN1-COPY-DEF)
(APPLYN1-IS-APPLYN1-COPY)
(APPLYN0-BECOMES-APPLYN1-LEMMA)
(APPLYN0-BECOMES-APPLYN1)
(APPLYTEN$NOT-NORMALIZED)
(APPLYTEN1)
(APPLYTEN-BEFORE-VS-AFTER-0)
(APPLYTEN1-COPY)
(APPLYTEN1-COPY-DEF)
(APPLYTEN1-IS-APPLYTEN1-COPY)
(APPLYTEN-BECOMES-APPLYTEN1-LEMMA)
(APPLYTEN-BECOMES-APPLYTEN1)