SELECT to_char(trade_id) trade_id,accept_month,user_id,rsrv_value_code,rsrv_value,rsrv_num1,rsrv_num2,rsrv_num3,rsrv_num4,rsrv_num5,rsrv_num6,rsrv_num7,rsrv_num8,rsrv_num9,rsrv_num10,rsrv_num11,rsrv_num12,rsrv_num13,rsrv_num14,rsrv_num15,rsrv_num16,rsrv_num17,rsrv_num18,rsrv_num19,rsrv_num20,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,rsrv_str11,rsrv_str12,rsrv_str13,rsrv_str14,rsrv_str15,rsrv_str16,rsrv_str17,rsrv_str18,rsrv_str19,rsrv_str20,rsrv_str21,rsrv_str22,rsrv_str23,rsrv_str24,rsrv_str25,rsrv_str26,rsrv_str27,rsrv_str28,rsrv_str29,rsrv_str30,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,to_char(rsrv_date4,'yyyy-mm-dd hh24:mi:ss') rsrv_date4,to_char(rsrv_date5,'yyyy-mm-dd hh24:mi:ss') rsrv_date5,to_char(rsrv_date6,'yyyy-mm-dd hh24:mi:ss') rsrv_date6,to_char(rsrv_date7,'yyyy-mm-dd hh24:mi:ss') rsrv_date7,to_char(rsrv_date8,'yyyy-mm-dd hh24:mi:ss') rsrv_date8,to_char(rsrv_date9,'yyyy-mm-dd hh24:mi:ss') rsrv_date9,to_char(rsrv_date10,'yyyy-mm-dd hh24:mi:ss') rsrv_date10,rsrv_tag1,rsrv_tag2,rsrv_tag3,rsrv_tag4,rsrv_tag5,rsrv_tag6,rsrv_tag7,rsrv_tag8,rsrv_tag9,rsrv_tag10,process_tag,staff_id,depart_id,start_date,end_date,modify_tag,update_time,update_staff_id,update_depart_id,remark,inst_id
  FROM tf_b_trade_other
 WHERE trade_id=TO_NUMBER(:TRADE_ID)
   AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
   AND rsrv_value_code NOT IN(SELECT para_code1 FROM td_s_commpara
                              WHERE subsys_code='CSM'
                              AND param_attr=21
                              AND param_code='0'
                              AND (eparchy_code=:EPARCHY_CODE OR eparchy_code='ZZZZ'))