INSERT INTO TS_S_TRADE_DAY_STAFF
      (CLCT_DAY,DATE_ID,STAFF_ID,DEPART_ID,PRODUCT_ID,TRADE_TYPE_CODE,OLD_PRODUCT_ID,TRADE_COUNT,CANCEL_TAG)
SELECT :CLCT_DAY,TO_NUMBER(SUBSTR(:CLCT_DAY,5,2)),A.TRADE_STAFF_ID,B.DEPART_ID,A.PRODUCT_ID,A.TRADE_TYPE_CODE,NULL,COUNT(A.TRADE_ID),'0'
  FROM tf_bh_trade_staff A ,TS_M_STAFF_CLCTTIME_TEMP B
 WHERE B.CLCT_DAY = :CLCT_DAY
   AND B.STAFF_ID >= :START_STAFF_ID
   AND B.STAFF_ID <= :END_STAFF_ID
   AND B.STAFF_ID = A.TRADE_STAFF_ID
   AND A.CANCEL_TAG IN ('0','1')
   AND A.ACCEPT_DATE >= B.START_DATE
   AND A.ACCEPT_DATE <  B.END_DATE
 GROUP BY A.TRADE_STAFF_ID,B.DEPART_ID,A.PRODUCT_ID,A.TRADE_TYPE_CODE
 UNION ALL
SELECT :CLCT_DAY,TO_NUMBER(SUBSTR(:CLCT_DAY,5,2)),A.TRADE_STAFF_ID,B.DEPART_ID,A.PRODUCT_ID,A.TRADE_TYPE_CODE,NULL,COUNT(A.TRADE_ID),'0'
  FROM TF_B_TRADE A ,TS_M_STAFF_CLCTTIME_TEMP B
 WHERE B.CLCT_DAY = :CLCT_DAY
   AND B.STAFF_ID >= :START_STAFF_ID
   AND B.STAFF_ID <= :END_STAFF_ID
   AND B.STAFF_ID = A.TRADE_STAFF_ID
   AND A.CANCEL_TAG IN ('0','1')
   AND A.ACCEPT_DATE >= B.START_DATE
   AND A.ACCEPT_DATE <  B.END_DATE
 GROUP BY A.TRADE_STAFF_ID,B.DEPART_ID,A.PRODUCT_ID,A.TRADE_TYPE_CODE