UPDATE TF_F_USER_GRP_MERCH_MEB
   SET SERIAL_NUMBER    = :SERIAL_NUMBER,
       SERVICE_ID       = :SERVICE_ID,
       STATUS           = :STATUS,
       EC_USER_ID       = TO_NUMBER(:EC_USER_ID),
       EC_SERIAL_NUMBER = :EC_SERIAL_NUMBER,
       PRODUCT_OFFER_ID = :PRODUCT_OFFER_ID,
       END_DATE         = TO_DATE(:END_DATE, 'yyyy-mm-dd hh24:mi:ss'),
       UPDATE_TIME      = TO_DATE(:UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss'),
       UPDATE_STAFF_ID  = :UPDATE_STAFF_ID,
       UPDATE_DEPART_ID = :UPDATE_DEPART_ID,
       REMARK           = :REMARK,
       RSRV_NUM1        = :RSRV_NUM1,
       RSRV_NUM2        = :RSRV_NUM2,
       RSRV_NUM3        = :RSRV_NUM3,
       RSRV_NUM4        = TO_NUMBER(:RSRV_NUM4),
       RSRV_NUM5        = TO_NUMBER(:RSRV_NUM5),
       RSRV_STR1        = :RSRV_STR1,
       RSRV_STR2        = :RSRV_STR2,
       RSRV_STR3        = :RSRV_STR3,
       RSRV_STR4        = :RSRV_STR4,
       RSRV_STR5        = :RSRV_STR5,
       RSRV_DATE1       = TO_DATE(:RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss'),
       RSRV_DATE2       = TO_DATE(:RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss'),
       RSRV_DATE3       = TO_DATE(:RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss'),
       RSRV_TAG1        = :RSRV_TAG1,
       RSRV_TAG2        = :RSRV_TAG2,
       RSRV_TAG3        = :RSRV_TAG3
 WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND PRODUCT_ORDER_ID = :PRODUCT_ORDER_ID
   AND START_DATE = TO_DATE(:START_DATE, 'yyyy-mm-dd hh24:mi:ss')
   and EC_USER_ID = to_number(:EC_USER_ID)