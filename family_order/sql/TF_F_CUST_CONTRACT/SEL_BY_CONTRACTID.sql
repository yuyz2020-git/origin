SELECT to_char(CUST_ID) CUST_ID, to_char(USER_ID) USER_ID, CONTRACT_ID, RELA_CONTRACT_ID, CONTRACT_NAME, CONTRACT_LEVEL, CONTRACT_TYPE_CODE, CONTRACT_SUBTYPE_CODE, CONTRACT_CONTENT, CONTRACT_MANAGER, to_char(CONTRACT_WRITE_DATE,'yyyy-mm-dd hh24:mi:ss') CONTRACT_WRITE_DATE, CONTRACT_WRITER, CONTRACT_WRITE_TYPE, CONTRACT_WRITE_CITY, to_char(CONTRACT_START_DATE,'yyyy-mm-dd hh24:mi:ss') CONTRACT_START_DATE, to_char(CONTRACT_END_DATE,'yyyy-mm-dd hh24:mi:ss') CONTRACT_END_DATE, CONTRACT_CONMAN, to_char(CONTRACT_IN_DATE,'yyyy-mm-dd hh24:mi:ss') CONTRACT_IN_DATE, to_char(CONTRACT_ACCEPT_DATE,'yyyy-mm-dd hh24:mi:ss') CONTRACT_ACCEPT_DATE, to_char(CONTRACT_COMPLETE_DATE,'yyyy-mm-dd hh24:mi:ss') CONTRACT_COMPLETE_DATE, to_char(CONTRACT_REMOVE_DATE,'yyyy-mm-dd hh24:mi:ss') CONTRACT_REMOVE_DATE, CONTRACT_STATE_CODE, CONTRACT_STATE_NOTE, CONTRACT_FLAG, CONTRACT_RECV_SITE, CONTRACT_FILE_ID, NET_TYPE_CODE, DEVELOP_DEPART_ID, DEVELOP_STAFF_ID, CLERK_STAFF_ID, CLERK_CONTACT_MODE, CLERK_CONTACT_INFO, TECHN_STAFF_ID, TECHN_CONTACT_MODE, TECHN_CONTACT_INFO, PIGEONHOLE_STAFF_ID, PIGEONHOLE_DEPART_ID, to_char(PIGEONHOLE_DATE,'yyyy-mm-dd hh24:mi:ss') PIGEONHOLE_DATE, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, UPDATE_CITY_CODE, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2, RSRV_TAG1, RSRV_TAG2
  FROM tf_f_cust_contract
 WHERE contract_id=:CONTRACT_ID