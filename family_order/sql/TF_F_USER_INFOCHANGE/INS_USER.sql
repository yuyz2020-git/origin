INSERT INTO tf_f_user_infochange(PARTITION_ID,  USER_ID, TRADE_TYPE_CODE,  RELATION_TRADE_ID, PRODUCT_ID, BRAND_CODE, SERIAL_NUMBER, IMSI,  START_DATE,  END_DATE,  UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID)
 VALUES(:PARTITION_ID,TO_NUMBER(:USER_ID),:TRADE_TYPE_CODE,:RELATION_TRADE_ID,:PRODUCT_ID,:BRAND_CODE,:SERIAL_NUMBER,:IMSI,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'),:UPDATE_STAFF_ID, :UPDATE_DEPART_ID)