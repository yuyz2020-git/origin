INSERT INTO TF_F_USER_EXPAND(PARTITION_ID, USER_ID, UPDATE_TYPE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK,
RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5, RSRV_NUM6, RSRV_NUM7, RSRV_NUM8, RSRV_NUM9, RSRV_NUM10,
RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, RSRV_STR11, RSRV_STR12, RSRV_STR13, RSRV_STR14, RSRV_STR15,
RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_DATE4, RSRV_DATE5, RSRV_DATE6, RSRV_DATE7, RSRV_DATE8, RSRV_DATE9, RSRV_DATE10,
RSRV_TAG1, RSRV_TAG2, RSRV_TAG3, RSRV_TAG4, RSRV_TAG5, RSRV_TAG6, RSRV_TAG7, RSRV_TAG8, RSRV_TAG9, RSRV_TAG10)
VALUES(Mod(To_Number(:USER_ID),10000), To_Number(:USER_ID), :UPDATE_TYPE, to_date(:UPDATE_TIME, 'YYYY-MM-DD hh24:mi:ss'), :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, :REMARK,  
:RSRV_NUM1, :RSRV_NUM2, :RSRV_NUM3, :RSRV_NUM4, :RSRV_NUM5, :RSRV_NUM6, :RSRV_NUM7, :RSRV_NUM8, :RSRV_NUM9, :RSRV_NUM10,  
:RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, :RSRV_STR6, :RSRV_STR7, :RSRV_STR8, :RSRV_STR9, :RSRV_STR10, :RSRV_STR11, :RSRV_STR12, :RSRV_STR13, :RSRV_STR14, :RSRV_STR15,  
:RSRV_DATE1, :RSRV_DATE2, :RSRV_DATE3, :RSRV_DATE4, :RSRV_DATE5, :RSRV_DATE6, :RSRV_DATE7, :RSRV_DATE8, :RSRV_DATE9, :RSRV_DATE10,
:RSRV_TAG1, :RSRV_TAG2, :RSRV_TAG3, :RSRV_TAG4, :RSRV_TAG5, :RSRV_TAG6, :RSRV_TAG7, :RSRV_TAG8, :RSRV_TAG9, :RSRV_TAG10)