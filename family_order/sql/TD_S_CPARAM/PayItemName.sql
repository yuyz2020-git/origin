--IS_CACHE=Y
SELECT 'PayItemName' KEY, EPARCHY_CODE VALUE1, PAYITEM_CODE VALUE2, PAY_ITEM VRESULT
  FROM TD_A_PAYITEM
 WHERE 'PayItemName' = :KEY