UPDATE ti_b_batchtrade_state
   SET update_state = :DEAL_STATE
 WHERE record_no = TO_NUMBER(:DEAL_ID)
   AND (:DEAL_TAG IS NULL OR :DEAL_TAG = :DEAL_TAG)
   AND (:DEAL_EPARCHY_CODE IS NULL OR :DEAL_EPARCHY_CODE = :DEAL_EPARCHY_CODE)