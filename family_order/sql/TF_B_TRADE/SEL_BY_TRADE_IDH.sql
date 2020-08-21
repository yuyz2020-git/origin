SELECT TO_CHAR(TRADE_ID) TRADE_ID, TRADE_TYPE_CODE
  FROM TF_B_TRADE
 WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND CANCEL_TAG <> '1'
UNION ALL
SELECT TO_CHAR(TRADE_ID) TRADE_ID, TRADE_TYPE_CODE
  FROM TF_BH_TRADE
 WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND CANCEL_TAG <> '1'