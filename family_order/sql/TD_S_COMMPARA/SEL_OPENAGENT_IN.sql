--IS_CACHE=Y
SELECT /*+INDEX(a IDX_TD_M_DEPART_RSVALUE2)*/ depart_id para_code1,depart_name para_code2,
depart_code para_code3,
'' para_code4, '' para_code5,
'' para_code6, '' para_code7, '' para_code8, '' para_code9, '' para_code10,
'' para_code11,'' para_code12,'' para_code13,'' para_code14,'' para_code15,
'' para_code16,'' para_code17,'' para_code18,'' para_code19,'' para_code20,
'' para_code21,'' para_code22,'' para_code23,'' para_code24,'' para_code25,
'' para_code26,'' para_code27,'' para_code28,'' para_code29,'' para_code30,
'' start_date,'' end_date,'' eparchy_code,'' remark,'' update_staff_id,'' update_depart_id,'' update_time,'' subsys_code,0 param_attr,'' param_code,'' param_name
from td_m_depart a
where rsvalue2=:PARA_CODE1
  and validflag='0'
  and exists (select 1 from td_m_departkind b
           where b.depart_kind_code=a.depart_kind_code
             and a.depart_kind_code='306')
   AND (:PARA_CODE2 IS NULL or :PARA_CODE2 = '' or a.area_code = :PARA_CODE2)
   AND (:PARA_CODE3 IS NULL or :PARA_CODE3 = '' or :PARA_CODE3 = :PARA_CODE3)
   AND :PARA_CODE4 IS NULL
   AND :PARA_CODE5 IS NULL
   AND :PARA_CODE6 IS NULL
   AND :PARA_CODE7 IS NULL
   AND :PARA_CODE8 IS NULL
   AND :PARA_CODE9 IS NULL
   AND :PARA_CODE10 IS NULL
ORDER BY para_code3