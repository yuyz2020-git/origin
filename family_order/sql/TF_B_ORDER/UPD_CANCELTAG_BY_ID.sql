UPDATE TF_B_ORDER
   SET CANCEL_TAG = :CANCEL_TAG, CANCEL_DATE = SYSDATE, REMARK = :REMARK
 WHERE ORDER_ID = TO_NUMBER(:ORDER_ID)