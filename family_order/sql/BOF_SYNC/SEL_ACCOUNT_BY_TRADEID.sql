SELECT DISTINCT B.ACCT_ID
  FROM TF_B_TRADE_ACCOUNT B
 WHERE B.TRADE_ID = :TRADE_ID
   AND B.ACCEPT_MONTH = :ACCEPT_MONTH