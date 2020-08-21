SELECT TO_CHAR(t.TRADE_ID) AS TRADE_ID, t.ACCEPT_MONTH AS ACCEPT_MONTH,
       TO_CHAR(t.USER_ID) AS USER_ID, TO_CHAR(t.USER_ID_A) AS USER_ID_A, t.PRODUCT_ID AS PRODUCT_ID,
       t.PRODUCT_MODE AS PRODUCT_MODE, t.BRAND_CODE AS BRAND_CODE,
       t.OLD_PRODUCT_ID AS OLD_PRODUCT_ID, t.OLD_BRAND_CODE AS OLD_BRAND_CODE,
       TO_CHAR(t.INST_ID) AS INST_ID, TO_CHAR(t.CAMPN_ID) AS CAMPN_ID,
       TO_CHAR(t.START_DATE, 'YYYY-MM-DD HH24:MI:SS') AS START_DATE,
       TO_CHAR(t.END_DATE, 'YYYY-MM-DD HH24:MI:SS') AS END_DATE, t.MODIFY_TAG AS MODIFY_TAG,
       TO_CHAR(t.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') AS UPDATE_TIME,
       t.UPDATE_STAFF_ID AS UPDATE_STAFF_ID, t.UPDATE_DEPART_ID AS UPDATE_DEPART_ID,
       t.REMARK AS REMARK, t.RSRV_NUM1 AS RSRV_NUM1, t.RSRV_NUM2 AS RSRV_NUM2,
       t.RSRV_NUM3 AS RSRV_NUM3, TO_CHAR(t.RSRV_NUM4) AS RSRV_NUM4,
       TO_CHAR(t.RSRV_NUM5) AS RSRV_NUM5, t.RSRV_STR1 AS RSRV_STR1, t.RSRV_STR2 AS RSRV_STR2,
       t.RSRV_STR3 AS RSRV_STR3, t.RSRV_STR4 AS RSRV_STR4, t.RSRV_STR5 AS RSRV_STR5,
       TO_CHAR(t.RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') AS RSRV_DATE1,
       TO_CHAR(t.RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') AS RSRV_DATE2,
       TO_CHAR(t.RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') AS RSRV_DATE3, t.RSRV_TAG1 AS RSRV_TAG1,
       t.RSRV_TAG2 AS RSRV_TAG2, t.RSRV_TAG3 AS RSRV_TAG3
FROM   TF_B_TRADE_PRODUCT t
WHERE  product_mode = '00'
	and  trade_id=TO_NUMBER(:TRADE_ID)
	and  accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))