SELECT QR_CODE_ID,
       USER_ID,
       SERIAL_NUMBER,
       DOWNLOAD_URL,
       ACTIVATION_CODE,
       BIZ_TYPE,
       BIZ_TYPE_TIME,
       RESULT_CODE,
       RESULT_MESSAGE,
       PRIMARY_MSISDN,
       DEVICE_TYPE,
       EID,
       IMEI,
       ICCID1,
       ICCID2,
       ACCEPT_TIME,
       UPDATE_TIME,
       TRADE_STAFF_ID,
       TRADE_DEPART_ID,
       TRADE_CITY_CODE,
       TRADE_EPARCHY_CODE,
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
       RSRV_STR6,
       RSRV_STR7,
       RSRV_STR8,
       RSRV_STR9,
       RSRV_STR10,
       RSRV_DATE1,
       RSRV_DATE2,
       RSRV_DATE3,
       RSRV_DATE4,
       RSRV_DATE5,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3,
       RSRV_TAG4,
       RSRV_TAG5
  FROM TF_B_ESIM_QRCODE T
 WHERE 1=1
   AND T.SERIAL_NUMBER = :SERIAL_NUMBER
   AND T.EID = :EID
   AND T.BIZ_TYPE = :BIZ_TYPE
 ORDER BY T.BIZ_TYPE_TIME DESC