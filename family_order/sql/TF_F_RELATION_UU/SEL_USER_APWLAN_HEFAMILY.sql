SELECT PARTITION_ID,TO_CHAR(USER_ID_A) USER_ID_A,TO_CHAR(USER_ID_B) USER_ID_B,RELATION_TYPE_CODE,ROLE_CODE_A,ROLE_CODE_B,ORDERNO,SHORT_CODE,TO_CHAR(START_DATE,'YYYY-MM-DD HH24:MI:SS') START_DATE,TO_CHAR(END_DATE,'YYYY-MM-DD HH24:MI:SS') END_DATE
FROM TF_F_RELATION_UU
WHERE 1=1
   AND PARTITION_ID=MOD(TO_NUMBER(:USER_ID_B),10000)
   AND USER_ID_B=TO_NUMBER(:USER_ID_B)
   AND RELATION_TYPE_CODE  in('72','73')
   AND END_DATE > to_date(PKG_GETACCTDATE.getNextAcctDateByUserId(:USER_ID_B),'yyyy-mm-dd')-1/24/3600