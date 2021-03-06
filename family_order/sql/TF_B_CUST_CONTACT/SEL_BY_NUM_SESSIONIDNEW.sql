SELECT accept_month,to_char(cust_contact_id) cust_contact_id
  ,to_char(cust_id) cust_id,cust_name,to_char(user_id) user_id
  ,serial_number,product_id,eparchy_code,city_code,
  contact_mode,in_mode_code,in_media_code
  ,channel_id,sub_channel_id
  ,to_char(start_time,'yyyy-mm-dd hh24:mi:ss') start_time
  ,to_char(finish_time,'yyyy-mm-dd hh24:mi:ss') finish_time
  ,contact_state
  ,decode(contact_state,'S','接触开始','D','接触中','E','接触结束','未知') contact_state_desc
  ,rsrv_str1,rsrv_str2
  ,rsrv_str3,rsrv_str4,rsrv_str5
  ,rsrv_str6,rsrv_str7,rsrv_str8
  ,rsrv_str9,rsrv_str10,remark
  FROM tf_b_cust_contact
 WHERE CUST_ID = :CUST_ID
   AND RSRV_STR1 = :RSRV_STR1