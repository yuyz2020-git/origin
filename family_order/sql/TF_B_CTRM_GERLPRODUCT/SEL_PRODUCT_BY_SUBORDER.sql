select SUBORDER_ID,GOODS_ID,PRODUCT_ID,PRODUCT_TYPE
from TF_B_CTRM_GERLPRODUCT 
where 1=1
AND SUBORDER_ID=:SUBORDER_ID