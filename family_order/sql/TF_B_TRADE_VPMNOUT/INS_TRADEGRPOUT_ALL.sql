INSERT INTO tf_b_trade_vpmnout(trade_id,accept_month,user_id,out_group_id,serial_number,user_id_b,serial_number_b,short_code,modify_tag,start_date,end_date,rsrv_str1,rsrv_str2,rsrv_str3)
 VALUES(TO_NUMBER(:TRADE_ID),:ACCEPT_MONTH,TO_NUMBER(:USER_ID),:OUT_GROUP_ID,:SERIAL_NUMBER,TO_NUMBER(:USER_ID_B),:SERIAL_NUMBER_B,:SHORT_CODE,:MODIFY_TAG,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:RSRV_STR1,:RSRV_STR2,:RSRV_STR3)