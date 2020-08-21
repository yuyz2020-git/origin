
package com.asiainfo.veris.crm.order.pub.exception;

import com.asiainfo.veris.crm.order.pub.frame.bcf.exception.IBusiException;

public enum BatException implements IBusiException // 批量异常
{
    CRM_BAT_1("%s-%s日不允许办理该批量业务"), //
    CRM_BAT_10("获取稽核批次号信息出错！"), //
    CRM_BAT_11("该批量任务不存在"), //
    CRM_BAT_12("批量数据平台业务不允许异地受理"), //
    CRM_BAT_13("未得到BATCH_ID!"), //
    CRM_BAT_14("请先选择必选的产品元素进行业务受理!"), //
    CRM_BAT_15("根据BATCH_ID找不到对应的批量记录!"), //
    CRM_BAT_16("根据BATCH_TASK_ID找不到对应的批量任务记录!"), //
    CRM_BAT_17("BATCH_TASK_ID【%s】的批量明细表记录异常"), //
    CRM_BAT_18("当前工号没有批量任务查询权限,并且地洲没有配置默认权限,请联系管理员"), //
    CRM_BAT_19("当前时间不允许办理该批量业务"), //
    CRM_BAT_2("批量条件不能为空，请输入！"), //
    CRM_BAT_20("导入数据不能为空！"), //
    CRM_BAT_21("导入条数不能超过【%s】条，导入失败！"), //
    CRM_BAT_22("导入条数不能超过【500】条，导入失败！"), //
    CRM_BAT_24("导入条数过多：%s, 今日最大可导入条数为：%s今日已导入条数为：%s!"), //
    CRM_BAT_25("导入条数过多：%s, 最大可导入条数为：%s!"), //
    CRM_BAT_26("导入文件只支持EXCEL2003！"), //
    CRM_BAT_27("导入文件只支持EXCEL！"), //
    CRM_BAT_28("该批次下没有失败业务！"), //
    CRM_BAT_3("新系统中如果该项值在批量修改中保持不变,请填写为@,而不是#"), //
    CRM_BAT_30("该批量业务类型批量条件不能为空!"), //
    CRM_BAT_31("该任务已失效"), //
    CRM_BAT_32("该预约时间不允许办理该批量业务"), //
    CRM_BAT_33("根据批次编码获取信息失败."), //
    CRM_BAT_34("导入条数过多：%s, 今日最大可导入条数为：%s今日已导入条数为：%s!"), //
    CRM_BAT_35("根据批次号没有找到对应的批次数据，请刷新页面后，重新操作！"), //
    CRM_BAT_36("获取批量任务的参数信息失败!"), //
    CRM_BAT_37("没有配置该批量类型参数"), //
    CRM_BAT_4("批量业务类型不存在"), //
    CRM_BAT_40("没有相应的批量处理任务表信息"), //
    CRM_BAT_41("每次批量导入的号码数量不能超过%s!"), //
    CRM_BAT_42("批量限制：电话开通用户，不能办理本业务!"), //
    CRM_BAT_43("批量选择可以处理的最大数据为:%s条,请重新选择!"), //
    CRM_BAT_44("请先查询到资料后，再进行数据导出！"), //
    CRM_BAT_45("导入条数过多：%s, 最大可导入条数为：%s!"), //
    CRM_BAT_46("暂不处理些批量类型"), //
    CRM_BAT_48("1-根据批次号 %s，查询批次信息失败！"), //
    CRM_BAT_49("没有配置该批量类型，请配置！"), //
    CRM_BAT_5("导入数据为空，请检查文件！"), //
    CRM_BAT_50("没有相应的批量处理任务表信息"), //
    CRM_BAT_51("批量调用服务名不能为空!"), //
    CRM_BAT_52("批量调用服务数据不能为空!"), //
    CRM_BAT_53("获取资源信息手机号码无数据!"), //
    CRM_BAT_54("资源校验手机号码错误，[%s]手机号码不可用!"), //
    CRM_BAT_55("获取资源信息SIM卡无数据!"), //
    CRM_BAT_56("资源校验SIM卡错误，[%s]卡号不可用!"), //
    CRM_BAT_57("获取外网服务号码无数据!"), //
    CRM_BAT_58("[%s]该号码已经生成了资料，请输入新号码！"), //
    CRM_BAT_59("获取外网服务号码无数据!"), //
    CRM_BAT_6("导入正确的数据为0，请检查导入文件！"), //
    CRM_BAT_60("资源校验号码错误，[%s]"), //
    CRM_BAT_61("获取外省移动号码无数据!"), //
    CRM_BAT_62("根据集团客户标识[%s]查询无符合条件可办理的集团产品!"), //
    CRM_BAT_63("一键注销集团成员异常%s,%s"), //
    CRM_BAT_64("%s所需的资源编码没有配置！"), //
    CRM_BAT_7("生成批处理号出错！"), //
    CRM_BAT_65("当前时间不允许办理该批量业务"), //
    CRM_BAT_66("BATCH ID不能为空！"), //
    CRM_BAT_67("该任务已失效！"), //
    CRM_BAT_68("预约启动时间不能为空！"), //
    CRM_BAT_69("请审核通过后在启动！"), //
    CRM_BAT_70("已审批通过无需审批！"), //
    CRM_BAT_75("操作类型错误!"), //
    CRM_BAT_76("没有找到对应的操作类型!"), //
    CRM_BAT_71("插入TF_B_TRADE_BAT_TASK表失败!"), //
    CRM_BAT_72("BATCH_TASK_ID不能为空！"), //
    CRM_BAT_73("批量明细表[TF_B_TRADE_BATDEAL]无数据"), //
    CRM_BAT_74("批量类型不能为空!"), //
    CRM_BAT_77("和校园批量业务01操作类型为加入时,学生姓名至少需要填一个!"), //
    CRM_BAT_78("未激活用户不能办理和校园异网用户付费号码专用套餐, 请手工激活后再办理!"), //
    CRM_BAT_79("该业务不允许网外号码加入!"), //
    CRM_BAT_80("根据批次号[%s]没有找到对应的批次数据！"), //
    CRM_BAT_85("查询代表号信息无数据，请确认代表号已经正常装机！"), //
    CRM_BAT_81("查询代表号当前付费关系无数据，请确认代表号资料是否正确！"), //
    CRM_BAT_82("查询代表号主体服务无数据，请确认代表号资料是否正确！"), //
    CRM_BAT_83("查询代表号客户信息无数据，请确认代表号资料是否正确！"), //
    CRM_BAT_84("查询代表号固话装机信息无数据，请确认代表号资料是否正确！"), //
    CRM_BAT_86("导入文件为空，请检查！"), //
    CRM_BAT_87("批量附件手机号码不能为空！"), //
    CRM_BAT_88("批量附件成员操作类型不能为空！"), CRM_BAT_89("导入文件解析失败, 未获取数据!"), //
    CRM_BAT_90("成员批量明细不能为空！"), //
    CRM_BAT_91("成员批量类型不能为空！"), //
    CRM_BAT_92("成员批量任务不能为空！"),//
    CRM_BAT_93("订购学护卡15元包,家长号码不能为空！"),//
    CRM_BAT_94("要订购学护卡15元包,家长号：[%s]必须先订购和校园10元套餐或者8元套餐！"), //
    CRM_BAT_95("集团一键注销批量创建失败！"),//
    CRM_BAT_96("和校园特殊批量模板需要选择业务订购确认方式！"),
    CRM_BAT_97("手机号码不能为空！"),
    CRM_BAT_98("成员号码与集团的归属业务区不一致，此业务不能继续办理，请更换成员号码!"),
    CRM_BAT_99("成员号码的业务区编码不能为HNSJ或HNHN!"),
    CRM_BAT_100("集团编码和产品编码不能为空!"),
    CRM_BAT_101("集团产品资料变更每日最大短信数,每月最大短信数,企业签名不全为空"),
    CRM_BAT_102("集团产品资料不存在"),
    CRM_BAT_103("操作编码不支持"),
    CRM_BAT_104("用户服务表资料缺失"),
    CRM_BAT_105("超过当前客户等级允许下发的最大值: 普通级：最大短信数不能超过10万,银牌级：最大短信数不能超过100万,金牌级：最大短信数不能超过500万!,当前客户等级%s");

    private final String value;

    private BatException(String value)
    {

        this.value = value;
    }

    public String getValue()
    {

        return value;
    }
}
