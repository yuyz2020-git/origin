SELECT to_char(TRADE_ID) TRADE_ID,
       INST_ID,
       ACCEPT_MONTH,
       to_char(USER_ID) USER_ID,
       PARTITION_ID,
       TEL_URL,
       SIP_URL,
       IMPI,
       IMS_USER_ID,
       IMS_PASSWORD,
       to_char(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       to_char(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5
  FROM TF_B_TRADE_IMPU_BAK
 WHERE trade_id = :TRADE_ID
   AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))