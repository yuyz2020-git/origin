DELETE TF_B_ORDER
 WHERE ORDER_ID = :ORDER_ID
   AND CANCEL_TAG = :CANCEL_TAG
   AND SYSDATE < EXEC_TIME