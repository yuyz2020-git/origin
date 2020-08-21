SELECT T.BUSIFORM_ID,
	   T.BUSIFORM_NODE_ID,
       T.SUB_BUSIFORM_ID,
       T.RELE_VALUE,
       T.RELE_CODE,
       T.ACCEPT_MONTH,
       T.REMARK,
       T.VALID_TAG,
       T.EPARCHY_CODE,
       T.ACCEPT_DEPART_ID,
       T.UPDATE_DEPART_ID,
       T.UPDATE_STAFF_ID,
       T.ACCEPT_STAFF_ID,
       TO_CHAR(T.CREATE_DATE, 'YYYY-MM-DD HH24:MI:SS') CREATE_DATE,
       TO_CHAR(T.UPDATE_DATE, 'YYYY-MM-DD HH24:MI:SS') UPDATE_DATE
  FROM TF_B_EWE_RELE T
 WHERE T.BUSIFORM_ID = :BUSIFORM_ID
