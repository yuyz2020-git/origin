UPDATE TI_B_SERVICE_OLCOM T  SET T.FINISH_DATE = :FINISH_DATE,
       T.IN_DATE = SYSDATE,
       T.STATE = :STATE, 
       T.OPERATE_TYPE = :OPERATE_TYPE,
       T.BASE_SERVICE=  :BASE_SERVICE,
       T.BASE_SERVICE_ID= :BASE_SERVICE_ID,
       T.ORDER_ID = :ORDER_ID,
       T.REMARK = :REMARK
 WHERE T.SERIAL_NUMBER= :SERIAL_NUMBER