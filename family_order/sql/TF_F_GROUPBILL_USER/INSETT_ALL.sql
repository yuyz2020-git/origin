INSERT INTO tf_f_groupbill_user(partition_id,user_id,cust_id,acct_id,brand_code,product_id,product_name,brand,eparchy_code,city_code,city_name,serial_number,score_value,credit_value,remove_tag,acyc_id,bcyc_id,acyc_start_time,acyc_end_time,pay_name,cust_name,cust_manager,cust_manager_id,fee_sum,adjust_fee,all_new_balance,all_new_money,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_info1,rsrv_info2,rsrv_num1,rsrv_num2,update_time)
 VALUES(mod(TO_NUMBER(:ACCT_ID),10000),TO_NUMBER(:USER_ID),TO_NUMBER(:CUST_ID),TO_NUMBER(:ACCT_ID),:BRAND_CODE,:PRODUCT_ID,:PRODUCT_NAME,:BRAND,:EPARCHY_CODE,:CITY_CODE,:CITY_NAME,:SERIAL_NUMBER,TO_NUMBER(:SCORE_VALUE),TO_NUMBER(:CREDIT_VALUE),:REMOVE_TAG,:ACYC_ID,:BCYC_ID,TO_DATE(:ACYC_START_TIME,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:ACYC_END_TIME,'YYYY-MM-DD HH24:MI:SS'),:PAY_NAME,:CUST_NAME,:CUST_MANAGER,:CUST_MANAGER_ID,TO_NUMBER(:FEE_SUM),TO_NUMBER(:ADJUST_FEE),TO_NUMBER(:ALL_NEW_BALANCE),TO_NUMBER(:ALL_NEW_MONEY),:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_INFO1,:RSRV_INFO2,TO_NUMBER(:RSRV_NUM1),TO_NUMBER(:RSRV_NUM2),sysdate)