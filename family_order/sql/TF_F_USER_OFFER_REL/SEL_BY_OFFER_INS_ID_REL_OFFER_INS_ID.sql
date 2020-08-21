SELECT INST_ID,
       PARTITION_ID,
       OFFER_CODE,
       OFFER_TYPE,
       TO_CHAR(OFFER_INS_ID) OFFER_INS_ID,
       TO_CHAR(USER_ID) USER_ID,
       GROUP_ID,
       REL_OFFER_CODE,
       REL_OFFER_TYPE,
       TO_CHAR(REL_OFFER_INS_ID) REL_OFFER_INS_ID,
       TO_CHAR(REL_USER_ID) REL_USER_ID,
       REL_TYPE,
       TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE
  FROM TF_F_USER_OFFER_REL T
 WHERE 1=1 
   AND T.REL_OFFER_INS_ID = :REL_OFFER_INS_ID 
   AND T.OFFER_INS_ID = :OFFER_INS_ID
   AND SYSDATE BETWEEN START_DATE AND END_DATE