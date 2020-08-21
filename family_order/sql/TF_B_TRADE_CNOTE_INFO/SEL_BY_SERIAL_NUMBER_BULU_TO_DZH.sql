SELECT TO_CHAR(A.TRADE_ID) TRADE_ID,
       B.TRADE_TYPE_CODE,
       A.NOTE_TYPE,
       TO_CHAR(B.ACCEPT_DATE, 'YYYY-MM-DD HH24:MI:SS') ACCEPT_DATE,
       B.USER_ID,
       B.SERIAL_NUMBER,
	   B.CUST_ID,
       B.CUST_NAME,
       B.BRAND_CODE BRAND_CODE,
       DECODE(SIGN(LENGTH(B.PROCESS_TAG_SET) - 20),-1,'Z',SUBSTR(B.PROCESS_TAG_SET, 20, 1)) VERIFY_MODE,
       B.TRADE_STAFF_ID,
       B.TRADE_DEPART_ID ORG_INFO,
       A.RECEIPT_INFO1,
       A.RECEIPT_INFO2,
       A.RECEIPT_INFO3,
       A.RECEIPT_INFO4,
       A.RECEIPT_INFO5,
       A.NOTICE_CONTENT,
       A.RSRV_STR1,
       substr(process_tag_set, 20, 1) vip_class
  FROM TF_B_TRADE_CNOTE_INFO A, TF_BH_TRADE B
 WHERE A.TRADE_ID = B.TRADE_ID
   AND A.ACCEPT_MONTH = B.ACCEPT_MONTH
   AND A.TRADE_ID =:TRADE_ID