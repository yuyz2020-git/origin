INSERT INTO TF_F_CUST_VIP
        (VIP_ID,CUST_ID,USECUST_ID,USER_ID,SERIAL_NUMBER,
         NET_TYPE_CODE,CUST_NAME,USECUST_NAME,EPARCHY_CODE,CITY_CODE,VIP_TYPE_CODE,
         VIP_CLASS_ID,VIP_TYPE_CODE_B,VIP_CLASS_ID_B,JOIN_DATE,
         OPEN_DATE,REMOVE_TAG)
  VALUES(:VIP_ID,TO_NUMBER(:CUST_ID),TO_NUMBER(:USECUST_ID),TO_NUMBER(:USER_ID),:SERIAL_NUMBER,
     :NET_TYPE_CODE,:CUST_NAME,:USECUST_NAME,:EPARCHY_CODE,:CITY_CODE,:VIP_TYPE_CODE,
     :VIP_CLASS_ID,:VIP_TYPE_CODE_B,:VIP_CLASS_ID_B,TO_DATE(:JOIN_DATE,'YYYY-MM_DD HH24:MM:SS'),
     TO_DATE(:OPEN_DATE,'YYYY-MM_DD HH24:MM:SS'),:REMOVE_TAG)