SELECT TO_CHAR(a.trade_id) trade_id,
       a.accept_month,
       TO_CHAR(a.batch_id) batch_id,
       TO_CHAR(a.order_id) order_id,
       TO_CHAR(a.prod_order_id) prod_order_id,
       a.bpm_id,
       TO_CHAR(a.campn_id) campn_id,
       a.trade_type_code,
       a.priority,
       a.subscribe_type,
       a.subscribe_state,
       a.next_deal_tag,
       a.in_mode_code,
       TO_CHAR(a.cust_id) cust_id,
       a.cust_name,
       TO_CHAR(a.user_id) user_id,
       TO_CHAR(a.acct_id) acct_id,
       a.serial_number,
       a.net_type_code,
       a.eparchy_code,
       a.city_code,
       a.product_id,
       a.brand_code,
       TO_CHAR(a.cust_id_b) cust_id_b,
       TO_CHAR(a.user_id_b) user_id_b,
       TO_CHAR(a.acct_id_b) acct_id_b,
       a.serial_number_b,
       a.cust_contact_id,
       a.serv_req_id,
       a.intf_id,
       TO_CHAR(a.accept_date,'YYYY-MM-DD HH24:MI:SS') accept_date,
       a.trade_staff_id,
       a.trade_depart_id,
       a.trade_city_code,
       a.trade_eparchy_code,
       a.term_ip,
       TO_CHAR(a.oper_fee) oper_fee,
       TO_CHAR(a.foregift) foregift,
       TO_CHAR(a.advance_pay) advance_pay,
       a.invoice_no,
       a.fee_state,
       TO_CHAR(a.fee_time,'YYYY-MM-DD HH24:MI:SS') fee_time,
       a.fee_staff_id,
       a.process_tag_set,
       a.olcom_tag,
       TO_CHAR(a.finish_date,'YYYY-MM-DD HH24:MI:SS') finish_date,
       TO_CHAR(a.exec_time,'YYYY-MM-DD HH24:MI:SS') exec_time,
       a.exec_action,
       a.exec_result,
       a.exec_desc,
       a.cancel_tag,
       TO_CHAR(a.cancel_date,'YYYY-MM-DD HH24:MI:SS') cancel_date,
       a.cancel_staff_id,
       a.cancel_depart_id,
       a.cancel_city_code,
       a.cancel_eparchy_code,
       TO_CHAR(a.update_time,'YYYY-MM-DD HH24:MI:SS') update_time,
       a.update_staff_id,
       a.update_depart_id,
       a.remark,
       a.rsrv_str1,
       a.rsrv_str2,
       a.rsrv_str3,
       a.rsrv_str4,
       a.rsrv_str5,
       a.rsrv_str6,
       a.rsrv_str7,
       a.rsrv_str8,
       a.rsrv_str9,
       a.rsrv_str10
  FROM tf_b_trade a
 WHERE a.cust_id = TO_NUMBER(:CUST_ID)
   AND a.product_id IN ('7010','7011','7012','7013','7014','7015')
   AND a.next_deal_tag = :NEXT_DEAL_TAG
   AND a.cancel_tag = '0'