--IS_CACHE=Y
SELECT NODE_CODE,NODE_NAME,NODE_TYPE,PARENT_NODE_CODE,NODE_LEVEL
FROM TD_S_CONTENT_CATEGORY 
 WHERE NODE_TYPE != '2' 
 AND NODE_CODE=:NODE_CODE
 AND NODE_NAME=:NODE_NAME
 AND PARENT_NODE_CODE=:PARENT_NODE_CODE