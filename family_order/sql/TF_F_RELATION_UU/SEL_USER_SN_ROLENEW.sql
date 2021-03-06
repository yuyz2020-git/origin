SELECT PARTITION_ID,
       TO_CHAR(USER_ID_A) USER_ID_A,
       SERIAL_NUMBER_A,
       TO_CHAR(USER_ID_B) USER_ID_B,
       SERIAL_NUMBER_B,
       RELATION_TYPE_CODE,
       INST_ID,
       ROLE_CODE_A,
       ROLE_CODE_B,
       ORDERNO,
       SHORT_CODE,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
		RSRV_STR2
  FROM TF_F_RELATION_UU
 WHERE SERIAL_NUMBER_B = :SERIAL_NUMBER_B
   AND RELATION_TYPE_CODE = :RELATION_TYPE_CODE
   AND ROLE_CODE_B = :ROLE_CODE_B
   AND END_DATE > SYSDATE
   AND END_DATE > START_DATE