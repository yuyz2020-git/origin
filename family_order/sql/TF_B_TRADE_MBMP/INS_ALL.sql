INSERT INTO tf_b_trade_mbmp(trade_id,user_id,serial_number,biz_type_code,org_domain,opr_source,passwd,biz_state_code,start_date,end_date,modify_tag,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,remark,trade_staff_id,trade_depart_id)
 VALUES(TO_NUMBER(:TRADE_ID),TO_NUMBER(:USER_ID),:SERIAL_NUMBER,:BIZ_TYPE_CODE,:ORG_DOMAIN,:OPR_SOURCE,:PASSWD,:BIZ_STATE_CODE,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:MODIFY_TAG,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:REMARK,:TRADE_STAFF_ID,:TRADE_DEPART_ID)