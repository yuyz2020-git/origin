UPDATE tf_f_user_other
   SET start_date=sysdate,rsrv_value=:RSRV_VALUE
WHERE partition_id=MOD(TO_NUMBER(:USER_ID),10000)
   AND user_id=TO_NUMBER(:USER_ID)
   AND rsrv_value_code=:RSRV_VALUE_CODE
   AND SYSDATE BETWEEN start_date AND end_date+0