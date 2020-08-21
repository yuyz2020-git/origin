SELECT A.SERVICE_ID AS TRADE_ID,
       A.AIRDROME_ID,
       A.AIRDROME_NAME,
       A.VIP_ID,
       A.SERIAL_NUMBER,
       A.CUST_NAME,
       A.CONSUME_SCORE,
       A.VIP_TYPE_CODE,
       A.CLASS_ID,
       A.FOLLOW_NUM,
       A.RETURN_EXPLAIN,
       A.REMARK,
       A.RSRV_STR2,
       B.USER_ID
  FROM TF_B_VIPAIRDROME_SERVICE A, TF_F_CUST_VIP B
 WHERE A.VIP_ID = B.VIP_ID(+)
   AND A.SERVICE_ID = :TRADE_ID