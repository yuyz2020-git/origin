/*
 Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.md or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("link",function(o){var i,s=CKEDITOR.plugins.link,t=function(){var e=(t=this.getDialog()).getContentElement("target","popupFeatures"),t=t.getContentElement("target","linkTargetName"),i=this.getValue();if(e&&t)switch(e=e.getElement(),e.hide(),t.setValue(""),i){case"frame":t.setLabel(o.lang.link.targetFrameName),t.getElement().show();break;case"popup":e.show(),t.setLabel(o.lang.link.targetPopupName),t.getElement().show();break;default:t.setValue(i),t.getElement().hide()}},e=function(e){e.target&&this.setValue(e.target[this.id]||"")},l=function(e){e.advanced&&this.setValue(e.advanced[this.id]||"")},a=function(e){e.target||(e.target={}),e.target[this.id]=this.getValue()||""},n=function(e){e.advanced||(e.advanced={}),e.advanced[this.id]=this.getValue()||""},d=o.lang.common,r=o.lang.link;return{title:r.title,minWidth:350,minHeight:230,contents:[{id:"info",label:r.info,title:r.info,elements:[{id:"linkType",type:"select",label:r.type,"default":"url",items:[[r.toUrl,"url"],[r.toAnchor,"anchor"],[r.toEmail,"email"]],onChange:function(){var e=this.getDialog(),t=["urlOptions","anchorOptions","emailOptions"],i=this.getValue(),l=(l=e.definition.getContents("upload"))&&l.hidden;for("url"==i?(o.config.linkShowTargetTab&&e.showPage("target"),l||e.showPage("upload")):(e.hidePage("target"),l||e.hidePage("upload")),l=0;l<t.length;l++){var a=e.getContentElement("info",t[l]);a&&(a=a.getElement().getParent().getParent(),t[l]==i+"Options"?a.show():a.hide())}e.layout()},setup:function(e){this.setValue(e.type||"url")},commit:function(e){e.type=this.getValue()}},{type:"vbox",id:"urlOptions",children:[{type:"hbox",widths:["25%","75%"],children:[{id:"protocol",type:"select",label:d.protocol,"default":"http://",items:[["http://‎","http://"],["https://‎","https://"],["ftp://‎","ftp://"],["news://‎","news://"],[r.other,""]],setup:function(e){e.url&&this.setValue(e.url.protocol||"")},commit:function(e){e.url||(e.url={}),e.url.protocol=this.getValue()}},{type:"text",id:"url",label:d.url,required:!0,onLoad:function(){this.allowOnChange=!0},onKeyUp:function(){this.allowOnChange=!1;var e=this.getDialog().getContentElement("info","protocol"),t=this.getValue(),i=/^(http|https|ftp|news):\/\/(?=.)/i.exec(t);i?(this.setValue(t.substr(i[0].length)),e.setValue(i[0].toLowerCase())):/^((javascript:)|[#\/\.\?])/i.test(t)&&e.setValue(""),this.allowOnChange=!0},onChange:function(){this.allowOnChange&&this.onKeyUp()},validate:function(){var e=this.getDialog();return!(!e.getContentElement("info","linkType")||"url"==e.getValueOf("info","linkType"))||(!o.config.linkJavaScriptLinksAllowed&&/javascript\:/.test(this.getValue())?(alert(d.invalidValue),!1):!!this.getDialog().fakeObj||CKEDITOR.dialog.validate.notEmpty(r.noUrl).apply(this))},setup:function(e){this.allowOnChange=!1,e.url&&this.setValue(e.url.url),this.allowOnChange=!0},commit:function(e){this.onChange(),e.url||(e.url={}),e.url.url=this.getValue(),this.allowOnChange=!1}}],setup:function(){this.getDialog().getContentElement("info","linkType")||this.getElement().show()}},{type:"button",id:"browse",hidden:"true",filebrowser:"info:url",label:d.browseServer}]},{type:"vbox",id:"anchorOptions",width:260,align:"center",padding:0,children:[{type:"fieldset",id:"selectAnchorText",label:r.selectAnchor,setup:function(){i=s.getEditorAnchors(o),this.getElement()[i&&i.length?"show":"hide"]()},children:[{type:"hbox",id:"selectAnchor",children:[{type:"select",id:"anchorName","default":"",label:r.anchorName,style:"width: 100%;",items:[[""]],setup:function(e){if(this.clear(),this.add(""),i)for(var t=0;t<i.length;t++)i[t].name&&this.add(i[t].name);e.anchor&&this.setValue(e.anchor.name),(e=this.getDialog().getContentElement("info","linkType"))&&"email"==e.getValue()&&this.focus()},commit:function(e){e.anchor||(e.anchor={}),e.anchor.name=this.getValue()}},{type:"select",id:"anchorId","default":"",label:r.anchorId,style:"width: 100%;",items:[[""]],setup:function(e){if(this.clear(),this.add(""),i)for(var t=0;t<i.length;t++)i[t].id&&this.add(i[t].id);e.anchor&&this.setValue(e.anchor.id)},commit:function(e){e.anchor||(e.anchor={}),e.anchor.id=this.getValue()}}],setup:function(){this.getElement()[i&&i.length?"show":"hide"]()}}]},{type:"html",id:"noAnchors",style:"text-align: center;",html:'<div role="note" tabIndex="-1">'+CKEDITOR.tools.htmlEncode(r.noAnchors)+"</div>",focus:!0,setup:function(){this.getElement()[i&&i.length?"hide":"show"]()}}],setup:function(){this.getDialog().getContentElement("info","linkType")||this.getElement().hide()}},{type:"vbox",id:"emailOptions",padding:1,children:[{type:"text",id:"emailAddress",label:r.emailAddress,required:!0,validate:function(){var e=this.getDialog();return!e.getContentElement("info","linkType")||"email"!=e.getValueOf("info","linkType")||CKEDITOR.dialog.validate.notEmpty(r.noEmail).apply(this)},setup:function(e){e.email&&this.setValue(e.email.address),(e=this.getDialog().getContentElement("info","linkType"))&&"email"==e.getValue()&&this.select()},commit:function(e){e.email||(e.email={}),e.email.address=this.getValue()}},{type:"text",id:"emailSubject",label:r.emailSubject,setup:function(e){e.email&&this.setValue(e.email.subject)},commit:function(e){e.email||(e.email={}),e.email.subject=this.getValue()}},{type:"textarea",id:"emailBody",label:r.emailBody,rows:3,"default":"",setup:function(e){e.email&&this.setValue(e.email.body)},commit:function(e){e.email||(e.email={}),e.email.body=this.getValue()}}],setup:function(){this.getDialog().getContentElement("info","linkType")||this.getElement().hide()}}]},{id:"target",requiredContent:"a[target]",label:r.target,title:r.target,elements:[{type:"hbox",widths:["50%","50%"],children:[{type:"select",id:"linkTargetType",label:d.target,"default":"notSet",style:"width : 100%;",items:[[d.notSet,"notSet"],[r.targetFrame,"frame"],[r.targetPopup,"popup"],[d.targetNew,"_blank"],[d.targetTop,"_top"],[d.targetSelf,"_self"],[d.targetParent,"_parent"]],onChange:t,setup:function(e){e.target&&this.setValue(e.target.type||"notSet"),t.call(this)},commit:function(e){e.target||(e.target={}),e.target.type=this.getValue()}},{type:"text",id:"linkTargetName",label:r.targetFrameName,"default":"",setup:function(e){e.target&&this.setValue(e.target.name)},commit:function(e){e.target||(e.target={}),e.target.name=this.getValue().replace(/([^\x00-\x7F]|\s)/gi,"")}}]},{type:"vbox",width:"100%",align:"center",padding:2,id:"popupFeatures",children:[{type:"fieldset",label:r.popupFeatures,children:[{type:"hbox",children:[{type:"checkbox",id:"resizable",label:r.popupResizable,setup:e,commit:a},{type:"checkbox",id:"status",label:r.popupStatusBar,setup:e,commit:a}]},{type:"hbox",children:[{type:"checkbox",id:"location",label:r.popupLocationBar,setup:e,commit:a},{type:"checkbox",id:"toolbar",label:r.popupToolbar,setup:e,commit:a}]},{type:"hbox",children:[{type:"checkbox",id:"menubar",label:r.popupMenuBar,setup:e,commit:a},{type:"checkbox",id:"fullscreen",label:r.popupFullScreen,setup:e,commit:a}]},{type:"hbox",children:[{type:"checkbox",id:"scrollbars",label:r.popupScrollBars,setup:e,commit:a},{type:"checkbox",id:"dependent",label:r.popupDependent,setup:e,commit:a}]},{type:"hbox",children:[{type:"text",widths:["50%","50%"],labelLayout:"horizontal",label:d.width,id:"width",setup:e,commit:a},{type:"text",labelLayout:"horizontal",widths:["50%","50%"],label:r.popupLeft,id:"left",setup:e,commit:a}]},{type:"hbox",children:[{type:"text",labelLayout:"horizontal",widths:["50%","50%"],label:d.height,id:"height",setup:e,commit:a},{type:"text",labelLayout:"horizontal",label:r.popupTop,widths:["50%","50%"],id:"top",setup:e,commit:a}]}]}]}]},{id:"upload",label:r.upload,title:r.upload,hidden:!0,filebrowser:"uploadButton",elements:[{type:"file",id:"upload",label:d.upload,style:"height:40px",size:29},{type:"fileButton",id:"uploadButton",label:d.uploadSubmit,filebrowser:"info:url","for":["upload","upload"]}]},{id:"advanced",label:r.advanced,title:r.advanced,elements:[{type:"vbox",padding:1,children:[{type:"hbox",widths:["45%","35%","20%"],children:[{type:"text",id:"advId",requiredContent:"a[id]",label:r.id,setup:l,commit:n},{type:"select",id:"advLangDir",requiredContent:"a[dir]",label:r.langDir,"default":"",style:"width:110px",items:[[d.notSet,""],[r.langDirLTR,"ltr"],[r.langDirRTL,"rtl"]],setup:l,commit:n},{type:"text",id:"advAccessKey",requiredContent:"a[accesskey]",width:"80px",label:r.acccessKey,maxLength:1,setup:l,commit:n}]},{type:"hbox",widths:["45%","35%","20%"],children:[{type:"text",label:r.name,id:"advName",requiredContent:"a[name]",setup:l,commit:n},{type:"text",label:r.langCode,id:"advLangCode",requiredContent:"a[lang]",width:"110px","default":"",setup:l,commit:n},{type:"text",label:r.tabIndex,id:"advTabIndex",requiredContent:"a[tabindex]",width:"80px",maxLength:5,setup:l,commit:n}]}]},{type:"vbox",padding:1,children:[{type:"hbox",widths:["45%","55%"],children:[{type:"text",label:r.advisoryTitle,requiredContent:"a[title]","default":"",id:"advTitle",setup:l,commit:n},{type:"text",label:r.advisoryContentType,requiredContent:"a[type]","default":"",id:"advContentType",setup:l,commit:n}]},{type:"hbox",widths:["45%","55%"],children:[{type:"text",label:r.cssClasses,requiredContent:"a(cke-xyz)","default":"",id:"advCSSClasses",setup:l,commit:n},{type:"text",label:r.charset,requiredContent:"a[charset]","default":"",id:"advCharset",setup:l,commit:n}]},{type:"hbox",widths:["45%","55%"],children:[{type:"text",label:r.rel,requiredContent:"a[rel]","default":"",id:"advRel",setup:l,commit:n},{type:"text",label:r.styles,requiredContent:"a{cke-xyz}","default":"",id:"advStyles",validate:CKEDITOR.dialog.validate.inlineStyle(o.lang.common.invalidInlineStyle),setup:l,commit:n}]}]}]}],onShow:function(){var e=this.getParentEditor(),t=e.getSelection(),i=null;(i=s.getSelectedLink(e))&&i.hasAttribute("href")?t.getSelectedElement()||t.selectElement(i):i=null,e=s.parseLinkAttributes(e,i),this._.selectedElement=i,this.setupContent(e)},onOk:function(){var e={};this.commitContent(e);var t=o.getSelection(),i=s.getLinkAttributes(o,e);if(this._.selectedElement){var l=this._.selectedElement,a=l.data("cke-saved-href"),n=l.getHtml();l.setAttributes(i.set),l.removeAttributes(i.removed),(a==n||"email"==e.type&&-1!=n.indexOf("@"))&&(l.setHtml("email"==e.type?e.email.address:i.set["data-cke-saved-href"]),t.selectElement(l)),delete this._.selectedElement}else(t=t.getRanges()[0]).collapsed&&(e=new CKEDITOR.dom.text("email"==e.type?e.email.address:i.set["data-cke-saved-href"],o.document),t.insertNode(e),t.selectNodeContents(e)),(i=new CKEDITOR.style({element:"a",attributes:i.set})).type=CKEDITOR.STYLE_INLINE,i.applyToRange(t,o),t.select()},onLoad:function(){o.config.linkShowAdvancedTab||this.hidePage("advanced"),o.config.linkShowTargetTab||this.hidePage("target")},onFocus:function(){var e=this.getContentElement("info","linkType");e&&"url"==e.getValue()&&(e=this.getContentElement("info","url")).select()}}});