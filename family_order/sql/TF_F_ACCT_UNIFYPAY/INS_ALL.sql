INSERT INTO tf_f_acct_unifypay(unify_pay_code,acct_id,unify_pay_type_code,eparchy_code,province_code,start_date,end_date)
 VALUES(:UNIFY_PAY_CODE,TO_NUMBER(:ACCT_ID),:UNIFY_PAY_TYPE_CODE,:EPARCHY_CODE,:PROVINCE_CODE,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'))