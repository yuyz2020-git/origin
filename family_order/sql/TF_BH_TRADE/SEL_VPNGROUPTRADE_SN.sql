SELECT to_char(trade_id) trade_id,to_char(batch_id) batch_id,to_char(bpm_id) bpm_id,trade_type_code,in_mode_code,priority,subscribe_state,next_deal_tag,product_id,brand_code,to_char(user_id) user_id,to_char(cust_id) cust_id,to_char(acct_id) acct_id,serial_number,cust_name,to_char(accept_date,'yyyy-mm-dd hh24:mi:ss') accept_date,accept_month,f_sys_getcodename('staff_id',trade_staff_id,null,null) trade_staff_id,f_sys_getcodename('depart_id',trade_depart_id,null,null) trade_depart_id,f_sys_getcodename('area_code',trade_city_code,null,null) trade_city_code,trade_eparchy_code,term_ip,eparchy_code,city_code,olcom_tag,to_char(exec_time,'yyyy-mm-dd hh24:mi:ss') exec_time,to_char(finish_date,'yyyy-mm-dd hh24:mi:ss') finish_date,to_char(oper_fee) oper_fee,to_char(foregift) foregift,to_char(advance_pay) advance_pay,invoice_no,fee_state,to_char(fee_time,'yyyy-mm-dd hh24:mi:ss') fee_time,fee_staff_id,cancel_tag,to_char(cancel_date,'yyyy-mm-dd hh24:mi:ss') cancel_date,cancel_staff_id,cancel_depart_id,cancel_city_code,cancel_eparchy_code,process_tag_set,f_sys_getcodename('trade_type_code',trade_type_code,:TRADE_EPARCHY_CODE,null)  rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,remark 
  FROM tf_bh_trade a
 WHERE  a.accept_date+0>=TRUNC(TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'))
     AND a.accept_date+0<TRUNC(TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'))+1
     AND (a.serial_number=:SERIAL_NUMBER) 
        AND a.trade_type_code in (1025,1028,1029,1060,1065,192,1181,1182,1183,1180,1184)