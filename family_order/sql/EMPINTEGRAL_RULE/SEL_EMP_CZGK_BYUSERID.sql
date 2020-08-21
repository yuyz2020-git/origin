--IS_CACHE=N
SELECT RSRV_STR2 充值刮卡卡面值
FROM (SELECT A.RSRV_STR2
FROM UCR_CRM1.TF_BH_TRADE A, TD_M_DEPART B
WHERE A.USER_ID = :USER_ID ---索引
AND TRUNC(A.ACCEPT_DATE) BETWEEN TRUNC(SYSDATE - 3) AND TRUNC(SYSDATE) ---可否跨月
AND A.TRADE_TYPE_CODE = '428'
AND A.CANCEL_TAG = '0'
AND A.RSRV_STR1 IN ('1','2','3')
---AND A.RSRV_STR2 >= 2 ---逻辑里有了
AND A.TRADE_DEPART_ID = B.DEPART_ID
AND B.DEPART_KIND_CODE NOT IN ('100', '500', '201', '801') ---渠道类型是不是统一判断
AND A.TRADE_ID NOT IN  ----重复登记是不是判断过了
(SELECT R.PRE_CHAR2
FROM CHNL_CU_REGI_PARALLEL R
WHERE R.OPER_CODE = '83'
AND R.USER_ID = :USER_ID
)
ORDER BY A.ACCEPT_DATE DESC)
WHERE ROWNUM < 2