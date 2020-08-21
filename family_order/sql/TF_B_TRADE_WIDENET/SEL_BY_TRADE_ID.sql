SELECT TO_CHAR(TRADE_ID) TRADE_ID,
       ACCEPT_MONTH,
       TO_CHAR(USER_ID) USER_ID,
       STAND_ADDRESS,
       DETAIL_ADDRESS,
       SIGN_PATH,
       PORT_TYPE,
       MODIFY_TAG,
       TO_CHAR(INST_ID) INST_ID,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       TO_CHAR(UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
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
       RSRV_DATE1,
       RSRV_DATE2,
       RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3,
       ACCT_PASSWD,
       STAND_ADDRESS_CODE,
       OLD_STAND_ADDRESS,
       OLD_STAND_ADDRESS_CODE,
       PHONE,
       CONTACT,
       CONTACT_PHONE,
       OLD_DETAIL_ADDRESS,
       SUGGEST_DATE
  FROM TF_B_TRADE_WIDENET
 WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)