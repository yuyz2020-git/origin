UPDATE TL_O_REALTIMEMARKETINGTRADE a
   SET PROCESS_TAG = :STATUS,
       EXEC_TIME   = SYSDATE,
	   EXEC_RESULT = '0',
	   EXEC_DESC   = 'success',
	   RSRV_STR1   = :REFUSE_REASON_CODE,
	   RSRV_STR2   = :OTHER_REFUSE_REASON,
	   REMARK      = :REFUSE_REMARK
 WHERE STEP_ID = :STEPID
   AND exists (select 1 from TL_O_REALTIMEMARKETING b where a.req_id = b.req_id and b.serial_number = :SERIAL_NUMBER)