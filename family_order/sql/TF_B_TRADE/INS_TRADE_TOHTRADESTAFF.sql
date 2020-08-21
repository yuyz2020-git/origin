INSERT INTO TF_BH_TRADE_STAFF
  SELECT *
    FROM TF_B_TRADE
   WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
     AND CANCEL_TAG = :CANCEL_TAG
     and accept_month = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))