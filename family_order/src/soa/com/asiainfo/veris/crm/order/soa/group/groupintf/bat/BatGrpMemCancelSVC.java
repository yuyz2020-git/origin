
package com.asiainfo.veris.crm.order.soa.group.groupintf.bat;

import com.ailk.common.data.IData;
import com.ailk.common.data.impl.DataMap;
import com.ailk.org.apache.commons.lang3.StringUtils;
import com.asiainfo.veris.crm.order.pub.exception.CrmUserException;
import com.asiainfo.veris.crm.order.pub.exception.GrpException;
import com.asiainfo.veris.crm.order.pub.frame.bcf.bizctrl.BizCtrlType;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.soa.frame.bcf.exception.CSAppException;
import com.asiainfo.veris.crm.order.soa.frame.bcf.query.product.UProductInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.group.bat.GroupBatService;

public class BatGrpMemCancelSVC extends GroupBatService
{

    private static final long serialVersionUID = -7470120766947944742L;

    private String service_name = ""; // 服务名

    private String getService_name()
    {
        return service_name;
    }

    protected void setService_name(String service_name)
    {
        this.service_name = service_name;
    }

    @Override
    protected void batInitialSub(IData batData) throws Exception
    {

        checkParam(batData);

        String productId = condData.getString("PRODUCT_ID");

        String brandCode = UProductInfoQry.getBrandCodeByProductId(productId);
        ;

        if ("BOSG".equals(brandCode))
        {
            setService_name("CS.DestroyBBossMemSVC.dealBBossMebBiz"); // 子类可改
        }
        else if ("10005742".equals(productId) || "10009150".equals(productId))
        {
            setService_name("SS.DestroyAdcGroupMemberSVC.crtOrder"); // 子类可改
        }
        else
        {
            setService_name("CS.DestroyGroupMemberSvc.destroyGroupMember"); // 子类可改
        }

        svcName = getService_name();

        batData.put(BIZ_CTRL_TYPE, BizCtrlType.DestoryMember);
    }

    @Override
    protected void batValidateSub(IData batData) throws Exception
    {

        String user_id = IDataUtil.chkParam(condData, "USER_ID");// 集团用户ID

        String serial_number = IDataUtil.chkParam(batData, "SERIAL_NUMBER");// 成员服务号码

        // 校验集团三户信息
        IData inparam = new DataMap();
        inparam.put("USER_ID", user_id);
        chkGroupUCAByUserId(inparam);

        // 校验成员三户信息
        inparam.clear();
        inparam.put("SERIAL_NUMBER", serial_number);
        chkMemberUCABySerialNumber(inparam);

        // 判断服务号码状态
        if (!"0".equals(getMebUcaData().getUser().getUserStateCodeset()))
        {
            CSAppException.apperr(CrmUserException.CRM_USER_471, serial_number);
        }

        // 判断成员号码是否为集团号码
        if (isGroupSerialNumber(serial_number))
        {
            CSAppException.apperr(GrpException.CRM_GRP_120, serial_number);
        }

        // 校验是否是集团成员
        IData data = new DataMap();
        String user_id_b = getMebUcaData().getUserId(); // 成员user_id
        data.put("PRODUCT_ID", condData.getString("PRODUCT_ID"));
        data.put("USER_ID", user_id);// 集团用户编码
        data.put("MEM_USER_ID", user_id_b);// 成员用户编码
        data.put("MEM_EPARCHY_CODE", getMebUcaData().getUser().getEparchyCode());// 成员用户地州

        boolean uuFlag = super.chkIsExitsRelation(data);// 不存在UU关系返回false

        if (!uuFlag)
        {
            CSAppException.apperr(GrpException.CRM_GRP_51);
        }
    }

    @Override
    public void builderSvcData(IData batData) throws Exception
    {

        svcData.put("USER_ID", getGrpUcaData().getUserId());
        svcData.put("SERIAL_NUMBER", getMebUcaData().getSerialNumber());
        svcData.put("PRODUCT_ID", condData.getString("PRODUCT_ID"));
        svcData.put("REMARK", batData.getString("REMARK", "集团成员批量退订"));
        svcData.put("IN_MODE_CODE", batData.getString("IN_MODE_CODE", getVisit().getInModeCode()));

        // 是否退出对应的集团资料， 0 不退出 1 退出
        String joinIn = condData.getString("JOIN_IN");
        if (StringUtils.isNotBlank(joinIn))
            svcData.put("JOIN_IN", joinIn);
        // 业务是否预约 true 预约到账期末执行 false 非预约工单
        String ifBooking = condData.getString("ifBooking");
        if (StringUtils.isNotBlank(ifBooking))
            svcData.put("IF_BOOKING", ifBooking);

        // modify by lixiuyu@20110613 集团v网批量业务发短信提醒和短信办理V网成员新增优化的需求
        if ("8000".equals(condData.getString("PRODUCT_ID")))
        {
            // 是否发送短信
            svcData.put("IF_SMS", "true");
        }
        else
        {
            // 是否发送短信
            svcData.put("IF_SMS", "false");
        }
    }

    /**
     * 构造规则数据
     */
    @Override
    protected void builderRuleData(IData batData) throws Exception
    {
        super.builderRuleData(batData);

        ruleData.put("RULE_BIZ_TYPE_CODE", "chkBeforeForGrp");
        ruleData.put("RULE_BIZ_KIND_CODE", "GrpMebDestory");
        // 集团信息
        ruleData.put("PRODUCT_ID", getGrpUcaData().getProductId());
        ruleData.put("CUST_ID", getGrpUcaData().getCustId());
        ruleData.put("USER_ID", getGrpUcaData().getUserId());
        // 成员信息
        ruleData.put("SERIAL_NUMBER", getMebUcaData().getSerialNumber());
        ruleData.put("USER_ID_B", getMebUcaData().getUserId());
        ruleData.put("BRAND_CODE_B", getMebUcaData().getBrandCode());
        ruleData.put("EPARCHY_CODE_B", getMebUcaData().getUser().getEparchyCode());
        ruleData.put("PRODUCT_ID_B", getMebUcaData().getProductId());
    }

    /**
     * 校验参数必填
     * 
     * @param batData
     * @throws Exception
     */
    public void checkParam(IData batData) throws Exception
    {

        IDataUtil.chkParam(condData, "PRODUCT_ID");

        IDataUtil.chkParam(condData, "USER_ID");

        IDataUtil.chkParam(batData, "SERIAL_NUMBER");

    }
}
