select partition_id,
       to_char(user_id) user_id,
       rsrv_value_code,
       rsrv_value,
       rsrv_str1,
       rsrv_str2,
       rsrv_str3,
       rsrv_str4,
       rsrv_str5,
       rsrv_str6,
       rsrv_str7,
       rsrv_str8,
       rsrv_str9,
       rsrv_str10,
       rsrv_str11,
       rsrv_str12,
       rsrv_str13,
       rsrv_str14,
       rsrv_str15,
       rsrv_str16,
       rsrv_str17,
       rsrv_str18,
       rsrv_str19,
       rsrv_str20,
       to_char(start_date, 'yyyy-mm-dd hh24:mi:ss') start_date,
       to_char(end_date, 'yyyy-mm-dd hh24:mi:ss') end_date,
       update_depart_id,
       update_staff_id,
       update_time,
       trade_id,
       depart_id,
       staff_id,
       process_tag,
       remark,
       rsrv_tag1,
       rsrv_tag2,
       rsrv_tag3,
       rsrv_tag4,
       rsrv_tag5,
       rsrv_tag6,
       rsrv_tag7,
       rsrv_tag8,
       rsrv_tag9,
       rsrv_tag10,
       rsrv_num1,
       rsrv_num2,
       rsrv_num3,
       rsrv_num4,
       rsrv_num5,
       rsrv_num6,
       rsrv_num7,
       rsrv_num8,
       rsrv_num9,
       rsrv_num10,
       to_char(rsrv_date1, 'yyyy-mm-dd hh24:mi:ss') rsrv_date1,
       to_char(rsrv_date2, 'yyyy-mm-dd hh24:mi:ss') rsrv_date2,
       to_char(rsrv_date3, 'yyyy-mm-dd hh24:mi:ss') rsrv_date3,
       to_char(rsrv_date4, 'yyyy-mm-dd hh24:mi:ss') rsrv_date4,
       to_char(rsrv_date5, 'yyyy-mm-dd hh24:mi:ss') rsrv_date5,
       to_char(rsrv_date6, 'yyyy-mm-dd hh24:mi:ss') rsrv_date6,
       to_char(rsrv_date7, 'yyyy-mm-dd hh24:mi:ss') rsrv_date7,
       to_char(rsrv_date8, 'yyyy-mm-dd hh24:mi:ss') rsrv_date8,
       to_char(rsrv_date9, 'yyyy-mm-dd hh24:mi:ss') rsrv_date9,
       to_char(rsrv_date10, 'yyyy-mm-dd hh24:mi:ss') rsrv_date10,
       INST_ID
  from tf_f_user_other
 where rsrv_value_code = :RSRV_VALUE_CODE
       AND rsrv_value= :RSRV_VALUE 
       AND (rsrv_str1= :RSRV_STR1 or :RSRV_STR1 is null)
       AND (rsrv_str2= :RSRV_STR2 or :RSRV_STR2 is null)
       AND sysdate between start_date and end_date