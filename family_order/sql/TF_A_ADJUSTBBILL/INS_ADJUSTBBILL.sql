INSERT INTO tf_a_adjustbbill(bill_id,id,id_type,partition_id,effect_item_code,act_mode,effect_mode,addup_mode,effect_value_type,effect_value,refer_fee,start_acyc_id,end_acyc_id,remainfee,use_fee1,use_fee2,limit_fee,recv_tag,adjust_reason_id,update_time,adjust_depart_id,adjust_staff_id,adjust_eparchy_code)
 VALUES(TO_NUMBER(:BILL_ID),TO_NUMBER(:ID),:ID_TYPE,:PARTITION_ID,:EFFECT_ITEM_CODE,:ACT_MODE,:EFFECT_MODE,:ADDUP_MODE,:EFFECT_VALUE_TYPE,TO_NUMBER(:EFFECT_VALUE),TO_NUMBER(:REFER_FEE),:START_ACYC_ID,:END_ACYC_ID,TO_NUMBER(:REMAINFEE),TO_NUMBER(:USE_FEE1),TO_NUMBER(:USE_FEE2),TO_NUMBER(:LIMIT_FEE),:RECV_TAG,:ADJUST_REASON_ID,TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'),:ADJUST_DEPART_ID,:ADJUST_STAFF_ID,:ADJUST_EPARCHY_CODE)