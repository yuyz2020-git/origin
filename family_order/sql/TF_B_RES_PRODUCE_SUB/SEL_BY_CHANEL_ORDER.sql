SELECT PRODUCE_SUB_ID,to_char(PRODUCE_BATCH_ID) PRODUCE_BATCH_ID,RES_TYPE_CODE,START_RES_NO,END_RES_NO,RES_KIND_CODE,CAPACITY_TYPE_CODE,to_char(TIME_IN,'yyyy-mm-dd hh24:mi:ss') TIME_IN,STAFF_ID_IN,to_char(ASSIGN_NUM) ASSIGN_NUM,to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,DATA_FILE,CHECK_FILE,to_char(ASSIGN_TIME,'yyyy-mm-dd hh24:mi:ss') ASSIGN_TIME,ASSIGN_STAFF_ID,RECEIVE_TAG,to_char(RECEIVE_DATE,'yyyy-mm-dd hh24:mi:ss') RECEIVE_DATE,FINISH_TAG,to_char(FINISH_PRODUCE_DATE,'yyyy-mm-dd hh24:mi:ss') FINISH_PRODUCE_DATE,BACK_TAG,APPLY_NO,to_char(APPLY_BATCH_ID) APPLY_BATCH_ID,APPLY_DETAIL_NO,PRODUCE_ID,to_char(BATCH_ID) BATCH_ID,AUDIT_NO,AUDIT_STAFF_ID,to_char(AUDIT_DATE,'yyyy-mm-dd hh24:mi:ss') AUDIT_DATE,AUDIT_REMARK,AUDIT_TYPE_CODE,REMIND_CODE_A,to_char(REMIND_DATE_A,'yyyy-mm-dd hh24:mi:ss') REMIND_DATE_A,REMIND_CODE_B,to_char(REMIND_DATE_B,'yyyy-mm-dd hh24:mi:ss') REMIND_DATE_B,REMARK,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3,to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3
  FROM TF_B_RES_PRODUCE_SUB
 WHERE ASSIGN_TIME >= to_date(:ASSIGN_TIME_S,'yyyy-mm-dd hh24:mi:ss')
   AND ASSIGN_TIME <= to_date(:ASSIGN_TIME_E,'yyyy-mm-dd hh24:mi:ss')
   AND (:ASSIGN_STAFF_ID is null or trim(ASSIGN_STAFF_ID) = :ASSIGN_STAFF_ID)
   AND (:PRODUCE_ID is null or PRODUCE_ID = :PRODUCE_ID)
   AND (:RSRV_STR1 is null or RSRV_STR1 = :RSRV_STR1)
   AND (:RES_TYPE_CODE is null or RES_TYPE_CODE = :RES_TYPE_CODE)