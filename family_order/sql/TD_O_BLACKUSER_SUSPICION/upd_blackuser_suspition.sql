update  td_o_blackuser_suspicion set 
affirm_tag = :AFFIRM_TAG,rsrv_str1 =to_char(sysdate,'yyyy-mm-dd hh24:mi:ss')
WHERE  init_serinum = :INIT_SERINUM                                                                                                                                                                                                                                                                                       and called_serinum = :CALLED_SERINUM                                                                                                                                                                                                                                                                                        and collect_filename = :COLLECT_FILENAME