--IS_CACHE=Y
SELECT cycle_id,use_tag
FROM td_b_cycle
WHERE cyc_start_time <= ADD_MONTHS(TO_DATE(PKG_GETACCTDATE.GETLASTDAYTHISCYCLEBYUSERID(:USER_ID),'YYYY-MM-DD'), -1) 
AND ADD_MONTHS(TO_DATE(PKG_GETACCTDATE.GETLASTDAYTHISCYCLEBYUSERID(:USER_ID),'YYYY-MM-DD'), -1)  <= cyc_end_time