INSERT INTO tf_a_bank_deposit(log_id,sub_log_id,acc_date,eparchy_code,oper_type_code,depart_id,profit_cen_id,bank_code,recon_no,bank_no,fee,dc_tag,remark,rsrv_tag1,rsrv_tag2,rsrv_tag3,rsrv_date1,rsrv_date2,rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_num1,rsrv_num2,rsrv_num3)
 VALUES(TO_NUMBER(:LOG_ID),TO_NUMBER(:SUB_LOG_ID),TO_DATE(:ACC_DATE,'YYYY-MM-DD HH24:MI:SS'),:EPARCHY_CODE,:OPER_TYPE_CODE,:DEPART_ID,:PROFIT_CEN_ID,:BANK_CODE,:RECON_NO,:BANK_NO,:FEE,:DC_TAG,:REMARK,:RSRV_TAG1,:RSRV_TAG2,:RSRV_TAG3,TO_DATE(:RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS'),:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_NUM1,:RSRV_NUM2,:RSRV_NUM3)