UPDATE TF_B_ORDER
   SET EXEC_TIME = SYSDATE, UPDATE_TIME = SYSDATE, UPDATE_STAFF_ID = 'SOA'
 WHERE ORDER_ID = TO_NUMBER(:ORDER_ID)