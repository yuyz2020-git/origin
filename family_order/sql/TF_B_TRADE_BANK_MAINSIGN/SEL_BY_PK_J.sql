SELECT to_char(TRADE_ID) TRADE_ID,ACCEPT_MONTH ,m.sign_id,m.user_type,m.user_value,m.home_area,m.bank_acct_id,m.bank_acct_type,m.bank_id,
m.chnl_type,m.pay_type,m.rech_threshold,m.rech_amount,m.sign_state,to_char(m.apply_date,'yyyy-mm-dd hh24:mi:ss') APPLY_DATE,
to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,MODIFY_TAG ,m.user_name,
m.id_type,m.id_value,to_char(UPDATE_DATE,'yyyy-mm-dd hh24:mi:ss') UPDATE_DATE,UPDATE_STAFF_ID ,UPDATE_DEPART_ID ,REMARK ,RSRV_NUM1 ,RSRV_NUM2,
RSRV_NUM3 ,RSRV_NUM4 ,RSRV_NUM5 ,RSRV_STR1 ,RSRV_STR2 ,RSRV_STR3 ,
to_char(RSRV_STR4) RSRV_STR4,to_char(RSRV_STR5) RSRV_STR5,m.rsrv_str6,m.rsrv_str7,m.rsrv_str8,m.rsrv_str9,m.rsrv_str10,
to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
RSRV_TAG1 ,RSRV_TAG2 ,RSRV_TAG3,INST_ID 
 FROM tf_b_trade_bank_mainsign m
 WHERE trade_id = TO_NUMBER(:TRADE_ID)
   AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))