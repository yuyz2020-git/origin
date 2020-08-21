SELECT
  SERIAL_NUMBER,
  SESSION_ID,
  to_char(ACCEPT_TIME,'yyyy-mm-dd hh24:mi:ss') ACCEPT_TIME, 	
  FAIL_COUNT,
  DEAL_TAG,
  OPERATOR_ID,
  OPERATOR_NAME,
  DEAL_TIME,
  SOLUTION
FROM TF_B_UNION_SESSION WHERE 1=1
AND (SERIAL_NUMBER=:SERIAL_NUMBER OR :SERIAL_NUMBER IS NULL)
AND (SESSION_ID=:SESSION_ID OR :SESSION_ID IS NULL)
AND (DEAL_TAG=:DEAL_STATE OR :DEAL_TAG IS NULL)
AND (DEAL_TAG IS NULL OR :WAIT_DEAL IS NULL)
AND (FAIL_COUNT > :FAIL_COUNT OR :FAIL_COUNT IS NULL)
AND (ACCEPT_TIME > TO_DATE(:CANCEL_BEGIN_TIME,'YYYY-MM-DD HH24:MI:SS') OR :CANCEL_BEGIN_TIME IS NULL)
AND (ACCEPT_TIME < TO_DATE(:CANCEL_END_TIME,'YYYY-MM-DD HH24:MI:SS') OR :CANCEL_END_TIME IS NULL)
ORDER BY ACCEPT_TIME DESC