--IS_CACHE=Y
SELECT 'PayItemDetail' KEY, DETAIL_ITEM_CODE VALUE1, '0' VALUE2, DETAIL_ITEM VRESULT
  FROM td_a_detailitem
 WHERE 'PayItemDetail' = :KEY
UNION
SELECT 'PayItemDetail' KEY, INTEGRATE_ITEM_CODE VALUE1, '1' VALUE2, INTEGRATE_ITEM VRESULT
  FROM td_a_integrateitem
 WHERE 'PayItemDetail' = :KEY