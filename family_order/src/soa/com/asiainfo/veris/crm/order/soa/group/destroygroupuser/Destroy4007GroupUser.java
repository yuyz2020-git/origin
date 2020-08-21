
package com.asiainfo.veris.crm.order.soa.group.destroygroupuser;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataMap;
import com.ailk.common.data.impl.DatasetList;
import com.ailk.org.apache.commons.lang3.StringUtils;
import com.asiainfo.veris.crm.order.pub.frame.bcf.base.CSBaseConst.TRADE_MODIFY_TAG;
import com.asiainfo.veris.crm.order.pub.frame.bcf.route.Route;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.SysDateMgr;
import com.asiainfo.veris.crm.order.soa.frame.bcf.query.product.UProductInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.bcf.seq.SeqMgr;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.product.ProductInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.user.UserGrpPkgInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.user.UserSvcStateInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.group.common.util.ElementUtil;
import com.asiainfo.veris.crm.order.soa.frame.csservice.group.destroygroupuser.DestroyGroupUser;

public class Destroy4007GroupUser extends DestroyGroupUser
{

    public void actTradeSub() throws Exception
    {
        super.actTradeSub();
        actTradeSvcState();
        //infoRegDataSvcState();// 铁通修改用户主体服务状态
    }

    /**
     * 重载父类方法，铁通修改用户主体服务状态特殊处理，在此空写避免重复
     */
    public void actTradeSvcState() throws Exception
    {

    }

    /**
     * 删除服务状态
     * 
     * @throws Exception
     */
    public void infoRegDataSvcState() throws Exception
    {
        IDataset result = new DatasetList();
        String user_id = reqData.getUca().getUserId();
        IDataset svcDatas = reqData.cd.getSvc();
        if (IDataUtil.isNotEmpty(svcDatas))
        {
            for (int j = 0; j < svcDatas.size(); j++)
            {
                IData svcData = svcDatas.getData(j);
                String service_id = svcData.getString("SERVICE_ID");
                IDataset results = UserSvcStateInfoQry.getUserLastStateByUserSvc(user_id, service_id);

                for (int i = 0; i < results.size(); i++)
                {
                    IData map = results.getData(i);
                    map.put("MODIFY_TAG", TRADE_MODIFY_TAG.DEL.getValue());
                    map.put("END_DATE", SysDateMgr.getSysTime());

                    IData map1 = new DataMap();
                    map1.putAll(map);
                    String maintag = map1.getString("MAIN_TAG", "0");
                    if ("1".equals(maintag))
                    {
                        map1.put("STATE_CODE", "6");// 销户
                    }
                    else
                    {
                        map1.put("STATE_CODE", "1");// 销户
                    }
                    map1.put("START_DATE", SysDateMgr.getSysTime());
                    map1.put("MODIFY_TAG", TRADE_MODIFY_TAG.Add.getValue());
                    map1.put("END_DATE", SysDateMgr.getEndCycle20501231());
                    map1.put("INST_ID", SeqMgr.getInstId());

                    result.add(map);
                    result.add(map1);
                }

                super.addTradeSvcstate(result);
            }
        }
    }
    
    @Override
    protected void setTradeSvcstate (IData map) throws Exception
    {
    	if(map.getString("MAIN_TAG", "0").equals("1") && map.getString("MODIFY_TAG").equals(TRADE_MODIFY_TAG.Add.getValue()))
    	{
    		map.put("STATE_CODE", "6");// 销户
    	}
    }

    @Override
    protected void makReqData(IData map) throws Exception
    {
        super.makReqData(map);

        String netTypeCode = UProductInfoQry.getNetTypeCodeByProductId(reqData.getUca().getProductId());// getStaticValue)

        if (StringUtils.isEmpty(netTypeCode))
        {
            netTypeCode = "00";
        }

        reqData.setNetTypeCode(netTypeCode);

        reqData.setReasonCode(map.getString("REASON_CODE"));

        //makReqDataElement();
        makReqDataGrpPackage();
    }
    
