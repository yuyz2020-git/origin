SELECT POID_CODE,POID_LABLE,MEM_LABLE FROM  TF_B_FAMILY_OTHER
			WHERE 1=1
			AND PO_ORDER_NUMBER=:PO_ORDER_NUMBER
			AND PRODUCT_OFFERING_ID=:PRODUCT_OFFERING_ID
			AND CUSTOMER_PHONE=:CUSTOMER_PHONE
			AND FINISH_TAG ='2'