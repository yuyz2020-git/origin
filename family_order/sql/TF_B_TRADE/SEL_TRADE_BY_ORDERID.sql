SELECT TO_CHAR(TRADE_ID) TRADE_ID,INTF_ID
FROM TF_B_TRADE A
WHERE A.ORDER_ID = TO_NUMBER(:ORDER_ID)
AND A.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:ORDER_ID, 5, 2))  