
package com.asiainfo.veris.crm.order.pub.exception;

import com.asiainfo.veris.crm.order.pub.frame.bcf.exception.IBusiException;

public enum TradeException implements IBusiException // 订单异常
{
    CRM_TRADE_0("该服务号码%s存在未完工工单，业务不能继续！"), //
    CRM_TRADE_1("没有该订单号的业务，或业务已经失效！"), //
    CRM_TRADE_10("台帐表中已存在该业务工单！"), //
    CRM_TRADE_100("台帐费用稽核:付款方式子表中的费用总额和台账表中的数据不符!(%s,%s)"), //
    CRM_TRADE_101("业务登记后业务检查：获取当前省代码无有效数据！"), //
    CRM_TRADE_102("业务登记后条件判断:业务办理时间在19：30-次日07：00则判断该部门在19：30后办理业务笔>监控笔数!【%s】"), //
    CRM_TRADE_103("获取用户监控次数的流水号出错"), //
    CRM_TRADE_104("业务登记后条件判断:对不起，您没有办理包【%s|%s】的权限！"), //
    CRM_TRADE_105("业务登记后条件判断:对不起，您没有办理产品【%s|%s】的权限！"), //
    CRM_TRADE_106("业务登记后条件判断:对不起，您没有办理优惠【%s|%s】的权限！"), //
    CRM_TRADE_107("业务登记后条件判断:对不起，您没有办理服务【%s|%s】的权限！"), //
    CRM_TRADE_108("业务登记后条件判断:用户的CMNET服务为暂停状态，请恢复，否则不能继续办理GPRS业务！"), //
    CRM_TRADE_109("业务登记后条件判断:用户的CMWAP服务为暂停状态，请恢复，否则不能继续办理GPRS业务！"), //
    CRM_TRADE_11("没有该TRADE_ID的主台帐历史表数据"), //
    CRM_TRADE_110("业务登记后条件判断:用户的CMNET和CMWAP服务状态不是全为正常，请恢复，否则不能继续办理GPRS业务！"), //
    CRM_TRADE_111("业务登记后条件判断:用户有预约的限制业务【%s】!"), //
    CRM_TRADE_112("业务登记后条件判断:用户有未完工的限制业务【%s】!"), //
    CRM_TRADE_113("业务登记后条件判断:用户的该保险已经打印，不可以重复打印！%s"), //
    CRM_TRADE_114("业务登记后条件判断:该随E行捆绑GPRS号码存在有效的随e行捆绑优惠,故不可以取消绑定关系!"), //
    CRM_TRADE_115("业务登记后条件判断:用户未办理刮刮卡相关业务!"), //
    CRM_TRADE_116("业务登记后条件判断:用户办理过%s次刮刮卡兑奖业务，不能再次办理!"), //
    CRM_TRADE_117("业务登记后条件判断:该刮刮卡已办理过兑换业务!"), //
    CRM_TRADE_118("业务登记后条件判断:用户已参与同类型活动一次，不能再次参与!"), //
    CRM_TRADE_119("业务登记后条件判断:刮刮卡号已被使用,不能再次使用办理此业务!"), //
    CRM_TRADE_12("%s取消业务订单信息异常!"), //
    CRM_TRADE_120("业务登记后条件判断:根据礼品编码末找到对应的礼品信息![%s]"), //
    CRM_TRADE_121("业务登记后条件判断:F0请选择正确的参与活动原因![%s]"), //
    CRM_TRADE_122("业务登记后条件判断:该VIP卡已经办理了随E行捆绑业务,不能再次办理!"), //
    CRM_TRADE_123("业务登记后条件判断:该随e行号码已经与其他手机绑定,不能再次办理!"), //
    CRM_TRADE_124("业务登记后条件判断:该号码绑定的随E行用户数已达到限制,故不能再次办理!"), //
    CRM_TRADE_125("业务登记后条件判断:该手机号码已经办理过随e行捆绑业务,故不能再次办理!"), //
    CRM_TRADE_126("业务登记后条件判断:主卡产品类型不可以办理亲情业务！"), //
    CRM_TRADE_127("尊敬的客户，增加亲情号码的操作必须单独办理，且一次只能增加一个！"), //
    CRM_TRADE_128("从TD_S_TAG获取CS_INFO_FamilySMSForceObject信息无记录！"), //
    CRM_TRADE_129("业务登记后条件判断:副卡超过限制数[%s]个！"), //
    CRM_TRADE_13("生成服务台帐拼串：获取用户服务状态资料出错！"), //
    CRM_TRADE_130("业务登记后条件判断:获取通用参数（副卡限制数）返回多条记录！"), //
    CRM_TRADE_131("业务登记后条件判断:用户%s现有的优惠【%s】与当前订购的优惠【%s】互斥!"), //
    CRM_TRADE_132("业务登记后条件判断:此购机业务不可以取消！"), //
    CRM_TRADE_133("业务登记后条件判断:获取购机取消业务无记录！"), //
    CRM_TRADE_134("业务登记后条件判断:被赠送用户当前有限制优惠，不能继续办理！"), //
    CRM_TRADE_135("业务登记后条件判断:用户正享受服务赠送，不能办理此优惠！"), //
    CRM_TRADE_136("业务登记后条件判断:该业务须包含铁通号码信息！"), //
    CRM_TRADE_137("业务登记后条件判断:协议保底限制转低,没有添加相应的保底优惠"), //
    CRM_TRADE_138("业务登记后条件判断:协议保底限制转低[%s:%s]"), //
    CRM_TRADE_139("业务后业务检查CheckAfterTrade异常"), //
    CRM_TRADE_14("生成服务台帐拼串：获取用户服务状态资料出错！"), //
    CRM_TRADE_140("业务登记后条件判断:服务[%s]的呼转号码格式不正确:%s！"), //
    CRM_TRADE_141("该业务类型【%s】不存在"), //
    CRM_TRADE_142("生成备份台帐:多个默认付费帐户"), //
    CRM_TRADE_143("没有获取到原用户为:%sPlatsvc服务资料"), //
    CRM_TRADE_144("没有获取到原用户为:%s服务状态资料"), //
    CRM_TRADE_145("用户服务状态信息修改不一致"), //
    CRM_TRADE_146("用户有未完工的该业务，此业务不需要再开通"), //
    CRM_TRADE_147("用户已处于该业务类型状态，不需要再开通"), //
    CRM_TRADE_148("该用户主服务状态不唯一"), //
    CRM_TRADE_149("业务登记后条件判断:服务状态操作标志无效!"), //
    CRM_TRADE_15("没有该SERIAL_NUMBER的主台帐表数据"), //
    CRM_TRADE_150("业务登记后条件判断:服务的修改标记不正确！"), //
    CRM_TRADE_151("无资料：原用户为:%s服务元素%s"), //
    CRM_TRADE_152("获取原用户为:%s包标识长度为0"), //
    CRM_TRADE_153("没有获取到包:%s中服务标识%s"), //
    CRM_TRADE_154("包:%s服务标识%s主体标识长度为0"), //
    CRM_TRADE_155("办理[%d]业务，用户有未完工的该业务，不需要再处理!"), //
    CRM_TRADE_156("办理[%d]业务，用户状态已经是该状态或存在未完工的变更到该状态的工单，不需要再开通!"), //
    CRM_TRADE_157("办理[%d]业务，用户原服务状态不能转变到该业务的服务状态[不能生成服务状态台帐]!"), //
    CRM_TRADE_158("不支持恢复用户已过期产品!"), //
    CRM_TRADE_159("恢复用户产品无数据！"), //
    CRM_TRADE_16("订单处理情况统计失败"), //
    CRM_TRADE_160("恢复用户服务无数据！"), //
    CRM_TRADE_161("恢复用户默认服务无数据！"), //
    CRM_TRADE_162("恢复用户资源无数据！"), //
    CRM_TRADE_163("信控流程:根据USER_ID获取trade_type_code 失败!"), //
    CRM_TRADE_164("业务类型[%d]不存在！"), //
    CRM_TRADE_165("无默认付费帐户！"), //
    CRM_TRADE_166("帐户标识[%s]无资料！"), //
    CRM_TRADE_167("信控流程:根据USER_ID获取客户类型错误"), //
    CRM_TRADE_168("复机：不支持恢复用户已过期产品！"), //
    CRM_TRADE_169("复机：恢复用户产品无数据！"), //
    CRM_TRADE_17("该客户[%s]还有未完工工单，集团实物兑换业务不能继续!"), //
    CRM_TRADE_170("复机：恢复用户服务无数据！"), //
    CRM_TRADE_171("复机:获取用户最后销户流水为空！"), //
    CRM_TRADE_172("复机：恢复用户资源无数据！"), //
    CRM_TRADE_173("复机：修改用户资源KI信息或OPC信息失败！"), //
    CRM_TRADE_174("复机：获取用户资源SIM信息无数据！"), //
    CRM_TRADE_175("办理[%d]业务，用户有未完工的该业务，不需要再处理!"), //
    CRM_TRADE_176("复机：获取用户资源SIM信息无数据！"), //
    CRM_TRADE_177("办理[%d]业务，用户状态已经是该状态或存在未完工的变更到该状态的工单，不需要再开通!"), //
    CRM_TRADE_178("办理[%d]业务，用户原服务状态不能转变到该业务的服务状态[不能生成服务状态台帐]!"), //
    CRM_TRADE_179("办理[%d]业务，用户原服务状态不满足[不能生成服务状态台帐]!"), //
    CRM_TRADE_18("该用户还有未完工工单，积分业务不能继续!"), //
    CRM_TRADE_180("用户资料[%s]不存在！"), //
    CRM_TRADE_181("业务类型[%d]不存在！"), //
    CRM_TRADE_182("无默认付费帐户！"), //
    CRM_TRADE_183("帐户标识[%s]无资料！"), //
    CRM_TRADE_184("信控流程:根据USER_ID获取客户类型错误！"), //
    CRM_TRADE_185("复机:获取用户最后销户流水为空！"), //
    CRM_TRADE_186("新增用户重要信息异动出错:没有读取到用户信息！"), //
    CRM_TRADE_187("新增用户重要信息异动出错:没有读取到用户的IMSI信息！"), //
    CRM_TRADE_188("新增用户资料异动表出错！"), //
    CRM_TRADE_189("注销一卡双号:注销虚拟集团用户资料无数据！"), //
    CRM_TRADE_19("查询无台账记录！"), //
    CRM_TRADE_190("注销亲情关系:注销虚拟集团用户资料无数据！"), //
    CRM_TRADE_191("注销亲情关系:注销虚拟集团用户资料无数据！"), //
    CRM_TRADE_192("Imsi)修改记录终止时间出错!"), //
    CRM_TRADE_193("(Imsi)新增记录出错!"), //
    CRM_TRADE_194("(Imsi)终止有效记录出错!"), //
    CRM_TRADE_195("(product)修改记录终止时间出错!"), //
    CRM_TRADE_196("(product)修改用户重要信息异动异常"), //
    CRM_TRADE_197("(sn)修改记录终止时间出错!"), //
    CRM_TRADE_198("更新用户产品信息：没有找到产品信息！"), //
    CRM_TRADE_199("更新用户产品信息：没有找到用户资料信息！"), //
    CRM_TRADE_2("该用户有未完工的预约产品变更工单，不能变更主产品！"), //
    CRM_TRADE_20("插入工单稽核信息失败!"), //
    CRM_TRADE_200("更新TF_F_USER表中的积分信息出差！"), //
    CRM_TRADE_2001("获取台帐资料出错！"), //
    CRM_TRADE_2002("操作类型错误0新增1删除！"), //
    CRM_TRADE_2003("操作类型出错0新增、1删除、2修改！"), //
    CRM_TRADE_201("没有需要恢复的用户基本资料！"), //
    CRM_TRADE_202("获取当前省代码无有效数据！"), //
    CRM_TRADE_203("用户证件号或证件类型不正确"), //
    CRM_TRADE_204("用户密码错误,不能办理业务!"), //
    CRM_TRADE_205("调用年度积分修改接口失败【PRC_UPTNEWSCORE_BY_YEAR】异常:%s"), //
    CRM_TRADE_206("跨区服务落地方积分扣减: 用户无可用积分进行扣减！"), //
    CRM_TRADE_208("无账户订单信息！"), //
    CRM_TRADE_209("无账户托收订单信息"), //
    CRM_TRADE_21("用户服务台帐未登记！"), //
    CRM_TRADE_210("无用户属性订单信息！"), //
    CRM_TRADE_211("无用户信用度订单信息！"), //
    CRM_TRADE_212("无用户付款费用订单信息！"), //
    CRM_TRADE_214("无用户服务状态订单信息！"), //
    CRM_TRADE_215("无用户赠送预存订单信息！"), //
    CRM_TRADE_216("无用户付款费用订单信息！"), //
    CRM_TRADE_217("无用户费用订单信息！"), //
    CRM_TRADE_218("无用户服务订单信息！"), //
    CRM_TRADE_219("无用户资源订单信息！"), //
    CRM_TRADE_22("用户服务台帐未登记！"), //
    CRM_TRADE_220("无产品台帐信息！"), //
    CRM_TRADE_221("无用户租机订单信息！"), //
    CRM_TRADE_222("无用户资源订单信息！"), //
    CRM_TRADE_223("无营销活动订单信息！"), //
    CRM_TRADE_224("无营销活动物品订单信息！"), //
    CRM_TRADE_225("无用户订单信息！"), //
    CRM_TRADE_226("功能模块编码不能为空！"), //
    CRM_TRADE_227("生成会计凭证号(SEQ_FEE_LOG_ID)失败!eparchyCode=%s,logId=%s！"), //
    CRM_TRADE_228("业务子流水不能为空！"), //
    CRM_TRADE_229("收费方式不能为空！"), //
    CRM_TRADE_23("标记订单为已撤销失败。"), //
    CRM_TRADE_230("系统业务类型不能为空！"), //
    CRM_TRADE_231("返销标记不能为空！"), //
    CRM_TRADE_232("受理日期不能为空！"), //
    CRM_TRADE_235("生成副号用户资料失败！"), //
    CRM_TRADE_236("生成副号付费关系失败！"), //
    CRM_TRADE_237("查询主号IMSI出错！"), //
    CRM_TRADE_238("生成副号资源副号号码失败！"), //
    CRM_TRADE_239("生成副号资源副号IMSI失败！"), //
    CRM_TRADE_24("用户有相同业务类型的未完工的业务，业务不能继续！"), //
    CRM_TRADE_240("生成主号无线传真服务异常！"), //
    CRM_TRADE_241("生成副号无线传真服务异常！"), //
    CRM_TRADE_242("生成副号无线传真服务状态异常！"), //
    CRM_TRADE_243("生成副号无线传真优惠异常！"), //
    CRM_TRADE_244("获取产品台帐资料出错！"), //
    CRM_TRADE_245("获取产品资料出错！"), //
    CRM_TRADE_246("生成组合产品用户资料不成功！"), //
    CRM_TRADE_247("该号码已存在正常用户资料,不能再次开户！"), //
    CRM_TRADE_248("生成用户资料不成功！"), //
    CRM_TRADE_249("获取台帐资料出错！"), //
    CRM_TRADE_25("POS缴费的台帐数据和日志数据不一致，POS缴费可能已经撤销"), //
    CRM_TRADE_250("获取台帐服务资料:没有该笔业务[%s]！"), //
    CRM_TRADE_251("获取台帐副号关系资料异常:没有该笔业务[%s]！"), //
    CRM_TRADE_252("注销副号用户资料失败！"), //
    CRM_TRADE_253("获取用户有效资料出错！"), //
    CRM_TRADE_254("获取用户台帐资料无数据！"), //
    CRM_TRADE_255("修改用户资料出错！"), //
    CRM_TRADE_256("获取台帐资料无数据！"), //
    CRM_TRADE_257("获取台帐流水异常！"), //
    CRM_TRADE_258("获取用户资料异常！"), //
    CRM_TRADE_259("客户ID非法！"), //
    CRM_TRADE_26("TRADE_ID不存在"), //
    CRM_TRADE_260("更新用户资料表失败！"), //
    CRM_TRADE_261("没有需要恢复的用户基本资料！"), //
    CRM_TRADE_262("更新用户资料表失败！"), //
    CRM_TRADE_263("校验身份证是客户资料不存在！"), //
    CRM_TRADE_264("更改用户密码失败,未知方式！"), //
    CRM_TRADE_265("新增用户邮寄资料失败！"), //
    CRM_TRADE_266("垃圾短信举报信息(TF_F_USER_PROSECUTION)出错！"), //
    CRM_TRADE_267("修改租机用户资料无数据！[%s]！"), //
    CRM_TRADE_268("获取租机台帐资料出错(无记录)！"), //
    CRM_TRADE_269("更新租机用户资料无数据！"), //
    CRM_TRADE_27("TRADE_ID不能为空"), //
    CRM_TRADE_270("获取租机号码资料出错！"), //
    CRM_TRADE_271("生成租机用户资料无数据！"), //
    CRM_TRADE_272("登记TF_F_USER_UPMS_ORDER用户礼品兑换记录异常！"), //
    CRM_TRADE_273("调用IBOSS积分兑换接口失败！%s！"), //
    CRM_TRADE_274("登记TF_F_USER_UPMS_ORDER用户礼品超时兑换记录异常！"), //
    CRM_TRADE_275("调用IBOSS积分兑换接口失败！"), //
    CRM_TRADE_276("更新用户产品信息：没有找到用户的产品变更信息！"), //
    CRM_TRADE_277("查询新产品信息出错：没有找到新产品！[PID:%d]！"), //
    CRM_TRADE_278("查询原产品信息出错：没有找到原产品！[PID:%d]！"), //
    CRM_TRADE_279("新增用户宽带账户资料失败！"), //
    CRM_TRADE_28("TRADE_ID不能为空！"), //
    CRM_TRADE_280("新增用户宽带资料失败！"), //
    CRM_TRADE_281("注销用户宽带账户资料失败！"), //
    CRM_TRADE_282("注销用户宽带资料失败！"), //
    CRM_TRADE_283("更新用户宽带资料失败！"), //
    CRM_TRADE_284("请输入条件[DEAL_ID]！"), //
    CRM_TRADE_285("请输入查询条件[TRADE_ID]！"), //
    CRM_TRADE_286("完工处理UserPayPlan付费计划定单信息[%s]无数据！"), //
    CRM_TRADE_287("完工处理UserGrpMerchpDiscntBBOSS产品用户资费定单信息[%s]无数据！"), //
    CRM_TRADE_288("删除错误记录出错！"), //
    CRM_TRADE_289("完工处理IMPU定单信息[%s]无数据！"), //
    CRM_TRADE_29("[根据OLCOM_SERV_CODE查询联指的服务对应关系工单信息出错]"), //
    CRM_TRADE_3("调用IBOSS撤销积分兑换订单失败！"), //
    CRM_TRADE_30("[根据号码查询联指工单信息出错]"), //
    CRM_TRADE_31("[获取平台服务台帐表异常]"), //
    CRM_TRADE_32("[获取台帐服务表异常]"), //
    CRM_TRADE_33("[获取台帐历史表资料异常]"), //
    CRM_TRADE_34("登记撤销工单失败。"), //
    CRM_TRADE_35("[获取台帐优惠属性表异常]"), //
    CRM_TRADE_36("[获取业务台帐客户资料异常]"), //
    CRM_TRADE_37("[获取业务台帐用户资料异常]"), //
    CRM_TRADE_38("[获取业务台帐帐户资料异常]"), //
    CRM_TRADE_39("[获取用户相关台帐资料出错!]"), //
    CRM_TRADE_4("调用IBOSS查询积分兑换订单失败！"), //
    CRM_TRADE_40("[获取优惠台帐表信息异常]"), //
    CRM_TRADE_41("CRM台帐表中已存在该业务工单！"), //
    CRM_TRADE_42("resultcode:400000，CRM台帐表中存在其他工单，请稍候重发！"), //
    CRM_TRADE_43("不良信息举报处理时一级客服返回报错，还请联系总部核查工单处理报错的原因，谢谢！"), //
    CRM_TRADE_44("不良信息举报催办时一级客服返回报错，还请联系总部核查工单处理报错的原因，谢谢！"), //
    CRM_TRADE_45("归档客户订单失败。"), //
    CRM_TRADE_46("不能在一个单子里同时做多个操作：【%s】"), //
    CRM_TRADE_47("查询订单失败！"), //
    CRM_TRADE_48("查询订单失败！%s"), //
    CRM_TRADE_49("查询该不良信息工单无数据，请稍后再进行查询，谢谢！"), //
    CRM_TRADE_5("订单撤销前调用IBOSS查询接口发生异常！"), //
    CRM_TRADE_50("产品订单号为%s的工单需要填写反馈属性！"), //
    CRM_TRADE_51("此订单不存在！"), //
    CRM_TRADE_52("定单标识TRADE_ID为空"), //
    CRM_TRADE_52a("定单标识%s,业务类型%s,没有配置完工参数"), //
    CRM_TRADE_52b("订单完工异常,%s,%s"), //
    CRM_TRADE_52c("订单同步异常%s,%s"), //
    CRM_TRADE_52d("订单备份异常%s,%s"), //
    CRM_TRADE_52E("订单客户管理接口异常%s,%s"), //
    CRM_TRADE_52F("根据ORDERID[%s]未查询到融合子订单"), //
    CRM_TRADE_53("定单信息不存在"), //
    CRM_TRADE_54("订单编码为空"), //
    CRM_TRADE_55("订单已处理，不能取消！"), //
    CRM_TRADE_56("归档业务订单失败。"), //
    CRM_TRADE_57("该号码有未完工业务，不能继续办理！"), //
    CRM_TRADE_58("该铁通号码存在未竣工受理单"), //
    CRM_TRADE_59("该用户有分开关的未完工工单，请等分开关处理完再操作总开关！"), //
    CRM_TRADE_6("订单撤销前获取子订单号异常！%s"), //
    CRM_TRADE_60("该用户有未完工的预约产品变更工单，不能变更主产品！"), //
    CRM_TRADE_61("该用户有未完工的装机单反馈业务!"), //
    CRM_TRADE_62("该用户有总开关的未完工工单，请等总开关处理完再操作分开关！"), //
    CRM_TRADE_63("根据TRADE_ID[%s]读取商品为空!请检查数据!!"), //
    CRM_TRADE_64("根据TRADE_ID[%s]无法获取资费台账信息"), //
    CRM_TRADE_65("根据订单标识[TRADE_ID=%s]查询订单信息不存在"), //
    CRM_TRADE_65c("无法处理的BPMCODE=[%s]"), //
    CRM_TRADE_65o("根据订单标识[ORDER_ID=%s]查询主台账表TRADE_ID信息不存在"), //
    CRM_TRADE_65a("未配置完工流程，订单标识[TRADE_ID=%s][业务类型=%s]"), //
    CRM_TRADE_65b("调用服务开通接口失败,%s"), //
    CRM_TRADE_66("根据定单标识获取台帐主表无数据"), //
    CRM_TRADE_67("在TF_B_TRADE未找到有效记录,TRADE_ID:%s"), //
    CRM_TRADE_68("工单号为空！"), //
    CRM_TRADE_69("获取联指工单状态失败!"), //
    CRM_TRADE_7("工单已经处理完毕，此次属于重复发起的信控工单！"), //
    CRM_TRADE_70("获取台帐历史表资料:没有该笔业务!%s"), //
    CRM_TRADE_71("获取台帐历史表资料:没有输入业务流水号"), //
    CRM_TRADE_72("获取台帐主表预约资料出错!"), //
    CRM_TRADE_73("获取台账属性Id错误！"), //
    CRM_TRADE_74("没有产品订单可供操作！"), //
    CRM_TRADE_75("没有该TRADE_ID的主台帐历史表数据"), //
    CRM_TRADE_76("根据ORDER_ID[%s],查询订单信息不存在"), //
    CRM_TRADE_77("没有该工单的预约信息！"), //
    CRM_TRADE_78("请选择正确的订单状态!"), //
    CRM_TRADE_79("请在[网上预约工单归档]中完成此功能"), //
    CRM_TRADE_8("台帐表中已存在对该用户的工单，信控已无含义！"), //
    CRM_TRADE_80("取工单流水异常"), //
    CRM_TRADE_81("商品订单中：用户标识=[%s]的产品参数[%s%s]在受理报文中不能为空!"), //
    CRM_TRADE_82("商品订单中：用户标识=[%s]在受理报文中未选择资费!"), //
    CRM_TRADE_83("生成服务台帐拼串：获取用户服务状态资料出错！"), //
    CRM_TRADE_84("定单流水号为空，请确认！"), //
    CRM_TRADE_85("同步订单状态失败!"), //
    CRM_TRADE_86("同一工单不能重复登记，请核实"), //
    CRM_TRADE_87("未生成主台帐"), //
    CRM_TRADE_88("该用户台账表中有其他工单 暂时不能受理！"), //
    CRM_TRADE_89("未找到宽带信息台账"), //
    CRM_TRADE_9("台帐表中已存在对该用户的注销工单，信控已无含义！"), //
    CRM_TRADE_90("业务订单ORDER_ID=%s,TRADE_ID=%s被业务订单ORDER_ID=%s,TRADE_ID=%s依赖，业务不能继续！"), //
    CRM_TRADE_91("已反馈工单下序列号为空!"), //
    CRM_TRADE_92("用户有未完工的积分兑换工单，业务不能继续！"), //
    CRM_TRADE_93("有未完工工单，业务不能继续办理！"), //
    CRM_TRADE_94("主台帐信息为空，请输入有效的业务订单号"), //
    CRM_TRADE_95("错误信息：%s"), //
    CRM_TRADE_96("台帐费用稽核:费用子表中的营业费用和台账表中的数据不符!(%s,%s)"), //
    CRM_TRADE_97("台帐费用稽核:费用子表中的押金和台账表中的数据不符!(%s,%s)"), //
    CRM_TRADE_98("台帐费用稽核:费用子表中的预存和台账表中的数据不符!(%s,%s)"), //
    CRM_TRADE_99("台帐费用稽核:费用子表中的费用总额和台账表中的数据不符!(%s,%s)"), //
    CRM_TRADE_300("该用户%s有错单未处理,不能办理预约取消业务！"), //
    CRM_TRADE_301("该用户%s没有订单类型为[%s]的可取消数据！"), //
    CRM_TRADE_302("转帐必须输转入帐户标识(ACCT_ID_B)和转入用户标识(USER_ID_B)！"), //
    CRM_TRADE_304("插入在线表TRADE_ID=[%s]的订单数据失败！"), //
    CRM_TRADE_305("修改订单历史表TRADE_ID=[%s]的返销数据失败！"), //
    CRM_TRADE_3051("取消业务时搬迁TRADE_ID=[%s]的返销数据失败！"), //
    CRM_TRADE_306("插入省中心订单表TRADE_ID=[%s]的订单数据失败！"), //
    CRM_TRADE_307("该笔业务为积分兑换二维码,您不具有返销的权限！"), //
    CRM_TRADE_308("该笔业务为非实物类礼品赠送或者此礼品赠送办理时间早于2010-12-20,不允许返销！"), //
    CRM_TRADE_309("无法查找到对应预登记的礼品赠送记录,请确认是否已兑奖！"), //
    CRM_TRADE_310("预登记的礼品赠送记录，已兑奖，请先返销！"), //
    CRM_TRADE_311("该串号不是销售状态，不能返销！"), //
    CRM_TRADE_312("该串号不属于该业务区，不能返销！"), //
    CRM_TRADE_313("该串号不属于该部门，不能返销！"), //
    CRM_TRADE_314("此终端的非当前主号码占用！"), //
    CRM_TRADE_315("返销时间必须在该串号销售30天内！"), //
    CRM_TRADE_316("裸机销售抵金券只允许当月返销！"), //
    CRM_TRADE_317("只允许当月返销！"), //
    CRM_TRADE_318("您不具有隔月返销业务的权限！"), //
    CRM_TRADE_319("您不具有隔日返销业务的权限！"), //
    CRM_TRADE_320("该用户有未完的集团统付彩铃属性维护登记工单~~!业务流水号:%s"), CRM_TRADE_321("该用户预约产品变更之后存在其他的产品(服务、优惠等)变更业务，不能取消预约产品变更业务！"), CRM_TRADE_322("获取产品台帐资料出错！"), CRM_TRADE_323("产品与资源生效时间不一致！"), CRM_TRADE_324("当月已经给用户【%s】担保开机，本月不能再次担保开机！"), CRM_TRADE_325(
            "获取业务类型无数据，业务类型[%s],地市编码[%s],传入参数[%s]！"), //
    CRM_TRADE_326("用户存在多条有效的主体服务状态，请检查数据！"), //
    CRM_TRADE_327("客户经理短信停开机:用户[%s]有携出欠费停机未完工工单！"), //
    CRM_TRADE_328("订单信息中REVERT_DATE短信发给用户的时间为空！"), //
    CRM_TRADE_329("该主台帐历史表数据不是积分兑换(本地业务平台)和网购平台积分兑换的"), //
    CRM_TRADE_330("由营销活动办理顺带的预约产品变更不给予办理预约产品变更取消！"), //
    CRM_TRADE_331("处理同步集团成员客户表异常%s,%s！"), CRM_TRADE_332("根据管理节点编码[%s]查询TRADE_OTHER表节点信息不存在！"),
    CRM_TRADE_333("%s"),CRM_TRADE_334("该笔积分兑换已经被结算，无法返销！"),
    CRM_TRADE_335("归档业务订单失败。根据订单标识[%s],受理月份[%s],返销标识[%s]无法找到主台账"), //;
    CRM_TRADE_336("由营销活动办理顺带的预约产品变更，请先返销该营销活动后再办理取消！"); //;
    private final String value;

    private TradeException(String value)
    {

        this.value = value;
    }

    public String getValue()
    {

        return value;
    }
}
