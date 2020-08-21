/*!
 * upload component
 * http://www.wadecn.com/
 * auth:xiedx@asiainfo.com
 * Copyright 2015, WADE
 */
!function(c,i,p){"use strict";if(c&&"undefined"==typeof c.Upload){var n=Array.prototype.push,_=Array.prototype.splice,s=("undefined"!=typeof c.hasTouch?c.hasTouch:"ontouchstart"in i)?"touchstart":"mousedown",o=c.os.phone||!0===c.ratioPhone,a={excel:[".xls",".xlsx",".csv"],img:[".png",".jpg",".gif"],ppt:[".ppt",".pptx",".ppsx"],rar:[".rar",".zip",".tar",".gz",".tgz"],video:[".rm",".rmvb",".avi",".mkv",".mp4",".wmv",".mov",".movie",".mpeg",".mpg",".qt"],voice:[".mp2",".mp3",".wma",".midi"],word:[".doc",".docx"]},d={excel:"e_ico-excel",img:"e_ico-img",ppt:"e_ico-ppt",rar:"e_ico-rar",video:"e_ico-video",voice:"e_ico-voice",word:"e_ico-word",unknown:"e_ico-file"},r=function(e,l){var t=this;t.el=e&&1==e.nodeType?e:p.getElementById(e),t.el&&t.el.nodeType&&(t.id=c.attr(t.el,"id"))&&(l&&c.isObject(l)&&c.extend(t,l),c.attr(t.el,"x-wade-uicomponent")||c.attr(t.el,"x-wade-uicomponent","upload"),t._init(),t.constructor.call(t))};r.prototype=c.extend(new c.UIComponent,{val:function(){var e,l=this,t=[],i=[];if(l.files&&!c.isEmptyObject(l.files))for(var n in l.files)(e=l.files[n]).valid&&e.fileId&&(t.push(e.name),i.push(e.fileId));var s=new Object;return s.NAME=t.join(","),s.ID=i.join(","),t=i=null,s},fileSet:function(){var e,l=this,t=new Array;if(l.files&&!c.isEmptyObject(l.files))for(var i in l.files)(e=l.files[i]).valid&&e.fileId&&t.push({name:e.name,fileId:e.fileId});return t},tip:function(e){e&&c.isString(e)&&(this.tipCtEl.innerHTML=e)},loadFile:function(e){var u=this;if(c.isString(e)&&c.trim(e)){var l=e.split(",");if(l&&l.length){for(var p={},t=l.length-1;0<=t;t--){var i=c.md5(l[t]);u.files[i]?l.splice(t,1):p[l[t]]=i}l&&l.length&&(c(u.loadingTitle).text(c.lang.get("ui.component.upload.tip.loading-files")),c(u.loadingEl).removeClass("c_msg-error"),c(u.loadingEl).addClass("c_msg-loading"),c(u.loadingEl).css("display",""),u.loading=!0,c.ajaxRequest({url:c.FILE_QUERY_URL,data:"&fileId="+l.join(","),dataType:"text",success:function(e,l,t){var i,n=!1;try{(i=c.parseJSON(e)).context&&i.data&&"0"==i.context.x_resultcode||(n=!0)}catch(f){n=!0}if(n)c(u.loadingTitle).text(c.lang.get("ui.component.upload.tip.loading-files-faild")),c(u.loadingEl).addClass("c_msg-error"),c(u.loadingEl).removeClass("c_msg-loading");else{for(var s in i.data){var a=p[s],o=i.data[s],d=u.files[a]={guid:a,fileId:s,name:o.fileName,size:parseInt(o.fileSize),valid:!0},r=u._fileIconClassName(d.fileName);c(u.listUlEl).append('<li id="'+u.id+"_file_"+a+'">\t<div class="pic"><span id="'+u.id+"_file_"+a+'_ico" class="e_ico-pic '+r+'"></span></div>\t<div class="main">\t\t<div class="title">'+d.name+'</div>\t\t<div class="content">       \t\t<span id="'+u.id+"_file_"+a+'_text">'+c.FileTransfer.humanSize(d.size)+'</span>      </div>\t</div>\t<div class="side"><span id="'+u.id+"_file_"+a+'_tag" class="e_tag e_tag-green">'+c.lang.get("ui.component.upload.tip.tag-uploaded")+'</span></div>\t<div class="fn" tag="download"><span id="'+u.id+"_file_"+a+'_download" ontap="$.Upload.downloadFile(\''+s+"','"+d.name+"', "+u.needSuffix+')" class="e_ico-download"></span></div>\t<div class="fn" tag="delete" style="'+(u.readonly?"display:none":"")+'"><span id="'+u.id+"_file_"+a+'_delete" ontap="$.Upload.removeFile(\''+u.id+"','"+a+'\')" class="e_ico-delete"></span></div></li>')}u.scroller&&u.scroller.refresh(),c(u.loadingEl).css("display","none")}u.loading=!1},error:function(e,l,t){c(u.loadingTitle).text(c.lang.get("ui.component.upload.tip.loading-files-faild")),c(u.loadingEl).addClass("c_msg-error"),c(u.loadingEl).removeClass("c_msg-loading"),u.loading=!1}}))}}},removeFile:function(e){var l=this;if(!(0<l.queue.length)){var t=l.files[e];if(t){!0===l.fileDelete&&t.fileId&&c.get(c.FILE_DELETE_URL+"&fileId="+t.fileId+"&_="+Math.random());var i=l.transfers[e];for(var n in i&&(i.destroy(),i=null),t)delete t[n];delete l.files[e],t=null}c("#"+l.id+"_file_"+e).remove(),l.fileFormEl&&l.fileFormEl.nodeType&&l.fileFormEl.reset(),l.scroller&&l.scroller.refresh()}},reset:function(e){var l=this;if(!(0<l.queue.length)){for(var t in l.files){var i=l.files[t];if(i){!0===l.fileDelete&&!0===e&&i.fileId&&c.get(c.FILE_DELETE_URL+"&fileId="+i.fileId+"&_="+Math.random());var n=l.transfers[t];for(var s in n&&(n.destroy(),n=null),i)delete i[s];delete l.files[t],i=null}c("#"+l.id+"_file_"+t).remove()}l.fileFormEl&&l.fileFormEl.nodeType&&l.fileFormEl.reset(),l.scroller&&l.scroller.refresh()}},getDisabled:function(){return this.disabled},setDisabled:function(e){var l=this;l.disabled=!!e,setTimeout(function(){var e=l.el.className?l.el.className:"";l.disabled?(" "+e+" ").indexOf(" e_dis ")<0&&(l.el.className=c.trim(e+" e_dis")):(e=c.trim((" "+e+" ").replace(/ e_dis /gi," ")),l.el.className=e)},0)},getReadonly:function(){return this.readonly},setReadonly:function(e){var l=this;l.readonly=!!e,setTimeout(function(){c(l.listUlEl).find("div[tag=delete]").each(function(){this.style.display=l.readonly?"none":""}),l.btnSelEl.style.display=l.btnDoEl.style.display=l.btnOk.style.display=l.btnClear.style.display=l.readonly?"none":""},0)},destroy:function(){var e=this;if(e.files){var l;for(var t in e.files){for(var i in l=e.files[t])delete l[i];l.fileObject=null,delete e.files[t]}l=null,e.files=null}if(e.swfup&&(e.swfup.destroy(),e.swfup=null),e.transfers){for(var t in e.transfers)e.transfers[t].destroy(),delete e.transfers[t];e.transfers=null}e.queue=null,e.scroller&&(e.scroller.destroy(),e.scroller=null),e.fileFormEl=null,e.fileEl=null,e.btnSelEl=null,e.btnBrow=null,e.btnDoEl=null,e.tipCtEl=null,e.scrollEl=null,e.listUlEl=null,e.loadingEl=null,e.loadingTitle=null,e.btnOk=null,e.btnClear=null,e.el=null,e.defaultTip=null},_init:function(){var a=this;a.url=c.FILE_UPLOAD_URL+"&needSuffix="+a.needSuffix+(a.ftpCode?"&ftpSite="+a.ftpCode:"")+(a.filePath?"&filePath="+encodeURIComponent(a.filePath):"")+(a.copyToFtpCode?"&copyToFtpSite="+a.copyToFtpCode:"")+(a.copyToFilePath?"&copyToFilePath="+encodeURIComponent(a.copyToFilePath):""),c.redirect&&c.redirect.parseUrl&&(a.url=c.redirect.parseUrl(a.url));var e=c(a.el).children("div.c_header:first")[0],l=c(e).children("div.fn:first")[0];a.fileFormEl=c(l).children("form:first")[0],a.fileEl=c(a.fileFormEl).children("input:first")[0],a.btnSelEl=c(l).children("span.e_flash:first")[0],a.btnBrow=c(a.btnSelEl).children("button.e_button-blue:first")[0],a.btnDoEl=c(l).children("button.e_button-blue:first")[0],a.btnWidth=a.btnSelEl.offsetWidth,a.btnHeight=a.btnSelEl.offsetHeight,e=l=null,a.tipCtEl=c(a.el).children("div.c_tip:first").children("div:first")[0],a.scrollEl=c(a.el).children("div.c_scroll:first")[0],a.listUlEl=c(a.scrollEl).children("div.c_scrollContent:first").find("ul:first")[0],a.loadingEl=c(a.scrollEl).children("div.c_msg:first")[0],a.loadingTitle=c(a.loadingEl).find("div.title:first")[0];var t=c(a.el).children("div.l_bottom:first").children("div.c_submit:first")[0];a.btnOk=c(t).children("button[tag=ok]:first")[0],a.btnClear=c(t).children("button[tag=clear]:first")[0],t=null,a.files={},a.transfers={},a.queue=[],setTimeout(function(){(o||c.os.pad)&&(a.scroller=new c.Scroll(a.scrollEl,{hScroll:!1,hScrollbar:!1})),a.fileTypes&&(a.fileTypes=c.FileTransfer.fileTypes(a.fileTypes),a.fileTypes&&c.attr(a.fileEl,"accept",c.FileTransfer.mimeType(a.fileTypes))),a.defaultTip=c.lang.get("ui.component.upload.tip.file-size-limit",c.FileTransfer.humanSize(a.fileSize))+c.lang.get("ui.component.upload.tip.file-num-limit",a.fileLimit),a.fileTypes&&(a.defaultTip+=c.lang.get("ui.component.upload.tip.file-type-limit",a.fileTypes.join(","))),a.tip(a.defaultTip),a.disabled&&a.setDisabled(!0),a.readonly&&a.setReadonly(!0),a.useSwfUpload=c.browser.msie&&c.browser.version<10,1==a.useSwfUpload&&(c(a.btnSelEl).append('<span id="'+a.id+'_swfupload_holder"></span>'),a.swfup=new SWFUpload({upload_url:a.url,file_size_limit:a.fileSize,file_queue_limit:a.fileLimit,file_types:a.fileTypes&&a.fileTypes.length?(""+a.fileTypes.join(";")).replace(/\./g,"*."):null,flash_url:"v5/jcl/plugins/swfupload/swfupload.swf",flash9_url:"v5/jcl/plugins/swfupload/swfupload_fp9.swf",button_placeholder_id:a.id+"_swfupload_holder",button_width:a.btnWidth,button_height:a.btnHeight,button_window_mode:SWFUpload.WINDOW_MODE.TRANSPARENT,button_cursor:SWFUpload.CURSOR.HAND,file_queued_handler:function(e){a._addFile(e)},file_queue_error_handler:function(e,l,t){switch(l){case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:alert(c.lang.get("ui.component.upload.tip.invalid-filesize")+" "+(e?e.name:""));break;case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:alert(c.lang.get("ui.component.upload.tip.invalid-filetype")+" "+(e?e.name:""));break;case SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED:alert(c.lang.get("ui.component.upload.tip.file-num-limit",a.fileLimit))}},upload_start_handler:function(e){var l=a._fileObjGUID(e),t=a.files[l];a._transferStart(t)},upload_progress_handler:function(e,l,t){var i=a._fileObjGUID(e),n=a.files[i];a._transferProgress(l,t,n)},upload_success_handler:function(e,l){var t=a._fileObjGUID(e),i=a.files[t];a._transferSuccess(c.parseJSON(l),"suc",i)},upload_error_handler:function(e,l,t){var i=a._fileObjGUID(e),n=a.files[i];a._transferError(l,t,n)}}))},0),c(a.btnBrow).tap(function(){if(!a.disabled&&!a.readonly&&!(a.loading||0<a.queue.length))if(a.useSwfUpload){var e=swfobject.getFlashPlayerVersion();e&&e.major||alert(c.lang.get("ui.component.swfobject.tip.flashplayer-not-installed"))}else a.fileEl.click()}),c(a.btnDoEl).tap(function(){var e,l;if(!a.disabled&&!a.readonly&&!(a.loading||0<a.queue.length))if(a.useSwfUpload)a.swfup.startUpload();else for(var t in a.files)(e=a.files[t]).valid&&!e.fileId&&(l=a.transfers[t])&&l.send()}),c(a.fileEl).bind("change",function(){if(!a.disabled&&!a.readonly&&!(a.loading||0<a.queue.length)){for(var e=0,l=this.files.length;e<l;e++)a._addFile(this.files[e]);var t=0,i=0;for(var n in a.files)t++,0==a.files[n].valid&&i++;a.scroller&&a.scroller.refresh();var s=c.lang.get("ui.component.upload.tip.selected-file-num",t);0<i&&(s+=c.lang.get("ui.component.upload.tip.selected-invalid-file-num",i)),a.tip(s)}}),c(a.loadingEl).bind(s,function(){a.loading||(a.loadingEl.style.display="none")}),c(a.btnOk).tap(function(e){a.disabled||a.readonly||c.event.trigger({type:"select",originalEvent:e.originalEvent,context:a},null,a.el)}),c(a.btnClear).tap(function(){if(!a.disabled&&!a.readonly&&!a.loading){for(var e in a.files)a.removeFile(e);a.fileFormEl&&a.fileFormEl.nodeType&&a.fileFormEl.reset(),a.tip(a.defaultTip),c.event.trigger("clear",null,a.el)}})},_addFile:function(e){var t=this,l=e.name,i=e.size,n=t._fileObjGUID(e),s=!0,a=c.FileTransfer.humanSize(i);if(!1!==t.fileRepeat||!t.files[n]){t._validateFileType(l)||(s=!1,a+=" "+c.lang.get("ui.component.upload.tip.invalid-filetype")),s&&i>t.fileSize&&(s=!1,a+=" "+c.lang.get("ui.component.upload.tip.invalid-filesize"));var o=t.files[n]={guid:n,name:l,size:i,valid:s,fileObject:e};s&&!t.useSwfUpload&&(t.transfers[n]=new c.FileTransfer({context:t,url:t.url,start:t._transferStart,success:t._transferSuccess,error:t._transferError,progress:function(e,l){t._transferProgress(e.loaded,e.total,l)}},o));var d=t._fileIconClassName(l);return c(t.listUlEl).append('<li id="'+t.id+"_file_"+n+'">\t<div class="pic"><span id="'+t.id+"_file_"+n+'_ico" class="e_dis e_ico-pic '+d+'"></span></div>\t<div class="main">\t\t<div class="title">'+l+'</div>\t\t<div class="content">       \t\t<span id="'+t.id+"_file_"+n+'_text" '+(s?"":' class="e_red" ')+">"+a+'</span>\t\t\t\t<span id="'+t.id+"_file_"+n+'_prog"class="e_progress e_progress-s" style="display:none">\t\t\t\t\t<span class="e_progressBar">\t\t\t\t\t\t<span id="'+t.id+"_file_"+n+'_prog_bar" class="e_progressProgress" style="width:0.0%;"></span>\t\t\t\t\t</span>\t\t\t\t</span>      </div>\t</div>\t<div class="side"><span id="'+t.id+"_file_"+n+'_tag" class="e_tag">'+c.lang.get("ui.component.upload.tip.tag-wait")+'</span></div>\t<div class="fn" tag="download" style="display:none"><span id="'+t.id+"_file_"+n+'_download" class="e_ico-download"></span></div>\t<div class="fn" tag="delete"><span id="'+t.id+"_file_"+n+'_delete" ontap="$.Upload.removeFile(\''+t.id+"','"+n+'\')" class="e_ico-delete"></span></div></li>'),o}},_validateFileType:function(e){if(!this.fileTypes||!this.fileTypes.length)return!0;var l=c.FileTransfer.extName(e);return l&&c.isString(l)&&-1<c.inArray(l,this.fileTypes)||undefined==l},_fileIconClassName:function(e){var l=e&&c.isString(e)?c.FileTransfer.extName(e):null;if(l)for(var t in a)if(-1<c.inArray(l,a[t]))return d[t];return d.unknown},_fileObjGUID:function(e){if(e)return c.md5((e.lastModifiedDate?e.lastModifiedDate.valueOf():e.modificationdate)+e.name+e.size)},_transferStart:function(e){var l,t,i;e&&(n.call(this.queue,e.guid),(l=p.getElementById(this.id+"_file_"+e.guid+"_text"))&&(l.style.display="none"),(t=p.getElementById(this.id+"_file_"+e.guid+"_prog"))&&(t.style.display=""),(i=p.getElementById(this.id+"_file_"+e.guid+"_delete"))&&(i.className="e_dis e_ico-delete"),l=t=i=null)},_transferSuccess:function(e,l,t){var i,n,s,a,o,d,r,f=this,u=-1;if(!(e&&e.context&&e.data&&(n=e.data.fileId)))return u=e&&e.context?e.context.x_resultcode:"-1",i=e&&e.context?e.context.x_resultinfo:"",void f._transferError.call(f,u,i,t);t&&(t.fileId=n,_.call(f.queue,c.inArray(t.guid,f.queue),1),(s=p.getElementById(f.id+"_file_"+t.guid+"_prog_bar"))&&(s.style.width="100%",s.innerHTML="100%"),(a=p.getElementById(f.id+"_file_"+t.guid+"_ico"))&&(a.className=c.trim((" "+(a.className?a.className:"")+" ").replace(/ e_dis /gi," "))),(o=p.getElementById(f.id+"_file_"+t.guid+"_tag"))&&(o.className="e_tag e_tag-green",o.innerHTML=c.lang.get("ui.component.upload.tip.tag-complete")),(d=p.getElementById(f.id+"_file_"+t.guid+"_download"))&&(d.parentNode.style.display="",d.setAttribute("ontap","$.Upload.downloadFile('"+n+"', '"+t.name+"', "+f.needSuffix+")")),(r=p.getElementById(f.id+"_file_"+t.guid+"_delete"))&&(r.className="e_ico-delete"),s=a=o=d=r=null)},_transferError:function(e,l,t){var i,n,s,a,o=this;t&&(_.call(o.queue,c.inArray(t.guid,o.queue),1),(i=p.getElementById(o.id+"_file_"+t.guid+"_text"))&&(i.innerHTML=c.lang.get("ui.component.upload.tip.upload-faild-info",l||"Status("+e+")"),i.className="e_red",i.style.display=""),(n=p.getElementById(o.id+"_file_"+t.guid+"_prog"))&&(n.style.display="none"),(s=p.getElementById(o.id+"_file_"+t.guid+"_tag"))&&(s.className="e_tag e_tag-red",s.innerHTML=c.lang.get("ui.component.upload.tip.upload-faild")),(a=p.getElementById(o.id+"_file_"+t.guid+"_delete"))&&(a.className="e_ico-delete"),i=n=s=a=null)},_transferProgress:function(e,l,t){var i,n;(n=p.getElementById(this.id+"_file_"+t.guid+"_prog_bar"))&&(100<=(i=0<e&&0<l?Math.round(e/l*100):0)&&(i=99),n.style.width=i+"%",n.innerHTML=i+"%"),i=n=null}}),c.extend(r,{removeFile:function(e,l){if(e&&l){var t=i[e];return t&&c.isObject(t)&&t instanceof r?t.removeFile(l):void 0}},downloadFile:function(e,l,t){e&&c.FileTransfer.download(c.FILE_DOWNLOAD_URL+"&fileId="+e+"&realName="+l+"&needSuffix="+!!t+"&_="+Math.random())},buildContent:function(e){return function(e){if(!e.name||!c.isString(e.name))return;var l=[];return l.push('<div class="c_header">'),l.push('\t<div class="back" ontap="backPopup(this)"><span jwcid="@Insert" value="'+e.title+'" /></div>'),l.push('\t\t<div class="fn">'),l.push('\t\t\t<form><input type="file" multiple="true" style="position:absolute;width:0px;height:0px;left:-99999px;top:-99999px;" /></form>'),l.push('\t\t\t<span class="e_flash">'),l.push('\t\t\t\t<button class="e_button-blue" type="button">'),l.push('\t\t\t\t\t<span class="e_ico-browse"></span><span>'+c.lang.get("ui.component.upload.btn-select-text")+"</span>"),l.push("\t\t\t\t</button>"),l.push("\t\t\t</span>"),l.push('\t\t\t<button class="e_button-blue" type="button"><span class="e_ico-upload"></span><span>'+c.lang.get("ui.component.upload.btn-start-text")+"</span></button>"),l.push("\t</div>"),l.push("</div>"),l.push('<div class="c_tip c_tip-blue">'),l.push('\t<div class="content"></div>'),l.push("</div>"),l.push('<div class="c_scroll c_scroll-submit c_scroll-white c_scroll-float" style="top:5.7em;">'),l.push('\t<div class="c_scrollContent">'),l.push('\t\t<div class="c_list c_list-line"><ul></ul></div>'),l.push('\t\t<div class="c_line"></div>'),l.push("\t</div>"),l.push('\t<div class="c_msg c_msg-s c_msg-full c_msg-loading" style="display:none">'),l.push('\t\t<div class="wrapper">'),l.push('\t\t\t<div class="emote"></div>'),l.push('\t\t\t<div class="info">'),l.push('\t\t\t\t<div class="text">'),l.push('\t\t\t\t\t<div class="title">'+c.lang.get("ui.component.upload.tip.loading-files")+"</div>"),l.push('\t\t\t\t\t<div class="content"></div>'),l.push("\t\t\t\t</div>"),l.push("\t\t\t</div>"),l.push("\t\t</div>"),l.push("\t</div>"),l.push("</div>"),l.push('<div class="l_bottom">'),l.push('\t<div class="c_submit c_submit-full">'),l.push('\t\t<button tag="clear" type="buttton" class="e_button-l e_button-navy">'+c.lang.get("ui.component.upload.btn-clear-text")+"</button>"),l.push('\t\t<button tag="cancel" type="button" ontap="backPopup(this)" class="e_button-l e_button-navy">'+c.lang.get("ui.component.upload.btn-cancel-text")+"</button>"),l.push('\t\t<button tag="ok" type="button" class="e_button-l e_button-blue">'+c.lang.get("ui.component.upload.btn-ok-text")+"</button>"),l.push("\t</div>"),l.push("</div>"),l.join("")}(e)}}),i.Upload=c.Upload=r}}(window.Wade,window,document);