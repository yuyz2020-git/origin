SELECT REG.REGI_NUM,
       REG.CUMU_ACYC,
       REG.CUMU_ID,
       REG.OPER_CODE,
       REG.USER_ID,
       REG.MOBILE_NUM,
       REG.OPEN_CHNL_ID,
       REG.SCORE_TYPE,
       REG.IN_TYPE,
       REG.SEND_TIME,
       REG.AREA_CODE,
       REG.CAL_FLAG,
	   (select nvl(S.DATA_NAME,'未知') from Td_s_Static s where s.TYPE_iD = 'CHNL_EMPINTEGRAL_CALFLAG' AND S.DATA_ID=REG.CAL_FLAG) CAL_FLAG_NAME,
       REG.KEEPMONTHID,
       REG.SCORE_1,
       REG.SCORE_2,
       REG.PRE_CHAR1,
       REG.PRE_CHAR2,
       REG.PRE_NUM1,
       REG.PRE_NUM2,
       PARA.OPER_NAME,
       INFO.CUMU_NAME
  FROM CHNL_CU_REGI REG, CHNL_CU_PARA PARA, CHNL_CU_CUMUINFO INFO
 WHERE REG.OPER_CODE = PARA.OPER_CODE
   AND REG.CUMU_ID = :CUMU_ID
   AND REG.CUMU_ID = INFO.CUMU_ID
   AND INFO.UPDATE_STATE = '1'
   AND TO_CHAR(REG.SEND_TIME,'yyyy-MM-dd') <= :END_TIME
   AND TO_CHAR(REG.SEND_TIME,'yyyy-MM-dd') >= :START_TIME
   AND TO_CHAR(REG.SEND_TIME, 'yyyyMM') >=
       TO_CHAR(ADD_MONTHS(SYSDATE, -12), 'yyyyMM')
   AND REG.OPER_CODE >= '0'
   AND REG.SEND_TIME <= SYSDATE
   AND PARA.STATE = '1'
   AND PARA.PARA_TYPE = '1'