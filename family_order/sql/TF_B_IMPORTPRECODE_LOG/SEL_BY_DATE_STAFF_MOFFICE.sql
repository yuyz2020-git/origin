SELECT to_char(log_id) log_id,serial_number,sim_card_no,oper_type,to_char(oper_date,'yyyy-mm-dd hh24:mi:ss') oper_date,oper_staff_id,net_code,imsi,empty_card_id,factory_code,imei,sim_type_code,capacity_type_code,pin,puk,pin2,puk2,ki,sim_state_code,ki_state,precode_tag,imsi_code,preopen_tag,eparchy_code,city_code,stock_id,stock_id_o,moffice_id,remark,rsrv_tag1,rsrv_tag2,rsrv_tag3,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7 
  FROM tf_b_importprecode_log
 WHERE oper_date=TO_DATE(:OPER_DATE, 'YYYY-MM-DD HH24:MI:SS')
   AND (:OPER_STAFF_ID is null or oper_staff_id=:OPER_STAFF_ID)
   AND (:MOFFICE_ID is null or moffice_id=:MOFFICE_ID)