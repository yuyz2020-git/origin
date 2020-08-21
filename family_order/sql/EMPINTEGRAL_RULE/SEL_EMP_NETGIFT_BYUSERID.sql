--IS_CACHE=N
SELECT RSRV_STR2 活动产品,D.DEPART_KIND_CODE 部门类型, TO_CHAR(A.ACCEPT_DATE, 'YYYYMM') 受理月份,A.TRADE_DEPART_ID 受理部门,A.TRADE_ID 台账标识
FROM UCR_CRM1.TF_BH_TRADE A, TD_M_DEPART D,TD_S_COMMPARA C
WHERE A.USER_ID = TO_NUMBER(:USER_ID)
AND A.TRADE_TYPE_CODE = 240
AND TRUNC(A.ACCEPT_DATE) BETWEEN TRUNC(ADD_MONTHS(SYSDATE, -1)) AND TRUNC(SYSDATE)
AND A.CANCEL_TAG = '0'
AND A.RSRV_STR1 = '69900817'
AND A.RSRV_STR2 IN ('60010175', '60010176', '60010177')
AND A.TRADE_DEPART_ID = D.DEPART_ID
AND C.SUBSYS_CODE = 'CSM'
AND C.PARAM_CODE = 'DYJF'
AND C.PARAM_ATTR = '124'
AND A.PRODUCT_ID = C.PARA_CODE2
AND ROWNUM < 2