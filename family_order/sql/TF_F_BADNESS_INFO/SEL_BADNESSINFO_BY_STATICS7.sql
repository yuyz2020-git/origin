--IS_CACHE=Y
 SELECT BADNESS_INFO_PROVINCE,
        SUM(A) A,
        SUM(B) B,
        SUM(C) C,
        SUM(D) D,
        SUM(E) E,
        SUM(F) F,
        SUM(G) G,
        SUM(H) H,
        SUM(I) I,
        SUM(J) J
   FROM (SELECT T.BADNESS_INFO_PROVINCE,
                COUNT(DISTINCT(T.BADNESS_INFO)) A,
                0 B,
                0 C,
                0 D,
                0 E,
                0 F,
                0 G,
                0 H,
                0 I,
                0 J
           FROM TF_F_BADNESS_INFO T
          WHERE T.RECV_PROVINCE = '898'
            AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
                :REPORT_TYPE_CODE IS NULL)
            AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
                :REPORT_CODE IS NULL)
            AND (TRUNC(T.REPORT_TIME) >=
                TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
                :REPORT_START_TIME IS NULL)
            AND (TRUNC(T.REPORT_TIME) <=
                TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
                :REPORT_END_TIME IS NULL)
          GROUP BY T.BADNESS_INFO_PROVINCE
         UNION ALL
         SELECT T.BADNESS_INFO_PROVINCE,
                0 A,
                COUNT(DISTINCT(T.REPORT_SERIAL_NUMBER)) B,
                0 C,
                0 D,
                0 E,
                0 F,
                0 G,
                0 H,
                0 I,
                0 J
           FROM TF_F_BADNESS_INFO T
          WHERE 1 = 1
            AND T.RECV_PROVINCE = '898'
            AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
                :REPORT_TYPE_CODE IS NULL)
            AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
                :REPORT_CODE IS NULL)
            AND (TRUNC(T.REPORT_TIME) >=
                TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
                :REPORT_START_TIME IS NULL)
            AND (TRUNC(T.REPORT_TIME) <=
                TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
                :REPORT_END_TIME IS NULL)
          GROUP BY T.BADNESS_INFO_PROVINCE
         UNION ALL
         SELECT T.BADNESS_INFO_PROVINCE,
                0 A,
                0 B,
                COUNT(T.REPORT_SERIAL_NUMBER) C,
                0 D,
                0 E,
                0 F,
                0 G,
                0 H,
                0 I,
                0 J
           FROM TF_F_BADNESS_INFO T
          WHERE T.RECV_IN_TYPE = '02'
            AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
                :REPORT_TYPE_CODE IS NULL)
            AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
                :REPORT_CODE IS NULL)
            AND (TRUNC(T.REPORT_TIME) >=
                TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
                :REPORT_START_TIME IS NULL)
            AND (TRUNC(T.REPORT_TIME) <=
                TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
                :REPORT_END_TIME IS NULL)
          GROUP BY T.BADNESS_INFO_PROVINCE
         UNION ALL
         SELECT T.BADNESS_INFO_PROVINCE,
                0 A,
                0 B,
                0 C,
                COUNT(T.REPORT_SERIAL_NUMBER) D,
                0 E,
                0 F,
                0 G,
                0 H,
                0 I,
                0 J
           FROM TF_F_BADNESS_INFO T
          WHERE T.RECV_IN_TYPE = '02'
            AND T.STATE IN ('02', '03', '0A', '0B')
            AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
                :REPORT_TYPE_CODE IS NULL)
            AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
                :REPORT_CODE IS NULL)
            AND (TRUNC(T.REPORT_TIME) >=
                TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
                :REPORT_START_TIME IS NULL)
            AND (TRUNC(T.REPORT_TIME) <=
                TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
                :REPORT_END_TIME IS NULL)
          GROUP BY T.BADNESS_INFO_PROVINCE
         UNION ALL
         SELECT T.BADNESS_INFO_PROVINCE,
                0 A,
                0 B,
                0 C,
                0 D,
                SUM(1) E,
                0 F,
                0 G,
                0 H,
                0 I,
                0 J
           FROM TF_F_BADNESS_INFO T
          WHERE T.TARGET_PROVINCE != '999'
            AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
                :REPORT_TYPE_CODE IS NULL)
            AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
                :REPORT_CODE IS NULL)
            AND (TRUNC(T.REPORT_TIME) >=
                TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
                :REPORT_START_TIME IS NULL)
            AND (TRUNC(T.REPORT_TIME) <=
                TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
                :REPORT_END_TIME IS NULL)
          GROUP BY T.BADNESS_INFO_PROVINCE
         UNION ALL
         SELECT T.BADNESS_INFO_PROVINCE,
                0 A,
                0 B,
                0 C,
                0 D,
                0 E,
                SUM(1) F,
                0 G,
                0 H,
                0 I,
                0 J
           FROM TF_F_BADNESS_INFO T
          WHERE T.TARGET_PROVINCE = '999'
            AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
                :REPORT_TYPE_CODE IS NULL)
            AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
                :REPORT_CODE IS NULL)
            AND (TRUNC(T.REPORT_TIME) >=
                TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
                :REPORT_START_TIME IS NULL)
            AND (TRUNC(T.REPORT_TIME) <=
                TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
                :REPORT_END_TIME IS NULL)
          GROUP BY T.BADNESS_INFO_PROVINCE
         UNION ALL
         SELECT T.BADNESS_INFO_PROVINCE,
                0 A,
                0 B,
                0 C,
                0 D,
                0 E,
                0 F,
                COUNT(T.REPORT_SERIAL_NUMBER) G,
                0 H,
                0 I,
                0 J
           FROM TF_F_BADNESS_INFO T
          WHERE 1 = 1
            AND (T.RECV_PROVINCE = '898' AND T.TARGET_PROVINCE = '898')
            AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
                :REPORT_TYPE_CODE IS NULL)
            AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
                :REPORT_CODE IS NULL)
            AND (TRUNC(T.REPORT_TIME) >=
                TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
                :REPORT_START_TIME IS NULL)
            AND (TRUNC(T.REPORT_TIME) <=
                TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
                :REPORT_END_TIME IS NULL)
          GROUP BY T.BADNESS_INFO_PROVINCE
         UNION ALL
         SELECT T.BADNESS_INFO_PROVINCE,
                0 A,
                0 B,
                0 C,
                0 D,
                0 E,
                0 F,
                0 G,
                COUNT(T.REPORT_SERIAL_NUMBER) H,
                0 I,
                0 J
           FROM TF_F_BADNESS_INFO T
          WHERE 1 = 1
            AND ((T.RECV_PROVINCE = '898' AND T.TARGET_PROVINCE != '898') OR
                (T.RECV_PROVINCE != '898' AND T.TARGET_PROVINCE = '898'))
            AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
                :REPORT_TYPE_CODE IS NULL)
            AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
                :REPORT_CODE IS NULL)
            AND (TRUNC(T.REPORT_TIME) >=
                TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
                :REPORT_START_TIME IS NULL)
            AND (TRUNC(T.REPORT_TIME) <=
                TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
                :REPORT_END_TIME IS NULL)
          GROUP BY T.BADNESS_INFO_PROVINCE
         UNION ALL
         SELECT T.BADNESS_INFO_PROVINCE,
                0 A,
                0 B,
                0 C,
                0 D,
                0 E,
                0 F,
                0 G,
                0 H,
                COUNT(DISTINCT(T.REPORT_SERIAL_NUMBER)) I,
                0 J
           FROM TF_F_BADNESS_INFO T
          WHERE 1 = 1
            AND (T.RECV_PROVINCE = '898' AND T.TARGET_PROVINCE = '898')
            AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
                :REPORT_TYPE_CODE IS NULL)
            AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
                :REPORT_CODE IS NULL)
            AND (TRUNC(T.REPORT_TIME) >=
                TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
                :REPORT_START_TIME IS NULL)
            AND (TRUNC(T.REPORT_TIME) <=
                TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
                :REPORT_END_TIME IS NULL)
          GROUP BY T.BADNESS_INFO_PROVINCE
         UNION ALL
         SELECT T.BADNESS_INFO_PROVINCE,
                0 A,
                0 B,
                0 C,
                0 D,
                0 E,
                0 F,
                0 G,
                0 H,
                0 I,
                COUNT(DISTINCT(T.REPORT_SERIAL_NUMBER)) J
           FROM TF_F_BADNESS_INFO T
          WHERE 1 = 1
            AND ((T.RECV_PROVINCE = '898' AND T.TARGET_PROVINCE != '898') OR
                (T.RECV_PROVINCE != '898' AND T.TARGET_PROVINCE = '898'))
            AND (SUBSTR(T.SORT_RESULT_TYPE, 5, 2) = :REPORT_TYPE_CODE OR
                :REPORT_TYPE_CODE IS NULL)
            AND (SUBSTR(T.SORT_RESULT_TYPE, 7, 2) = :REPORT_CODE OR
                :REPORT_CODE IS NULL)
            AND (TRUNC(T.REPORT_TIME) >=
                TO_DATE(:REPORT_START_TIME, 'yyyy-mm-dd') OR
                :REPORT_START_TIME IS NULL)
            AND (TRUNC(T.REPORT_TIME) <=
                TO_DATE(:REPORT_END_TIME, 'yyyy-mm-dd') OR
                :REPORT_END_TIME IS NULL)
          GROUP BY T.BADNESS_INFO_PROVINCE) A
  GROUP BY A.BADNESS_INFO_PROVINCE
  ORDER BY A.BADNESS_INFO_PROVINCE
