INSERT INTO ts_a_groupbill(bill_id,user_id,acct_id,partition_id,acyc_id,bill_type,title,integrate_item_code,integrate_item,fee,balance,print_fee,b_discnt,a_discnt,adjust_before,adjust_after,late_fee,late_balance,update_time,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_info1,rsrv_info2,rsrv_num1,rsrv_num2)
 VALUES(TO_NUMBER(:BILL_ID),TO_NUMBER(:USER_ID),TO_NUMBER(:ACCT_ID),mod(TO_NUMBER(:ACCT_ID),10000),:ACYC_ID,:BILL_TYPE,:TITLE,:INTEGRATE_ITEM_CODE,:INTEGRATE_ITEM,TO_NUMBER(:FEE),TO_NUMBER(:BALANCE),TO_NUMBER(:PRINT_FEE),TO_NUMBER(:B_DISCNT),TO_NUMBER(:A_DISCNT),TO_NUMBER(:ADJUST_BEFORE),TO_NUMBER(:ADJUST_AFTER),TO_NUMBER(:LATE_FEE),TO_NUMBER(:LATE_BALANCE),sysdate,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_INFO1,:RSRV_INFO2,TO_NUMBER(:RSRV_NUM1),TO_NUMBER(:RSRV_NUM2))