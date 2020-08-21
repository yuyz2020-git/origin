
package com.asiainfo.veris.crm.order.soa.group.vpmn;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.asiainfo.veris.crm.order.soa.frame.csservice.group.common.base.GroupOrderService;

public class ChangeVpnSpecDiscntSVC extends GroupOrderService
{
    private static final long serialVersionUID = 1L;

    public IDataset crtTrade(IData inParam) throws Exception
    {
        // 批量办理VPMN套餐
        ChangeVpnSpecDiscntBean bean = new ChangeVpnSpecDiscntBean();

        return bean.crtTrade(inParam);
    }
}
