SELECT COUNT(1) RECORDCOUNT
FROM TF_F_USER X,TF_F_USER_PURCHASE Y
WHERE X.USER_ID = Y.USER_ID
AND X.CUST_ID IN
(SELECT CUST_ID FROM TF_F_CUSTOMER WHERE PSPT_ID IN
(SELECT B.PSPT_ID
FROM TF_F_USER A, TF_F_CUSTOMER B
WHERE  A.CUST_ID = B.CUST_ID
AND A.REMOVE_TAG ='0'
AND A.USER_ID =:USER_ID))
AND X.REMOVE_TAG='0'
AND Y.END_DATE>SYSDATE
AND Y.PURCHASE_ATTR LIKE :PURCHASE_ATTR
AND process_tag=:PROCESS_TAG