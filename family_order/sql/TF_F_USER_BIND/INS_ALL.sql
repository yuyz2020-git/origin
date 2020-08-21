INSERT INTO tf_f_user_bind
  (user_id,
   serial_number,
   bind_serial_number,
   rsrv_value_code,
   rsrv_value,
   rsrv_str1,
   rsrv_str2,
   rsrv_str3,
   rsrv_str4,
   rsrv_str5,
   rsrv_str6,
   rsrv_str7,
   start_date,
   end_date)
VALUES
  (to_number(:USER_ID),
   :SERIAL_NUMBER,
   :BIND_SERIAL_NUMBER,
   :RSRV_VALUE_CODE,
   :RSRV_VALUE,
   :RSRV_STR1,
   :RSRV_STR2,
   :RSRV_STR3,
   :RSRV_STR4,
   :RSRV_STR5,
   :RSRV_STR6,
   :RSRV_STR7,
   to_date(:START_DATE, 'yyyy-mm-dd hh24:mi:ss'),
   to_date(:END_DATE, 'yyyy-mm-dd hh24:mi:ss'))