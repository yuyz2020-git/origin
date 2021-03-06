INSERT INTO TF_F_USER_DISCNT
  (PARTITION_ID,USER_ID,USER_ID_A,PRODUCT_ID,PACKAGE_ID,DISCNT_CODE,SPEC_TAG,RELATION_TYPE_CODE,INST_ID,CAMPN_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
  SELECT MOD(USER_ID, 10000),USER_ID,USER_ID_A,PRODUCT_ID,PACKAGE_ID,DISCNT_CODE,nvl(SPEC_TAG,'0'),RELATION_TYPE_CODE,INST_ID,CAMPN_ID,START_DATE,END_DATE,sysdate,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
    FROM TF_B_TRADE_DISCNT A
   WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
     AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
     AND NOT EXISTS (SELECT 1 FROM TF_F_USER_DISCNT
                      WHERE USER_ID = A.USER_ID
                        AND PARTITION_ID = MOD(A.USER_ID, 10000)
                        AND USER_ID_A = A.USER_ID_A
                        AND PRODUCT_ID = A.PRODUCT_ID
                        AND PACKAGE_ID = A.PACKAGE_ID
                        AND DISCNT_CODE = A.DISCNT_CODE
                        AND END_DATE > START_DATE
                        AND END_DATE > A.START_DATE)