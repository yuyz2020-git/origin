SELECT
 DECODE(B.MODIFY_TAG,'0','0','1','2',B.MODIFY_TAG)  MODIFY_TAG,
 B.TRADE_ID TRADE_ID,
 B.RELA_INST_ID RELA_INST_ID,
 B.INST_TYPE INST_TYPE,
 B.INST_ID INST_ID,
 B.ATTR_CODE ATTR_CODE,
 B.ATTR_VALUE ATTR_VALUE,
 B.START_DATE START_DATE,
 B.END_DATE END_DATE,
 B.UPDATE_TIME UPDATE_TIME,
 B.UPDATE_STAFF_ID UPDATE_STAFF_ID,
 B.UPDATE_DEPART_ID UPDATE_DEPART_ID,
 B.REMARK REMARK,
 B.RSRV_NUM1 RSRV_NUM1,
 B.RSRV_NUM2 RSRV_NUM2,
 B.RSRV_NUM3 RSRV_NUM3,
 B.RSRV_NUM4 RSRV_NUM4,
 B.RSRV_NUM5 RSRV_NUM5,
 B.RSRV_STR1 RSRV_STR1,
 B.RSRV_STR2 RSRV_STR2,
 B.RSRV_STR3 RSRV_STR3,
 B.RSRV_STR4 RSRV_STR4,
 B.RSRV_STR5 RSRV_STR5,
 B.RSRV_DATE1 RSRV_DATE1,
 B.RSRV_DATE2 RSRV_DATE2,
 B.RSRV_DATE3 RSRV_DATE3,
 B.RSRV_TAG1 RSRV_TAG1,
 B.RSRV_TAG2 RSRV_TAG2,
 B.RSRV_TAG3 RSRV_TAG3,
 A.PARA_CODE1 DISCNT_CODE,
 '1' ID_TYPE
  FROM UCR_CRM1.TF_B_TRADE_ATTR B, UCR_CRM1.TF_B_TRADE_DISCNT T,TD_S_COMMPARA A
 WHERE B.TRADE_ID = :TRADE_ID
   AND B.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   AND B.INST_TYPE = 'D'
   AND T.TRADE_ID = B.TRADE_ID
   AND B.ACCEPT_MONTH = T.ACCEPT_MONTH
   AND T.INST_ID = B.RELA_INST_ID 
   AND T.DISCNT_CODE = TO_NUMBER(A.PARAM_CODE)
   AND A.PARAM_ATTR = 7357
   AND A.SUBSYS_CODE = 'CGM'
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE