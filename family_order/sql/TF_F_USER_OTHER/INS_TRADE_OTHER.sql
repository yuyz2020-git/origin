INSERT INTO tf_b_trade_other(trade_id,rsrv_value_code,rsrv_value,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,modify_tag,start_date,end_date,update_time,inst_id)
 VALUES(TO_NUMBER(:TRADE_ID),:RSRV_VALUE_CODE,:RSRV_VALUE,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_STR8,:RSRV_STR9,:RSRV_STR10,:MODIFY_TAG,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),sysdate,inst_id)