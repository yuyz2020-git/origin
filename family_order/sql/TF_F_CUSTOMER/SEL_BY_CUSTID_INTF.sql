SELECT PARTITION_ID, to_char(CUST_ID) CUST_ID, CUST_NAME, SIMPLE_SPELL, CUST_TYPE, CUST_KIND, CUST_STATE, PSPT_TYPE_CODE, PSPT_ID, OPEN_LIMIT, EPARCHY_CODE, CITY_CODE, CUST_PASSWD, to_char(SCORE_VALUE) SCORE_VALUE, CREDIT_CLASS, to_char(BASIC_CREDIT_VALUE) BASIC_CREDIT_VALUE, to_char(CREDIT_VALUE) CREDIT_VALUE, DEVELOP_STAFF_ID, DEVELOP_DEPART_ID, to_char(IN_DATE,'yyyy-mm-dd hh24:mi:ss') IN_DATE, IN_STAFF_ID, IN_DEPART_ID, REMOVE_TAG, to_char(REMOVE_DATE,'yyyy-mm-dd hh24:mi:ss') REMOVE_DATE, REMOVE_STAFF_ID, REMOVE_CHANGE, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, to_char(RSRV_NUM4) RSRV_NUM4, to_char(RSRV_NUM5) RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2, to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3, to_char(RSRV_DATE4,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE4, to_char(RSRV_DATE5,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE5, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3, RSRV_TAG4, RSRV_TAG5
  FROM TF_F_CUSTOMER
 WHERE CUST_ID=TO_NUMBER(:CUST_ID)
   AND PARTITION_ID=mod(TO_NUMBER(:CUST_ID),10000)