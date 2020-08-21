SELECT a.partition_id,to_char(a.user_id) user_id,to_char(a.cust_id) cust_id,to_char(a.usecust_id) usecust_id,a.eparchy_code,a.city_code,a.CITY_CODE_A,a.user_passwd,a.USER_DIFF_CODE,a.user_type_code,a.USER_TAG_SET,a.USER_STATE_CODESET,a.NET_TYPE_CODE,a.serial_number,a.CONTRACT_ID,a.acct_tag,a.prepay_tag,a.MPUTE_MONTH_FEE,to_char(a.MPUTE_DATE, 'yyyy-mm-dd hh24:mi:ss') MPUTE_DATE,to_char(a.first_call_time, 'yyyy-mm-dd hh24:mi:ss') first_call_time,to_char(a.last_stop_time, 'yyyy-mm-dd hh24:mi:ss') last_stop_time,to_char(a.CHANGEUSER_DATE, 'yyyy-mm-dd hh24:mi:ss') CHANGEUSER_DATE,a.IN_NET_MODE,to_char(a.in_date, 'yyyy-mm-dd hh24:mi:ss') in_date,a.IN_STAFF_ID,a.IN_DEPART_ID,a.OPEN_MODE,to_char(a.open_date, 'yyyy-mm-dd hh24:mi:ss') open_date,a.OPEN_STAFF_ID,a.OPEN_DEPART_ID,a.DEVELOP_STAFF_ID,to_char(a.DEVELOP_DATE, 'yyyy-mm-dd hh24:mi:ss') DEVELOP_DATE,a.DEVELOP_DEPART_ID,a.DEVELOP_CITY_CODE,a.DEVELOP_EPARCHY_CODE,a.DEVELOP_NO,to_char(a.ASSURE_CUST_ID) ASSURE_CUST_ID,a.ASSURE_TYPE_CODE,to_char(a.ASSURE_DATE, 'yyyy-mm-dd hh24:mi:ss') ASSURE_DATE,a.remove_tag,to_char(a.PRE_DESTROY_TIME, 'yyyy-mm-dd hh24:mi:ss') PRE_DESTROY_TIME,to_char(a.destroy_time, 'yyyy-mm-dd hh24:mi:ss') destroy_time,a.REMOVE_EPARCHY_CODE,a.REMOVE_CITY_CODE,a.REMOVE_DEPART_ID,a.REMOVE_REASON_CODE,to_char(a.update_time, 'yyyy-mm-dd hh24:mi:ss') update_time,a.UPDATE_STAFF_ID,a.UPDATE_DEPART_ID,a.REMARK,a.RSRV_NUM1,a.RSRV_NUM2,a.RSRV_NUM3,to_char(a.RSRV_NUM4) RSRV_NUM4,to_char(a.RSRV_NUM5) RSRV_NUM5,a.rsrv_str1,a.rsrv_str2,a.rsrv_str3,a.rsrv_str4,a.rsrv_str5,a.rsrv_str6,a.rsrv_str7,a.rsrv_str8,a.rsrv_str9,a.rsrv_str10,to_char(a.RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,to_char(a.RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,to_char(a.RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,a.RSRV_TAG1,a.RSRV_TAG2,a.RSRV_TAG3,b.brand_code,b.product_id  FROM tf_f_user a,tf_f_user_product b WHERE a.user_id = b.user_id and a.user_id = TO_NUMBER(:USER_ID)   AND a.partition_id = MOD(TO_NUMBER(:USER_ID), 10000)