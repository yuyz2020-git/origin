select SEQ,REQ_DAY,PRI_MSISDN,OPR_CODE,ADD_RESULT,DEL_RESULT,AUX_TYPE,AUX_MSISDN,AUX_ICCID,EID,IMEI,AUX_NICK_NAME,CTEATE_TIME,BIZ_ORDER_RESULT,RESULT_DESC,RSP_TIME,RSP_COUNT,RSP_DESC,
   RSRV_STR1,RSRV_STR2,RSRV_STR3 from TI_B_MDRP_REALSYNC where PRI_MSISDN=:PRI_MSISDN ORDER BY SEQ DESC