UPDATE tf_b_resapply_detail
   SET APPLY_NUM = :APPLY_NUM,RES_KIND_CODE = :RES_KIND_CODE  
 WHERE APPLY_NO = :APPLY_NO
   AND APPLY_BATCH_ID = :APPLY_BATCH_ID
   AND APPLY_DETAIL_NO = :APPLY_DETAIL_NO