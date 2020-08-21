Select to_char(TRADE_ID) TRADE_ID, ACCEPT_MONTH, to_char(USER_ID) USER_ID, SERIAL_NUMBER_B, PRODUCT_ID, PACKAGE_ID, to_char(INST_ID) INST_ID, to_char(CAMPN_ID) CAMPN_ID, GOODS_ID, GOODS_NAME, to_char(GOODS_NUM) GOODS_NUM, to_char(GOODS_VALUE) GOODS_VALUE, GOODS_STATE, RES_TAG, RES_TYPE_CODE, RES_ID, RES_CODE, DEVICE_MODEL_CODE, DEVICE_MODEL, to_char(DEVICE_COST) DEVICE_COST, DEVICE_BRAND_CODE, DEVICE_BRAND, DESTROY_FLAG, GIFT_MODE, POST_NAME, POST_ADDRESS, POST_CODE, to_char(RELATION_TRADE_ID) RELATION_TRADE_ID, to_char(ACCEPT_DATE,'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE, to_char(CANCEL_DATE,'yyyy-mm-dd hh24:mi:ss') CANCEL_DATE, MODIFY_TAG, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, to_char(RSRV_NUM4) RSRV_NUM4, to_char(RSRV_NUM5) RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2, to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3
 FROM TF_B_TRADE_SALE_GOODS
WHERE trade_id = :TRADE_ID
AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
AND PRODUCT_ID = TO_NUMBER(:PRODUCT_ID)
AND PACKAGE_ID = TO_NUMBER(:PACKAGE_ID)
AND modify_tag != '9'