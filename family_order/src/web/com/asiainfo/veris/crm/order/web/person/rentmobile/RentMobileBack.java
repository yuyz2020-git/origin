
package com.asiainfo.veris.crm.order.web.person.rentmobile;

import org.apache.tapestry.IRequestCycle;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataMap;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.web.frame.bcf.base.CSViewCall;
import com.asiainfo.veris.crm.order.web.frame.csview.person.base.PersonBasePage;

public abstract class RentMobileBack extends PersonBasePage
{

    public void loadChildInfo(IRequestCycle cycle) throws Exception
    {
        IData data = getData();
        String userId = data.getString("USER_ID");
        String serialNumber = data.getString("SERIAL_NUMBER");
        String rentTag = data.getString("RENT_TAG");

        IData param = new DataMap();
        param.put("USER_ID", userId);
        param.put("RENT_TAG", rentTag);
        param.put("SERIAL_NUMBER", serialNumber);

        /** 获取资源信息 */
        IDataset resInfo = CSViewCall.call(this, "SS.RentMobileSVC.getUserResInfo", param);
        if (IDataUtil.isNotEmpty(resInfo))
        {
            setResInfo(resInfo.getData(0));
        }

        /** 租机状态 */
        IDataset rentTagInfo = CSViewCall.call(this, "SS.RentMobileSVC.queryRentTagInfo", param);
        rentTagInfo.getData(0).put("RENT_TAG_NAME", rentTagInfo.getData(0).getString("PARAM_NAME"));
        rentTagInfo.getData(0).put("RENT_TAG", param.getString("RENT_TAG"));
        setRentTag(rentTagInfo.getData(0));

        /** 获取押金 */
        IDataset foregift = CSViewCall.call(this, "SS.RentMobileSVC.queryForegiftInfo", param);
        if (IDataUtil.isNotEmpty(foregift))
        {
            this.setInfo(foregift.getData(0));
        }
    }

    public void onInitTrade(IRequestCycle cycle) throws Exception
    {
        IData cond = new DataMap();
        cond.put("PARAM_ATTR", "743");
        cond.put("SUBSYS_CODE", "CSM");
        cond.put("EPARCHY_CODE", getVisit().getStaffEparchyCode());

        IDataset results = CSViewCall.call(this, "CS.CommparaInfoQrySVC.getCommparaInfoByAttr", cond);
        setRentTypeCodes(results);

        // cond.clear();
        // cond.put("PARAM_ATTR", "742");
        // cond.put("SUBSYS_CODE", "CSM");
        // cond.put("EPARCHY_CODE", getVisit().getStaffEparchyCode());
        //        
        // results = CSViewCall.call(this, "CS.CommparaInfoQrySVC.getCommparaInfoByAttr", cond);
        // setRentTags(results);

        // cond.clear();
        // cond.put("RENT_TAG", "0");
        // results = CSViewCall.call(this, "SS.RentMobileSVC.queryRentTagInfo", cond);
        // cond.put("RENT_TAG_NAME", results.getData(0).getString("PARAM_NAME"));
        // setRentTag(cond);
    }

    public void onTradeSubmit(IRequestCycle cycle) throws Exception
    {
        IData inparam = getData();
        IDataset result = CSViewCall.call(this, "SS.RentMobileBackSVC.tradeReg", inparam);
        setAjax(result);
    }

    public void queryRentMobile(IRequestCycle cycle) throws Exception
    {
        IData data = this.getData();
        IDataset result = CSViewCall.call(this, "SS.RentMobileSVC.queryRentMobile", data);
        setRentMobiles(result);
    }

    public abstract void setInfo(IData data);

    public abstract void setRentMobiles(IDataset rentMobiles);

    public abstract void setRentTag(IData rentTags);

    public abstract void setRentTypeCodes(IDataset rentTypeCodes);

    public abstract void setResInfo(IData data);
}
