SELECT COUNT(1) RECORDCOUNT
  FROM TF_F_CUST_GROUP_EXTEND GE
 WHERE GE.EXTEND_VALUE = :CUST_ID
   AND GE.EXTEND_TAG = 'SYNSTATE'
   AND GE.RSRV_TAG15 = '1'