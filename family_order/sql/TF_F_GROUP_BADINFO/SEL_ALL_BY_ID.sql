SELECT INDICT_SEQ, PROVINCE, SERIAL_NUMBER, HANDLING_TIME, ORI_HANDING_SUGGEST, HANDLING_STATE, HANDLING_TYPE, ADD_RESULT, SOURCE_DATA, SERVICE_CONTENT, BADNESS_CLASS, BLACK_STATE, START_DATE, END_DATE, UPDATE_TIME, REMOVE_RESULT, REMOVE_SVC_CONTENT, REMOVE_SOURCE_DATA, REMOVE_HANDLING_STATE, EXEC_RESULT, FAIL_DESC, DATA_CHNL,REMOVE_DATA_CHNL, RELA_ADD_TRADEID, REMOVE_HANDLING_TYPE,RELA_REMOVE_TRADEID, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_DATE1, RSRV_DATE2
 from TF_F_GROUP_BADINFO t
 WHERE 1 = 1
   AND INDICT_SEQ = :INDICT_SEQ