
package com.asiainfo.veris.crm.order.soa.person.busi.pcc.order.buildrequest;

import com.ailk.common.data.IData;
import com.asiainfo.veris.crm.order.soa.frame.bof.builder.IBuilder;
import com.asiainfo.veris.crm.order.soa.frame.bof.builder.impl.BaseBuilder;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.requestdata.BaseReqData;
import com.asiainfo.veris.crm.order.soa.person.busi.pcc.order.requestdata.PCCRelieveReqData;

public class BuildPCCRelieveReqData extends BaseBuilder implements IBuilder
{

    @Override
    public void buildBusiRequestData(IData param, BaseReqData brd) throws Exception
    {
        // TODO Auto-generated method stub
    	PCCRelieveReqData rd=(PCCRelieveReqData) brd;
    	rd.setRemark(param.getString("REMARK"));
    	rd.setRelieveFlag(param.getString("RELIEVEFLAG"));
    }

    @Override
    public BaseReqData getBlankRequestDataInstance()
    {
        return new PCCRelieveReqData();
    }

}
