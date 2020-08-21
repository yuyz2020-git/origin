SELECT USER_ID,
       PARTITION_ID,
       SERIAL_NUMBER,
       SUB_ID,
       BANK_ID,
       USER_ACCOUNT,
       PAY_TYPE,
       ACCOUNT_CAT,
       SUB_TIME,
       RECH_AMOUNT,
       RECH_THRESHOLD,
       INST_ID,
       START_DATE,
       END_DATE,
       UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5
  FROM TF_F_RELATION_BANK T
 WHERE T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND T.USER_ID = TO_NUMBER(:USER_ID)
   AND T.START_DATE < SYSDATE
   AND T.END_DATE > SYSDATE