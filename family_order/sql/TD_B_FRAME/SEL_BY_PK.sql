--IS_CACHE=Y
 SELECT A.FRAME_ID,
        A.EXTEND_ID,
        A.FRAME_NAME,
        A.FRAME_DESC,
        A.PAGESET_ID,
        A.DATA_PARSER,
        A.DEAL_SERVICE,
        A.WORKFLOW_CODE
   FROM TD_B_FRAME A
  WHERE A.STATE = '1'
    AND A.FRAME_ID = :FRAME_ID