select A.CUST_NAME,A.PSPT_TYPE_CODE,A.PSPT_ID,B.SERIAL_NUMBER,B.USER_STATE_CODESET,C.DETAIL_ADDRESS 
    from TF_F_CUST_PERSON A 
  left join TF_F_USER B on(A.CUST_ID=B.CUST_ID)
  left join TF_F_USER_WIDENET C on(B.USER_ID=C.USER_ID)
where A.PSPT_TYPE_CODE LIKE '%' || :PSPT_TYPE_CODE || '%'
  AND A.PSPT_ID=:PSPT_ID
  AND B.SERIAL_NUMBER LIKE 'KD_%'
  AND TO_CHAR(C.END_DATE,'YYYY-MM-dd') > (select TO_CHAR(SYSDATE,'YYYY-MM-dd') FROM DUAL)