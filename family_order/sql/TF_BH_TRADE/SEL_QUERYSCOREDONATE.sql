SELECT (SELECT A.SERIAL_NUMBER
           FROM TF_B_TRADE_SCORE A
          WHERE A.SCORE_CHANGED LIKE '-%'
            AND A.TRADE_ID = B.TRADE_ID
            AND A.ACCEPT_MONTH = B.ACCEPT_MONTH) SERIAL_NUMBER_A,
       (SELECT A.SERIAL_NUMBER
           FROM TF_B_TRADE_SCORE A
          WHERE A.SCORE_CHANGED NOT LIKE '-%'
            AND A.TRADE_ID = B.TRADE_ID
            AND A.ACCEPT_MONTH = B.ACCEPT_MONTH) SERIAL_NUMBER_B,
       (SELECT A.SCORE_CHANGED
           FROM TF_B_TRADE_SCORE A
          WHERE A.SCORE_CHANGED NOT LIKE '-%'
            AND A.TRADE_ID = B.TRADE_ID
            AND A.ACCEPT_MONTH = B.ACCEPT_MONTH) SCORE,
       TO_CHAR(B.ACCEPT_DATE, 'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE, B.CITY_CODE,
       B.TRADE_STAFF_ID
  FROM TF_BH_TRADE B
 WHERE 1 = 1
   AND B.CANCEL_TAG = '0'
   AND B.TRADE_TYPE_CODE = '340'
   AND ACCEPT_DATE >= TRUNC(TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS'))
   AND (ACCEPT_DATE < TRUNC(TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS')) + 1 OR
       :END_DATE IS NULL)
   AND B.CITY_CODE = :AREA_CODE
 ORDER BY ACCEPT_DATE