SELECT 'JobType' KEY,JOB_TYPE_CODE VALUE1,'-1' VALUE2, JOB_TYPE VRESULT
     FROM td_s_jobtype
WHERE SYSDATE BETWEEN start_date AND end_date AND 'JobType'=:KEY