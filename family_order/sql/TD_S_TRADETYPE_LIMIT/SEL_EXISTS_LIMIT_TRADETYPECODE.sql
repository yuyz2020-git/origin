
SELECT TRADE_TYPE_CODE, LIMIT_TRADE_TYPE_CODE, BRAND_CODE, LIMIT_ATTR, LIMIT_TAG, TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE, EPARCHY_CODE, REMARK, UPDATE_STAFF_ID, UPDATE_DEPART_ID,
       TO_CHAR(UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME
FROM   TD_S_TRADETYPE_LIMIT A
WHERE  TRADE_TYPE_CODE = :TRADE_TYPE_CODE
AND    EXISTS
 (SELECT /*+ INDEX(T IDX_TF_B_TRADE_USERID) */1
        FROM   TF_B_TRADE T
        WHERE  T.USER_ID = :USER_ID
        AND    T.TRADE_TYPE_CODE = A.LIMIT_TRADE_TYPE_CODE)
AND    (BRAND_CODE = :BRAND_CODE OR BRAND_CODE = 'ZZZZ')
AND    LIMIT_ATTR = :LIMIT_ATTR
AND    LIMIT_TAG = :LIMIT_TAG
AND    SYSDATE BETWEEN START_DATE AND END_DATE
AND    (EPARCHY_CODE = :EPARCHY_CODE OR EPARCHY_CODE = 'ZZZZ')