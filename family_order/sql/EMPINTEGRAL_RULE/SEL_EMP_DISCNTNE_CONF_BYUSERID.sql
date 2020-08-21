--IS_CACHE=N
SELECT TO_NUMBER(C.PARA_CODE4) 套餐价值,C.PARA_CODE1 套餐,C.PARA_CODE2 业务编码,C.PARA_CODE6 是否自选, T.DEPART_KIND_CODE 部门类型, TO_CHAR(D.UPDATE_TIME, 'YYYYMM') 变更月份,TO_CHAR(D.UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS') 变更时间
FROM TD_S_COMMPARA C, TF_F_USER_DISCNT D, TD_M_DEPART T
WHERE C.SUBSYS_CODE = 'CSM'
 AND C.PARAM_ATTR = :COMMPARA_ATTR
 AND C.PARAM_CODE = 'CUMU'
 AND D.PARTITION_ID = MOD(:USER_ID, 10000)
 AND D.USER_ID = TO_NUMBER(:USER_ID)
 AND TRUNC(D.END_DATE) = TO_DATE('2050-12-31', 'YYYY-MM-DD')
 AND C.PARA_CODE5 IS NULL---非自选套餐
 AND D.DISCNT_CODE = C.PARA_CODE1
 AND D.UPDATE_DEPART_ID = T.DEPART_ID
 order by 变更时间 desc