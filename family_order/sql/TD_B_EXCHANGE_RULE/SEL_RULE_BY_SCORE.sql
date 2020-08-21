--IS_CACHE=Y
SELECT A.RULE_ID,
       A.RULE_NAME,
       A.SCORE,
       A.SCORE_NUM,
       A.SCORE_TYPE_CODE,
       TO_CHAR(A.START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(A.END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,
       B.EXCHANGE_TYPE,
       A.EXCHANGE_TYPE_CODE,
       A.BRAND_CODE,
       A.AMONTHS,
       A.CLASS_LIMIT,
       A.DEPOSIT_CODE,
       A.EPARCHY_CODE,
       A.EXCHANGE_LIMIT,
       A.EXCHANGE_MODE,
       A.FMONTHS,
       A.GIFT_TYPE_CODE,
       A.MONEY_RATE,
       A.REMARK,
       A.REWARD_LIMIT,
       A.RIGHT_CODE,
       A.RSRV_STR1,
       A.RSRV_STR2,
       A.RSRV_STR3,
       A.RSRV_STR4,
       A.RSRV_STR5,
       A.STATUS,
       A.UNIT,
       A.UPDATE_DEPART_ID,
       A.UPDATE_STAFF_ID,
       TO_CHAR(A.UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME
  FROM TD_B_EXCHANGE_RULE A, TD_B_SCORE_EXCHANGE_TYPE B
 WHERE 1=1
   AND A.EXCHANGE_TYPE_CODE(+) = B.EXCHANGE_TYPE_CODE
   AND A.STATUS = '0'
   AND A.END_DATE >= SYSDATE
   AND A.EXCHANGE_TYPE_CODE = B.EXCHANGE_TYPE_CODE
   AND (A.EPARCHY_CODE = B.EPARCHY_CODE OR B.EPARCHY_CODE = 'ZZZZ')
   AND (A.EPARCHY_CODE = :EPARCHY_CODE OR A.EPARCHY_CODE = 'ZZZZ')
   AND (A.BRAND_CODE = :BRAND_CODE OR A.BRAND_CODE = 'ZZZZ')
   AND A.SCORE <= :SCORE
   AND A.EXCHANGE_TYPE_CODE IN ('1', '3', 'A', 'N')
 ORDER BY A.EXCHANGE_TYPE_CODE