/*
 Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.md or http://ckeditor.com/license
*/
!function(){function l(e){var t=this instanceof CKEDITOR.ui.dialog.checkbox;e.hasAttribute(this.id)&&(e=e.getAttribute(this.id),t?this.setValue(r[this.id]["true"]==e.toLowerCase()):this.setValue(e))}function n(e){var t=""===this.getValue(),i=this instanceof CKEDITOR.ui.dialog.checkbox,a=this.getValue();t?e.removeAttribute(this.att||this.id):i?e.setAttribute(this.id,r[this.id][a]):e.setAttribute(this.att||this.id,a)}var r={scrolling:{"true":"yes","false":"no"},frameborder:{"true":"1","false":"0"}};CKEDITOR.dialog.add("iframe",function(a){var e=a.lang.iframe,t=a.lang.common,i=a.plugins.dialogadvtab;return{title:e.title,minWidth:350,minHeight:260,onShow:function(){this.fakeImage=this.iframeNode=null;var e=this.getSelectedElement();e&&e.data("cke-real-element-type")&&"iframe"==e.data("cke-real-element-type")&&(this.fakeImage=e,this.iframeNode=e=a.restoreRealElement(e),this.setupContent(e))},onOk:function(){var e;e=this.fakeImage?this.iframeNode:new CKEDITOR.dom.element("iframe");var t={},i={};this.commitContent(e,t,i),(e=a.createFakeElement(e,"cke_iframe","iframe",!0)).setAttributes(i),e.setStyles(t),this.fakeImage?(e.replace(this.fakeImage),a.getSelection().selectElement(e)):a.insertElement(e)},contents:[{id:"info",label:t.generalTab,accessKey:"I",elements:[{type:"vbox",padding:0,children:[{id:"src",type:"text",label:t.url,required:!0,validate:CKEDITOR.dialog.validate.notEmpty(e.noUrl),setup:l,commit:n}]},{type:"hbox",children:[{id:"width",type:"text",requiredContent:"iframe[width]",style:"width:100%",labelLayout:"vertical",label:t.width,validate:CKEDITOR.dialog.validate.htmlLength(t.invalidHtmlLength.replace("%1",t.width)),setup:l,commit:n},{id:"height",type:"text",requiredContent:"iframe[height]",style:"width:100%",labelLayout:"vertical",label:t.height,validate:CKEDITOR.dialog.validate.htmlLength(t.invalidHtmlLength.replace("%1",t.height)),setup:l,commit:n},{id:"align",type:"select",requiredContent:"iframe[align]","default":"",items:[[t.notSet,""],[t.alignLeft,"left"],[t.alignRight,"right"],[t.alignTop,"top"],[t.alignMiddle,"middle"],[t.alignBottom,"bottom"]],style:"width:100%",labelLayout:"vertical",label:t.align,setup:function(e,t){if(l.apply(this,arguments),t){var i=t.getAttribute("align");this.setValue(i&&i.toLowerCase()||"")}},commit:function(e,t,i){n.apply(this,arguments),this.getValue()&&(i.align=this.getValue())}}]},{type:"hbox",widths:["50%","50%"],children:[{id:"scrolling",type:"checkbox",requiredContent:"iframe[scrolling]",label:e.scrolling,setup:l,commit:n},{id:"frameborder",type:"checkbox",requiredContent:"iframe[frameborder]",label:e.border,setup:l,commit:n}]},{type:"hbox",widths:["50%","50%"],children:[{id:"name",type:"text",requiredContent:"iframe[name]",label:t.name,setup:l,commit:n},{id:"title",type:"text",requiredContent:"iframe[title]",label:t.advisoryTitle,setup:l,commit:n}]},{id:"longdesc",type:"text",requiredContent:"iframe[longdesc]",label:t.longDescr,setup:l,commit:n}]},i&&i.createAdvancedTab(a,{id:1,classes:1,styles:1},"iframe")]}})}();