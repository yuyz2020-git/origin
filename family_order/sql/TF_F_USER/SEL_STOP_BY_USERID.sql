SELECT partition_id,to_char(user_id) user_id,to_char(cust_id) cust_id,
to_char(usecust_id) usecust_id,brand_code,product_id,eparchy_code,city_code,CITY_CODE_A,
user_passwd,USER_DIFF_CODE,user_type_code,USER_TAG_SET,USER_STATE_CODESET,
NET_TYPE_CODE,serial_number,to_char(score_value) score_value,CONTRACT_ID,credit_class,
to_char(basic_credit_value) basic_credit_value,to_char(credit_value) credit_value,
CREDIT_CONTROL_ID,acct_tag,prepay_tag,MPUTE_MONTH_FEE,
to_char(MPUTE_DATE, 'yyyy-mm-dd hh24:mi:ss') MPUTE_DATE,
to_char(first_call_time, 'yyyy-mm-dd hh24:mi:ss') first_call_time,
to_char(last_stop_time, 'yyyy-mm-dd hh24:mi:ss') last_stop_time,
to_char(CHANGEUSER_DATE, 'yyyy-mm-dd hh24:mi:ss') CHANGEUSER_DATE,IN_NET_MODE,
to_char(in_date, 'yyyy-mm-dd hh24:mi:ss') in_date,IN_STAFF_ID,IN_DEPART_ID,OPEN_MODE,
to_char(open_date, 'yyyy-mm-dd hh24:mi:ss') open_date,OPEN_STAFF_ID,OPEN_DEPART_ID,
DEVELOP_STAFF_ID,to_char(DEVELOP_DATE, 'yyyy-mm-dd hh24:mi:ss') DEVELOP_DATE,DEVELOP_DEPART_ID,DEVELOP_CITY_CODE,DEVELOP_EPARCHY_CODE,
DEVELOP_NO,to_char(ASSURE_CUST_ID) ASSURE_CUST_ID,ASSURE_TYPE_CODE,
to_char(ASSURE_DATE, 'yyyy-mm-dd hh24:mi:ss') ASSURE_DATE,remove_tag,
to_char(PRE_DESTROY_TIME, 'yyyy-mm-dd hh24:mi:ss') PRE_DESTROY_TIME,
to_char(destroy_time, 'yyyy-mm-dd hh24:mi:ss') destroy_time,
REMOVE_EPARCHY_CODE,REMOVE_CITY_CODE,REMOVE_DEPART_ID,REMOVE_REASON_CODE,
to_char(update_time, 'yyyy-mm-dd hh24:mi:ss') update_time,UPDATE_STAFF_ID,
UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,to_char(RSRV_NUM4) RSRV_NUM4,
to_char(RSRV_NUM5) RSRV_NUM5,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,
rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,
to_char(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
to_char(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
to_char(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3 
  FROM TF_F_USER A
 WHERE A.USER_ID = TO_NUMBER(:USER_ID)
   AND A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND A.USER_STATE_CODESET LIKE '%' || (:USER_STATE_CODESET) || '%'
   AND A.REMOVE_TAG = :REMOVE_TAG
   AND SYSDATE > A.LAST_STOP_TIME + TO_NUMBER(:LIMIT_TIME)