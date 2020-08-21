--IS_CACHE=Y
--IS_CACHE=N
SELECT 1 ITEM_NUM, A.ITEM_ID, A.ITEM_NAME, A.ITEM_TYPE, A.ITEM_TYPE_ANAME,
       A.ITEM_TYPE_A, A.ITEM_TYPE_BNAME, A.ITEM_TYPE_B, A.STORE_TYPE,
       A.ITEM_NET_TYPE, A.PROVINCE, A.ITEM_EPRICE, A.ITEM_BPRICE,
       A.VENDOR_ID, A.VENDOR_NAME, A.ITEM_STATUS, A.STATE,
       TO_CHAR(A.UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       A.RSRV_STR1, A.RSRV_STR2, A.RSRV_STR3, A.RSRV_STR4, A.RSRV_STR5,
       A.RSRV_STR6, A.RSRV_STR7, A.RSRV_STR8, A.RSRV_STR9, A.RSRV_STR10,
       B.SCORE_VALUE,B.LEVEL_TYPE,B.LEVEL_TYPE_CODE,B.LEVEL_TYPE_DESC
  FROM TD_B_UPMS_GIFT A, TD_B_UPMS_GIFT_SCORE B
 WHERE 1 = 1
   AND A.STATE = :STATE
   AND A.ITEM_STATUS = :ITEM_STATUS
   AND A.ITEM_NAME LIKE '%' || :ITEM_NAME || '%'
   AND A.ITEM_TYPE = :ITEM_TYPE
   AND A.STORE_TYPE = :STORE_TYPE
   AND A.ITEM_NET_TYPE = :ITEM_NET_TYPE
   AND B.ITEM_ID = A.ITEM_ID
   AND B.LEVEL_TYPE = :LEVEL_TYPE
   AND B.LEVEL_TYPE_CODE = :LEVEL_TYPE_CODE
   AND B.STATE = :SCORE_STATE
   AND B.BRAND_CODE = :BRAND_CODE
   AND B.SCORE_VALUE BETWEEN :ITEM_POINT1 AND :ITEM_POINT2
UNION ALL
SELECT 1 ITEM_NUM, A.ITEM_ID, A.ITEM_NAME, A.ITEM_TYPE, A.ITEM_TYPE_ANAME,
       A.ITEM_TYPE_A, A.ITEM_TYPE_BNAME, A.ITEM_TYPE_B, A.STORE_TYPE,
       A.ITEM_NET_TYPE, A.PROVINCE, A.ITEM_EPRICE, A.ITEM_BPRICE,
       A.VENDOR_ID, A.VENDOR_NAME, A.ITEM_STATUS, A.STATE,
       TO_CHAR(A.UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       A.RSRV_STR1, A.RSRV_STR2, A.RSRV_STR3, A.RSRV_STR4, A.RSRV_STR5,
       A.RSRV_STR6, A.RSRV_STR7, A.RSRV_STR8, A.RSRV_STR9, A.RSRV_STR10,
       B.SCORE_VALUE,B.LEVEL_TYPE,B.LEVEL_TYPE_CODE,B.LEVEL_TYPE_DESC
  FROM TD_B_UPMS_GIFT A, TD_B_UPMS_GIFT_SCORE B
 WHERE 1 = 1
   AND A.STATE = :STATE
   AND A.ITEM_STATUS = :ITEM_STATUS
   AND A.ITEM_NAME LIKE '%' || :ITEM_NAME || '%'
   AND A.ITEM_TYPE = :ITEM_TYPE
   AND A.STORE_TYPE = :STORE_TYPE
   AND A.ITEM_NET_TYPE = :ITEM_NET_TYPE
   AND B.ITEM_ID = A.ITEM_ID
   AND B.ITEM_ID NOT IN
       (SELECT A.ITEM_ID
          FROM TD_B_UPMS_GIFT A, TD_B_UPMS_GIFT_SCORE B
         WHERE 1 = 1
           AND A.STATE = :STATE
           AND A.ITEM_STATUS = :ITEM_STATUS
           AND A.ITEM_NAME LIKE '%' || :ITEM_NAME || '%'
           AND A.ITEM_TYPE = :ITEM_TYPE
           AND A.STORE_TYPE = :STORE_TYPE
           AND A.ITEM_NET_TYPE = :ITEM_NET_TYPE
           AND B.ITEM_ID = A.ITEM_ID
           AND B.LEVEL_TYPE = :LEVEL_TYPE
           AND B.LEVEL_TYPE_CODE = :LEVEL_TYPE_CODE
           AND B.STATE = :SCORE_STATE
           AND B.BRAND_CODE = :BRAND_CODE
           AND B.SCORE_VALUE BETWEEN :ITEM_POINT1 AND :ITEM_POINT2)
   AND B.LEVEL_TYPE = :LEVEL_TYPE
   AND B.LEVEL_TYPE_CODE = '000'
   AND B.STATE = :SCORE_STATE
   AND B.BRAND_CODE = :BRAND_CODE
   AND B.SCORE_VALUE BETWEEN :ITEM_POINT1 AND :ITEM_POINT2
 ORDER BY SCORE_VALUE DESC, ITEM_ID DESC