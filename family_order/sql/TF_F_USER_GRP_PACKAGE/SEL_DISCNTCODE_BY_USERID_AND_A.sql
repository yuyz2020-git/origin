SELECT B.PACKAGE_ID PACKAGE_ID,
       B.PRODUCT_ID PRODUCT_ID,
	   T.PARTITION_ID PARTITION_ID,
       TO_CHAR(T.USER_ID) USER_ID,
       TO_CHAR(T.USER_ID_A) USER_ID_A,
       TO_CHAR(T.DISCNT_CODE) DISCNT_CODE,
       T.SPEC_TAG,
       T.RELATION_TYPE_CODE,
       TO_CHAR(T.INST_ID) INST_ID,
       TO_CHAR(T.CAMPN_ID) CAMPN_ID,
       to_char(T.START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(T.END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       TO_CHAR(T.UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       T.UPDATE_STAFF_ID,
       T.UPDATE_DEPART_ID,
       T.REMARK,
       TO_CHAR(T.RSRV_NUM1) RSRV_NUM1,
       TO_CHAR(T.RSRV_NUM2) RSRV_NUM2,
       TO_CHAR(T.RSRV_NUM3) RSRV_NUM3,
       TO_CHAR(T.RSRV_NUM4) RSRV_NUM4,
       TO_CHAR(T.RSRV_NUM5) RSRV_NUM5,
       T.RSRV_STR1,
       T.RSRV_STR2,
       T.RSRV_STR3,
       T.RSRV_STR4,
       T.RSRV_STR5,
       TO_CHAR(T.RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       TO_CHAR(T.RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       TO_CHAR(T.RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
       T.RSRV_TAG1,
       T.RSRV_TAG2,
       T.RSRV_TAG3
  FROM UCR_CRM1.TF_F_USER_DISCNT T, UCR_CRM1.TF_F_USER_GRP_PACKAGE B
 WHERE T.PARTITION_ID = MOD(:USER_ID, 10000)
   AND T.USER_ID = :USER_ID
   AND T.USER_ID_A = :USER_ID_A
   AND T.END_DATE > SYSDATE
   AND B.PARTITION_ID = MOD(:USER_ID_A, 10000)
   AND B.USER_ID = :USER_ID_A
   AND B.ELEMENT_ID = T.DISCNT_CODE
   AND B.END_DATE > SYSDATE
   AND B.ELEMENT_TYPE_CODE = 'D'