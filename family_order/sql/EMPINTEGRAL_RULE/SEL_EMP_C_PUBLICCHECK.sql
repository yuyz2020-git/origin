--IS CACHE=Y
SELECT E.DEPART_KIND_CODE 部门类型, TO_CHAR(A.ACCEPT_DATE, 'YYYYMM') 受理月份,A.TRADE_ID 台账标识
          FROM ucr_crm1.TF_BH_TRADE        A,
               ucr_crm1.TF_B_TRADE_DISCNT  B,
               TF_F_USER_DISCNT   C,
               TD_M_DEPART        E,
               ucr_crm1.TF_B_TRADE_PLATSVC D
         WHERE A.USER_ID = TO_NUMBER(:USER_ID)
           AND B.USER_ID = TO_NUMBER(:USER_ID)
           AND A.TRADE_TYPE_CODE IN (3788, 3700) --开户和产品变更
           AND A.CANCEL_TAG = '0' --未返销
           AND A.TRADE_ID = B.TRADE_ID
           AND B.DISCNT_CODE IN (89001, 89002, 89003)
           AND TRUNC(A.ACCEPT_DATE) BETWEEN TRUNC(SYSDATE - 3) AND
               TRUNC(SYSDATE)
           AND B.END_DATE > SYSDATE
           AND C.USER_ID = B.USER_ID
           AND B.INST_ID = C.INST_ID
           AND SYSDATE BETWEEN C.START_DATE AND C.END_DATE
           AND A.TRADE_DEPART_ID = E.DEPART_ID
           AND A.TRADE_ID = D.TRADE_ID
           AND D.OPER_CODE IN ('01','06')
           AND NOT EXISTS (SELECT *
                  FROM UCR_CRM1.CHNL_CU_REGI_PARALLEL E
                 WHERE E.MOBILE_NUM = A.SERIAL_NUMBER
                   AND E.USER_ID = A.USER_ID
                   AND E.CAL_FLAG = '0'
                   AND E.OPER_CODE = '58')
			AND EXISTS (SELECT 1 FROM TD_CHL_COLLECT L WHERE L.COLLECT_ID=:COLLECT_ID AND L.COLLECT_DEF=to_char(D.SERVICE_ID))
           AND ROWNUM < 2