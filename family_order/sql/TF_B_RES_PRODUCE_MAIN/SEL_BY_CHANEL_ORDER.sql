SELECT PRODUCE_ID,to_char(BATCH_ID) BATCH_ID,RES_TYPE_CODE,EPARCHY_CODE,CITY_CODE,DEPART_ID,DESIGN_CODE,BRAND_CODE,AUDIT_TYPE_CODE,AUDIT_STATE_CODE,to_char(PLAN_START_TIME,'yyyy-mm-dd hh24:mi:ss') PLAN_START_TIME,to_char(PLAN_END_TIME,'yyyy-mm-dd hh24:mi:ss') PLAN_END_TIME,to_char(FINISH_TIME,'yyyy-mm-dd hh24:mi:ss') FINISH_TIME,ASSIGN_STAFF_ID,to_char(ASSIGN_NUM) ASSIGN_NUM,FACTORY_CODE,APPLY_STATUS,PRODUCE_CONTRACT_ID,to_char(PRODUCE_DATE,'yyyy-mm-dd hh24:mi:ss') PRODUCE_DATE,PRIORITY,CANCEL_REASON,to_char(SALE_PRICE) SALE_PRICE,to_char(SALE_MONEY) SALE_MONEY,SALE_TYPE_CODE,PAY_TYPE_CODE,FEE_STAFF_ID,to_char(FEE_TIME,'yyyy-mm-dd hh24:mi:ss') FEE_TIME,APPLY_NO,to_char(APPLY_BATCH_ID) APPLY_BATCH_ID,REMARK,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3,to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3
  FROM TF_B_RES_PRODUCE_MAIN
 WHERE (:PRODUCE_ID is null or PRODUCE_ID = :PRODUCE_ID)
   AND (:EPARCHY_CODE is null or EPARCHY_CODE = :EPARCHY_CODE)
   AND (:DEPART_ID is null or DEPART_ID = :DEPART_ID)
   AND (:AUDIT_STATE_CODE is null or AUDIT_STATE_CODE = :AUDIT_STATE_CODE)
   AND PLAN_START_TIME >= to_date(:PLAN_START_TIME_S,'yyyy-mm-dd hh24:mi:ss')
   AND PLAN_START_TIME <= to_date(:PLAN_START_TIME_E,'yyyy-mm-dd hh24:mi:ss')
   AND (:ASSIGN_STAFF_ID is null or trim(ASSIGN_STAFF_ID) = :ASSIGN_STAFF_ID)
   AND RSRV_STR1 = :RSRV_STR1
   AND (:RES_TYPE_CODE is null or RES_TYPE_CODE = :RES_TYPE_CODE)