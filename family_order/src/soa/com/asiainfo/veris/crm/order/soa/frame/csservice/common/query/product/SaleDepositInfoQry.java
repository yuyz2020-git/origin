
package com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.product;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataMap;
import com.asiainfo.veris.crm.order.pub.frame.bcf.route.Route;
import com.asiainfo.veris.crm.order.soa.frame.bcf.base.CSBizBean;
import com.asiainfo.veris.crm.order.soa.frame.bcf.dao.Dao;

public class SaleDepositInfoQry extends CSBizBean
{

    public static IDataset querySaleDepositById(String discntGiftId, String eparchyCode) throws Exception
    {
        IData cond = new DataMap();
        cond.put("DISCNT_GIFT_ID", discntGiftId);
        cond.put("EPARCHY_CODE", eparchyCode);

        IDataset datas = Dao.qryByCode("TD_B_SALE_DEPOSIT", "SEL_BY_DDISCNT_ID", cond, Route.CONN_CRM_CEN);

        return datas;
    }

    public static IDataset querySaleDepositByPackageId(String packageId) throws Exception
    {
        IData cond = new DataMap();
        cond.put("PACKAGE_ID", packageId);

        return Dao.qryByCode("TD_B_SALE_DEPOSIT", "SEL_BY_PACKID", cond, Route.CONN_CRM_CEN);
    }

    public static IDataset querySaleDepositByPackageIdEparchy(String packageId, String eparchyCode) throws Exception
    {
        IData cond = new DataMap();
        cond.put("PACKAGE_ID", packageId);
        cond.put("EPARCHY_CODE", eparchyCode);

        return Dao.qryByCode("TD_B_SALE_DEPOSIT", "SEL_BY_PACKID_EPARCHY", cond, Route.CONN_CRM_CEN);
    }
}
