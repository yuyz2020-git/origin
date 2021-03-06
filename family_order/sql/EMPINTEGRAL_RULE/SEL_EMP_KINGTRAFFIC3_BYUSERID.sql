--IS_CACHE=N
SELECT decode(count(1),0,0,1) 是否受理
          FROM TF_F_USER_DISCNT D
         WHERE D.DISCNT_CODE IN
               (SELECT D.PARA_CODE1
                  FROM TD_S_COMMPARA D
                 WHERE D.SUBSYS_CODE = 'CSM'
                   AND D.PARAM_ATTR = '1798'
                   AND D.PARAM_CODE = '6'
                   AND D.EPARCHY_CODE = '0898'
                   AND SYSDATE BETWEEN D.START_DATE AND D.END_DATE
                   AND D.PARA_CODE3 = :OPER_CODE
                   )
           AND D.USER_ID = TO_NUMBER(:USER_ID)
           and d.partition_id = mod( to_number(:USER_ID),10000)
           AND D.END_DATE <=ADD_MONTHS(TRUNC(LAST_DAY(SYSDATE) + 1) - 1 / 86400, -1)
           AND D.END_DATE > ADD_MONTHS(TRUNC(LAST_DAY(SYSDATE) + 1) - 1 / 86400, -4)