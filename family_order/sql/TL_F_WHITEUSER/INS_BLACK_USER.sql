INSERT INTO TL_F_BLACKUSER
  (ACCEPT_MONTH,
   IN_TIME,
   SERIAL_NUMBER,
   USER_ID,
   USER_ATTR,
   USER_LEVEL,
   PROVINCE_CODE,
   EFFECT_TAG,
   BEGIN_TIME,
   END_TIME,
   EXEC_TIME,
   OPERATE_FLAG,
   UPDATE_TIME,
   UPDATE_STAFF_ID,
   UPDATE_DEPART_ID,
   RSRV_STR1,
   RSRV_STR2,
   RSRV_STR3,
   RSRV_TAG1,
   RSRV_TAG2,
   RSRV_TAG3,
   REMARK)
VALUES
  (TO_CHAR(SYSDATE, 'MM'),
   SYSDATE,
   :SERIAL_NUMBER,
   :USER_ID,
   :USER_ATTR,
   :USER_LEVEL,
   :PROVINCE_CODE,
   :EFFECT_TAG,
   :BEGIN_TIME,
   :END_TIME,
   SYSDATE,
   :OPERATE_FLAG,
   SYSDATE,
   :UPDATE_STAFF_ID,
   :UPDATE_DEPART_ID,
   :RSRV_STR1,
   :RSRV_STR2,
   :RSRV_STR3,
   :RSRV_TAG1,
   :RSRV_TAG2,
   :RSRV_TAG3,
   :REMARK)