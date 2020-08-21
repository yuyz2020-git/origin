package com.asiainfo.veris.crm.order.soa.group.esop.query;

import com.ailk.biz.service.BizRoute;
import com.ailk.bizservice.dao.Dao;
import com.ailk.common.data.IDataset;
import com.asiainfo.veris.crm.order.pub.frame.bcf.route.Route;

public class QuickOrderCondHBean
{
    /**
     * 新增数据
     * 
     * @param param
     * @return boolean
     * @throws Exception
     */
    public static int[] insertWorkformQuickOrderCondH(IDataset param) throws Exception
    {
        return Dao.insert("TF_BH_EOP_QUICKORDER_COND", param, Route.getJourDb(BizRoute.getRouteId()));
    } 
}
