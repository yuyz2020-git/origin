SELECT A.RECORDID ARRIVAL_ID, A.RECORDID ORDER_ID, 
	   B.ARRIVALDATE ARRIVAL_DATE, B.ARRIVALQUANTITY ARRIVAL_QUANTITY
FROM TI_R_ORDERDATA_DOWN A, TI_R_ORDERDATA_ARRIVAL_DOWN B
WHERE 1 = 1
AND A.RECORDID = B.RECORDID
AND A.DEALFLAG = :DEALFLAG
AND A.OPRFLAG = :OPRFLAG
AND A.RECORDDATE <= TO_DATE(:END_DATE, 'yyyy-mm-dd hh24:mi:ss')