SELECT TO_CHAR(A.TRADE_ID) TRADE_ID, TRADE_TYPE_CODE, SERIAL_NUMBER, CUST_NAME,
       TO_CHAR(ACCEPT_DATE, 'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE, TRADE_STAFF_ID,
       TRADE_DEPART_ID, TRADE_CITY_CODE, TRADE_EPARCHY_CODE,
       TO_CHAR(B.DISCNT_CODE) DISCNT_CODE,
       DECODE(B.MODIFY_TAG, '0', '增加', '1', '删除', '2', '修改') MODIFY_TAG,
       TO_CHAR(B.START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(B.END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE
  FROM TF_B_TRADE A, TF_B_TRADE_DISCNT B
 WHERE A.TRADE_ID = B.TRADE_ID
   AND B.ACCEPT_MONTH = A.ACCEPT_MONTH
   AND A.ACCEPT_DATE >= TO_DATE(:START_DATE, 'yyyy-mm-dd')
   AND A.ACCEPT_DATE <= TO_DATE(:END_DATE, 'yyyy-mm-dd') + 1 - 0.00001
   AND TRIM(A.TRADE_STAFF_ID) >= :START_STAFF_ID
   AND TRIM(A.TRADE_STAFF_ID) <= :END_STAFF_ID
   AND A.TRADE_CITY_CODE = :TRADE_CITY_CODE
   AND (B.DISCNT_CODE = :DISCNT_CODE OR :DISCNT_CODE IS NULL)
   AND A.CANCEL_TAG != '2'
UNION ALL
SELECT TO_CHAR(A.TRADE_ID) TRADE_ID, TRADE_TYPE_CODE, SERIAL_NUMBER, CUST_NAME,
       TO_CHAR(ACCEPT_DATE, 'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE, TRADE_STAFF_ID,
       TRADE_DEPART_ID, TRADE_CITY_CODE, TRADE_EPARCHY_CODE,
       TO_CHAR(B.DISCNT_CODE) DISCNT_CODE,
       DECODE(B.MODIFY_TAG, '0', '增加', '1', '删除', '2', '修改') MODIFY_TAG,
       TO_CHAR(B.START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(B.END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE
  FROM TF_BH_TRADE A, TF_B_TRADE_DISCNT B
 WHERE A.TRADE_ID = B.TRADE_ID
   AND B.ACCEPT_MONTH = A.ACCEPT_MONTH
   AND A.ACCEPT_DATE >= TO_DATE(:START_DATE, 'yyyy-mm-dd')
   AND A.ACCEPT_DATE <= TO_DATE(:END_DATE, 'yyyy-mm-dd') + 1 - 0.00001
   AND TRIM(A.TRADE_STAFF_ID) >= :START_STAFF_ID
   AND TRIM(A.TRADE_STAFF_ID) <= :END_STAFF_ID
   AND A.TRADE_CITY_CODE = :TRADE_CITY_CODE
   AND (B.DISCNT_CODE = :DISCNT_CODE OR :DISCNT_CODE IS NULL)
   AND A.CANCEL_TAG != '2'
