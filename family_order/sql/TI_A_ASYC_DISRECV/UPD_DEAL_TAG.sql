UPDATE ti_a_asyc_disrecv
   SET deal_time=SYSDATE,OPERATE_ID=:OPERATE_ID,RESULT_CODE=:RESULT_CODE,
     RESULT_INFO=:RESULT_INFO,
deal_tag=:DEAL_TAG
 WHERE asycrecv_id=TO_NUMBER(:ASYCRECV_ID) AND deal_tag='0'