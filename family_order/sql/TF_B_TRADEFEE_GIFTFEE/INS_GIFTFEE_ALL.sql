INSERT INTO tf_b_tradefee_giftfee(trade_id,accept_month,fee_mode,fee_type_code,fee,user_id,charge_id)
 VALUES(TO_NUMBER(:TRADE_ID),:ACCEPT_MONTH,:FEE_MODE,:FEE_TYPE_CODE,TO_NUMBER(:FEE),TO_NUMBER(:USER_ID),TO_NUMBER(:CHARGE_ID))