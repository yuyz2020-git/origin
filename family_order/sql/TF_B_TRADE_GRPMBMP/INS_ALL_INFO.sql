INSERT INTO tf_b_trade_grpmbmp(trade_id,partition_id,user_id,serial_number,biz_type_code,biz_code,
biz_name,access_model,access_number,biz_state_code,price,billing_type,biz_pri,biz_status,rb_list,
cs_url,usage_desc,intro_url,start_date,end_date,first_date,rsrv_num1,rsrv_num2,rsrv_num3,rsrv_num4,
rsrv_num5,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_date1,rsrv_date2,rsrv_date3,remark,
update_staff_id,update_depart_id,update_time,oper_code)
SELECT TO_NUMBER(:TRADE_ID),mod(TO_NUMBER(:TRADE_ID),10000),TO_NUMBER(:USER_ID),:SERIAL_NUMBER,
 :BIZ_TYPE_CODE,:BIZ_CODE,:BIZ_NAME,:ACCESS_MODEL,:ACCESS_NUMBER,:BIZ_STATE_CODE,:PRICE,
 :BILLING_TYPE,:BIZ_PRI,:BIZ_STATUS,:RB_LIST,:CS_URL,:USAGE_DESC,:INTRO_URL,
 TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),
 DECODE(:OPER_CODE,'01',TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:FIRST_DATE,'YYYY-MM-DD HH24:MI:SS')),
 :RSRV_NUM1,:RSRV_NUM2,:RSRV_NUM3,TO_NUMBER(:RSRV_NUM4),TO_NUMBER(:RSRV_NUM5),
 decode(:RSRV_STR1,'',a.rsrv_str1,:RSRV_STR1),decode(:RSRV_STR2,'',c.cop_serv_code,:RSRV_STR2),
:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,TO_DATE(:RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS'),
 TO_DATE(:RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS'),
 :REMARK,:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,sysdate,:OPER_CODE
  FROM tf_cop_service a,tf_cop_service_rel b,tf_cop_partner c
 WHERE a.serv_code = :SERV_CODE
   and b.serv_id = a.serv_id
   and c.cop_id = b.cop_id
   and a.state=:STATE