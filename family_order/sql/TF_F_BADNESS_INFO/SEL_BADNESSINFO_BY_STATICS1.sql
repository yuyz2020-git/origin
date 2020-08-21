SELECT NVL(P.BADNESS_INFO_PROVINCE, Q.BADNESS_INFO_PROVINCE) BADNESS_INFO_PROVINCE,
NVL(P.BADNESS_INFO, Q.BADNESS_INFO) BADNESS_INFO,
BADNESS_INFO_SUM,
NVL(BLACK_SUM, 0) BLACK_SUM,
BADNESS_INFO_SUM - NVL(BLACK_SUM, 0) NORMAL_SUM
FROM (SELECT T.BADNESS_INFO_PROVINCE, T.BADNESS_INFO, SUM(1) BLACK_SUM
FROM TF_F_BADNESS_INFO T
WHERE 1 = 1
AND EXISTS
(SELECT 1
  FROM TL_B_BLACKUSER B
 WHERE SUBSTR(B.SERIAL_NUMBER, 3, 11) =
       T.REPORT_SERIAL_NUMBER
   AND B.PROCESS_TAG = '1'
   AND (SYSDATE BETWEEN B.BEGIN_DATE AND END_DATE))
AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
:REPORT_TYPE_CODE IS NULL)
AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
:REPORT_CODE IS NULL)
AND (SUBSTR(T.SORT_RESULT_TYPE, 9, 2) =
SUBSTR(:CONTENT_TYPE_CODE, 3, 2) OR
:CONTENT_TYPE_CODE IS NULL)
AND (T.RECV_IN_TYPE = :RECV_IN_TYPE OR :RECV_IN_TYPE IS NULL)
AND (T.BRAND_CODE = :BADNESS_INFO_BRAND_CODE OR
:BADNESS_INFO_BRAND_CODE IS NULL)
AND (T.BADNESS_INFO_PROVINCE = :BADNESS_INFO_PROVINCE OR
:BADNESS_INFO_PROVINCE IS NULL)
AND (T.REPORT_CUST_PROVINCE = :REPORT_CUST_PROVINCE OR
:REPORT_CUST_PROVINCE IS NULL)
AND (T.BADNESS_INFO = :BADNESS_INFO OR :BADNESS_INFO IS NULL)
AND (TRUNC(T.REPORT_TIME) >=
TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
:REPORT_START_TIME IS NULL)
AND (TRUNC(T.REPORT_TIME) <=
TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
:REPORT_END_TIME IS NULL)
AND (TRUNC(T.IN_DATE) >= TO_DATE(:IN_DATE, 'yyyy-mm-dd') OR
:IN_DATE IS NULL)
AND (T.ALLNEWROWE_FEE >= TO_NUMBER(:DEBT_BALANCE) OR
:DEBT_BALANCE IS NULL)
AND (T.STATE = :STATE OR :STATE IS NULL)
GROUP BY T.BADNESS_INFO_PROVINCE, T.BADNESS_INFO) P
FULL OUTER JOIN (SELECT S.BADNESS_INFO_PROVINCE,
          S.BADNESS_INFO,
          SUM(1) BADNESS_INFO_SUM
     FROM TF_F_BADNESS_INFO S
    WHERE 1 = 1
      AND (SUBSTR(S.SORT_RESULT_TYPE, 5, 2) =
          :REPORT_TYPE_CODE OR :REPORT_TYPE_CODE IS NULL)
      AND (SUBSTR(S.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
          :REPORT_CODE IS NULL)
      AND (SUBSTR(S.SORT_RESULT_TYPE, 9, 2) =
          SUBSTR(:CONTENT_TYPE_CODE, 3, 2) OR
          :CONTENT_TYPE_CODE IS NULL)
      AND (S.RECV_IN_TYPE = :RECV_IN_TYPE OR
          :RECV_IN_TYPE IS NULL)
      AND (S.BRAND_CODE = :BADNESS_INFO_BRAND_CODE OR
          :BADNESS_INFO_BRAND_CODE IS NULL)
      AND (S.BADNESS_INFO_PROVINCE = :BADNESS_INFO_PROVINCE OR
          :BADNESS_INFO_PROVINCE IS NULL)
      AND (S.REPORT_CUST_PROVINCE = :REPORT_CUST_PROVINCE OR
          :REPORT_CUST_PROVINCE IS NULL)
      AND (S.BADNESS_INFO = :BADNESS_INFO OR
          :BADNESS_INFO IS NULL)
      AND (S.STATE = :STATE OR :STATE IS NULL)
      AND (TRUNC(S.REPORT_TIME) >=
          TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
          :REPORT_START_TIME IS NULL)
      AND (TRUNC(S.REPORT_TIME) <=
          TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
          :REPORT_END_TIME IS NULL)
      AND (TRUNC(S.IN_DATE) >=
          TO_DATE(:IN_DATE, 'yyyy-mm-dd') OR
          :IN_DATE IS NULL)
      AND (S.ALLNEWROWE_FEE >= TO_NUMBER(:DEBT_BALANCE) OR
          :DEBT_BALANCE IS NULL)
    GROUP BY S.BADNESS_INFO_PROVINCE, S.BADNESS_INFO) Q ON P.BADNESS_INFO_PROVINCE =
                                                           Q.BADNESS_INFO_PROVINCE
                                                       AND P.BADNESS_INFO =
                                                           Q.BADNESS_INFO
ORDER BY P.BADNESS_INFO_PROVINCE, P.BADNESS_INFO