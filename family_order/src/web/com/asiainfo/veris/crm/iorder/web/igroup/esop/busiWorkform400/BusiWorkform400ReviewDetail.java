package com.asiainfo.veris.crm.iorder.web.igroup.esop.busiWorkform400;

import org.apache.tapestry.IRequestCycle;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.asiainfo.veris.crm.iorder.web.igroup.esop.esopcommon.EopBasePage;
import com.asiainfo.veris.crm.order.web.frame.bcf.base.CSViewCall;

public abstract class BusiWorkform400ReviewDetail extends EopBasePage {

    public abstract void setCondition(IData cond);

    public abstract void setInfos(IDataset infos);

    public abstract void setInfo(IData info);

    public void queryData(IRequestCycle cycle) throws Exception {

        IData data = this.getData();
        IDataset eomsInfos = CSViewCall.call(this, "SS.WorkFormSVC.queryBusiWorkformReviewDetailInfos", data);

        setInfos(eomsInfos);

    }

}
