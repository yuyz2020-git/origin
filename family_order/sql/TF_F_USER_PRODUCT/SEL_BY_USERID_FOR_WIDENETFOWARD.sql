SELECT * FROM TF_F_USER_PRODUCT T WHERE T.USER_ID =:USER_ID AND T.START_DATE>SYSDATE AND T.END_DATE > T.START_DATE