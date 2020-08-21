 UPDATE TF_B_FAMILY_OTHER SET
            PRODUCT_OFFERING_ID=:PRODUCT_OFFERING_ID,
			POID_CODE=:POID_CODE,
			POID_LABLE=:POID_LABLE,
			MEM_LABLE=:MEM_LABLE，
			REMARK=:REMARK,
			FINISH_TAG=:FINISH_TAG,
			EXP_TIME=TO_DATE(:EXP_TIME, 'YYYY-MM-DD HH24:MI:SS')
            WHERE 1=1 
            AND PO_ORDER_NUMBER = :PO_ORDER_NUMBER 
            AND MEM_NUMBER = :MEM_NUMBER 
            AND PRODUCT_OFFERING_ID =:PRODUCT_OFFERING_ID