Select to_char(TRADE_ID) TRADE_ID, ACCEPT_MONTH, to_char(USER_ID) USER_ID, RSRV_VALUE_CODE, RSRV_VALUE, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, to_char(RSRV_NUM4) RSRV_NUM4, to_char(RSRV_NUM5) RSRV_NUM5, to_char(RSRV_NUM6) RSRV_NUM6, to_char(RSRV_NUM7) RSRV_NUM7, to_char(RSRV_NUM8) RSRV_NUM8, to_char(RSRV_NUM9) RSRV_NUM9, to_char(RSRV_NUM10) RSRV_NUM10, to_char(RSRV_NUM11) RSRV_NUM11, to_char(RSRV_NUM12) RSRV_NUM12, to_char(RSRV_NUM13) RSRV_NUM13, to_char(RSRV_NUM14) RSRV_NUM14, to_char(RSRV_NUM15) RSRV_NUM15, to_char(RSRV_NUM16) RSRV_NUM16, to_char(RSRV_NUM17) RSRV_NUM17, to_char(RSRV_NUM18) RSRV_NUM18, to_char(RSRV_NUM19) RSRV_NUM19, to_char(RSRV_NUM20) RSRV_NUM20, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, RSRV_STR11, RSRV_STR12, RSRV_STR13, RSRV_STR14, RSRV_STR15, RSRV_STR16, RSRV_STR17, RSRV_STR18, RSRV_STR19, RSRV_STR20, RSRV_STR21, RSRV_STR22, RSRV_STR23, RSRV_STR24, RSRV_STR25, RSRV_STR26, RSRV_STR27, RSRV_STR28, RSRV_STR29, RSRV_STR30, to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2, to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3, to_char(RSRV_DATE4,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE4, to_char(RSRV_DATE5,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE5, to_char(RSRV_DATE6,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE6, to_char(RSRV_DATE7,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE7, to_char(RSRV_DATE8,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE8, to_char(RSRV_DATE9,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE9, to_char(RSRV_DATE10,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE10, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3, RSRV_TAG4, RSRV_TAG5, RSRV_TAG6, RSRV_TAG7, RSRV_TAG8, RSRV_TAG9, RSRV_TAG10, PROCESS_TAG, STAFF_ID, DEPART_ID, to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE, to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,
 MODIFY_TAG, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK,to_char(INST_ID) INST_ID
   FROM tf_b_trade_other
 WHERE trade_id=TO_NUMBER(:TRADE_ID)  
  AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
   AND rsrv_value_code=:RSRV_VALUE