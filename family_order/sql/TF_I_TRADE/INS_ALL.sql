INSERT INTO tf_i_trade(trade_id,trade_type_code,user_id,serial_number,accept_date,fee,olcom_tag,cancel_tag,cancel_date,remark,update_time,update_staff_id,update_depart_id,eparchy_code)
 VALUES(TO_NUMBER(:TRADE_ID),:TRADE_TYPE_CODE,TO_NUMBER(:USER_ID),:SERIAL_NUMBER,TO_DATE(:ACCEPT_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_NUMBER(:FEE),:OLCOM_TAG,:CANCEL_TAG,TO_DATE(:CANCEL_DATE,'YYYY-MM-DD HH24:MI:SS'),:REMARK,TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'),:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,:EPARCHY_CODE)