INSERT INTO TI_B_USER_SERTRACK_LOG
  (SYNC_SEQUENCE,
   MODIFY_TAG,
   TRADE_ID,
   ACCEPT_MONTH,
   USER_ID,
   SERIAL_NUMBER,
   SERV_TYPE,
   STATE_CODE,
   START_DATE,
   END_DATE,
   UPDATE_DATE,
   REMARK,
   RSRV_STR1,
   RSRV_STR2,
   RSRV_STR3,
   RSRV_STR4,
   RSRV_STR5,
   RSRV_DATE1,
   RSRV_DATE2,
   RSRV_DATE3,
   RSRV_TAG1,
   RSRV_TAG2,
   RSRV_TAG3)
  SELECT :SYNC_SEQUENCE,
         MODIFY_TAG,
         TRADE_ID,
         ACCEPT_MONTH,
         USER_ID,
         SERIAL_NUMBER,
         SERV_TYPE,
         STATE_CODE,
         START_DATE,
         END_DATE,
         UPDATE_DATE,
         REMARK,
         RSRV_STR1,
         RSRV_STR2,
         RSRV_STR3,
         RSRV_STR4,
         RSRV_STR5,
         RSRV_DATE1,
         RSRV_DATE2,
         RSRV_DATE3,
         RSRV_TAG1,
         RSRV_TAG2,
         RSRV_TAG3
    FROM TL_F_USER_SERTRACK_LOG
   WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)