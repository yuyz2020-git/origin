--IS_CACHE=N
SELECT I.CHNL_NAME 渠道名称,I.CHNL_KIND_ID 渠道类型,I.*
  FROM TF_CHL_CHANNEL I
 WHERE I.CHNL_ID =:CHNL_ID
   AND I.STATE = '0'
