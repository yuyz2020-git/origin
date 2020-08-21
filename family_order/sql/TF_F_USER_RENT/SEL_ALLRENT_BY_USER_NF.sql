SELECT to_char(user_id) user_id,rent_type_code,serial_number,sim_card_no,imsi,rent_sim_card,rent_imsi,rent_device_no,rent_imei,rent_serial_number,nationality_areacode,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,rent_tag,open_staff_id,open_depart_id,rsrv_num1,rsrv_num2,rsrv_num3,to_char(rsrv_num4) rsrv_num4,to_char(rsrv_num5) rsrv_num5,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3 
  FROM tf_f_user_rent
 WHERE user_id=TO_NUMBER(:USER_ID)
   AND end_date >= SYSDATE