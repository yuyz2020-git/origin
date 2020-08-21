SELECT B.PROD_INST_ID,
       TO_CHAR(A.START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(A.END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       C.PARA_CODE1 PRODUCT_ID
  FROM TF_B_TRADE_PRODUCT A, TF_F_INSTANCE_PF B, TD_S_COMMPARA C
 WHERE A.INST_ID = B.INST_ID
   AND B.INST_TYPE = 'S'
   AND C.SUBSYS_CODE = 'CSM'
   AND C.PARAM_ATTR = '9015'
   AND A.PRODUCT_ID = C.PARAM_CODE
   AND A.TRADE_ID = TO_NUMBER(:TRADE_ID)