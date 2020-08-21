insert into Tf_f_User_Comp_Rela(
PARTITION_ID,USER_ID,EPARCHY_CODE,COMP_PRODUCT_ID,COMP_PROD_SPEC_TYPE,COMP_USER_ID,
RELATION_TYPE_CODE,ROLE,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,
UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,
RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,
RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3,GROUP_ID)
values(
TO_NUMBER(:PARTITION_ID),TO_NUMBER(:USER_ID),:EPARCHY_CODE,TO_NUMBER(:COMP_PRODUCT_ID),TO_NUMBER(:COMP_PROD_SPEC_TYPE),TO_NUMBER(:COMP_USER_ID),
:RELATION_TYPE_CODE,:ROLE,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),sysdate,:UPDATE_STAFF_ID,
:UPDATE_DEPART_ID,:REMARK,TO_NUMBER(:RSRV_NUM1),TO_NUMBER(:RSRV_NUM2),TO_NUMBER(:RSRV_NUM3),TO_NUMBER(:RSRV_NUM4),TO_NUMBER(:RSRV_NUM5),
:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,
TO_DATE(:RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS'),:RSRV_TAG1,:RSRV_TAG2,:RSRV_TAG3,:GROUP_ID)