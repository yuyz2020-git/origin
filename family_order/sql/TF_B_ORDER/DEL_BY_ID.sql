DELETE TF_B_ORDER
 WHERE ORDER_ID = TO_NUMBER(:ORDER_ID)
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:ORDER_ID, 5, 2))