SELECT to_char(trade_id) trade_id,
       accept_month,
       to_char(user_id_a) user_id_a,
       serial_number_a,
       to_char(user_id_b) user_id_b,
       serial_number_b,
       relation_type_code,
       role_type_code,
       role_code_a,
       role_code_b,
       orderno,
       short_code,
       to_char(inst_id) inst_id,
       to_char(start_date, 'yyyy-mm-dd hh24:mi:ss') start_date,
       to_char(end_date, 'yyyy-mm-dd hh24:mi:ss') end_date,
       modify_tag,
       to_char(update_time, 'yyyy-mm-dd hh24:mi:ss') update_time,
       update_staff_id,
       update_depart_id,
       remark,
       rsrv_num1,
       rsrv_num2,
       rsrv_num3,
       to_char(rsrv_num4) rsrv_num4,
       to_char(rsrv_num5) rsrv_num5,
       rsrv_str1,
       rsrv_str2,
       rsrv_str3,
       rsrv_str4,
       rsrv_str5,
       to_char(rsrv_date1, 'yyyy-mm-dd hh24:mi:ss') rsrv_date1,
       to_char(rsrv_date2, 'yyyy-mm-dd hh24:mi:ss') rsrv_date2,
       to_char(rsrv_date3, 'yyyy-mm-dd hh24:mi:ss') rsrv_date3,
       rsrv_tag1,
       rsrv_tag2,
       rsrv_tag3
  FROM tf_b_trade_relation
 WHERE trade_id = TO_NUMBER(:TRADE_ID)
   AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   AND role_code_b = '1'
   AND relation_type_code = '47'