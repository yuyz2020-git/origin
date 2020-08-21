INSERT INTO TI_B_USER_OTHER
        (SYNC_SEQUENCE, SYNC_DAY, MODIFY_TAG, TRADE_ID, PARTITION_ID, USER_ID,
         RSRV_VALUE_CODE, RSRV_VALUE, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4,
         RSRV_NUM5, RSRV_NUM6, RSRV_NUM7, RSRV_NUM8, RSRV_NUM9, RSRV_NUM10,
         RSRV_NUM11, RSRV_NUM12, RSRV_NUM13, RSRV_NUM14, RSRV_NUM15, RSRV_NUM16,
         RSRV_NUM17, RSRV_NUM18, RSRV_NUM19, RSRV_NUM20, RSRV_STR1, RSRV_STR2,
         RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8,
         RSRV_STR9, RSRV_STR10, RSRV_STR11, RSRV_STR12, RSRV_STR13, RSRV_STR14,
         RSRV_STR15, RSRV_STR16, RSRV_STR17, RSRV_STR18, RSRV_STR19, RSRV_STR20,
         RSRV_STR21, RSRV_STR22, RSRV_STR23, RSRV_STR24, RSRV_STR25, RSRV_STR26,
         RSRV_STR27, RSRV_STR28, RSRV_STR29, RSRV_STR30, RSRV_DATE1, RSRV_DATE2,
         RSRV_DATE3, RSRV_DATE4, RSRV_DATE5, RSRV_DATE6, RSRV_DATE7, RSRV_DATE8,
         RSRV_DATE9, RSRV_DATE10, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3, RSRV_TAG4,
         RSRV_TAG5, RSRV_TAG6, RSRV_TAG7, RSRV_TAG8, RSRV_TAG9, RSRV_TAG10,
         PROCESS_TAG, STAFF_ID, DEPART_ID, START_DATE, END_DATE, UPDATE_TIME,
         UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, INST_ID)
        SELECT :SYNC_SEQUENCE, :SYNC_DAY,
               DECODE(B.MODIFY_TAG, '0', '0', '1', '2', '2', '2', '2'),
               B.TRADE_ID, MOD(B.USER_ID, 10000), B.USER_ID, B.RSRV_VALUE_CODE,
               B.RSRV_VALUE, B.RSRV_NUM1, B.RSRV_NUM2, B.RSRV_NUM3, B.RSRV_NUM4,
               B.RSRV_NUM5, B.RSRV_NUM6, B.RSRV_NUM7, B.RSRV_NUM8, B.RSRV_NUM9,
               B.RSRV_NUM10, B.RSRV_NUM11, B.RSRV_NUM12, B.RSRV_NUM13,
               B.RSRV_NUM14, B.RSRV_NUM15, B.RSRV_NUM16, B.RSRV_NUM17,
               B.RSRV_NUM18, B.RSRV_NUM19, B.RSRV_NUM20, B.RSRV_STR1,
               B.RSRV_STR2, B.RSRV_STR3, B.RSRV_STR4, B.RSRV_STR5, B.RSRV_STR6,
               B.RSRV_STR7, B.RSRV_STR8, B.RSRV_STR9, B.RSRV_STR10, B.RSRV_STR11,
               B.RSRV_STR12, B.RSRV_STR13, B.RSRV_STR14, B.RSRV_STR15,
               B.RSRV_STR16, B.RSRV_STR17, B.RSRV_STR18, B.RSRV_STR19,
               B.RSRV_STR20, B.RSRV_STR21, B.RSRV_STR22, B.RSRV_STR23,
               B.RSRV_STR24, B.RSRV_STR25, B.RSRV_STR26, B.RSRV_STR27,
               B.RSRV_STR28, B.RSRV_STR29, B.RSRV_STR30, B.RSRV_DATE1,
               B.RSRV_DATE2, B.RSRV_DATE3, B.RSRV_DATE4, B.RSRV_DATE5,
               B.RSRV_DATE6, B.RSRV_DATE7, B.RSRV_DATE8, B.RSRV_DATE9,
               B.RSRV_DATE10, B.RSRV_TAG1, B.RSRV_TAG2, B.RSRV_TAG3, B.RSRV_TAG4,
               B.RSRV_TAG5, B.RSRV_TAG6, B.RSRV_TAG7, B.RSRV_TAG8, B.RSRV_TAG9,
               B.RSRV_TAG10, B.PROCESS_TAG, B.STAFF_ID, B.DEPART_ID,
               B.START_DATE, B.END_DATE, B.UPDATE_TIME, B.UPDATE_STAFF_ID,
               B.UPDATE_DEPART_ID, B.REMARK, B.INST_ID
          FROM TF_B_TRADE_OTHER B
         WHERE B.TRADE_ID = :TRADE_ID
           AND B.ACCEPT_MONTH = :ACCEPT_MONTH