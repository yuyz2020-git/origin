INSERT INTO TF_B_TRADE_DISCNT(TRADE_ID,ACCEPT_MONTH,USER_ID,USER_ID_A,PACKAGE_ID,PRODUCT_ID,DISCNT_CODE,SPEC_TAG,RELATION_TYPE_CODE,INST_ID,CAMPN_ID,START_DATE,END_DATE,MODIFY_TAG,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK)
  SELECT :TRADE_ID,TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2)),USER_ID,USER_ID_A,PACKAGE_ID,PRODUCT_ID,DISCNT_CODE,SPEC_TAG,RELATION_TYPE_CODE,INST_ID,CAMPN_ID,START_DATE,TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS'),:MODIFY_TAG,SYSDATE,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK
    FROM TF_F_USER_DISCNT A
   WHERE A.USER_ID_A = TO_NUMBER(:USER_ID_A)
     AND A.USER_ID != TO_NUMBER(:USER_ID_B)
     AND A.SPEC_TAG = '2'
     AND A.END_DATE > A.START_DATE
     AND A.END_DATE = (SELECT MAX(B.END_DATE)
                         FROM TF_F_USER_DISCNT B
                        WHERE B.USER_ID_A = TO_NUMBER(:USER_ID_A)
                          AND B.SPEC_TAG = '2'
                          AND B.END_DATE < SYSDATE)
     AND NOT EXISTS
   (SELECT 1 FROM TF_B_TRADE_DISCNT C
           WHERE C.TRADE_ID = :TRADE_ID
             AND C.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
             AND C.INST_ID = A.INST_ID
             AND C.USER_ID_A = TO_NUMBER(:USER_ID_A)
             AND C.DISCNT_CODE = A.DISCNT_CODE
             AND C.USER_ID = A.USER_ID
             AND C.PACKAGE_ID = A.PACKAGE_ID
             AND C.PRODUCT_ID = A.PRODUCT_ID)