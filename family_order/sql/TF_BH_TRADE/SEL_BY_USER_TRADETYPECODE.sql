SELECT to_char(trade_id) trade_id,to_char(subscribe_id) subscribe_id,to_char(bpm_id) bpm_id,trade_type_code,in_mode_code,priority,next_deal_tag,product_id,brand_code,to_char(user_id) user_id,to_char(cust_id) cust_id,to_char(acct_id) acct_id,serial_number,cust_name,to_char(accept_date,'yyyy-mm-dd hh24:mi:ss') accept_date,accept_month,trade_staff_id,trade_depart_id,trade_city_code,trade_eparchy_code,term_ip,eparchy_code,city_code,olcom_tag,to_char(exec_time,'yyyy-mm-dd hh24:mi:ss') exec_time,to_char(finish_date,'yyyy-mm-dd hh24:mi:ss') finish_date,to_char(oper_fee) oper_fee,to_char(foregift) foregift,to_char(advance_pay) advance_pay,invoice_no,fee_state,to_char(fee_time,'yyyy-mm-dd hh24:mi:ss') fee_time,fee_staff_id,cancel_tag,process_tag_set,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,remark
  FROM tf_bh_trade
 WHERE trade_id = (SELECT MAX(trade_id) FROM tf_bh_trade
                                   WHERE trade_type_code = :TRADE_TYPE_CODE
                                     AND user_id = TO_NUMBER(:USER_ID))