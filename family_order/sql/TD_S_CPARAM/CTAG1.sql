SELECT 'CTAG1' KEY,CTAG_SET VALUE1,'-1' VALUE2, SUBSTR(CTAG_SET,1,1) VRESULT
     FROM TD_O_CREDIT_POLICY_DETAIL
 WHERE 'CTAG1'=:KEY