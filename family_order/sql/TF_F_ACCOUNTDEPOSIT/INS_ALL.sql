INSERT INTO tf_f_accountdeposit(eparchy_code,partition_id,acct_id,deposit_code,money,deposit_money,draw_money,inprint_fee,outprint_fee,realuse_fee1,realuse_fee2,owe_fee,start_acyc_id,end_acyc_id,update_time)
 VALUES(:EPARCHY_CODE,:PARTITION_ID,:ACCT_ID,:DEPOSIT_CODE,:MONEY,:DEPOSIT_MONEY,:DRAW_MONEY,:INPRINT_FEE,:OUTPRINT_FEE,:REALUSE_FEE1,:REALUSE_FEE2,:OWE_FEE,:START_ACYC_ID,decode(sign(:END_ACYC_ID-481),1,481,:END_ACYC_ID),to_date(:UPDATE_TIME,'YYYY/MM/DD HH24:MI:SS'))