SELECT USER_ID,
       RES_TYPE_CODE,
       RES_CODE,
       IMSI,
       KI,
       INST_ID,
       CAMPN_ID,
       TO_CHAR(START_DATE,'yyyy-MM-dd HH:MM:SS') START_DATE,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5
  FROM TF_F_USER_RES  
 WHERE USER_ID = :USER_ID
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND IMSI = :IMSI
   AND RES_TYPE_CODE = :RES_TYPE_CODE
 