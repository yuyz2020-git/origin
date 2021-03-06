package com.asiainfo.veris.crm.order.soa.group.esop.esopmanage;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataMap;
import com.asiainfo.veris.crm.order.pub.exception.CrmCommException;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.soa.frame.bcf.base.CSAppCall;
import com.asiainfo.veris.crm.order.soa.frame.bcf.base.CSBizService;
import com.asiainfo.veris.crm.order.soa.frame.bcf.exception.CSAppException;
import com.asiainfo.veris.crm.order.soa.group.esop.query.WorkformProductBean;
import com.asiainfo.veris.crm.order.soa.group.esop.query.WorkformReleBean;
import org.apache.log4j.Logger;


public class WorkformUpProductSVC extends CSBizService
{

	public void execute(IData data) throws Exception
	{

        String ibsysid = data.getString("BI_SN","");
        String subBusiFormId = data.getString("BUSIFORM_ID","");

        // 拆分子流程时，将 recodeNum 存入  rele 表
        IDataset releInfos = WorkformReleBean.qryBySubBusiformId(subBusiFormId);
        if(IDataUtil.isEmpty(releInfos))
        {
            CSAppException.apperr(CrmCommException.CRM_COMM_103, "根据BUSIFORM_ID:" + subBusiFormId + ",查询主流程失败！");
        }

        String recodeNum = releInfos.first().getString("RELE_VALUE", "");

        // 根据 ibsysid && recodeNum 查询  product表  ，获取产品 信息 ；
        IData productParam = new DataMap();
        productParam.put("IBSYSID", ibsysid);
        productParam.put("RECORD_NUM", recodeNum);
        IDataset productInfoList = CSAppCall.call("SS.WorkformProductSVC.qryEopProductByIbsysId",productParam);

        if (IDataUtil.isEmpty(productInfoList))
        {
            CSAppException.apperr(CrmCommException.CRM_COMM_103,"通过IBSYSID:"+ibsysid+"找不到TF_B_EOP_PRODUCT表的记录！");
        }

        IData productData = productInfoList.first();
        productData.put("RSRV_STR2",subBusiFormId);
        WorkformProductBean.updProductByRsrvstr2(productData);


	}


}
