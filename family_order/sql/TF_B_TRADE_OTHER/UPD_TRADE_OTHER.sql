UPDATE TF_B_TRADE_OTHER
   SET RSRV_STR8  = :RSRV_STR8,
       RSRV_STR9  = :RSRV_STR9,
       RSRV_STR10 = :RSRV_STR10,
       RSRV_STR11 = :RSRV_STR11,
       RSRV_STR12 = :RSRV_STR12,
       RSRV_STR13 = :RSRV_STR13,
       RSRV_STR14 = :RSRV_STR14,
       RSRV_STR15 = :RSRV_STR15,
       RSRV_STR16 = :RSRV_STR16,
       RSRV_STR17 = :RSRV_STR17,
       RSRV_STR18 = :RSRV_STR18,
       RSRV_STR19 = :RSRV_STR19,
       RSRV_STR20 = :RSRV_STR20,
       RSRV_STR21 = :RSRV_STR21,
       RSRV_STR22 = :RSRV_STR22,
       RSRV_STR23 = :RSRV_STR23,
       RSRV_STR24 = :RSRV_STR24,
       RSRV_STR25 = :RSRV_STR25,
       RSRV_STR26 = :RSRV_STR26,
       RSRV_STR27 = :RSRV_STR27,
       RSRV_STR28 = :RSRV_STR28,
       RSRV_STR29 = :RSRV_STR29,
       RSRV_TAG1 = :RSRV_TAG1,
       REMARK = :REMARK
 WHERE TRADE_ID = :TRADE_ID
   AND RSRV_VALUE_CODE = :RSRV_VALUE_CODE
   AND ACCEPT_MONTH = :ACCEPT_MONTH   
   AND INST_ID = :INST_ID