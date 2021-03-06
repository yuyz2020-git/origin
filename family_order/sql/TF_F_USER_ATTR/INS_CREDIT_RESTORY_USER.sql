INSERT INTO TF_F_USER_ATTR
  (
   PARTITION_ID,
   USER_ID,
   INST_TYPE,
   INST_ID,
   ATTR_CODE,
   ATTR_VALUE,
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
   RSRV_DATE1,
   RSRV_DATE2,
   RSRV_DATE3,
   RSRV_TAG1,
   RSRV_TAG2,
   RSRV_TAG3
   )
  SELECT 
	PARTITION_ID, 
	USER_ID,
	INST_TYPE,
	INST_ID,
	ATTR_CODE,
	ATTR_VALUE,
	START_DATE,
	END_DATE,
	SYSDATE,
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
  FROM TF_B_TRADE_ATTR_BAK a
  WHERE a.trade_id = TO_NUMBER(:TRADE_ID)
  AND a.accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
  AND a.user_id = TO_NUMBER(:USER_ID)
  AND a.end_date > SYSDATE