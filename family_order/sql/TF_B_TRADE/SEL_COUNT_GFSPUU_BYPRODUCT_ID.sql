SELECT COUNT(1) RECORDCOUNT FROM TF_B_TRADE T, TF_B_TRADE_RELATION B
 WHERE T.PRODUCT_ID = :PRODUCT_ID
   AND T.CUST_ID_B = :CUST_ID_B
   AND T.TRADE_ID = B.TRADE_ID
   AND B.RELATION_TYPE_CODE = 'GS'