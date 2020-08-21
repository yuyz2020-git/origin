UPDATE tf_b_resapply_main
   SET APPLY_STATUS = :APPLY_STATUS,PRIORITY = :PRIORITY,APPLY_REASON = :APPLY_REASON,REMARK = :REMARK,
       RSRV_DATE1 = sysdate,RSRV_STR1 = :APPLY_STOCK_ID,RSRV_STR2 = :STAFF_ID
 WHERE APPLY_NO = :APPLY_NO
   AND APPLY_BATCH_ID = :APPLY_BATCH_ID
   AND (:APPLY_TYPE_CODE is null or APPLY_TYPE_CODE = :APPLY_TYPE_CODE)