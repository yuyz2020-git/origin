select t.IMPORT_ID, t.DEAL_STATE, t.DEAL_TIME, t.DEAL_STAFF_ID, t.DEAL_DEPART_ID, t.DEAL_END_TIME, t.DEAL_DESC, t.REMARK, t.RSRV_NUM1, t.RSRV_NUM2, t.RSRV_NUM3, t.RSRV_NUM4, t.RSRV_NUM5, t.RSRV_NUM6, t.RSRV_NUM7, t.RSRV_NUM8, t.RSRV_NUM9, t.RSRV_NUM10, t.RSRV_NUM11, t.RSRV_NUM12, t.RSRV_NUM13, t.RSRV_NUM14, t.RSRV_NUM15, t.RSRV_STR1, t.RSRV_STR2, t.RSRV_STR3, t.RSRV_STR4, t.RSRV_STR5, t.RSRV_STR6, t.RSRV_STR7, t.RSRV_STR8, t.RSRV_STR9, t.RSRV_STR10, t.RSRV_STR11, t.RSRV_STR12, t.RSRV_STR13, t.RSRV_STR14, t.RSRV_STR15, t.RSRV_STR16, t.RSRV_STR17, t.RSRV_STR18, t.RSRV_STR19, t.RSRV_STR20, t.RSRV_DATE1, t.RSRV_DATE2, t.RSRV_DATE3, t.RSRV_DATE4, t.RSRV_DATE5, t.RSRV_DATE6, t.RSRV_DATE7, t.RSRV_DATE8, t.RSRV_DATE9, t.RSRV_DATE10, t.RSRV_DATE11, t.RSRV_DATE12, t.RSRV_DATE13, t.RSRV_DATE14, t.RSRV_DATE15, t.RSRV_TAG1, t.RSRV_TAG2, t.RSRV_TAG3, t.RSRV_TAG4, t.RSRV_TAG5, t.RSRV_TAG6, t.RSRV_TAG7, t.RSRV_TAG8, t.RSRV_TAG9, t.RSRV_TAG10, t.RSRV_TAG11, t.RSRV_TAG12, t.RSRV_TAG13, t.RSRV_TAG14, t.RSRV_TAG15   
  from TF_F_CMS_IMPORT_DATA t 
    where 1 = 1 
    and t.IMPORT_ID = :IMPORT_ID 
    and t.DEAL_STATE = :DEAL_STATE 