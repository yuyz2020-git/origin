UPDATE tf_b_resapply_main
   SET AUDIT_TYPE_CODE = decode(:AUDIT_TYPE_CODE,-1,AUDIT_TYPE_CODE,:AUDIT_TYPE_CODE), AUDIT_STATE_CODE =decode(:AUDIT_STATE_CODE,-1,AUDIT_STATE_CODE,:AUDIT_STATE_CODE),RSRV_STR2 = :STAFF_ID,RSRV_DATE1 = sysdate  
 WHERE APPLY_NO = :APPLY_NO
   AND APPLY_BATCH_ID = :APPLY_BATCH_ID