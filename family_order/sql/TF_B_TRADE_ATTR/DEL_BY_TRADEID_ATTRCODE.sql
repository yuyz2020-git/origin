delete  TF_B_TRADE_ATTR
where TRADE_ID= TO_NUMBER(:TRADE_ID)
AND   ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
AND   INST_TYPE = :INST_TYPE
AND   ATTR_CODE = :ATTR_CODE
and   USER_ID = :USER_ID