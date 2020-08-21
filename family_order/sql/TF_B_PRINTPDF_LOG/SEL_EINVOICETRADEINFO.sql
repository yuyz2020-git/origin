SELECT A.PRINT_ID,
       A.PARTITION_ID,
       A.USER_ID,
       A.TRADE_ID,
       A.ACCEPT_MONTH,
       A.ORDER_ID,
       A.TRADE_STAFF_ID,
       A.TRADE_DEPART_ID,
       A.TRADE_CITY_CODE,
       A.TRADE_EPARCHY_CODE,
       A.SERIAL_NUMBER,
       A.ACCT_ID,
       A.CUST_ID,
       A.PAY_NAME,
       A.ASSEMB_FLAG,
       A.TOTAL_FEE,
       A.EPARCHY_CODE,
       A.TAX_NO,
       A.NOTE_NO,
       A.PRINT_FLAG,
       A.POST_TAG,
       A.POST_EMAIL,
       A.POST_SN,
       TO_CHAR(A.IN_DATE, 'YYYY-MM-DD HH24:MI:SS') IN_DATE,
       A.IN_STAFF_ID,
       A.IN_DEPART_ID,
       A.REMARK,
       A.RSRV_INFO1,
       A.RSRV_INFO2,
       A.RSRV_INFO3,
       A.RSRV_INFO4,
       A.RSRV_INFO5
  FROM TF_B_PRINTPDF_LOG A
 WHERE 1 = 1
   AND A.SERIAL_NUMBER = :SERIAL_NUMBER
   AND A.PRINT_FLAG = :PRINT_FLAG
   AND A.IN_DATE >= to_date(:START_DATE, 'YYYY-MM-DD')
   AND A.IN_DATE <= to_date(:END_DATE, 'YYYY-MM-DD')