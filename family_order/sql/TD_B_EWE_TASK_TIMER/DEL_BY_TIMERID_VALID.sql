DELETE FROM TD_B_EWE_TASK_TIMER T
 WHERE T.TIMER_ID = :TIMER_ID
   AND T.VALID_TAG = :VALID_TAG
