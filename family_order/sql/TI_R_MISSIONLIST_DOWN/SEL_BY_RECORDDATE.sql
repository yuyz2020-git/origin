SELECT A.CATEGORYCODE CATEGORY_CODE, A.CATEGORYNAME CATEGORY_NAME, A.MATERIALCODE MATERIAL_CODE, A.PURCHASEPRICE PURCHASE_PRICE,
	A.MISSION MISSION, A.PURSTARTDATE START_DATE, A.PURENDDATE END_DATE, A.OPRNUMB OPER_TRADE_ID,
    TO_CHAR(B.TAKEDATE,'yyyy-MM-dd HH:mm:ss') TAKE_DATE, B.QUOTATION QUOTATION, B.QUOTATIONCOMMENT QUOTATION_COMMENT
FROM TI_R_MISSIONLIST_DOWN A, TI_R_MISSIONLIST_PLAN_DOWN B
WHERE 1 = 1
AND A.RECORDID = B.RECORDID
AND A.DEALFLAG = :DEALFLAG
AND A.OPRFLAG = :OPRFLAG
AND A.RECORDDATE <= TO_DATE(:END_DATE, 'yyyy-mm-dd hh24:mi:ss')