INSERT INTO tf_f_accountdeposit(eparchy_code,partition_id,acct_id,deposit_code,money,deposit_money,draw_money,inprint_fee,outprint_fee,realuse_fee1,realuse_fee2,owe_fee,start_acyc_id,end_acyc_id,update_time)
 VALUES(:EPARCHY_CODE,:PARTITION_ID,TO_NUMBER(:ACCT_ID),:DEPOSIT_CODE,TO_NUMBER(:MONEY),TO_NUMBER(:DEPOSIT_MONEY),TO_NUMBER(:DRAW_MONEY),TO_NUMBER(:INPRINT_FEE),TO_NUMBER(:OUTPRINT_FEE),TO_NUMBER(:REALUSE_FEE1),TO_NUMBER(:REALUSE_FEE2),TO_NUMBER(:OWE_FEE),:START_ACYC_ID,decode(sign(:END_ACYC_ID-481),1,481,:END_ACYC_ID),sysdate)