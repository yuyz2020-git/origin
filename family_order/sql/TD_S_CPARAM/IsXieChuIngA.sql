SELECT USER_ID,PORT_IN_DATE
FROM TF_F_USER_NP T
WHERE T.NP_TAG in ('1','6')
AND T.USER_ID = TO_NUMBER(:USER_ID)
AND sysdate>t.port_in_date 
AND sysdate<t.port_in_date+120