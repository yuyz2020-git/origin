
package com.asiainfo.veris.crm.order.soa.person.busi.fixedtelephone.changepayrel.order.buildrequest;

import com.ailk.common.data.IData;
import com.asiainfo.veris.crm.order.soa.frame.bof.builder.IBuilder;
import com.asiainfo.veris.crm.order.soa.frame.bof.builder.impl.BaseBuilder;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.requestdata.BaseReqData;
import com.asiainfo.veris.crm.order.soa.person.busi.fixedtelephone.changepayrel.order.requestdata.PayRelationInfoReqData;

public class BuildPayRelationInfoReqData extends BaseBuilder implements IBuilder
{

    @Override
    public void buildBusiRequestData(IData param, BaseReqData brd) throws Exception
    {
        PayRelationInfoReqData reqData = (PayRelationInfoReqData) brd;
        reqData.setChgAcctType(param.getString("CHG_ACCT_TYPE"));// 变更账户类型 新增账户
        reqData.setBankAcctNo(param.getString("BANK_ACCT_NO"));// 银行账户
        reqData.setBankAgreementNo(param.getString("BANK_AGREEMENT_NO"));// 银行协议号
        reqData.setNewSeriNum(param.getString("newSnInfo_SERIAL_NUMBER"));// 新手机号码
        reqData.setBankCode(param.getString("BANK_CODE"));// 银行编号
        reqData.setPayModeCode(param.getString("PAY_MODE_CODE"));// 账户类别
        reqData.setPayName(param.getString("PAY_NAME"));// 账户名称
        reqData.setChangeAll(param.getString("CHANGE_ALL"));// 是否将原帐户下所有用户都转到新帐户下
        reqData.setSuperBankCode(param.getString("SUPER_BANK_CODE"));// 上级银行编号
        reqData.setChangeAcctId(param.getString("CHANGEACCTID"));// 上级银行编号
    }

    @Override
    public BaseReqData getBlankRequestDataInstance()
    {
        return new PayRelationInfoReqData();
    }

}
