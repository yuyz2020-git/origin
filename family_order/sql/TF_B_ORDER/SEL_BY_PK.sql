SELECT accept_month,to_char(order_id) order_id,trade_type_code,order_type_code,order_state,in_mode_code,term_ip,eparchy_code,city_code,to_char(oper_fee) oper_fee,to_char(foregift) foregift,to_char(advance_pay) advance_pay,invoice_no,fee_state,fee_staff_id,to_char(fee_time,'yyyy-mm-dd hh24:mi:ss') fee_time,to_char(cust_id) cust_id,cust_name,auth_code,pspt_type_code,pspt_id,actor_name,actor_phone,actor_pspt_type_code,actor_pspt_id,to_char(accept_date,'yyyy-mm-dd hh24:mi:ss') accept_date,to_char(exec_time,'yyyy-mm-dd hh24:mi:ss') exec_time,to_char(finish_date,'yyyy-mm-dd hh24:mi:ss') finish_date,hq_tag,decompose_rule_id,dispatch_rule_id,to_char(serv_req_id) serv_req_id,contract_id,to_char(solution_id) solution_id,process_tag_set,cancel_tag,to_char(cancel_date,'yyyy-mm-dd hh24:mi:ss') cancel_date,cancel_staff_id,cancel_depart_id,cancel_city_code,cancel_eparchy_code 
  FROM tf_b_order
 WHERE accept_month=:ACCEPT_MONTH
   AND order_id=TO_NUMBER(:ORDER_ID)
   AND trade_type_code=:TRADE_TYPE_CODE