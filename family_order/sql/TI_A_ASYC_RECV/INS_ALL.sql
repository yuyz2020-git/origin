INSERT INTO ti_a_asyc_recv(asycrecv_id,eparchy_code,city_code,trade_type_code,discnt_code,acct_id,charge_source_code,pay_fee_mode_code,acyc_id,spay_fee,deposit_code,all_money,all_new_balance,allbowe_fee,allrowe_fee,recv_fee,recover_tag,operate_id,operate_type,input_time,deal_time,deal_tag,result_code,result_info,round_tag,recv_eparchy_code,recv_city_code,recv_depart_id,recv_staff_id,user_id,out_deposit_code,usecust_name,bank_name,bank_acct,buddy_address,contact,link_phone,purpose_declare,dealinfo)
 VALUES(TO_NUMBER(:ASYCRECV_ID),:EPARCHY_CODE,:CITY_CODE,:TRADE_TYPE_CODE,:DISCNT_CODE,TO_NUMBER(:ACCT_ID),:CHARGE_SOURCE_CODE,:PAY_FEE_MODE_CODE,:ACYC_ID,TO_NUMBER(:SPAY_FEE),:DEPOSIT_CODE,TO_NUMBER(:ALL_MONEY),TO_NUMBER(:ALL_NEW_BALANCE),TO_NUMBER(:ALLBOWE_FEE),TO_NUMBER(:ALLROWE_FEE),TO_NUMBER(:RECV_FEE),:RECOVER_TAG,TO_NUMBER(:OPERATE_ID),:OPERATE_TYPE,TO_DATE(:INPUT_TIME,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:DEAL_TIME,'YYYY-MM-DD HH24:MI:SS'),:DEAL_TAG,:RESULT_CODE,:RESULT_INFO,:ROUND_TAG,:RECV_EPARCHY_CODE,:RECV_CITY_CODE,:RECV_DEPART_ID,:RECV_STAFF_ID,TO_NUMBER(:USER_ID),:OUT_DEPOSIT_CODE,:USECUST_NAME,:BANK_NAME,:BANK_ACCT,:BUDDY_ADDRESS,:CONTACT,:LINK_PHONE,:PURPOSE_DECLARE,:DEALINFO)