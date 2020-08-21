SELECT TRADE_ID,
       ACCEPT_MONTH,
       MODIFY_TAG,
       USER_ID,
       SERIAL_NUMBER,
       NOTE_ID,
       INST_ID,
       START_DATE,
       END_DATE,
       UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_NUM4,
       RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3,
       RSRV_DATE1,
       RSRV_DATE2,
       RSRV_DATE3,
       RSRV_DATE4,
       RSRV_DATE5
  FROM TF_B_TRADE_WIDENET_OTHER A
 WHERE A.TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND A.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))