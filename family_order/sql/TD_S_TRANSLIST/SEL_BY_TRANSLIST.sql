--IS_CACHE=Y
SELECT TRANLIST.TRANS_CODE,TRANLIST.TRANS_NAME FROM  TD_S_BIZTRANS BIZTRAN , TD_S_TRANSLIST TRANLIST WHERE 1=1
 AND BIZTRAN.TRANS_CODE = TRANLIST.TRANS_CODE
 AND BIZTRAN.BIZ_CODE = :BIZ_CODE