INSERT INTO td_o_blackuser(pspt_type_code,pspt_id,black_user_class_code,mob_phonecode,bank_acct_no,join_cause,start_date,end_date,update_time,update_staff_id,update_depart_id,remark)
 VALUES(:PSPT_TYPE_CODE,:PSPT_ID,:BLACK_USER_CLASS_CODE,:MOB_PHONECODE,:BANK_ACCT_NO,:JOIN_CAUSE,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'),:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,:REMARK)