SELECT COUNT(*) RECORDCOUNT FROM tf_f_user_product p
 WHERE p.user_id = TO_NUMBER(:USER_ID)
 AND P.BRAND_CODE NOT IN ('TT01','TT02','TT03','TT04','TT05')