SELECT PHONE_CODE_A,
       PHONE_CODE_B,
       TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME
FROM TF_F_TRANS_PHONE
WHERE SYSDATE BETWEEN START_DATE AND END_DATE
	AND PHONE_CODE_A = :PHONE_CODE_A   ----移动号码
	AND PHONE_CODE_B = :PHONE_CODE_B	----联通号码