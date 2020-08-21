SELECT T.PART_ID,
       T.ELEMENT_ID,
       T.SEQ,
       T.PARAM_PRE,
       T.REL_PAGE_PART_ID,
       T.REL_PAGE_ELEMENT_ID,
       T.EXTRA_ID,
       T.TEMPLET_ID,
       T.VALID_TAG,
       T.RSRV_STR1,
       T.RSRV_STR2,
       T.RSRV_STR3,
       T.RSRV_STR4
  FROM TD_B_EOP_PAGE_PART_ELE T
 WHERE T.PART_ID = :PART_ID
   AND T.VALID_TAG = :VALID_TAG
 ORDER BY SEQ