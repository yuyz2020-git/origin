DELETE FROM TF_B_EWE_RELE T
 WHERE T.BUSIFORM_NODE_ID = :BUSIFORM_NODE_ID
   AND T.SUB_BUSIFORM_ID = :SUB_BUSIFORM_ID
   AND T.VALID_TAG = :VALID_TAG
