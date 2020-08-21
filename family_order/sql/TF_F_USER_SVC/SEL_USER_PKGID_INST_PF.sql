SELECT PACKAGE_ID, PROD_INST_ID
FROM (SELECT B.PARA_CODE2 PACKAGE_ID, C.PROD_INST_ID
	  FROM TF_F_USER_SVC A, TD_S_COMMPARA B, TF_F_INSTANCE_PF C
	 WHERE TO_CHAR(A.SERVICE_ID) = B.PARAM_CODE
	   AND B.SUBSYS_CODE = 'CSM'
	   AND B.PARAM_ATTR = '9014'
	   AND A.USER_ID = TO_NUMBER(:USER_ID)
	   AND A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
	   AND A.INST_ID = C.INST_ID
	   AND C.INST_TYPE = 'P'
	   AND SYSDATE < A.END_DATE
	UNION
	SELECT B.PARA_CODE2 PACKAGE_ID, C.PROD_INST_ID
	  FROM TF_F_USER_DISCNT A, TD_S_COMMPARA B, TF_F_INSTANCE_PF C
	 WHERE TO_CHAR(A.DISCNT_CODE) = B.PARAM_CODE
	   AND B.SUBSYS_CODE = 'CSM'
	   AND B.PARAM_ATTR = '9013'
	   AND A.USER_ID = TO_NUMBER(:USER_ID)
	   AND A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
	   AND A.INST_ID = C.INST_ID
	   AND C.INST_TYPE = 'P'
	   AND SYSDATE < A.END_DATE)