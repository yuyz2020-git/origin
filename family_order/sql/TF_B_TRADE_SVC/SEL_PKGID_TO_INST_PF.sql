SELECT PACKAGE_ID, INST_ID
 FROM (SELECT B.PARA_CODE2 PACKAGE_ID, A.INST_ID
		 FROM TF_B_TRADE_SVC A, TD_S_COMMPARA B
		WHERE TO_CHAR(A.SERVICE_ID) = B.PARAM_CODE
		  AND B.SUBSYS_CODE = 'CSM'
		  AND B.PARAM_ATTR = '9014'
		  AND A.TRADE_ID = TO_NUMBER(:TRADE_ID)
		  AND A.ACCEPT_MONTH =
			  TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
		  AND A.MODIFY_TAG = '0'
		  AND NOT EXISTS (SELECT 1
				 FROM TF_F_INSTANCE_PF
				WHERE INST_ID = A.INST_ID
				  AND INST_TYPE = 'P')
	   UNION ALL
	   SELECT B.PARA_CODE2 PACKAGE_ID, A.INST_ID
		 FROM TF_B_TRADE_DISCNT A, TD_S_COMMPARA B
		WHERE TO_CHAR(A.DISCNT_CODE) = B.PARAM_CODE
		  AND B.SUBSYS_CODE = 'CSM'
		  AND B.PARAM_ATTR = '9013'
		  AND A.TRADE_ID = TO_NUMBER(:TRADE_ID)
		  AND A.ACCEPT_MONTH =
			  TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
		  AND A.MODIFY_TAG = '0'
		  AND NOT EXISTS (SELECT 1
				 FROM TF_F_INSTANCE_PF
				WHERE INST_ID = A.INST_ID
				  AND INST_TYPE = 'P'))
ORDER BY PACKAGE_ID