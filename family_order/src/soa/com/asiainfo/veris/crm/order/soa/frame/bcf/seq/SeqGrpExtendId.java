
package com.asiainfo.veris.crm.order.soa.frame.bcf.seq;

import com.ailk.biz.service.BizRoute;
import com.asiainfo.veris.crm.order.pub.frame.bcf.route.Route;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.ProvinceUtil;

public class SeqGrpExtendId extends SeqBase
{
    public SeqGrpExtendId()
    {
        super("SEQ_GROUP_EXTEND_ID", 100);
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
        strbuf.append(getOrderno()); // 获取地域编码序号，不足两位前面补9

        if (ProvinceUtil.isProvince(ProvinceUtil.HAIN) || ProvinceUtil.isProvince(ProvinceUtil.TJIN) || ProvinceUtil.isProvince(ProvinceUtil.QHAI))
        {
            strbuf.append(getSysDate_yyMMdd()); // 取6位系统时间，yyMMdd
        }
        else
        {
            String routId = BizRoute.getRouteId();

            if (routId.equals(Route.CONN_CRM_CG))
            {
                strbuf.append(getSysDate_9yMMdd()); // 取6位系统时间，9yMMdd
            }
            else
            {
                strbuf.append(getSysDate_yyMMdd()); // 取6位系统时间，yyMMdd
            }
        }

        strbuf.append(fillupFigure(nextval, 8, "0")); // 取初始序列,不足8位前面补 0
        nextval = strbuf.toString();

        return nextval;
    }

    public String getNextval(String s, String s1) throws Exception
    {
        return null;
    }
}
