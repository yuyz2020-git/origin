INSERT INTO TI_B_WHITECONFIRM_R(INST_ID,PRODUCT_ID,BIZ_CODE,PROD_NAME,SERV_CODE,
SOURCE,SERIAL_NUMBER,OPER_CODE,STATUS,EFFTT,SYNC_FLAG,UP_TIME,REMARK,RSRV_NUM1,
RSRV_NUM2,RSRV_NUM3,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,
RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
VALUES(:INST_ID,:PRODUCT_ID,:BIZ_CODE,:PROD_NAME,:SERV_CODE,:SOURCE,:SERIAL_NUMBER,
:OPER_CODE,:STATUS,TO_DATE(:EFFT_TIME,'yyyy-MM-dd HH24:mi:ss'),:SYNC_FLAG,SYSDATE,:REMARK,:RSRV_NUM1,:RSRV_NUM2,:RSRV_NUM3,
:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_DATE1,:RSRV_DATE2,:RSRV_DATE3,
:RSRV_TAG1,:RSRV_TAG2,:RSRV_TAG3)