SELECT u.PARTITION_ID, to_char(u.USER_ID) USER_ID, to_char(u.CUST_ID) CUST_ID, to_char(u.USECUST_ID) USECUST_ID, u.EPARCHY_CODE, u.CITY_CODE, u.CITY_CODE_A,
u.USER_PASSWD, u.USER_DIFF_CODE, u.USER_TYPE_CODE, u.USER_TAG_SET, u.USER_STATE_CODESET, u.NET_TYPE_CODE, u.SERIAL_NUMBER, u.CONTRACT_ID,
u.ACCT_TAG, u.PREPAY_TAG, u.MPUTE_MONTH_FEE, to_char(u.MPUTE_DATE,'yyyy-mm-dd hh24:mi:ss') MPUTE_DATE,
 to_char(u.FIRST_CALL_TIME,'yyyy-mm-dd hh24:mi:ss') FIRST_CALL_TIME, to_char(u.LAST_STOP_TIME,'yyyy-mm-dd hh24:mi:ss') LAST_STOP_TIME,
  to_char(u.CHANGEUSER_DATE,'yyyy-mm-dd hh24:mi:ss') CHANGEUSER_DATE, u.IN_NET_MODE, to_char(u.IN_DATE,'yyyy-mm-dd hh24:mi:ss') IN_DATE,
   u.IN_STAFF_ID, u.IN_DEPART_ID, u.OPEN_MODE, to_char(u.OPEN_DATE,'yyyy-mm-dd hh24:mi:ss') OPEN_DATE, u.OPEN_STAFF_ID, u.OPEN_DEPART_ID,
    u.DEVELOP_STAFF_ID, to_char(u.DEVELOP_DATE,'yyyy-mm-dd hh24:mi:ss') DEVELOP_DATE, u.DEVELOP_DEPART_ID, u.DEVELOP_CITY_CODE, u.DEVELOP_EPARCHY_CODE,
     u.DEVELOP_NO, to_char(u.ASSURE_CUST_ID) ASSURE_CUST_ID, u.ASSURE_TYPE_CODE, to_char(u.ASSURE_DATE,'yyyy-mm-dd hh24:mi:ss') ASSURE_DATE,
     u.REMOVE_TAG, to_char(u.PRE_DESTROY_TIME,'yyyy-mm-dd hh24:mi:ss') PRE_DESTROY_TIME, to_char(u.DESTROY_TIME,'yyyy-mm-dd hh24:mi:ss') DESTROY_TIME,
     u.REMOVE_EPARCHY_CODE, u.REMOVE_CITY_CODE, u.REMOVE_DEPART_ID, u.REMOVE_REASON_CODE, to_char(u.UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
     u.UPDATE_STAFF_ID, u.UPDATE_DEPART_ID, u.REMARK, u.RSRV_NUM1, u.RSRV_NUM2, u.RSRV_NUM3, to_char(u.RSRV_NUM4) RSRV_NUM4, to_char(u.RSRV_NUM5) RSRV_NUM5,
     u.RSRV_STR1, u.RSRV_STR2, u.RSRV_STR3, u.RSRV_STR4, u.RSRV_STR5, u.RSRV_STR6, u.RSRV_STR7, u.RSRV_STR8, u.RSRV_STR9, u.RSRV_STR10,
     to_char(u.RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, to_char(u.RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
     to_char(u.RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3, u.RSRV_TAG1, u.RSRV_TAG2, u.RSRV_TAG3,up.user_id_a,up.product_id,up.product_mode,up.brand_code
 FROM tf_f_user u,tf_f_user_product up
WHERE 1=1
  AND u.CUST_ID = :CUST_ID
  AND u.REMOVE_TAG = '0'
  AND u.USER_ID = up.USER_ID
  AND u.PARTITION_ID = up.PARTITION_ID
  AND u.PARTITION_ID = mod(up.USER_ID,10000)