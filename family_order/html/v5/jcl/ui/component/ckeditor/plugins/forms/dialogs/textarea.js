/*
 Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.md or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("textarea",function(e){return{title:e.lang.forms.textarea.title,minWidth:350,minHeight:220,onShow:function(){delete this.textarea;var e=this.getParentEditor().getSelection().getSelectedElement();e&&"textarea"==e.getName()&&(this.textarea=e,this.setupContent(e))},onOk:function(){var e,t=this.textarea,a=!t;a&&(t=(e=this.getParentEditor()).document.createElement("textarea")),this.commitContent(t),a&&e.insertElement(t)},contents:[{id:"info",label:e.lang.forms.textarea.title,title:e.lang.forms.textarea.title,elements:[{id:"_cke_saved_name",type:"text",label:e.lang.common.name,"default":"",accessKey:"N",setup:function(e){this.setValue(e.data("cke-saved-name")||e.getAttribute("name")||"")},commit:function(e){this.getValue()?e.data("cke-saved-name",this.getValue()):(e.data("cke-saved-name",!1),e.removeAttribute("name"))}},{type:"hbox",widths:["50%","50%"],children:[{id:"cols",type:"text",label:e.lang.forms.textarea.cols,"default":"",accessKey:"C",style:"width:50px",validate:CKEDITOR.dialog.validate.integer(e.lang.common.validateNumberFailed),setup:function(e){e=e.hasAttribute("cols")&&e.getAttribute("cols"),this.setValue(e||"")},commit:function(e){this.getValue()?e.setAttribute("cols",this.getValue()):e.removeAttribute("cols")}},{id:"rows",type:"text",label:e.lang.forms.textarea.rows,"default":"",accessKey:"R",style:"width:50px",validate:CKEDITOR.dialog.validate.integer(e.lang.common.validateNumberFailed),setup:function(e){e=e.hasAttribute("rows")&&e.getAttribute("rows"),this.setValue(e||"")},commit:function(e){this.getValue()?e.setAttribute("rows",this.getValue()):e.removeAttribute("rows")}}]},{id:"value",type:"textarea",label:e.lang.forms.textfield.value,"default":"",setup:function(e){this.setValue(e.$.defaultValue)},commit:function(e){e.$.value=e.$.defaultValue=this.getValue()}},{id:"required",type:"checkbox",label:e.lang.forms.textfield.required,"default":"",accessKey:"Q",value:"required",setup:function(e){this.setValue(e.getAttribute("required"))},commit:function(e){this.getValue()?e.setAttribute("required","required"):e.removeAttribute("required")}}]}]}});