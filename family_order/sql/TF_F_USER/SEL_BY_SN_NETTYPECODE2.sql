SELECT PARTITION_ID, to_char(USER_ID) USER_ID, to_char(CUST_ID) CUST_ID, to_char(USECUST_ID) USECUST_ID, EPARCHY_CODE, CITY_CODE, CITY_CODE_A, USER_PASSWD, USER_DIFF_CODE, USER_TYPE_CODE, USER_TAG_SET, USER_STATE_CODESET, NET_TYPE_CODE, SERIAL_NUMBER, CONTRACT_ID, ACCT_TAG, PREPAY_TAG, MPUTE_MONTH_FEE, to_char(MPUTE_DATE,'yyyy-mm-dd hh24:mi:ss') MPUTE_DATE, to_char(FIRST_CALL_TIME,'yyyy-mm-dd hh24:mi:ss') FIRST_CALL_TIME, to_char(LAST_STOP_TIME,'yyyy-mm-dd hh24:mi:ss') LAST_STOP_TIME, to_char(CHANGEUSER_DATE,'yyyy-mm-dd hh24:mi:ss') CHANGEUSER_DATE, IN_NET_MODE, to_char(IN_DATE,'yyyy-mm-dd hh24:mi:ss') IN_DATE, IN_STAFF_ID, IN_DEPART_ID, OPEN_MODE, to_char(OPEN_DATE,'yyyy-mm-dd hh24:mi:ss') OPEN_DATE, OPEN_STAFF_ID, OPEN_DEPART_ID, DEVELOP_STAFF_ID, to_char(DEVELOP_DATE,'yyyy-mm-dd hh24:mi:ss') DEVELOP_DATE, DEVELOP_DEPART_ID, DEVELOP_CITY_CODE, DEVELOP_EPARCHY_CODE, DEVELOP_NO, to_char(ASSURE_CUST_ID) ASSURE_CUST_ID, ASSURE_TYPE_CODE, to_char(ASSURE_DATE,'yyyy-mm-dd hh24:mi:ss') ASSURE_DATE, REMOVE_TAG, to_char(PRE_DESTROY_TIME,'yyyy-mm-dd hh24:mi:ss') PRE_DESTROY_TIME, to_char(DESTROY_TIME,'yyyy-mm-dd hh24:mi:ss') DESTROY_TIME, REMOVE_EPARCHY_CODE, REMOVE_CITY_CODE, REMOVE_DEPART_ID, REMOVE_REASON_CODE, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, to_char(RSRV_NUM4) RSRV_NUM4, to_char(RSRV_NUM5) RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2, to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3
  FROM tf_f_user  
 WHERE serial_number=:SERIAL_NUMBER
   AND remove_tag = :REMOVE_TAG 
   AND net_type_code<>'06'