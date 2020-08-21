SELECT A.PARTITION_ID,
       TO_CHAR(A.USER_ID) USER_ID,
       A.SERVICE_ID,
       A.SERIAL_NUMBER,
       A.SP_CODE,
       A.BIZ_CODE,
       A.BIZ_TYPE_CODE,
       A.BIZ_STATE_CODE,
       A.PRODUCT_NO,
       A.ORG_DOMAIN,
       A.OPER_CODE,
       A.OPR_SOURCE,
       A.BILL_TYPE,
       A.PRICE,
       TO_CHAR(A.FIRST_DATE, 'yyyy-mm-dd hh24:mi:ss') FIRST_DATE,
       TO_CHAR(A.FIRST_DATE_MON, 'yyyy-mm-dd hh24:mi:ss') FIRST_DATE_MON,
       A.GIFT_SERIAL_NUMBER,
       A.GIFT_USER_ID,
       TO_CHAR(A.SUBSCRIBE_ID) SUBSCRIBE_ID,
       TO_CHAR(A.START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(A.END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       TO_CHAR(A.UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       A.UPDATE_STAFF_ID,
       A.UPDATE_DEPART_ID,
       A.REMARK,
       A.RSRV_NUM1,
       A.RSRV_NUM2,
       A.RSRV_NUM3,
       TO_CHAR(A.RSRV_NUM4) RSRV_NUM4,
       TO_CHAR(A.RSRV_NUM5) RSRV_NUM5,
       A.RSRV_STR1,
       A.RSRV_STR2,
       A.RSRV_STR3,
       A.RSRV_STR4,
       A.RSRV_STR5,
       A.RSRV_STR6,
       A.RSRV_STR7,
       A.RSRV_STR8,
       A.RSRV_STR9,
       A.RSRV_STR10,
       TO_CHAR(A.RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       TO_CHAR(A.RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       TO_CHAR(A.RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
       A.RSRV_TAG1,
       A.RSRV_TAG2,
       A.RSRV_TAG3
  FROM TF_F_USER_PLATSVC A
 WHERE A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND A.SERVICE_ID IN
       (SELECT SERVICE_ID
          FROM TD_B_PLATSVC B
         WHERE B.SP_CODE <> 'REG_SP'
           AND B.BIZ_TYPE_CODE = '53'
           AND SYSDATE BETWEEN B.START_DATE AND B.END_DATE)
   AND A.USER_ID = :USER_ID
   AND (A.BIZ_STATE_CODE = 'A' OR A.BIZ_STATE_CODE = 'N' OR
       A.BIZ_STATE_CODE = 'L')
   AND sysdate between A.START_DATE and A.END_DATE
