SELECT T.ROWID,
      T.ACCEPT_DATE,
      T.CANCEL_TAG,
      T.CANCEL_DATE,
      TRIM(T.INTF_ID) INTF_ID,
      T.USER_ID,
      CUST_NAME,
      EPARCHY_CODE,
      TRADE_TYPE_CODE
 FROM TF_B_TRADE T
WHERE T.TRADE_ID = :TRADE_ID
  AND T.ACCEPT_MONTH = :ACCEPT_MONTH
  AND T.CANCEL_TAG = :CANCEL_TAG