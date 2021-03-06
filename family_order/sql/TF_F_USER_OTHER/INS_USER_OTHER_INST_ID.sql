INSERT INTO TF_F_USER_OTHER(
            PARTITION_ID,USER_ID,RSRV_VALUE_CODE,RSRV_VALUE,RSRV_NUM1,RSRV_NUM2,
            RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_NUM6,RSRV_NUM7,RSRV_NUM8,
            RSRV_NUM9,RSRV_NUM10,RSRV_NUM11,RSRV_NUM12,RSRV_NUM13,
            RSRV_NUM14,RSRV_NUM15,RSRV_NUM16,RSRV_NUM17,RSRV_NUM18,
            RSRV_NUM19,RSRV_NUM20,TRADE_ID,
            RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10,
            RSRV_STR11,RSRV_STR12,RSRV_STR13,RSRV_STR14,RSRV_STR15,RSRV_STR16,RSRV_STR17,RSRV_STR18,RSRV_STR19,RSRV_STR20,
            RSRV_STR21,RSRV_STR22,RSRV_STR23,RSRV_STR24,RSRV_STR25,RSRV_STR26,RSRV_STR27,RSRV_STR28,RSRV_STR29,RSRV_STR30,
            RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,
            RSRV_DATE4,RSRV_DATE5,RSRV_DATE6,
            RSRV_DATE7,RSRV_DATE8,RSRV_DATE9,
            RSRV_DATE10,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3,RSRV_TAG4,RSRV_TAG5,RSRV_TAG6,RSRV_TAG7,
            RSRV_TAG8,RSRV_TAG9,RSRV_TAG10,PROCESS_TAG,STAFF_ID,DEPART_ID,START_DATE,
            END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,INST_ID)
VALUES   (
            MOD(TO_NUMBER(:USER_ID),10000),TO_NUMBER(:USER_ID),:RSRV_VALUE_CODE,:RSRV_VALUE,TO_NUMBER(:RSRV_NUM1),TO_NUMBER(:RSRV_NUM2),
            TO_NUMBER(:RSRV_NUM3),TO_NUMBER(:RSRV_NUM4),TO_NUMBER(:RSRV_NUM5),TO_NUMBER(:RSRV_NUM6),TO_NUMBER(:RSRV_NUM7),TO_NUMBER(:RSRV_NUM8),
            TO_NUMBER(:RSRV_NUM9),TO_NUMBER(:RSRV_NUM10),TO_NUMBER(:RSRV_NUM11),TO_NUMBER(:RSRV_NUM12),TO_NUMBER(:RSRV_NUM13),
            TO_NUMBER(:RSRV_NUM14),TO_NUMBER(:RSRV_NUM15),TO_NUMBER(:RSRV_NUM16),TO_NUMBER(:RSRV_NUM17),TO_NUMBER(:RSRV_NUM18),
            TO_NUMBER(:RSRV_NUM19),TO_NUMBER(:RSRV_NUM20),TO_NUMBER(:TRADE_ID),
            :RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_STR8,:RSRV_STR9,:RSRV_STR10,
            :RSRV_STR11,:RSRV_STR12,:RSRV_STR13,:RSRV_STR14,:RSRV_STR15,:RSRV_STR16,:RSRV_STR17,:RSRV_STR18,:RSRV_STR19,:RSRV_STR20,
            :RSRV_STR21,:RSRV_STR22,:RSRV_STR23,:RSRV_STR24,:RSRV_STR25,:RSRV_STR26,:RSRV_STR27,:RSRV_STR28,:RSRV_STR29,:RSRV_STR30,
            TO_DATE(:RSRV_DATE1,'YYYY-MM-DDHH24:MI:SS'),TO_DATE(:RSRV_DATE2,'YYYY-MM-DDHH24:MI:SS'),TO_DATE(:RSRV_DATE3,'YYYY-MM-DDHH24:MI:SS'),
            TO_DATE(:RSRV_DATE4,'YYYY-MM-DDHH24:MI:SS'),TO_DATE(:RSRV_DATE5,'YYYY-MM-DDHH24:MI:SS'),TO_DATE(:RSRV_DATE6,'YYYY-MM-DDHH24:MI:SS'),
            TO_DATE(:RSRV_DATE7,'YYYY-MM-DDHH24:MI:SS'),TO_DATE(:RSRV_DATE8,'YYYY-MM-DDHH24:MI:SS'),TO_DATE(:RSRV_DATE9,'YYYY-MM-DDHH24:MI:SS'),
            TO_DATE(:RSRV_DATE10,'YYYY-MM-DDHH24:MI:SS'),:RSRV_TAG1,:RSRV_TAG2,:RSRV_TAG3,:RSRV_TAG4,:RSRV_TAG5,:RSRV_TAG6,:RSRV_TAG7,
            :RSRV_TAG8,:RSRV_TAG9,:RSRV_TAG10,:PROCESS_TAG,:STAFF_ID,:DEPART_ID,TO_DATE(:START_DATE,'YYYY-MM-DDHH24:MI:SS'),
            TO_DATE(:END_DATE,'YYYY-MM-DDHH24:MI:SS'),TO_DATE(:UPDATE_TIME,'YYYY-MM-DDHH24:MI:SS'),:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,:REMARK,TO_NUMBER(:INST_ID)
         )