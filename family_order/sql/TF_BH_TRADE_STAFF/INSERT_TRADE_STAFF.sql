INSERT INTO tf_bh_trade_staff(trade_id,subscribe_id,bpm_id,trade_type_code,in_mode_code,priority,subscribe_state,next_deal_tag,product_id,brand_code,user_id,cust_id,acct_id,serial_number,cust_name,accept_date,accept_month,trade_staff_id,trade_depart_id,trade_city_code,trade_eparchy_code,term_ip,eparchy_code,city_code,olcom_tag,exec_time,finish_date,oper_fee,foregift,advance_pay,invoice_no,fee_state,fee_time,fee_staff_id,cancel_tag,process_tag_set,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,remark)
 VALUES(TO_NUMBER(:TRADE_ID),TO_NUMBER(:SUBSCRIBE_ID),TO_NUMBER(:BPM_ID),:TRADE_TYPE_CODE,:IN_MODE_CODE,:PRIORITY,'9',:NEXT_DEAL_TAG,:PRODUCT_ID,:BRAND_CODE,TO_NUMBER(:USER_ID),TO_NUMBER(:CUST_ID),TO_NUMBER(:ACCT_ID),:SERIAL_NUMBER,:CUST_NAME,TO_DATE(:ACCEPT_DATE,'YYYY-MM-DD HH24:MI:SS'),:ACCEPT_MONTH,:TRADE_STAFF_ID,:TRADE_DEPART_ID,:TRADE_CITY_CODE,:TRADE_EPARCHY_CODE,:TERM_IP,:EPARCHY_CODE,:CITY_CODE,:OLCOM_TAG,TO_DATE(:EXEC_TIME,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:FINISH_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_NUMBER(:OPER_FEE),TO_NUMBER(:FOREGIFT),TO_NUMBER(:ADVANCE_PAY),:INVOICE_NO,:FEE_STATE,TO_DATE(:FEE_TIME,'YYYY-MM-DD HH24:MI:SS'),:FEE_STAFF_ID,:CANCEL_TAG,:PROCESS_TAG_SET,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_STR8,:RSRV_STR9,:RSRV_STR10,:REMARK)