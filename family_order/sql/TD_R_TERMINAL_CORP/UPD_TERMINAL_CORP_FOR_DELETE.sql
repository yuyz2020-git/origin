UPDATE TD_R_TERMINAL_CORP
SET VALID_FLAG = :VALID_FLAG, UPDATE_STAFF_ID= :UPDATE_STAFF_ID, UPDATE_DEPART_ID = :UPDATE_DEPART_ID,
	 UPDATE_TIME = SYSDATE
  WHERE 1 = 1
	AND (:CORP_NO IS NULL OR CORP_NO = :CORP_NO)