INSERT INTO tf_f_user_deduct(register_id,eparchy_code,channel_id,user_id,acct_id,bank_account_no,bank_usrp_id,pay_name,pay_address,pay_post_code,destroy_tag,inmode_code,deduct_type_code,deduct_money,deduct_step,open_time,open_city_code,open_depart_id,open_staff_id,destroy_time,destroy_city_code,destroy_depart_id,destroy_staff_id,remark)
 VALUES(TO_NUMBER(:REGISTER_ID),:EPARCHY_CODE,:CHANNEL_ID,nvl(TO_NUMBER(:USER_ID),-1),nvl(TO_NUMBER(:ACCT_ID),-1),:BANK_ACCOUNT_NO,:BANK_USRP_ID,:PAY_NAME,:PAY_ADDRESS,:PAY_POST_CODE,:DESTROY_TAG,:INMODE_CODE,:DEDUCT_TYPE_CODE,TO_NUMBER(:DEDUCT_MONEY),TO_NUMBER(:DEDUCT_STEP),TO_DATE(:OPEN_TIME,'YYYY-MM-DD HH24:MI:SS'),:OPEN_CITY_CODE,:OPEN_DEPART_ID,:OPEN_STAFF_ID,TO_DATE(:DESTROY_TIME,'YYYY-MM-DD HH24:MI:SS'),:DESTROY_CITY_CODE,:DESTROY_DEPART_ID,:DESTROY_STAFF_ID,:REMARK)