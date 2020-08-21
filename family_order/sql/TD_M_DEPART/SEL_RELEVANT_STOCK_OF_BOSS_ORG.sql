--IS_CACHE=Y
SELECT A.DEPART_ID STOCK_ID,
       A.DEPART_NAME STOCK_NAME,
       A.DEPART_FRAME STOCK_FRAME,
       DECODE(C.CODE_TYPE_CODE,'0','0','S')  STOCK_LEVEL,
       A.PARENT_DEPART_ID PARENT_STOCK_ID,
       (SELECT DEPART_NAME
          FROM TD_M_DEPART
         WHERE DEPART_ID = A.PARENT_DEPART_ID) PARENT_STOCK_NAME
  FROM TD_M_DEPART A,TD_M_DEPARTKIND C
 WHERE 1 = 1
   AND A.VALIDFLAG = '0'
   AND A.DEPART_ID = :DEPART_ID 
   AND A.AREA_CODE = :CITY_CODE
   AND A.PARENT_DEPART_ID = :PARENT_DEPART_ID
   AND A.DEPART_KIND_CODE = C.DEPART_KIND_CODE