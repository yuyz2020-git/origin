SELECT TO_CHAR(HOME_CUST_ID) HOME_CUST_ID,
       PARTITION_ID,
       HOME_ID,
       HOME_NAME,
       HOME_ADDRESS,
       HOME_PHONE,
       HOME_REGION,
       CUST_NAME,
       SERIAL_NUMBER,
       TO_CHAR(HEAD_CUST_ID) HEAD_CUST_ID,
       HEAD_TYPE_CODE,
       HEAD_PSPT_ID,
       MEMBER_NUM,
       HOME_STATE,
       HOME_CUST_SCORE,
       HOME_POST_CODE,
       FAX_NBR,
       PHONE,
       UNIFY_PAY_CODE,
       WORK_ADDRESS,
       WORK_NAME,
       HAS_CAR,
       HAS_CHILD,
       CHILD_AGE,
       HAS_FETION,
       QQ,
       MSN,
       EMAIL,
       INTEREST_CODE,
       EPARCHY_CODE,
       CITY_CODE,
       IN_DATE,
       IN_STAFF_ID,
       IN_DEPART_ID,
       REMOVE_TAG,
       REMOVE_DATE,
       REMOVE_STAFF_ID,
       REMOVE_DEPART_ID,
       REMOVE_REASON,
       UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
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
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_F_CUST_FAMILY
 WHERE SERIAL_NUMBER = TO_NUMBER(:SERIAL_NUMBER)
AND REMOVE_TAG='0'