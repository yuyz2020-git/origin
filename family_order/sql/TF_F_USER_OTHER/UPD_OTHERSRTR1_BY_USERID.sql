UPDATE tf_f_user_other
   SET rsrv_str1 = '1'
WHERE partition_id=MOD(TO_NUMBER(:USER_ID),10000)
   AND user_id=TO_NUMBER(:USER_ID)
   AND rsrv_value_code = :RSRV_VALUE_CODE
   AND sysdate < end_date+0