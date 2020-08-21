INSERT INTO tf_f_accountdeposit_incre(eparchy_code,partition_id,acct_id,deposit_code,money,deposit_money,draw_money,inprint_fee,outprint_fee,realuse_fee1,realuse_fee2,owe_fee,start_acyc_id,end_acyc_id,update_time)
SELECT 
eparchy_code,partition_id,acct_id,deposit_code,money,deposit_money,draw_money,inprint_fee,outprint_fee,realuse_fee1,realuse_fee2,owe_fee,start_acyc_id,decode(sign(END_ACYC_ID-481),1,481,END_ACYC_ID),sysdate
FROM tf_f_accountdeposit
WHERE partition_id=:PARTITION_ID
AND acct_id=TO_NUMBER(:ACCT_ID)