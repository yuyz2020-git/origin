INSERT INTO TI_B_SYNCHINFO (SYNC_SEQUENCE,SYNC_TYPE,TRADE_ID,STATE,SYNC_TIME,RESULT_INFO,UPDATE_TIME,REMARK,RSRV_STR1,RSRV_STR2,RSRV_STR3,SYNC_DAY)
    VALUES(TO_NUMBER(:SYNC_SEQUENCE),'0',TO_NUMBER(:TRADE_ID),'0','','','','','','','',TO_NUMBER(:SYNC_DAY))