SELECT
	K.NODE_ID,
	COUNT(*) COUNTNUM 
FROM
	TF_B_EWE T,
	TF_B_EWE_NODE K,
	TF_B_EOP_EOMS_DETAIL D 
WHERE
	T.BPM_TEMPLET_ID IN ( 'EDIRECTLINECHANGEDLINENEW', 'EDIRECTLINEOPENNEW', 'EDIRECTLINECANCELNEW' ) 
	AND T.BUSIFORM_ID = K.BUSIFORM_ID 
	AND T.BI_SN = D.IBSYSID 
	AND ( T.EPARCHY_CODE = :EPARCHY_CODE OR :EPARCHY_CODE IS NULL ) 
GROUP BY
	K.NODE_ID