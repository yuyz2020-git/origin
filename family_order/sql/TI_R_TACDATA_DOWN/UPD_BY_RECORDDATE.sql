UPDATE TI_R_TACDATA_DOWN 
SET DEALFLAG=:DEALFLAG
WHERE 1=1
AND DEALFLAG = '0'
AND RECORDDATE <= TO_DATE(:END_DATE, 'yyyy-mm-dd hh24:mi:ss')