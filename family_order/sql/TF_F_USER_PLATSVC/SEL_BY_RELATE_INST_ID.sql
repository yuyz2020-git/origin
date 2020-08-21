SELECT *
  FROM TF_F_USER_PLATSVC B
 WHERE B.USER_ID = :USER_ID
   AND B.PARTITION_ID = mod(:USER_ID,10000)
   AND B.RSRV_STR4 = :RSRV_STR4
   AND B.BIZ_STATE_CODE <> 'E'
   AND B.END_DATE > SYSDATE
