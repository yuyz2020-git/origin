INSERT INTO tf_b_trade_class(trade_id,accept_month,id,id_type,class_name,class_level,max_users,modify_tag,start_date,end_date,rsrv_str1,rsrv_str2,rsrv_num3,rsrv_num4,rsrv_dat5,rsrv_dat6)
 VALUES(TO_NUMBER(:TRADE_ID),:ACCEPT_MONTH,TO_NUMBER(:ID),:ID_TYPE,:CLASS_NAME,:CLASS_LEVEL,:MAX_USERS,:MODIFY_TAG,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:RSRV_STR1,:RSRV_STR2,TO_NUMBER(:RSRV_NUM3),TO_NUMBER(:RSRV_NUM4),TO_DATE(:RSRV_DAT5,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DAT6,'YYYY-MM-DD HH24:MI:SS'))