INSERT INTO TF_B_TRADE_CUSTOMER_BAK (TRADE_ID,ACCEPT_MONTH,PARTITION_ID,CUST_ID,CUST_NAME,SIMPLE_SPELL,CUST_TYPE,CUST_KIND,CUST_STATE,PSPT_TYPE_CODE,PSPT_ID,OPEN_LIMIT,EPARCHY_CODE,CITY_CODE,CUST_PASSWD,SCORE_VALUE,CREDIT_CLASS,BASIC_CREDIT_VALUE,CREDIT_VALUE,DEVELOP_STAFF_ID,DEVELOP_DEPART_ID,IN_DATE,IN_STAFF_ID,IN_DEPART_ID,REMOVE_TAG,REMOVE_DATE,REMOVE_STAFF_ID,REMOVE_CHANGE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_DATE4,RSRV_DATE5,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3,RSRV_TAG4,RSRV_TAG5,IS_REAL_NAME)
 SELECT TO_NUMBER(:TRADE_ID),TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2)),PARTITION_ID,CUST_ID,CUST_NAME,SIMPLE_SPELL,CUST_TYPE,CUST_KIND,CUST_STATE,PSPT_TYPE_CODE,PSPT_ID,OPEN_LIMIT,EPARCHY_CODE,CITY_CODE,CUST_PASSWD,SCORE_VALUE,CREDIT_CLASS,BASIC_CREDIT_VALUE,CREDIT_VALUE,DEVELOP_STAFF_ID,DEVELOP_DEPART_ID,IN_DATE,IN_STAFF_ID,IN_DEPART_ID,REMOVE_TAG,REMOVE_DATE,REMOVE_STAFF_ID,REMOVE_CHANGE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_DATE4,RSRV_DATE5,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3,RSRV_TAG4,RSRV_TAG5,IS_REAL_NAME
 FROM TF_F_CUSTOMER a
 WHERE cust_id = TO_NUMBER(:CUST_ID)
   AND partition_id = MOD(TO_NUMBER(:CUST_ID),10000)