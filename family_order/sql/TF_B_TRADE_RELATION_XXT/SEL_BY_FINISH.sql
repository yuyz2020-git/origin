select to_char(t.TRADE_ID) TRADE_ID,
t.ACCEPT_MONTH,
to_char(t.USER_ID_A) USER_ID_A,
t.SERIAL_NUMBER_A,
t.SERIAL_NUMBER_B,
t.ELEMENT_TYPE_CODE,
t.ELEMENT_ID,
to_char(t.INST_ID) INST_ID,
to_char(t.START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,
to_char(t.END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,
t.NAME,
t.EC_USER_ID,
to_char(t.UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
t.UPDATE_STAFF_ID,
t.UPDATE_DEPART_ID,
t.REMARK,
t.RSRV_NUM1,
t.RSRV_NUM2,
t.RSRV_NUM3,
t.RSRV_STR1,
t.RSRV_STR2,
t.RSRV_STR3,
t.RSRV_STR4,
t.RSRV_STR5,
t.RSRV_STR6,
t.RSRV_STR7,
t.RSRV_STR8,
t.RSRV_STR9,
t.RSRV_STR10,
to_char(t.RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
to_char(t.RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
to_char(t.RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
t.MODIFY_TAG
 from TF_B_TRADE_RELATION_XXT t where trade_id = :TRADE_ID