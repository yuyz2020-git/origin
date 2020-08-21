INSERT INTO TS_A_BILL_RC (bill_id,acct_id,user_id,partition_id,acyc_id,integrate_item_code,fee,balance,a_discnt,adjust_before,adjust_after,late_fee,late_balance,latecal_date,canpay_tag,pay_tag,bill_pay_tag,update_time,update_depart_id,update_staff_id,b_discnt,print_fee) 
SELECT bill_id,acct_id,user_id,partition_id,acyc_id,integrate_item_code,fee,balance,a_discnt,adjust_before,adjust_after,late_fee,late_balance, latecal_date,canpay_tag,pay_tag,bill_pay_tag,update_time,update_depart_id,update_staff_id,b_discnt,print_fee 
FROM TS_AH_BILL 
WHERE acct_id = :ACCT_ID AND partition_id = :PARTITION_ID AND bill_id = :BILL_ID AND integrate_item_code = :INTEGRATE_ITEM_CODE