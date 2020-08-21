SELECT to_char(log_id) log_id,to_char(receipts_id) receipts_id,receipts_code,receipts_type,receipts_count,to_char(accept_date,'yyyy-mm-dd hh24:mi:ss') accept_date,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,staff_id,stock_id,depart_id,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,to_char(receipts_time,'yyyy-mm-dd hh24:mi:ss') receipts_time,modify_tag,remark 
  FROM tf_b_receipts_flow
 WHERE receipts_code=:RECEIPTS_CODE