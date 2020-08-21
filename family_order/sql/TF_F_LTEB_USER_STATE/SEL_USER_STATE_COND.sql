SELECT USER_ID,
       LTEB_USER_ID,
       STATE_CODE,
       STATE_VALUE,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       REMARK,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5
  FROM TF_F_LTEB_USER_STATE ss
    WHERE LTEB_USER_ID = :USER_ID
         and (RSRV_STR1 = :RSRV_STR1 OR :RSRV_STR1 IS NULL)
         AND  EXISTS (SELECT 1 FROM TF_B_LTEB_ORDER_PF_PARAMS WHERE  INFO_CODE = SS.STATE_CODE AND OPR_NUMB= :OPR_NUMB )
         and sysdate between ss.START_DATE and ss.END_DATE 
