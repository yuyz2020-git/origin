--IS_CACHE=Y
SELECT PROVINCE_NAME, PROVINCE_CODE
  FROM TI_B_UPMS_CITY
 GROUP BY PROVINCE_NAME, PROVINCE_CODE
 ORDER BY PROVINCE_CODE ASC