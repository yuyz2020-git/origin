SELECT to_char(receipts_id) receipts_id,receipts_code,receipts_type,receipts_count,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,stock_id,depart_id,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,to_char(receipts_time,'yyyy-mm-dd hh24:mi:ss') receipts_time,remove_tag 
  FROM tf_f_receipts
 WHERE receipts_code=:RECEIPTS_CODE
   AND stock_id=:STOCK_ID
   AND remove_tag=:REMOVE_TAG