UPDATE TF_B_EOP_PRODUCT_EXT T
   SET T.RSRV_STR2    = :RSRV_STR2 
 WHERE T.IBSYSID = :IBSYSID
   AND T.RECORD_NUM = :RECORD_NUM