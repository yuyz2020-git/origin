INSERT INTO TF_F_FAMILY_REMIND
  (TRADE_ID,
   ACCEPT_MONTH,
   SERIAL_NUMBER_A,
   SERIAL_NUMBER_B,
   ROLE_CODE_B,
   SHORT_CODE,
   DISCNT_CODE,
   RELATION_TRADE_ID,
   BACK_TIME,
   LAST_SEND_TIME,
   SEND_TIME,
   SEND_TIMES,
   START_DATE,
   END_DATE,
   UPDATE_TIME,
   UPDATE_STAFF_ID,
   UPDATE_DEPART_ID,
   REMARK,
   RSRV_STR1)
VALUES
  (TO_NUMBER(:TRADE_ID),
   TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2)),
   :SERIAL_NUMBER_A,
   :SERIAL_NUMBER_B,
   :ROLE_CODE_B,
   :SHORT_CODE,
   :DISCNT_CODE,
   :RELATION_TRADE_ID,
   NULL,
   SYSDATE,
   SYSDATE,
   0,
   SYSDATE,
   TO_DATE('2050-12-31 23:59:59', 'yyyy-mm-dd hh24:mi:ss'),
   SYSDATE,
   :UPDATE_STAFF_ID,
   :UPDATE_DEPART_ID,
   :REMARK,
   :RSRV_STR1)