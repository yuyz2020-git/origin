UPDATE TF_F_USER_RES A SET A.RSRV_DATE1=SYSDATE WHERE A.USER_ID= TO_NUMBER(:USER_ID) AND A.RES_TYPE_CODE='4' AND A.RSRV_TAG1='J' AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE AND A.PARTITION_ID= MOD(TO_NUMBER(:USER_ID),10000)