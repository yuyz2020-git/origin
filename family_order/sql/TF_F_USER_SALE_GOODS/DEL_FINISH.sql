UPDATE TF_F_USER_SALE_GOODS SET 
CANCEL_DATE=to_date(:CANCEL_DATE,'yyyy-mm-dd hh24:mi:ss') ,UPDATE_TIME = to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , UPDATE_STAFF_ID = :UPDATE_STAFF_ID, UPDATE_DEPART_ID = :UPDATE_DEPART_ID, REMARK = :REMARK
WHERE 
PARTITION_ID = MOD(to_number(:USER_ID),10000) and USER_ID = to_number(:USER_ID) and PRODUCT_ID = :PRODUCT_ID and PACKAGE_ID = :PACKAGE_ID and GOODS_ID = :GOODS_ID and ACCEPT_DATE = to_date(:ACCEPT_DATE,'yyyy-mm-dd hh24:mi:ss')