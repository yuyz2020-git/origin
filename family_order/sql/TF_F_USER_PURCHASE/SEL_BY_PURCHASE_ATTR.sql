SELECT to_char(user_id) user_id,serial_number,purchase_attr,purchase_desc,purchase_mode,purchase_info,to_char(trade_id) trade_id,to_char(rpay_mpfee) rpay_mpfee,feeitem_code,to_char(rpay_foregift) rpay_foregift,foregift_code,to_char(rpay_deposit) rpay_deposit,rpay_deposit_code,to_char(left_deposit) left_deposit,to_char(mrtn_fee) mrtn_fee,rtn_type,rtn_months,left_months,to_char(gpay_deposit) gpay_deposit,gpay_deposit_code,to_char(left_gdeposit) left_gdeposit,to_char(mgift_fee) mgift_fee,gift_type,gtotal_months,gleft_months,to_char(month_fee) month_fee,ntotal_months,nleft_months,device_type,imei,assure_no,discnt_code,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,process_tag,staff_id,depart_id,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,to_char(finish_date,'yyyy-mm-dd hh24:mi:ss') finish_date,remark 
  FROM TF_F_USER_PURCHASE a
 WHERE a.USER_ID = TO_NUMBER(:USER_ID)
   AND a.PURCHASE_ATTR IN (
     SELECT DISTINCT PURCHASE_ATTR
       FROM TD_B_PURCHASETRADE
      WHERE PURCHASE_ATTR LIKE :PURCHASE_ATTR
        AND END_DATE > SYSDATE)
   AND a.END_DATE > SYSDATE
   AND a.PROCESS_TAG = :PROCESS_TAG