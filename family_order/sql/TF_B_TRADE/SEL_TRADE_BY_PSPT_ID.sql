SELECT A.*
  FROM TF_B_TRADE A, TF_B_TRADE_CUSTOMER B
 WHERE B.PSPT_ID = :PSPT_ID
 AND A.TRADE_ID = B.TRADE_ID
 AND A.ACCEPT_DATE > SYSDATE-1/24
 AND A.ACCEPT_MONTH = :ACCEPT_MONTH
 AND A.TRADE_TYPE_CODE IN('10','40','60','100','310')
 AND A.CANCEL_TAG='0'
 AND A.BRAND_CODE != 'PWLW'
 UNION
 SELECT A.*
  FROM TF_B_TRADE A, TF_B_TRADE_CUST_PERSON C
 WHERE C.RSRV_STR7 = :PSPT_ID
 AND A.TRADE_ID = C.TRADE_ID
 AND A.ACCEPT_DATE > SYSDATE-1/24
 AND A.ACCEPT_MONTH = :ACCEPT_MONTH
 AND A.TRADE_TYPE_CODE IN('10','40','60','100','310')
 AND A.CANCEL_TAG='0'
 AND A.BRAND_CODE != 'PWLW'