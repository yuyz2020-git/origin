SELECT distinct t.RECORD_NUM
FROM TF_BH_EOP_ATTR t
WHERE t.SUB_IBSYSID = :SUB_IBSYSID
      AND t.RECORD_NUM > 0