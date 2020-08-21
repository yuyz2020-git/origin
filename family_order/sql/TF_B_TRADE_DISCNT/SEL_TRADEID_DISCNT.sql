Select to_char(trade_id) trade_id,accept_month,PARTITION_ID,USER_ID,USER_ID_A,PRODUCT_ID,PACKAGE_ID,DISCNT_CODE,SPEC_TAG,RELATION_TYPE_CODE,INST_ID,CAMPN_ID,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date ,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
  FROM tf_b_trade_discnt_bak
  WHERE trade_id=TO_NUMBER(:TRADE_ID)
  AND accept_month=TO_NUMBER(:ACCEPT_MONTH)
  AND user_id=TO_NUMBER(:USER_ID)  
  AND discnt_code=TO_NUMBER(:DISCNT_CODE)
  AND product_id=to_number(:PRODUCT_ID) 
  And package_id=to_number(:PACKAGE_ID)
  And user_id_a=TO_NUMBER(:USER_ID_A)    
  And start_date=TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS')