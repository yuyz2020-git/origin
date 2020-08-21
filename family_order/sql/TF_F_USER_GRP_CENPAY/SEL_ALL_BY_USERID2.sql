SELECT PARTITION_ID,
       USER_ID,
       INST_ID,
       MP_GROUP_CUST_CODE,
       GROUP_ID,
       BIZ_MODE,
       PROVINCE_CODE,
       CUST_NAME,
       MERCH_SPEC_CODE,
       PRODUCT_SPEC_CODE,
       PRODUCT_ID,
       PRODUCT_OFFER_ID,
       PAY_TYPE,
       OPER_TYPE,
       SERVICE_ID,
       LIMIT_FEE,
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
  FROM TF_F_USER_GRP_CENPAY
 WHERE USER_ID = TO_NUMBER(:USER_ID)
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND END_DATE > SYSDATE
 ORDER BY START_DATE DESC