$(function () {

	//手机端签名兼容处理
	if($.os.phone) {
		var backFlag = getUrlParams("BACK_BUTTON");
		if(backFlag == "false"){
			$("#c_scroll").attr("class","c_scroll-white");
			document.getElementById("ht").style.overflow="auto";
			document.getElementById("bd").style.overflow="visible";
			document.getElementById("bd").style.height="auto";
            $("#bd input[type=text]").each(function () {
                $(this).removeAttr("placeholder");
                if(!$(this).val()){
                    $(this).val("\\");
                }
            });

            $("#tvcontent").show();
            $("#groupcontent").show();
            $("#infocontent").show();
            $("#aircontent").show();
            $("#wificontent").show();
        }

        if(document.getElementById("ph_BUSINESS_TV").checked == true){
            $("#tvcontent").show();
        }
        if(document.getElementById("ph_EPS_BBD").checked == true){
            $("#groupcontent").show();
        }
        if(document.getElementById("ph_CON_CNT").checked == true){
            $("#infocontent").show();
        }
        if(document.getElementById("ph_CLOUD_WINE").checked == true){
            $("#aircontent").show();
        }
        if(document.getElementById("ph_CLOUD_WIFI").checked == true){
            $("#wificontent").show();
        }

	}

})

function checkChooseProduct(){
	var part = "";
	if($.os.phone){
		part = "phoneSubmitPart";
	}else{
		part = "pcSubmitPart";
	}
	var chooseProduct = "";
	
	$("#"+part+" input[type=checkbox]:checked").each(function(){
		var id = $(this).attr("id");
		if(id){
			var relId = id.subString(3);
			if(relId == "CON_CNT"){
				chooseProduct += "VP998001,";
			}else if(relId == "EPS_BBD"){
				chooseProduct += "7341,";
			}else if(relId == "BUSINESS_TV"){
				chooseProduct += "380700,";
			}else if(relId == "CLOUD_WINE"){
				chooseProduct += "921015,";
			}else if(relId == "CLOUD_WIFI"){
				chooseProduct += "380300,";
			}
		}
	});
	
	
	if(chooseProduct){
		var products = chooseProduct.split(",");
	}else{
		return false;
	}
	
	var productIdIn = $("#PRODUCT_ID").val();
	if("VP66666" == productIdIn){
		
	}else if("VP99999" == productIdIn){
		for(var i=0;i<products.length;i++){
			if("380700"==products[i]||"921015"==products[i]||"380300"==products[i]){
				return false;
			}
		}
	}else if("7341" == productIdIn || "VP998001" == productIdIn ||"380700" == productIdIn ||"380300" == productIdIn ||"921015" == productIdIn){
		if(products.length !=1&&products[0]!=productIdIn){
			return false;
		}
	}
	return true;
	
}

function changeChoose(el) {
	var id = $(el).attr("name");
	var index = id.indexOf("_1");
	if(id && index>0){
        var id1 = id.substring(0,index);
        if(el.checked == true){
            document.getElementsByName(id1)[0].checked = true;
        }else{
            document.getElementsByName(id1)[0].checked = false;
        }
	}else{
        var id1 = id+"_1";
        if(el.checked == true){
            document.getElementsByName(id1)[0].checked = true;
        }else{
            document.getElementsByName(id1)[0].checked = false;
        }
	}
}

function onSubmit(obj){

    var submitPart = "HiddenPart,ChangeType";
    if($.os.phone) {
        
        submitPart = submitPart + ",phoneSubmitPart";
    }else{
        
        submitPart = submitPart + ",pcSubmitPart";
    }
    $.beginPageLoading("数据加载中......");
    $.ajax.submit(submitPart, "onSubmit", "", "", function(data){
            $.endPageLoading();

            //将已生成的协议写回页面，防止重复提交
            $("#ARCHIVES_ID").val(data.get('ARCHIVE_ID'));
            $("#SUBMITTYPE").val("U");

            //返回订购页面的参数
            var agreementData=new Wade.DataMap();
            agreementData.put("AGREEMENT_ID",data.get('CONTRACT_NUMBER'));
            agreementData.put("CONTRACT_WRITE_DATE",data.get('CONTRACT_WRITE_DATE'));
            agreementData.put("CONTRACT_END_DATE",data.get('CONTRACT_END_DATE'));
            agreementData.put("ARCHIVES_NAME",data.get('AGREEMENT_ARCHIVE_NAME'));
            agreementData.put("PRODUCT_ID",data.get('PRODUCT_ID'));

            //返回合同录入的参数
            var ret={};
            var tempArchiveData=new Wade.DataMap();
            tempArchiveData.put("CONTRACT_NUMBER",data.get('CONTRACT_NUMBER'));
            tempArchiveData.put("CONTRACT_WRITE_DATE",data.get('CONTRACT_WRITE_DATE'));
            tempArchiveData.put("CONTRACT_END_DATE",data.get('CONTRACT_END_DATE'));
            tempArchiveData.put("ARCHIVE_ID",data.get('ARCHIVE_ID'));
            tempArchiveData.put("ARCHIVES_NAME",data.get('ARCHIVES_NAME'));
            tempArchiveData.put("AGREEMENT_DEF_ID",data.get('AGREEMENT_DEF_ID'));
            tempArchiveData.put("URL",data.get('URL'));

            tempArchiveData.put("MINOREC_PRODUCT_INFO",agreementData)
            ret.TEMP_ARCHIVE_DATA=tempArchiveData;

            if($.os.phone) {
            	window.parent.afterSubmit(tempArchiveData);
                var currentUrl = window.location.href;
                var arr = currentUrl.split("?");
                currentUrl = arr[0]+"?service=page/"+data.get('URL')+"&listener=initPage&BACK_BUTTON=false&SHOWBUTTON=false"+"&ARCHIVES_ID="+data.get('ARCHIVE_ID');
                var param = {
                    "content":currentUrl,
                    "needStamp":1,
                    "callback":"$.archives.events.setImage"
                };
                window.MBOP.eleWebSign(JSON.stringify(param));
                //window.MBOP.eleSign(currentUrl,"$.archives.events.setImage");
            }else {
            	setPopupReturnValue(this,ret ,false);
                MessageBox.success("温馨提示", "协议提交成功", function(btn){
                    hidePopup(obj);
                });
            }
        },
        function(error_code,error_info,derror){
            $.endPageLoading();
            showDetailErrorInfo(error_code,error_info,derror);
        });
}

function onBack(obj){
	if($.os.phone) {
		window.parent.backElecSelect();
	}else{
		hidePopup(obj);
	}
}

function onPrint(obj){
    $.beginPageLoading("数据加载中......");
    $.ajax.submit("onsubmitPart,HiddenPart", "onPrint", "", "", function(data){
            $.endPageLoading();
            var fileId = data.get("FILE_ID");
            popupPage('合同预览', 'igroup.elecagreement.ElecContractPDFview', 'init', '&FILE_ID='+fileId, null, 'full', '', '');
        },
        function(error_code,error_info,derror){
            $.endPageLoading();
            showDetailErrorInfo(error_code,error_info,derror);
        });
}