SELECT T.IBSYSID,
       T.SEQ,
       T.GROUP_SEQ,
       T.ACCEPT_MONTH,
       T.SUB_IBSYSID,
       T.NODE_ID,
       T.DISPLAY_NAME,
       T.ATTACH_TYPE,
       T.ATTACH_NAME,
       T.ATTACH_LENGTH,
       T.ATTACH_URL,
       T.ATTACH_LOCAL_PATH,
       T.ATTACH_CITY_CODE,
       T.ATTACH_EPARCHY_CODE,
       T.ATTACH_DEPART_ID,
       T.ATTACH_DEPART_NAME,
       T.ATTACH_STAFF_ID,
       T.ATTACH_STAFF_NAME,
       T.ATTACH_STAFF_PHONE,
       T.FILE_ID,
       T.REMARK,
       TO_CHAR(T.INSERT_TIME, 'YYYY-MM-DD HH24:MI:SS') INSERT_TIME,
       TO_CHAR(T.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       T.VALID_TAG,
       T.RECORD_NUM
  FROM TF_B_EOP_ATTACH T
 WHERE T.SUB_IBSYSID = :SUB_IBSYSID
   AND T.RECORD_NUM = :RECORD_NUM
