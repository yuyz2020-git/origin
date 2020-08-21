--IS_CACHE=Y
SELECT eparchy_code,moffice_id,switch_id,serialnumber_s,serialnumber_e,imsi_s,imsi_e,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time,update_staff_id,update_depart_id
  FROM td_m_moffice
 WHERE eparchy_code=:EPARCHY_CODE
   AND imsi_s<=:IMSI
   AND imsi_e>=:IMSI