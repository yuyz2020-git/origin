SELECT DISTINCT DECODE(B.BIZ_TYPE_CODE,'16','MBOX','23','IMPS','60','MEBP','B3','MEBP','92',B.ORG_DOMAIN||B.BIZ_TYPE_CODE,'54',DECODE(A.TRADE_TYPE_CODE,'192','MP02','190','MP02','191','MP02',B.ORG_DOMAIN),B.ORG_DOMAIN) ORG_DOMAIN
  FROM TF_B_TRADE A, TF_F_USER_PLATSVC B
 WHERE A.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   AND A.TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND B.PARTITION_ID = MOD(A.USER_ID, 10000)
   AND B.USER_ID = A.USER_ID
   AND (( B.BIZ_STATE_CODE IN ('A', 'N', 'L') AND SYSDATE BETWEEN B.START_DATE AND B.END_DATE ) OR 
        ( B.BIZ_STATE_CODE='E' AND B.BIZ_TYPE_CODE IN ('02','92') AND B.START_DATE  BETWEEN trunc(Last_day(Add_months(SYSDATE, -1)))+1 AND SYSDATE AND B.End_Date>SYSDATE ))