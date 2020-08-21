SELECT (SELECT RES_TRADE_NAME FROM TD_M_RESTRADE B WHERE A.RES_TRADE_ID=B.RES_TRADE_ID AND B.VALID_TAG='0') RES_TRADE_NAME,
(SELECT  DEPART_NAME FROM TD_M_DEPART C WHERE A.DEPART_ID_N=C.DEPART_ID AND C.VALIDFLAG='0') DEPART_NAME_N,
(SELECT  DEPART_NAME FROM TD_M_DEPART D WHERE A.DEPART_ID_O=D.DEPART_ID AND D.VALIDFLAG='0') DEPART_NAME_O,
(SELECT AREA_NAME FROM TD_M_AREA E WHERE E.AREA_CODE=A.EPARCHY_CODE AND E.VALIDFLAG='0') AREA_NAME,
TO_CHAR(A.OPER_DATE,'YYYY-MM-DD') OPER_DATE,A.LOG_ID,A.OPER_NUM,
F_RES_GETCODENAME('staff_id', A.OPER_STAFF_ID, '', '') STAFF_NAME
FROM TF_B_RES_ASSIGN_LOG A 
WHERE 1=1
AND A.RES_TYPE_CODE='4'
AND A.OPER_DEPART_ID IN (SELECT DEPART_ID FROM TD_S_ASSIGNRULE B WHERE B.VALID_FLAG = '0' AND B.RES_TYPE_CODE = '4' AND B.DEPART_FRAME LIKE '%'||:DEPART_ID||'%') 
AND A.OPER_STAFF_ID=:OPER_STAFF_ID
AND A.OPER_DATE >= TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS')
AND A.OPER_DATE <= TO_DATE(:END_DATE ||'23:59:59', 'YYYY-MM-DD HH24:MI:SS')
AND A.RES_TRADE_ID=:RES_TRADE_ID
AND A.DEPART_ID_O =:DEPART_ID_O
AND A.DEPART_ID_N =:DEPART_ID_N
order by A.LOG_ID DESC