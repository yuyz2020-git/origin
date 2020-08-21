SELECT /*+ index(a IDX_TF_BH_TRADE_DEPART_ID) +*/ to_char(a.trade_id) trade_id,to_char(a.subscribe_id) subscribe_id,to_char(a.bpm_id) bpm_id,a.trade_type_code trade_type_code,a.in_mode_code in_mode_code,a.priority priority,a.subscribe_state subscribe_state,a.next_deal_tag next_deal_tag,a.product_id product_id,a.brand_code brand_code,to_char(a.user_id) user_id,to_char(a.cust_id) cust_id,to_char(a.acct_id) acct_id,a.serial_number serial_number,a.cust_name cust_name,to_char(a.accept_date,'yyyy-mm-dd hh24:mi:ss') accept_date,a.accept_month accept_month,a.trade_staff_id trade_staff_id,a.trade_depart_id trade_depart_id,a.trade_city_code trade_city_code,a.trade_eparchy_code trade_eparchy_code,a.term_ip term_ip,a.eparchy_code eparchy_code,a.city_code city_code,a.olcom_tag olcom_tag,to_char(a.exec_time,'yyyy-mm-dd hh24:mi:ss') exec_time,to_char(a.finish_date,'yyyy-mm-dd hh24:mi:ss') finish_date,to_char(a.oper_fee) oper_fee,to_char(a.foregift) foregift,to_char(a.advance_pay) advance_pay,a.invoice_no invoice_no,a.fee_state fee_state,to_char(a.fee_time,'yyyy-mm-dd hh24:mi:ss') fee_time,a.fee_staff_id fee_staff_id,a.cancel_tag cancel_tag,to_char(a.cancel_date,'yyyy-mm-dd hh24:mi:ss') cancel_date,a.cancel_staff_id cancel_staff_id,a.cancel_depart_id cancel_depart_id,a.cancel_city_code cancel_city_code,a.cancel_eparchy_code cancel_eparchy_code,a.process_tag_set process_tag_set,c.action_name rsrv_str1,b.action_code rsrv_str2,b.action_count rsrv_str3,b.score_changed_sub rsrv_str4,a.rsrv_str5 rsrv_str5,a.rsrv_str6 rsrv_str6,a.rsrv_str7 rsrv_str7,a.rsrv_str8 rsrv_str8,a.rsrv_str9 rsrv_str9,a.rsrv_str10 rsrv_str10,c.remark remark
  FROM tf_bh_trade a ,tf_b_trade_scoresub b,td_b_score_action c
 WHERE a.accept_date BETWEEN TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS') AND TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS')
   AND a.trade_id=b.trade_id
   AND a.accept_month = to_number(substr(:START_DATE,6,2))
   AND a.trade_type_code=:TRADE_TYPE_CODE
   AND a.trade_depart_id=:TRADE_DEPART_ID
   AND b.action_code=c.action_code