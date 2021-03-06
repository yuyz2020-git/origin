function conjuction(){
    var productId = $('#PRODUCT_ID').val();
    var groupId = $("#GROUP_ID").val();
    var userID = $("#GRP_USER_ID").val();
    var custId = $('#CUST_ID').val();
    var grpSn = $('#GRP_SN').val();
    var user_eparchy_code = $('#USER_EPARCHY_CODE').val();
    
    var discnt_code_b = $('#DISCNT_CODE_B').val();
  	var oper_type = $('#OPER_TYPE').val();
  	var effect_time = $('#EFFECT_TIME').val();
  	var OPER_NAME = $("#OPER_TYPE :selected").text();
   
   	if(groupId==""){
   		alert("请输入集团名称");
    	return false;
    }
   	
   	if(discnt_code_b==""||discnt_code_b==null){
    	alert("请选择成员优惠");
    	return false; 
    }
    
    if(effect_time==""||effect_time==null){
    	alert("请选择优惠生效时间");
    	return false; 
    }
    
    if(oper_type==""||oper_type==null){
    	alert("请选择优惠变更方式");
    	return false; 
    }
    
    var newd = $.DataMap();
    newd.put('PRODUCT_ID',productId);
    newd.put('GROUP_ID',groupId);
    newd.put('USER_ID',userID);
    newd.put('CUST_ID',custId);
    newd.put('GRP_SERIAL_NUMBER',grpSn);
    newd.put('USER_EPARCHY_CODE',user_eparchy_code);
    newd.put('OPER_TYPE',oper_type);
    newd.put('DISCNT_CODE',discnt_code_b);
    newd.put('EFFECT_TIME',effect_time);
    //add by chenzg@20180704--begin--REQ201804280001集团合同管理界面优化需求---
    //alert($("#MEB_VOUCHER_FILE_SHOW").val());
    if($("#MEB_VOUCHER_FILE_SHOW")&&$("#MEB_VOUCHER_FILE_SHOW").val()=="true"){
    	var mebVoucherFileList = "";
        var auditStaffId = "";
    	if($('#MEB_VOUCHER_FILE_LIST')){
    		mebVoucherFileList = $('#MEB_VOUCHER_FILE_LIST').val();
    		if(mebVoucherFileList == ""){
    			alert("请上传凭证附件！");
    			return false;
    		}	
    	}
    	if($('#AUDIT_STAFF_ID')){
    		auditStaffId = $('#AUDIT_STAFF_ID').val();
    		if(auditStaffId == ""){
    			alert("请选择稽核人员！");
    			return false;
    		}	
    	}
    	newd.put('MEB_VOUCHER_FILE_LIST', mebVoucherFileList);
        newd.put('AUDIT_STAFF_ID', auditStaffId);   
    }
    //alert(newd);
	//add by chenzg@20180704--end----REQ201804280001集团合同管理界面优化需求---

 	//$.setReturnValue({'POP_CODING_STR':"选择成员优惠:"+discnt_code_b+" 优惠变更方式:"+OPER_NAME},false);
 	//$.setReturnValue({'CODING_STR':newd},true);
 	
 	parent.$('#POP_CODING_STR').val("选择成员优惠:"+discnt_code_b+" 优惠变更方式:"+OPER_NAME);
	parent.$('#CODING_STR').val(newd);
 	
	parent.hiddenPopupPageGrp();
  }
    
  
function refreshProductTree(data) {
	insertGroupCustInfo(data);
	mytree.empty(true);
	var resultcode = data.get('X_RESULTCODE','0');
	if(resultcode=='0'){
		mytree.setParam('CUST_ID',$('#CUST_ID').val());
		mytree.init();
		
	}else{
		$.showWarnMessage(data.get('X_RESULTTITLE',''),data.get('X_RESULTINFO',''));	
	}
}


function queryProduct(node)
{
	$("#UserInfoPart").css("display","");
    var ifcheck =true;//通过ajax同步方式判断是否可以勾选产品（可能会存在卡页面的现象，暂时这么写）
    $.beginPageLoading();
    $.ajax.setup({async:false});
    $.ajax.submit(this, 'queryUserInfosByProductCustId','&PRODUCT_ID='+node.value+'&CUST_ID='+$('#CUST_ID').val(),'CompProductInfoPart,GroupUserPart,BatDiscntPart',
		function(data){
		  $.endPageLoading();
		  var x_resultcode = data.get("x_resultcode","0");
		  if(x_resultcode == '-1'){
		  ifcheck= false;
			alert(data.get("x_resultinfo"));
		  	return;
		  }
		  
		  if($("#MEB_VOUCHER_FILE_SHOW")&&$("#MEB_VOUCHER_FILE_SHOW").val()=="false"){
        	$("#VoucherInfoPart").css("display", "none");
		  }else{
        	$("#VoucherInfoPart").css("display", "");
		  }
		  
		 },
		function(error_code,error_info,derror){
			$.endPageLoading();
			showDetailErrorInfo(error_code,error_info,derror);
	    });
	    
	$.ajax.setup({async:true}); 
	if(!ifcheck){    //勾选新失败后，原有选中的产品也会丢失
 		$("#grpProductTreeSelected").val("[]");
 	}
   return ifcheck;
}

function chooseUserProducts(obj){
	var useid = obj.attr('userida');
	var sn = obj.attr('sn');
	var productid  =obj.val();
	var eparchycode = obj.attr('eparchycode');
	$('#GRP_USER_ID').val(useid); 
	$('#GRP_SN').val(sn); 
	$('#PRODUCT_ID').val(productid);
	$('#USER_EPARCHY_CODE').val(eparchycode);

	$.beginPageLoading();
	$.ajax.submit(this, 'queryPackageDiscnt','&PRODUCT_ID='+ productid +'&USER_ID='+ useid,'BatDiscntPart',
		function(data){
        $.endPageLoading();
		 },
		function(error_code,error_info,derror){
			$.endPageLoading();
			showDetailErrorInfo(error_code,error_info,derror);
	    });
}


function errorAction() {
	clearGroupCustInfo();
	  //清空集团产品树信息
    cleanGroupProductTree();
}

