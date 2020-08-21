SELECT to_char(user_id) user_id,serial_number,purchase_attr,purchase_desc,purchase_mode,purchase_info,to_char(trade_id) trade_id,to_char(rpay_mpfee/100) rpay_mpfee,feeitem_code,to_char(rpay_foregift/100) rpay_foregift,foregift_code,to_char(rpay_deposit/100) rpay_deposit,rpay_deposit_code,to_char(left_deposit/100) left_deposit,to_char(mrtn_fee/100) mrtn_fee,rtn_type,rtn_months,left_months,to_char(gpay_deposit/100) gpay_deposit,gpay_deposit_code,to_char(left_gdeposit/100) left_gdeposit,to_char(mgift_fee/100) mgift_fee,gift_type,gtotal_months,gleft_months,to_char(month_fee/100) month_fee,ntotal_months,nleft_months,device_type,imei,assure_no,discnt_code,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,process_tag,staff_id,depart_id,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,to_char(finish_date,'yyyy-mm-dd hh24:mi:ss') finish_date,remark 
  FROM tf_fh_user_purchase a
 WHERE serial_number=:SERIAL_NUMBER
   AND (process_tag=:PROCESS_TAG OR :PROCESS_TAG='9')
   AND SYSDATE < end_date
   AND purchase_attr = 'GPAY'
   AND EXISTS (SELECT 1 FROM tf_f_user b WHERE b.serial_number=:SERIAL_NUMBER AND b.remove_tag IN ('0','3') AND b.user_id=a.user_id)
   AND EXISTS (SELECT 1 FROM td_s_tag WHERE tag_code='CS_EXISTSSMSDONATE' AND substr(eparchy_code,3,2)=substr(a.user_id,0,2) AND instr(tag_info,'|'||a.purchase_info||'|')>0)
UNION ALL
SELECT to_char(user_id) user_id,serial_number,purchase_attr,purchase_desc,purchase_mode,purchase_info,to_char(trade_id) trade_id,to_char(rpay_mpfee/100) rpay_mpfee,feeitem_code,to_char(rpay_foregift/100) rpay_foregift,foregift_code,to_char(rpay_deposit/100) rpay_deposit,rpay_deposit_code,to_char(left_deposit/100) left_deposit,to_char(mrtn_fee/100) mrtn_fee,rtn_type,rtn_months,left_months,to_char(gpay_deposit/100) gpay_deposit,gpay_deposit_code,to_char(left_gdeposit/100) left_gdeposit,to_char(mgift_fee/100) mgift_fee,gift_type,gtotal_months,gleft_months,to_char(month_fee/100) month_fee,ntotal_months,nleft_months,device_type,imei,assure_no,discnt_code,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,process_tag,staff_id,depart_id,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,to_char(finish_date,'yyyy-mm-dd hh24:mi:ss') finish_date,remark 
  FROM tf_f_user_purchase a
 WHERE serial_number=:SERIAL_NUMBER
   AND (process_tag=:PROCESS_TAG OR :PROCESS_TAG='9')
   AND SYSDATE < end_date
   AND purchase_attr = 'GPAY'
   AND EXISTS (SELECT 1 FROM tf_f_user b WHERE b.serial_number=:SERIAL_NUMBER AND b.remove_tag IN ('0','3') AND b.user_id=a.user_id)      
AND EXISTS (SELECT 1 FROM td_s_tag WHERE tag_code='CS_EXISTSSMSDONATE' AND substr(eparchy_code,3,2)=substr(a.user_id,0,2) AND instr(tag_info,'|'||a.purchase_info||'|')>0)