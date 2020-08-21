SELECT A.USER_ID,
       A.NP_SERVICE_TYPE,
       A.SERIAL_NUMBER,
       A.PORT_OUT_NETID,
       A.PORT_IN_NETID,
       A.HOME_NETID,
       A.B_NP_CARD_TYPE,
       A.A_NP_CARD_TYPE,
       A.NP_TAG,
       TO_CHAR(A.APPLY_DATE, 'YYYY-MM-DD HH24:MI:SS') APPLY_DATE,
       TO_CHAR(A.NP_DESTROY_TIME, 'YYYY-MM-DD HH24:MI:SS') NP_DESTROY_TIME,
       TO_CHAR(A.PORT_IN_DATE, 'YYYY-MM-DD HH24:MI:SS') PORT_IN_DATE,
       TO_CHAR(A.PORT_OUT_DATE, 'YYYY-MM-DD HH24:MI:SS') PORT_OUT_DATE,
       A.REMARK,
       A.RSRV_STR1,
       A.RSRV_STR2,
       A.RSRV_STR3,
       A.RSRV_STR4,
       A.RSRV_STR5
  FROM TF_F_USER_NP A
 WHERE A.SERIAL_NUMBER = :SERIAL_NUMBER
       order by PORT_IN_DATE desc