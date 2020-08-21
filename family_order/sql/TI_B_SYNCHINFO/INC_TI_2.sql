INSERT INTO TI_B_USER_INFOCHANGE (SYNC_SEQUENCE,MODIFY_TAG,TRADE_ID,PARTITION_ID,USER_ID,TRADE_TYPE_CODE,RELATION_TRADE_ID,PRODUCT_ID,BRAND_CODE,SERIAL_NUMBER,IMSI,NET_TYPE_CODE,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
 SELECT TO_NUMBER(:SYNC_SEQUENCE),:MODIFY_TAG,TO_NUMBER(:TRADE_ID),PARTITION_ID,USER_ID,TRADE_TYPE_CODE,RELATION_TRADE_ID,PRODUCT_ID,BRAND_CODE,SERIAL_NUMBER,IMSI,NET_TYPE_CODE,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
 FROM TF_F_USER_INFOCHANGE
 WHERE USER_ID = TO_NUMBER(:USER_ID)
 AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)