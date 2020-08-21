SELECT A.ORDER_ID,
       A.SERIAL_NUMBER,
       A.USER_ID,
       A.ADD_MONTH,
       A.ADD_DATE,
       A.ADD_TIME,
       A.ADD_WHOLE_DATE,
       A.GIVE_POINT,
       A.PERIOD_OF_VALIDITY,
       A.ACTIVITY_ID,
       A.ACTIVITY_TITLE,
       A.REMARKS
  FROM TL_B_WECHAT_SCORE A
 WHERE A.USER_ID = :USER_ID
   AND A.ADD_MONTH = TO_NUMBER(TO_CHAR(TO_DATE( :BEGIN_DATE, 'YYYY-MM-DD HH24:MI:SS'),'MM'))
   AND A.ADD_WHOLE_DATE>= TO_DATE( :BEGIN_DATE, 'YYYY-MM-DD HH24:MI:SS')
   AND A.ADD_WHOLE_DATE<= TO_DATE( :END_DATE, 'YYYY-MM-DD HH24:MI:SS')
 ORDER BY A.ADD_WHOLE_DATE DESC