INSERT INTO TF_B_TRADEFEE_GIFTFEE(TRADE_ID, ACCEPT_MONTH, USER_ID, USER_ID_A, FEE_MODE, FEE_TYPE_CODE, FEE, CHARGE_ID, DISCNT_GIFT_ID, LIMIT_MONEY, MONTHS, EFFICET_DATE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10) 
VALUES (to_number(:TRADE_ID) , :ACCEPT_MONTH, to_number(:USER_ID) , to_number(:USER_ID_A) , :FEE_MODE, :FEE_TYPE_CODE, to_number(:FEE) , to_number(:CHARGE_ID) , :DISCNT_GIFT_ID, to_number(:LIMIT_MONEY) , :MONTHS, to_date(:EFFICET_DATE,'yyyy-mm-dd hh24:mi:ss') , to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, :REMARK, :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, :RSRV_STR6, :RSRV_STR7, :RSRV_STR8, :RSRV_STR9, :RSRV_STR10)