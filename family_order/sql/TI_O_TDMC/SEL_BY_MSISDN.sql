SELECT CTRT,DISPOSEDNUM,MSISDN,decode(DISPOSEWAY,'00','10086999短信营业厅受理方式','01','10086营业厅人工受理方式',DISPOSEWAY) DISPOSEWAY,  
      decode(NEEDSMSFEEDBACK,'0','不要求反馈','1','要求反馈',NEEDSMSFEEDBACK) NEEDSMSFEEDBACK,decode(SMS_SEND_TAG,'0','短信未发送','1','短信已发送',SMS_SEND_TAG) SMS_SEND_TAG,  
      PROCESSRESULT,CONTENT,decode(RESPONSEGRADE,'1','一般举报','2','严重不满要求停止',RESPONSEGRADE) RESPONSEGRADE,decode(SENDTYPE,'1','短信','2','彩信',SENDTYPE) SENDTYPE,  
      decode(CONTENTTYPE,'0','移动自身宣传信息','1','商业广告信息','2','涉黄信息','3','违法犯罪－诈骗','4','违法犯罪－恐吓及污辱','5','违法犯罪－赌博','6','违法犯罪－涉黑','7','SP诱骗定制信息','8','政治类信息','9','其他信息',CONTENTTYPE) CONTENTTYPE,  
      decode(DISPOSEDPROVIDER,'1','电信','2','联通','3','铁通','4','网通','5','其他运营商',DISPOSEDPROVIDER) DISPOSEDPROVIDER,DISPOSEDNUMPROVINCEID,  
      decode(DISPOSEDBRAND,'1','全球通','2','动感地带','3','神州行',DISPOSEDBRAND) DISPOSEDBRAND,DISPOSEDCP,DISPOSEDFEETYPE,DISPOSEDONNET,DISPOSEDJOINTIME,  
      DISPOSEDARREARAGE,DISPOSEDSTOPTIME,decode(CONSUMEOTHERSERVICE,'0','否','1','是',CONSUMEOTHERSERVICE) CONSUMEOTHERSERVICE,SMS_NOTICE_ID,SMS_CONTENT,SMS_SEND_TIME,RSRV_STR1,RSRV_STR2,RSRV_STR3   
      FROM TI_O_TDMC   
      where (MSISDN = :MSISDN) AND   
      (CONTENT = :CONTENT or :CONTENT IS NULL)