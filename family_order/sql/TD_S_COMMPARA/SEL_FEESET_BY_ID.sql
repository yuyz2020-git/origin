--IS_CACHE=Y
SELECT FEESET_ID PARA_CODE1,
       FEESET_NAME PARA_CODE2,
       FEESET_EXPLAIN PARA_CODE3,
       decode(FEESET_TYPE, '0', '产品', '1', '优惠') PARA_CODE4,
       BRAND_CODE PARA_CODE5,
       GROUP_BRAND_CODE PARA_CODE6,
       decode(PRODUCT_OBJ_TYPE, '0','个人','1','集团') PARA_CODE7,
       RES_TYPE_CODE PARA_CODE8,
       decode(COMP_TAG, '0', '非组合产品', '1', '固定组合产品', '2', '不固定组合产品') PARA_CODE9,
       decode(ENABLE_TAG, '0', '立即生效', '1', '下帐期生效', '2', '申请时立即生效,取消时下帐期生效') PARA_CODE10,
       B_DISCNT_CODE PARA_CODE11,
       A_DISCNT_CODE PARA_CODE12,
       decode(OBJ_TYPE_CODE, '0','用户', '1', '账户', '2', '客户', '3', '用户群', '4', '账户群') PARA_CODE13,
       decode(DEFINE_MONTHS, '0', '非包月', '1', '包月') PARA_CODE14,
       TO_CHAR(MONTHS) PARA_CODE15,
       DISCNT_TYPE_CODE PARA_CODE16,
       decode(RELEASE_TAG, '0', '未发布', '1', '已发布') PARA_CODE17,
       TO_CHAR(PRIORITY) PARA_CODE18,
       decode(PREPAY_TAG, '0', '后付费', '1', '预付费') PARA_CODE19,
       TAG_SET PARA_CODE20,
       UPDATE_STAFF_ID PARA_CODE21,
       UPDATE_DEPART_ID PARA_CODE22,
       UPDATE_TIME PARA_CODE23,
       EPARCHY_CODE PARA_CODE24,
       RSRV_STR5 PARA_CODE25,
       '' PARA_CODE26,
       '' PARA_CODE27,
       '' PARA_CODE28,
       '' PARA_CODE29,
       '' PARA_CODE30,
       UPDATE_STAFF_ID UPDATE_STAFF_ID,
       UPDATE_DEPART_ID UPDATE_DEPART_ID,
       UPDATE_TIME UPDATE_TIME,
       START_DATE START_DATE,
       END_DATE END_DATE,
       EPARCHY_CODE EPARCHY_CODE,
       '' REMARK,
       '' SUBSYS_CODE,
       0 PARAM_ATTR,
       '' PARAM_CODE,
       '' PARAM_NAME
  FROM TD_B_FEESET
  WHERE to_char(FEESET_ID) LIKE (:PARA_CODE1)
        AND EPARCHY_CODE LIKE :PARA_CODE2
        AND (:PARA_CODE3 = '' OR :PARA_CODE3 IS NULL) 
        AND (:PARA_CODE4 = '' OR :PARA_CODE4 IS NULL) 
        AND (:PARA_CODE5 = '' OR :PARA_CODE5 IS NULL) 
        AND (:PARA_CODE6 = '' OR :PARA_CODE6 IS NULL) 
        AND (:PARA_CODE7 = '' OR :PARA_CODE7 IS NULL) 
        AND (:PARA_CODE8 = '' OR :PARA_CODE8 IS NULL) 
        AND (:PARA_CODE9 = '' OR :PARA_CODE9 IS NULL) 
        AND (:PARA_CODE10 = '' OR :PARA_CODE10 IS NULL)
  ORDER BY FEESET_ID,FEESET_NAME