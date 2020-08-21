SELECT CUST_NAME,
       CONTACT_SN,
       PSPT_TYPE_CODE,
       PSPT_ID,
       HOME_ADDR,
       SET_ADDR,
       PRE_PDTID,
       INST_ID,
       AUDIT_STATUS,
       TO_CHAR(REG_DATE, 'YYYY-MM-DD HH24:MI:SS') REG_DATE,
       UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_NUM4,
       RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_DATE1,
       RSRV_DATE2,
       RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_F_WIDENET_BOOK A
 WHERE (A.REG_DATE >= TO_DATE(:START_DATE, 'YYYY-MM-DD') OR :START_DATE IS NULL) 
   AND (A.REG_DATE <= TO_DATE(:END_DATE, 'YYYY-MM-DD') + 1 OR :END_DATE IS NULL)
   AND (TRIM(A.CONTACT_SN) = :CONTACT_SN OR :CONTACT_SN IS NULL)
   AND (TRIM(A.CUST_NAME) = :CUST_NAME OR :CUST_NAME IS NULL)
   AND (TRIM(A.AUDIT_STATUS) = :AUDIT_STATUS OR :AUDIT_STATUS IS NULL)