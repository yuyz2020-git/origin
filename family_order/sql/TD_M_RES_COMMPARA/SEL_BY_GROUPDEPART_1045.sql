--IS_CACHE=Y
SELECT 
 (A.para_code1) para_code1,(A.para_name) para_name,
 to_char(A.para_value9) para_value9,
 (A.para_value1) para_value1,
 NVL(F_RES_GETCODENAME('area_code',A.para_value1, '', ''),'') para_value5,
 DECODE(A.para_value2,'0','地州级','1','业务区',A.para_value2) para_value2,
 DECODE(A.para_value3,'0','共享','1','不共享',A.para_value3) para_value3,
 DECODE(A.para_value4,'0','共享','1','不共享',A.para_value4) para_value4,
 (B.para_code2) para_code2,(B.para_name) para_value6,
 DECODE(B.para_value2,'0','代理商','1','营业厅','2','管理部门','3','其他',B.para_value2) para_value7,0 x_tag             
 FROM td_m_res_commpara A,td_m_res_commpara B
 WHERE A.para_attr=1045
  AND  B.para_attr=1046
  AND  A.para_code2=B.para_code2  
  AND  A.para_code1=B.para_code1   
  AND  A.para_code2<>'$$$$$'
  AND  B.para_code1<>'$$$$$'       
  AND  A.para_code1 like :PARA_CODE1
  AND  A.eparchy_code= B.eparchy_code  
  AND  A.eparchy_code =:EPARCHY_CODE