INSERT INTO TF_F_USER_BRANDCHANGE(PARTITION_ID,USER_ID,TRADE_TYPE_CODE,RELATION_TRADE_ID,BRAND_CODE,BRAND_NO,VIP_ID,START_DATE,
  END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,
  RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
SELECT PARTITION_ID,USER_ID,TRADE_TYPE_CODE,RELATION_TRADE_ID,BRAND_CODE,BRAND_NO,VIP_ID,START_DATE,END_DATE,
  UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,
  RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
FROM TF_B_TRADE_BRANDCHANGE_BAK
WHERE trade_id=to_number(:TRADE_ID)
  AND accept_month=to_number(SUBSTR(:TRADE_ID,5,2))