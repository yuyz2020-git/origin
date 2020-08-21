SELECT A.PRODUCTID PRODUCT_ID, 
	D.SOFTID SOFT_ID, D.QUERYTYPE QUERY_TYPE, D.SOFTVERSIONNAME SOFTVERSION_NAME, D.PUBLISHDATE PUBLISH_DATE,
	D.REMARK REMARK, D.CMCCTEST CMCC_TEST, D.SELFTEST SELF_TEST
FROM TI_R_PRODUCT_DOWN A,TI_R_PRODUCT_SOFTVER_DOWN D
WHERE 1 = 1
AND A.RECORDID = D.RECORDID
AND A.DEALFLAG = :DEALFLAG
AND A.OPRFLAG = :OPRFLAG
AND A.RECORDDATE <= TO_DATE(:END_DATE, 'yyyy-mm-dd hh24:mi:ss')
AND (A.MODELTYPE IS NULL OR A.MODELTYPE='0')