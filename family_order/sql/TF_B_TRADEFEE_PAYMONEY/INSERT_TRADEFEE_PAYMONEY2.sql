INSERT INTO TF_B_TRADEFEE_PAYMONEY(TRADE_ID, ACCEPT_MONTH, PAY_MONEY_CODE, MONEY, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10,ORDER_ID) 
VALUES (to_number(:TRADE_ID) , :ACCEPT_MONTH, :PAY_MONEY_CODE, to_number(:MONEY) , to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, :REMARK, :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, :RSRV_STR6, :RSRV_STR7, :RSRV_STR8, :RSRV_STR9, :RSRV_STR10,:ORDER_ID)