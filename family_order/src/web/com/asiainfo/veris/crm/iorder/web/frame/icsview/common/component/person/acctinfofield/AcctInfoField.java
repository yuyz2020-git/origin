
package com.asiainfo.veris.crm.iorder.web.frame.icsview.common.component.person.acctinfofield;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.asiainfo.veris.crm.order.pub.frame.bcf.priv.StaffPrivUtil;
import com.asiainfo.veris.crm.order.pub.frame.bcf.route.Route;
import com.asiainfo.veris.crm.order.web.frame.bcf.base.CSViewCall;
import com.asiainfo.veris.crm.order.web.frame.csview.common.component.person.baseinfofield.BaseInfoField;
import org.apache.tapestry.IMarkupWriter;
import org.apache.tapestry.IRequestCycle;

public abstract class AcctInfoField extends BaseInfoField
{
    private boolean changeAcctDay;

    private IDataset acctInfoDays;

    protected void cleanupAfterRender(IRequestCycle cycle)
    {
        setAcctInfo(null);
        setAcctInfoDays(null);
        super.cleanupAfterRender(cycle);
    }

    public abstract IData getAcctInfo();

    public IDataset getAcctInfoDays()
    {
        return this.acctInfoDays;
    }

    public boolean getChangeAcctDay()
    {
        return this.changeAcctDay;
    }

    public abstract String getCityCode();

    public abstract String getEparchyCode();

    public void renderComponent(StringBuilder stringBuilder, IMarkupWriter writer, IRequestCycle cycle) throws Exception
    {
        IData data = getPage().getData();
        /**
         * 组件初始化载入认证的脚本
         */
        getPage().addResAfterBodyBegin("scripts/iorder/icsserv/component/person/CommLib.js");
        getPage().addResAfterBodyBegin("scripts/iorder/icsserv/component/person/baseinfofield/BaseInfoField.js");
        getPage().addResAfterBodyBegin("scripts/iorder/icsserv/component/person/acctinfofield/AcctInfoField.js");
        // 过户(新)页面鉴权号码后$.acctInfo.init()报错，将此方法放置AcctInfoField.html末尾执行
        /*writer.printRaw("<script language=\"javascript\">\n");
        writer.printRaw("$(function(){\n");
        writer.printRaw("$.acctInfo.init();\n");
        writer.printRaw("});\n");
        writer.printRaw("</script>\n");*/

        if (null == getCityCode() || "".equals(getCityCode()))
        {
            setCityCode(getVisit().getCityCode());
        }
        if (null == getEparchyCode() || "".equals(getEparchyCode()))
        {
            setEparchyCode(getTradeEparchyCode());
        }

        data.put(Route.ROUTE_EPARCHY_CODE, this.getEparchyCode());
        IDataset acctInfoDays = CSViewCall.call(this, "CS.AcctInfoQrySVC.qryAcctInfoDay", data);
        setAcctInfoDays(acctInfoDays);
    }

    public abstract void setAcctInfo(IData editInfo);

    public void setAcctInfoDays(IDataset acctInfoDays)
    {
        this.acctInfoDays = acctInfoDays;
    }

    public void setChangeAcctDay(boolean changeAcctDay)
    {
        this.changeAcctDay = changeAcctDay;
    }

    public abstract void setCityCode(String cityCode);

    public abstract void setEparchyCode(String eparchyCode);

}
