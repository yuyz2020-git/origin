   --IS_CACHE=Y
SELECT C.SPEC_AREA_ID,
       C.BIZ_AREACODE,
       C.REMARK, 
       D.LAC_NAME,        
       C.LAC,
       C.CELL_ID 
  FROM TD_B_SPECAREA_COMP C, TD_LAC D
 WHERE C.BIZ_AREACODE = :AREA_CODE
   AND D.LAC = C.LAC
   AND D.CELL_ID = C.CELL_ID  
   AND SYSDATE BETWEEN C.START_DATE AND C.END_DATE