
package com.asiainfo.veris.crm.order.soa.person.busi.sundryquery.userreservecombo;

import com.ailk.biz.impexp.ExportTaskExecutor;
import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.Pagination;
import com.asiainfo.veris.crm.order.pub.frame.bcf.route.Route;
import com.asiainfo.veris.crm.order.soa.frame.bcf.base.CSAppCall;
import com.asiainfo.veris.crm.order.soa.frame.bcf.query.product.USvcInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.param.StaticInfoQry;

/**
 * 功能：用户预约产品的导出 作者：GongGuang
 */
public class ExportQueryUserReserveComboService extends ExportTaskExecutor
{
    @Override
    public IDataset executeExport(IData paramIData, Pagination paramPagination) throws Exception
    {
        IData data = paramIData.subData("cond", true);
        data.put(Route.ROUTE_EPARCHY_CODE, this.getTradeEparchyCode());// pd.getContext().getEpachyId()
        String tradeId = data.getString("TRADE_ID", "");
        ;
        data.put("TRADE_ID", tradeId);
        IDataset res = CSAppCall.call("SS.QueryUserReserveComboSVC.queryUserReserveService", data);
        // 手动转换编码
        for (int i = 0, size = res.size(); i < size; i++)
        {
            IData tempInfo = res.getData(i);
            String serviceId = tempInfo.getString("SERVICE_ID", "");
            if (!"".equals(serviceId))
            {
                String svcName = USvcInfoQry.getSvcNameBySvcId(serviceId);
                res.getData(i).put("SERVICE_ID", svcName);
            }

            String modifyTag = tempInfo.getString("MODIFY_TAG", "");
            if (!"".equals(modifyTag))
            {
                IData staticInfo = StaticInfoQry.getStaticInfoByTypeIdDataId("DISCNT_MODIFYTAG", modifyTag);
                if (staticInfo != null && staticInfo.size() > 0)
                {
                    String modify = staticInfo.getString("DATA_NAME", "");
                    res.getData(i).put("MODIFY_TAG", modify);
                }
            }
        }
        return res;
    }
}
