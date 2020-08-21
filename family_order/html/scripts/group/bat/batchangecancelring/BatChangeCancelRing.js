// 设置返回值
function setReturnData(){

	// 设置返回值
	var valueData = $.DataMap();
	
	var operTypeName = "";
	var cancelLing = "";
	
	if($("#CANCEL_LING").attr("checked")){
		operTypeName = "新增";
		cancelLing = "1";
	}else{
		operTypeName = "取消";
		cancelLing = "0";
	}
	
	// 设置返回值
	valueData.put("cancelLing", cancelLing);
	//add by chenzg@20180704--begin--REQ201804280001集团合同管理界面优化需求---
	if($('#MEB_VOUCHER_FILE_LIST')){
		var mebVoucherFileList = $('#MEB_VOUCHER_FILE_LIST').val();
		if( mebVoucherFileList== ""){
			alert("请上传凭证附件！");
			return false;
		}else{
			valueData.put('MEB_VOUCHER_FILE_LIST', mebVoucherFileList);
		}		
	}
	if($('#AUDIT_STAFF_ID')){
		var auditStaffId = $('#AUDIT_STAFF_ID').val();
		if( auditStaffId== ""){
			alert("请选择稽核员！");
			return false;
		}else{
			valueData.put('AUDIT_STAFF_ID', auditStaffId);
		}		
	}
	//alert(valueData);
	//add by chenzg@20180704--end----REQ201804280001集团合同管理界面优化需求---
	
	//$.setReturnValue({'POP_CODING_STR': "处理方式：" + operTypeName}, false);
 	//$.setReturnValue({'CODING_STR': valueData.toString()}, true);
 	
 	parent.$('#POP_CODING_STR').val("处理方式：" + operTypeName);
	parent.$('#CODING_STR').val(valueData);
 	
	parent.hiddenPopupPageGrp();
}