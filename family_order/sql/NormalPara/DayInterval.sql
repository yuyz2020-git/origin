SELECT trunc(to_date(:CUR_DATE,'yyyy-mm-dd') ,'dd') - trunc(to_date(:OLD_DATE,'yyyy-mm-dd'), 'dd') + 1 OUTSTR FROM dual