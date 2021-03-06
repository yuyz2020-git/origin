
package com.asiainfo.veris.crm.order.soa.frame.bcf.seq;

public class SeqSmsblId extends SeqBase
{
    public SeqSmsblId()
    {
        super("seq_smsbl_id", 100);
    }

    @Override
    public String getNextval(String connName) throws Exception
    {
        String nextval = nextval(connName);

        if (nextval == null)
        {
            return "";
        }

        StringBuilder strbuf = new StringBuilder();
        strbuf.append(fillupFigure(nextval, 4, "0")); // 取初始序列,不足4位前面补 0
        nextval = strbuf.toString();
        return nextval;
    }

    public String getNextval(String s, String s1) throws Exception
    {
        return null;
    }
}
