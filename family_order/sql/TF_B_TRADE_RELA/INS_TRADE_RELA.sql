INSERT INTO TF_B_TRADE_RELA
  (ORDER_ID_A, TRADE_ID_A, ORDER_ID_B, TRADE_ID_B, TYPE, CTRL_TYPE,
   UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID)
VALUES
  (:ORDER_ID_A, :TRADE_ID_A, :ORDER_ID_B, :TRADE_ID_B, :TYPE,
   :CTRL_TYPE, SYSDATE, :UPDATE_STAFF_ID, :UPDATE_DEPART_ID)