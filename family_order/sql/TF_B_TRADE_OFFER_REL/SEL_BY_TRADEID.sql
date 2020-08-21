SELECT TRADE_ID,INST_ID,ACCEPT_MONTH,OFFER_CODE,OFFER_TYPE,OFFER_INS_ID,USER_ID,GROUP_ID,
REL_OFFER_CODE,REL_OFFER_TYPE,REL_OFFER_INS_ID,REL_USER_ID,REL_TYPE,MODIFY_TAG,
to_char(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,to_char(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
to_char(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK
FROM TF_B_TRADE_OFFER_REL
WHERE TRADE_ID =:TRADE_ID
AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))