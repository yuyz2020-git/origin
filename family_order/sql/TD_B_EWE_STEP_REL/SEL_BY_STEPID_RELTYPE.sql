SELECT T.REL_ID,
       T.STEP_ID,
       T.REL_STEP_ID,
       T.REL_TYPE,
       T.VALID_TAG,
       T.ACCEPT_DEPART_ID,
       T.UPDATE_DEPART_ID,
       T.UPDATE_STAFF_ID,
       T.ACCEPT_STAFF_ID,
       T.CREATE_DATE,
       T.UPDATE_DATE
  FROM TD_B_EWE_STEP_REL T
 WHERE T.STEP_ID = :STEP_ID
   AND T.REL_TYPE = :REL_TYPE
   AND T.VALID_TAG = :VALID_TAG