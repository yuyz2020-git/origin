
package com.asiainfo.veris.crm.order.soa.group.changeuserelement;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.org.apache.commons.lang3.StringUtils;
import com.asiainfo.veris.crm.order.pub.exception.GrpException;
import com.asiainfo.veris.crm.order.pub.frame.bcf.priv.StaffPrivUtil;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.soa.frame.bcf.base.CSBizBean;
import com.asiainfo.veris.crm.order.soa.frame.bcf.exception.CSAppException;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.param.CommparaInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.group.changeuserelement.ChangeUserElement;

/**
 * 集团流量产品
 * 
 * @author 
 */
public class ChangeGfspUserElement extends ChangeUserElement
{
    
    public ChangeGfspUserElement()
    {
    }


    protected void actTradeBefore() throws Exception
    {
        super.actTradeBefore();

        String staffId = CSBizBean.getVisit().getStaffId(); ;
        IDataset paramDatas = reqData.cd.getElementParam();
        if(IDataUtil.isNotEmpty(paramDatas)){
            for(int i=0; i < paramDatas.size(); i++){
                IData paramData = paramDatas.getData(i);
                if(IDataUtil.isNotEmpty(paramData)){
                   //String discntCode = paramData.getString("ELEMENT_ID","");
                   String attrCode =  paramData.getString("ATTR_CODE","");
                   String attrValue =  paramData.getString("ATTR_VALUE","");
                   if(StringUtils.isNotEmpty(attrCode) && "7340".equals(attrCode)){
                       
                       //优惠折扣率的全部权限,不校验折扣率
                       if(StaffPrivUtil.isFuncDataPriv(staffId, "GROUPUSER_ALL_GFSP_PRV")){
                           
                       } else if(StaffPrivUtil.isFuncDataPriv(staffId, "GROUPUSER_HALF_GFSP_PRV")){
                           IDataset valueInfos = CommparaInfoQry.getCommparaInfoBy5("CGM","7340","GRP_HALF_GFSP",attrValue,"0898",null);
                           if(IDataUtil.isEmpty(valueInfos)){
                               //CSAppException.appError("", "您无权限办理该折扣,您选择的折扣率是" + attrName + ",您只能办理7折及以上折扣!");
                               double attrInt =  Double.parseDouble(attrValue)/10;
                               CSAppException.apperr(GrpException.CRM_GRP_848,attrInt);
                           }
                       } else {
                           if(!"100".equals(attrValue)){
                               //CSAppException.appError("", "您无权限办理该折扣,您选择的折扣率是" + attrName + ",您只能办理10折折扣!");
                               double attrInt =  Double.parseDouble(attrValue)/10;
                               CSAppException.apperr(GrpException.CRM_GRP_849,attrInt);
                           }
                       }
                   }
                }
            }
        }
        
    }

    protected void makReqData(IData map) throws Exception
    {
        super.makReqData(map);
    }

    @Override
    protected void regTrade() throws Exception
    {
        super.regTrade();
    }
}
