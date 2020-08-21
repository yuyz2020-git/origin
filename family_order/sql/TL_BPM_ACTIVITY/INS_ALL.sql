INSERT INTO tl_bpm_activity (
   activity_id,
   accept_month,
   bpm_id,
   bpm_activity,
   trade_id,
   user_id,
   staff_id,
   depart_id,
   activity_state,
   is_active,
   start_time,
   end_time,
   exec_result,
   exec_count
) VALUES(
   TO_NUMBER(F_SYS_GETSEQID('', 'seq_bpm_id')),
   TO_NUMBER(TO_CHAR(SYSDATE, 'mm')),
   :BPM_ID,
   :BPM_ACTIVITY,
   TO_NUMBER(:TRADE_ID),
   TO_NUMBER(:USER_ID),
   :STAFF_ID,
   :DEPART_ID,
   :ACTIVITY_STATE,
   :IS_ACTIVE,
   TO_DATE(:START_TIME, 'yyyy-mm-dd hh24:mi:ss'),
   TO_DATE(:END_TIME, 'yyyy-mm-dd hh24:mi:ss'),
   :EXEC_RESULT,
   :EXEC_COUNT
)