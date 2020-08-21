/**
 * 
 */

package com.asiainfo.veris.crm.order.soa.frame.bcf.seq;

import com.ailk.biz.service.BizRoute;
import com.asiainfo.veris.crm.order.pub.frame.bcf.route.Route;

/**
 * @author admin
 */
public class SeqAttachId extends SeqBase
{

    public SeqAttachId()
    {
        super("SEQ_BIZ_ATTACH_ID", 100);
    }

    @Override
    public String getNextval(String connName) throws Exception
    {
        String nextval = nextval(connName);

        if (nextval == null)
        {
            return "";
        }

        String routId = BizRoute.getRouteId();

        StringBuilder strbuf = new StringBuilder();

        // 获取地域编码序号，不足两位前面补9
        strbuf.append(getOrderno());

        if (routId.equals(Route.CONN_ESOP))
        {
            strbuf.append(getSysDate_9yMMdd()); // 取6位系统时间，9yMMdd
        }
        else
        {
            strbuf.append(getSysDate_yyMMdd()); // 取6位系统时间，yyMMdd
        }

        strbuf.append(fillupFigure(nextval, 8, "0")); // 取初始序列,不足8位前面补 0
        nextval = strbuf.toString();

        return nextval;
    }

    public String getNextval(String connName, String epachyCode) throws Exception
    {
        String nextval = nextval(connName);

        if (nextval == null)
        {
            return "";
        }
        String routId = BizRoute.getRouteId();

        StringBuilder strbuf = new StringBuilder();

        if (routId.equals(Route.CONN_ESOP))
        {
            strbuf.append(getOrderno());
            strbuf.append(getSysDate_9yMMdd()); // 取6位系统时间，9yMMdd
        }
        else
        {
            strbuf.append(getOrdernoByEpachy(epachyCode)); // 获取地域编码序号，不足两位前面补9
            strbuf.append(getSysDate_yyMMdd()); // 取6位系统时间，yyMMdd
        }

        strbuf.append(fillupFigure(nextval, 8, "0")); // 取初始序列,不足8位前面补 0
        nextval = strbuf.toString();
        return nextval;
    }
}
