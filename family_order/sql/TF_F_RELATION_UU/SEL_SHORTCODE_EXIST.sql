SELECT 1
   FROM (SELECT UU.SHORT_CODE
           FROM UCR_CRM1.TF_F_RELATION_UU UU
          WHERE UU.USER_ID_A = :USER_ID_B
            AND UU.RELATION_TYPE_CODE = '20'
            AND UU.END_DATE > SYSDATE) A1,
        (SELECT A.SHORT_CODE
           FROM UCR_CRM1.TF_F_RELATION_UU A, UCR_CRM1.TF_F_RELATION_UU B
          WHERE A.USER_ID_A = B.USER_ID_B
            AND A.PARTITION_ID = MOD(A.USER_ID_B, 10000)
            AND B.PARTITION_ID = MOD(B.USER_ID_B, 10000)
            AND B.USER_ID_A = :USER_ID_A
            AND B.RELATION_TYPE_CODE = '40'
            AND B.END_DATE > SYSDATE
            AND A.END_DATE > SYSDATE) B1
  WHERE A1.SHORT_CODE = B1.SHORT_CODE
   and rownum < 2