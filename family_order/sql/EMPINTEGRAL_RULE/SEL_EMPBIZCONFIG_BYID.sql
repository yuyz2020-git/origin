--IS_CACHE=Y
SELECT IS_REALTIME 是否实时积分业务,OPER_NAME 业务名称,SCORE 积分值,PARA2 是否需要判断店员密码,PARA5 是否需要判断业务区促销业务,P.*
  FROM CHNL_CU_PARA_PARALLEL P
 WHERE OPER_CODE =:OPER_CODE
   AND STATE = '1'
   AND PARA_TYPE = 1
