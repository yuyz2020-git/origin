UPDATE tf_a_writesnap_log_d
   SET cancel_tag = '1',RSRV_TAG1 = :RSRV_TAG1,RSRV_INFO1 = :RSRV_INFO1,RSRV_INFO2 = :RSRV_INFO2,REMARK = :REMARK,RSRV_DATE1 = :RSRV_DATE1,RSRV_DATE2 = :RSRV_DATE2   
 WHERE operate_id=TO_NUMBER(:OPERATE_ID)
   AND operate_type=:OPERATE_TYPE
   AND partition_id = :PARTITION_ID
   AND cancel_tag = '0'