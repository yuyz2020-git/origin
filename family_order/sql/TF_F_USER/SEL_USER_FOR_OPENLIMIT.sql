SELECT PARTITION_ID,
       TO_CHAR(USER_ID) USER_ID,
       TO_CHAR(CUST_ID) CUST_ID,
       TO_CHAR(USECUST_ID) USECUST_ID,
       EPARCHY_CODE,
       CITY_CODE,
       USER_PASSWD,
       USER_TYPE_CODE,
       SERIAL_NUMBER,
       ACCT_TAG,
       PREPAY_TAG,
       TO_CHAR(IN_DATE, 'yyyy-mm-dd hh24:mi:ss') IN_DATE,
       TO_CHAR(OPEN_DATE, 'yyyy-mm-dd hh24:mi:ss') OPEN_DATE,
       REMOVE_TAG,
       TO_CHAR(DESTROY_TIME, 'yyyy-mm-dd hh24:mi:ss') DESTROY_TIME,
       TO_CHAR(PRE_DESTROY_TIME, 'yyyy-mm-dd hh24:mi:ss') PRE_DESTROY_TIME,
       TO_CHAR(FIRST_CALL_TIME, 'yyyy-mm-dd hh24:mi:ss') FIRST_CALL_TIME,
       TO_CHAR(LAST_STOP_TIME, 'yyyy-mm-dd hh24:mi:ss') LAST_STOP_TIME,
       OPEN_MODE,
       USER_STATE_CODESET,
       MPUTE_MONTH_FEE,
       TO_CHAR(MPUTE_DATE, 'yyyy-mm-dd hh24:mi:ss') MPUTE_DATE,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_STR6,
       RSRV_STR7,
       RSRV_STR8,
       RSRV_STR9,
       RSRV_STR10,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME
  FROM TF_F_USER
 WHERE SERIAL_NUMBER = :SERIAL_NUMBER
   AND REMOVE_TAG IN ('0', '1', '3')
