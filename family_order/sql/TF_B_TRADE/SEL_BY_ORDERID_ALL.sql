SELECT *     
  FROM TF_B_TRADE a
 WHERE a.ORDER_ID = :ORDER_ID
   AND a.CANCEL_TAG = :CANCEL_TAG