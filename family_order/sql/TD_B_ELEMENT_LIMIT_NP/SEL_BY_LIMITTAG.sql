--IS_CACHE=Y
SELECT d.ELEMENT_TYPE_CODE AS ELEMENT_TYPE_CODE,
       d.ELEMENT_ID AS ELEMENT_ID,
       d.LIMIT_TAG AS LIMIT_TAG,
       TO_CHAR(d.START_DATE, 'YYYY-MM-DD HH24:MI:SS') AS START_DATE,
       TO_CHAR(d.END_DATE, 'YYYY-MM-DD HH24:MI:SS') AS END_DATE,
       TO_CHAR(d.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') AS UPDATE_TIME,
       d.UPDATE_STAFF_ID AS UPDATE_STAFF_ID,
       d.UPDATE_DEPART_ID AS UPDATE_DEPART_ID,
       d.REMARK AS REMARK
  FROM TD_B_ELEMENT_LIMIT_NP d
 where d.limit_tag = :LIMIT_TAG
   and sysdate between d.start_date and d.end_date
   and (d.eparchy_code = :EPARCHY_CODE or d.eparchy_code = 'ZZZZ')