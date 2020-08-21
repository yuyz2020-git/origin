SELECT PARTITION_ID,to_char(USER_ID) USER_ID,SERIAL_NUMBER,BIZ_CODE,SP_CODE,PRODUCT_NO,BIZ_TYPE_CODE,ORG_DOMAIN,OPR_SOURCE,BIZ_STATE_CODE,to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,to_char(FIRST_DATE,'yyyy-mm-dd hh24:mi:ss') FIRST_DATE,to_char(FIRST_DATE_MON,'yyyy-mm-dd hh24:mi:ss') FIRST_DATE_MON,GIFT_SERIAL_NUMBER,GIFT_USER_ID,BILL_TYPE,PRICE,to_char(SUBSCRIBE_ID) SUBSCRIBE_ID,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,to_char(RSRV_NUM4) RSRV_NUM4,to_char(RSRV_NUM5) RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10,to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,to_char(RSRV_DATE4,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE4,to_char(RSRV_DATE5,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE5,REMARK,UPDATE_STAFF_ID,UPDATE_DEPART_ID,to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME
  FROM TF_F_USER_PLAT_ORDER a
 WHERE a.partition_id=MOD(TO_NUMBER(:USER_ID),10000)
   AND a.user_id=TO_NUMBER(:USER_ID)
   AND sysdate BETWEEN a.start_date AND a.end_date
   AND EXISTS(SELECT 1 FROM td_s_commpara 
              WHERE param_attr = :PARAM_ATTR 
              AND param_code = to_char(a.BIZ_TYPE_CODE) 
              AND sysdate BETWEEN start_date AND end_date)