    @Override
    protected void setTradeSvc(IData map) throws Exception
    {
        super.setTradeSvc(map);
    	map.put("END_DATE", getAcceptTime());
    }

    /**
     * 产品元素注销
     * 
     * @throws Exception
     */
    private void makReqDataElement() throws Exception
    {
        IDataset userElementList = ProductInfoQry.qryUserProductElement(reqData.getUca().getUser().getUserId(), "-1");

        IDataset svcDataset = new DatasetList();
        IDataset dctDataset = new DatasetList();
        IDataset resDataset = new DatasetList();

        for (int i = 0, iSize = userElementList.size(); i < iSize; i++)
        {
            IData packageData = userElementList.getData(i); // 取每个元素
            String Systime = SysDateMgr.getSysTime();
            if (Systime.compareTo(packageData.getString("START_DATE")) < 0)
            {
                // 生效、失效时间
                String strStartDate = packageData.getString("START_DATE");
                String strEndDate = "";

                String strCancelDate = ElementUtil.getCancelDate_dstUserElem(packageData, getAcceptTime(), strStartDate, strEndDate);

                packageData.put("END_DATE", strCancelDate);
            }

            // 服务
            if (packageData.getString("ELEMENT_TYPE_CODE").equals("S"))
            {
                packageData.put("END_DATE", getAcceptTime());
                packageData.put("MODIFY_TAG", TRADE_MODIFY_TAG.DEL.getValue());
                packageData.put("SERVICE_ID", packageData.getString("ELEMENT_ID"));
                svcDataset.add(packageData);
            }

            // 优惠
            else if (packageData.getString("ELEMENT_TYPE_CODE").equals("D"))
            {
                packageData.put("DISCNT_CODE", packageData.getString("ELEMENT_ID"));
                packageData.put("MODIFY_TAG", TRADE_MODIFY_TAG.DEL.getValue());
                dctDataset.add(packageData);
            }

            // 资源
            else if (packageData.getString("ELEMENT_TYPE_CODE").equals("R"))
            {
                packageData.put("RES_CODE", packageData.getString("ELEMENT_ID"));
                packageData.put("MODIFY_TAG", TRADE_MODIFY_TAG.DEL.getValue());
                resDataset.add(packageData);
            }
        }

        reqData.cd.putSvc(svcDataset);
        reqData.cd.putDiscnt(dctDataset);
        reqData.cd.putRes(resDataset);

        makReqDataGrpPackage();

    }

    /**
     * 注销集团用户定制表
     * 
     * @author Liaoyi
     * @throws Exception
     */
    private void makReqDataGrpPackage() throws Exception
    {

        IDataset dataset = UserGrpPkgInfoQry.getUserGrpPackage(reqData.getUca().getUser().getUserId(), Route.CONN_CRM_CG);

        if (IDataUtil.isEmpty(dataset))
        {
            return;
        }

        for (int i = 0, iSzie = dataset.size(); i < iSzie; i++)
        {
            IData data = dataset.getData(i);

            if (reqData.isIfBooking())
            {
                data.put("END_DATE", SysDateMgr.getLastDateThisMonth());
            }
            else
            {
                data.put("END_DATE", getAcceptTime());
            }

            data.put("MODIFY_TAG", TRADE_MODIFY_TAG.DEL.getValue());
        }

        reqData.cd.putGrpPackage(dataset);
    }

    @Override
    protected void setTradeBase() throws Exception
    {
        super.setTradeBase();

        IData tradeData = bizData.getTrade();

        tradeData.put("NET_TYPE_CODE", reqData.getNetTypeCode());
        tradeData.put("SUBSCRIBE_TYPE", "0"); // 老系统走pboss 对应值为300
    }

    @Override
    protected void setTradeUser(IData map) throws Exception
    {
        super.setTradeUser(map);

        map.put("USER_STATE_CODESET", "6");
    }
}
