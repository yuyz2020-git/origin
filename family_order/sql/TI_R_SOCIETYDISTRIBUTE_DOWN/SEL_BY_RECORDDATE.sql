SELECT IMEI TERMINAL_ID,MATERIALCODE MATERIAL_CODE,DISTRIBUTETYPE,COMPANYCODE,
DISTRIBUTETIME,'0' CPORDER_CODE,OPRNUMB OPER_TRADE_ID,OPRFLAG,'0' ARRIVAL_STATE 
FROM TI_R_SOCIETYDISTRIBUTE_DOWN
WHERE 1=1
AND DEALFLAG = :DEALFLAG
AND OPRFLAG = :OPRFLAG
AND RECORDDATE <= TO_DATE(:END_DATE, 'yyyy-mm-dd hh24:mi:ss')