SELECT COUNT(1) ORDERNUM
  FROM TF_B_TRADE A, TF_B_TRADE_PLATSVC B
 WHERE A.TRADE_ID = B.TRADE_ID
   AND A.USER_ID = :USER_ID
   AND B.SERVICE_ID = :SERVICE_ID
   AND A.TRADE_TYPE_CODE = '3788'
   AND B.BIZ_TYPE_CODE = '53'