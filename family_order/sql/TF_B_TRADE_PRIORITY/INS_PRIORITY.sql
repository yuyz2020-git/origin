insert into TF_B_TRADE_PRIORITY (ORDER_ID, TRADE_ID, TRADE_TYPE_CODE, ACCEPT_MONTH, EXEC_TIME, RELAT_ORDER_ID, RELAT_TRADE_ID, RELAT_TRADE_TYPE_CODE, SUBSCRIBE_STATE, INSERT_TIME)
values (TO_NUMBER(:ORDER_ID), TO_NUMBER(:TRADE_ID), :TRADE_TYPE_CODE, TO_NUMBER(:ACCEPT_MONTH), to_date(SUBSTR(:EXEC_TIME,0,19), 'YYYY-MM-DD HH24:MI:SS'), TO_NUMBER(:RELAT_ORDER_ID), TO_NUMBER(:RELAT_TRADE_ID), :RELAT_TRADE_TYPE_CODE, :SUBSCRIBE_STATE, SYSDATE)
