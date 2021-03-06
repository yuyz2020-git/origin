SELECT A.*
  FROM TF_BH_EOP_ATTR A
 WHERE 1 = 1
   AND A.IBSYSID = :IBSYSID
   AND A.NODE_ID = :NODE_ID
   AND A.RECORD_NUM = :RECORD_NUM
   AND A.SUB_IBSYSID = (SELECT MAX(B.SUB_IBSYSID)
                          FROM TF_BH_EOP_ATTR B
                         WHERE 1 = 1
                           AND B.IBSYSID = :IBSYSID
                           AND B.NODE_ID = :NODE_ID
                           AND B.RECORD_NUM = :RECORD_NUM)