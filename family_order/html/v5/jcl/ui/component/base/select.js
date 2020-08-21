/*!
 * select component
 * http://www.wadecn.com/
 * auth:xiedx@asiainfo.com
 * Copyright 2015, WADE
 */
!function(k,_,C){"use strict";if(k&&"undefined"==typeof k.Select){Math;var i=C.createElement("div").style,t=function(){for(var e="t,webkitT,MozT,msT,OT".split(","),t=0,l=e.length;t<l;t++)if(e[t]+"ransform"in i)return e[t].substr(0,e[t].length-1);return!1}(),n=t?"-"+t.toLowerCase()+"-":"",s=g("transform"),a=g("transitionProperty"),l=g("transitionDuration"),r=(g("transformOrigin"),g("transitionTimingFunction")),e=(g("transitionDelay"),g("perspective")in i),o="undefined"!=typeof k.hasTouch&&k.hasTouch,d=!1!==t,c=(g("transition"),function(){if(!1===t)return!1;return{"":"transitionend",webkit:"webkitTransitionEnd",Moz:"transitionend",O:"otransitionend",ms:"MSTransitionEnd"}[t]}()),u=e?" translateZ(0)":"";i[s]=u;var f="ActiveXObject"in _,p=C.createElement("input"),x="oninput"in p;p=null;o="undefined"!=typeof k.hasTouch?k.hasTouch:"ontouchstart"in _;var h=k.os.phone||!0===k.ratioPhone,v=o?"touchstart":"mousedown",E=null,w=function(e,t){var l=this;l.el=e&&1==e.nodeType?e:C.getElementById(e),l.el&&l.el.nodeType&&(l.id=k.attr(l.el,"id"))&&(t&&k.isObject(t)&&k.extend(l,t),k.attr(l.el,"x-wade-uicomponent")||k.attr(l.el,"x-wade-uicomponent","select"),l._init(),l.constructor.call(l))};w.prototype=k.extend(new k.UIComponent,{handleEvent:function(e){switch(e.type){case c:this._transitionEnd(e)}},val:function(e){var t,l,i,n=this;if(e==undefined)return n.value;(f&&n.inputable&&(n.valSetter=!0),""==e&&n.inputable)?(n.el.value="",n.value="",n.textEl.value="",-1<n.selectedIndex&&k("li[idx="+n.selectedIndex+"]",n.listUlEl).removeClass("on"),n.selectedIndex=-1,n.ctrlIndex=-1):(k("li",n.listUlEl).each(function(){if(t=this,e==k.attr(t,"val"))return l=k.attr(t,"idx"),i=k.trim(k.text(t)),n.selectedIndex!=l&&(!0===n.inputable?k(n.textEl).val(i):k(n.textEl).text(i),n.el.value=e,n.value=e,k("li[idx="+n.selectedIndex+"]",n.listUlEl).removeClass("on"),k(t).addClass("on"),n.selectedIndex=l,n.selectedText=i),!1}),t=l=i=null);f&&n.inputable&&setTimeout(function(){n.valSetter=!1},300)},text:function(e){if(e==undefined)return this.selectedText},insert:function(e,t,l,i,n){var s=this;if((k.isNumeric(e)||k.isString(e))&&(k.isNumeric(t)||k.isString(t))){e=k.xss(e,!0),t=k.xss(t,!0),l&&(l=k.xss(l,!0));var a=s.listUlEl.getElementsByTagName("li"),r=a?a.length:0;a=null;var o='<li title="'+(l||"")+'" class="link" idx="'+r+'" val="'+t+'"><div class="main">'+e+"</div></li>";("before"==i||"after"==i)&&n&&n.nodeType?k(n)[i](o):"prepend"!=i&&"append"!=i||k(s.listUlEl)[i](o),o=null,1==s.visible&&s.refresh()}},before:function(e,t,l,i){this.insert(e,t,l,"before",i)},after:function(e,t,l,i){this.insert(e,t,l,"after",i)},prepend:function(e,t,l){this.insert(e,t,l,"prepend")},append:function(e,t,l){this.insert(e,t,l,"append")},remove:function(e){var t=this;if(undefined!=e&&null!=e){var l,i,n,s=0;k("li",t.listUlEl).each(function(){l=this,n||e!=k.attr(l,"val")||(i=k.attr(l,"idx"),n=!0,t.selectedIndex==i?(!0===t.inputable?k(t.textEl).val(""):k(t.textEl).text(""),t.el.value="",t.value="",t.selectedIndex=-1,t.selectedText=null):t.selectedIndex>i&&t.selectedIndex--,t.ctrlIndex=-1,k(l).remove()),n&&k.attr(l,"idx",s),s++}),l=i=n=s=null,1==t.visible&&t.refresh()}},empty:function(){var e=this;!0===e.inputable?k(e.textEl).val(""):k(e.textEl).text(""),e.el.value="",!(e.value="")!==e.addDefault?k(e.listUlEl).empty():(e.val(""),k("li",e.listUlEl).each(function(e){0<e?k(this).remove():this.className="link"})),e.selectedIndex=-1,e.ctrlIndex=-1,e.selectedText=null,1==e.visible&&e.refresh()},getDisabled:function(){return this.disabled},setDisabled:function(e){var t=this;t.spanEl&&t.spanEl.nodeType&&(t.disabled=!!e,setTimeout(function(){var e=t.spanEl.className?t.spanEl.className:"";t.disabled?(" "+e+" ").indexOf(" e_dis ")<0&&(t.spanEl.className=k.trim(e+" e_dis")):(e=k.trim((" "+e+" ").replace(/ e_dis /gi," ")),t.spanEl.className=e),t.inputable&&(t.textEl.disabled=t.disabled)},0))},show:function(e){var t=this;if(!0!==t.visible){var l=t.spanEl.className?t.spanEl.className:"";h&&t.inputable&&(" "+l+" ").indexOf(" e_select-fixed ")<0&&(t.spanEl.className=k.trim(l+" e_select-fixed")),t.floatEl.style.display="block",t.useTransform&&setTimeout(function(){t.scrollEl.style[a]=n+"transform",t.scrollEl.style[s]="translate(0,0)"+u},1),t.visible=!0,E=t.id}},hide:function(){var e=this;if(!1!==e.visible){var t=e.spanEl.className?e.spanEl.className:"";e.spanEl.className=k.trim((" "+t+" ").replace(/ e_select-fixed /gi," ")),e.useTransform?setTimeout(function(){e.scrollEl.style[a]=n+"transform",e.scrollEl.style[s]="translate(0,100%)"+u},1):e.floatEl.style.display="none",e.visible=!1,E==e.id&&(E=null)}},refresh:function(){var e=this;if(e.spanEl||(e.spanEl=k(e.el).parent("span.e_select:first")[0]),e.floatEl||(e.floatEl=C.getElementById(e.id+"_float")),e.scrollEl||(e.scrollEl=k(e.floatEl).children("div.content:first")[0]),e.listEl||(e.listEl=k(e.scrollEl).find("div.c_list:first")[0]),h)e.maxHeight=k.format.rem2px(4.8);else{var t=e.spanEl.getBoundingClientRect();e.spanLeft=t.left,e.spanTop=t.top,e.spanHeight=e.spanEl.offsetHeight,e.spanWidth=e.spanEl.offsetWidth;var l=e.spanTop,i=(e.spanLeft,C.body),n=i.offsetHeight-e.spanHeight-l;k.isNumber(i.scrollTop)&&(e.spanTop+=i.scrollTop-2),k.isNumber(i.scrollLeft)&&(e.spanLeft+=i.scrollLeft),e.dir=l<=n?"down":"up",e.maxHeight="down"==e.dir?n:l}e.floatEl.className&&e.floatEl.className;e.visible?e.listHeight=e.listEl.offsetHeight:(e.floatEl.style.left="-99999px",e.floatEl.style.top="-99999px",e.floatEl.style.display="block",e.listHeight=e.listEl.offsetHeight,e.floatEl.style.display="");var s=e.scrollHeight=Math.min(e.maxHeight,e.listHeight);if(e.scrollEl.style.height=s+"px",!h){if("right"==e.optionAlign&&e.optionWidth){var a=k.format.em2px(e.optionWidth);e.floatEl.style.left=e.spanLeft+e.spanWidth-a+"px"}else e.floatEl.style.left=e.spanLeft+"px";e.floatEl.style.top=("down"==e.dir?e.spanTop+e.spanHeight:e.spanTop-s)+"px",e.optionWidth||(e.floatEl.style.width=e.spanWidth+"px")}},destroy:function(){var e=this;e.listItems=null,e.useTransform&&e.floatEl&&e._unbind(c),e.scroller&&e.scroller.destroy(),e.floatEl&&k(e.floatEl).remove(),e.spanEl=null,e.textEl=null,e.floatEl=null,e.bgEl=null,e.scrollEl=null,e.listEl=null,e.listUlEl=null,e.el=null},_init:function(){var p=this;p.spanEl=k(p.el).parent("span.e_select:first")[0],p.textEl=k(p.spanEl).children("input[type=text]:first")[0],p.textEl&&p.textEl.nodeType||(p.textEl=k(p.spanEl).children("span:first")[0]),p.floatEl=C.getElementById(p.id+"_float"),p.bgEl=k(p.floatEl).children("div.bg:first")[0],p.scrollEl=k(p.floatEl).children("div.content:first")[0],p.listEl=k(p.scrollEl).find("div.c_list:first")[0],p.listUlEl=k(p.listEl).children("ul:first")[0];var e=k.attr(p.spanEl,"id");e||(e=p.id+"_span",k.attr(p.spanEl,"id",e)),k.attr(p.el,"x-visible-element",e),p.ctrlIndex=-1,p.itemCount=-1,p.selectedIndex==undefined&&(p.selectedIndex=-1),h&&(p.useTransform=d,(" "+p.listEl.className+" ").indexOf(" c_list-phone-col-1 ")<0&&(p.listEl.className=k.trim((p.listEl.className?p.listEl.className:"")+" c_list-phone-col-1"))),p.disabled&&p.setDisabled(!0),p.floatEl.style.display="none",p.optionWidth&&!p.floatEl.style.width&&(p.floatEl.style.width=p.optionWidth+"em"),p.useTransform&&(p.scrollEl.style[a]="none",p.scrollEl.style[l]="300ms",p.scrollEl.style[r]="ease-out",p.scrollEl.style[s]="translate(0,100%)"+u,p._bind(c)),p.inputable&&(p.listItems||(p.listItems=k.makeArray(p.listUlEl.getElementsByTagName("li")),p.itemCount=p.listItems.length),x?(k(p.textEl).bind(v,function(){p.textElStart=!0}),k(p.textEl).bind("input",function(e){p.disabled||p.isRunning||p.start()})):k(p.textEl).bind("keyup",function(e){p.disabled||(32==e.keyCode||8==e.keyCode||64<e.keyCode&&e.keyCode<91||47<e.keyCode&&e.keyCode<58||95<e.keyCode&&e.keyCode<106)&&(p.isRunning||p.start())}),h||k.os.pad||(k(p.textEl).bind("keydown",function(e){if(!p.disabled&&(13==e.keyCode||108==e.keyCode)){if(-1<p.ctrlIndex){if(p.ctrlIndex!=p.selectedIndex){var t=k("li[idx="+p.ctrlIndex+"]",p.listUlEl);if(t.length){var l=t.attr("val"),i=k.trim(t.text());!0===p.inputable?k(p.textEl).val(i):k(p.textEl).text(i),p.el.value=l,p.value=l,p.selectedIndex=p.ctrlIndex,p.selectedText=i,k.event.trigger("change",[i,l],p.el)}}p.hide()}return!1}}),k(p.textEl).bind("keyup",function(e){if(!p.disabled){if(37==e.keyCode||39==e.keyCode)return k(p.textEl).select(),!1;if(38==e.keyCode||40==e.keyCode){if(p.itemCount<=0)return;var t;if(p.ctrlIndex<0&&(p.ctrlIndex=p.selectedIndex),38==e.keyCode){if(t="up",0==p.ctrlIndex)return!1;p.ctrlIndex<0?p.ctrlIndex=p.itemCount-1:p.ctrlIndex--}else if(40==e.keyCode){if(t="down",p.ctrlIndex==p.itemCount-1)return!1;p.ctrlIndex<0?p.ctrlIndex=0:p.ctrlIndex++}var l=k("li[idx="+p.ctrlIndex+"]",p.listUlEl);if(l.length&&p.scroller){if("down"==t){var i=p.scrollEl.offsetHeight;i<(n=l[0].offsetTop+l[0].offsetHeight)&&p.scroller.scrollTo(0,i-n)}else if("up"==t){var n,s=p.scroller.y;(n=l[0].offsetTop)<Math.abs(s)&&p.scroller.scrollTo(0,0-n)}k("li[class*=on]",p.listUlEl).attr("className","link"),l.attr("className","link on")}return!1}}}))),k(p.bgEl).tap(function(){p.hide()}),k(p.spanEl).tap(function(e){p.disabled||(!h&&E&&E!=p.id&&_[E]&&_[E].hide(),p.refresh(),!h&&p.visible?p.hide():p.visible||(p.inputable&&p._resetSelected(),p.show()))}),k(p.listUlEl).tap(function(e){if(1!=p.disabled){var t=e.touch.el;e.originalEvent&&(e=k.event.fix(e.originalEvent));var l=e.target||t;if(l){var i;if(k.nodeName(l,"li")&&-1<(" "+l.className+" ").indexOf(" link ")&&(i=l),!i)for(var n=0,s=l.parentNode;n<5&&s&&s.nodeType;){if(k.nodeName(s,"li")&&-1<(" "+s.className+" ").indexOf(" link ")){i=s;break}s=s.parentNode,n++}var a=!1,r=p.selectedIndex,o=p.value,d=p.selectedText;if(i){var c=k.attr(i,"idx"),u=k.attr(i,"val"),f=k.trim(k(i).text());k.isNumeric(c)&&p.selectedIndex!=c&&(a=!0),a&&(p.selectedIndex=c,p.selectedText=f,!0===p.inputable?k(p.textEl).val(f):k(p.textEl).text(f),p.el.value=u,p.value=u,k("li[class$=on]",p.listUlEl).attr("className","link"),k.attr(i,"className","link on"))}p.ctrlIndex=-1,p.hide(),a&&!1===k.event.trigger({type:"change",originalEvent:e,context:p},null,p.el)&&(p.selectedIndex=r,p.selectedText=d,!0===p.inputable?k(p.textEl).val(d):k(p.textEl).text(d),p.el.value=o,p.value=o,k("li[class$=on]",p.listUlEl).attr("className","link"),k("li[idx="+r+"]",p.listUlEl).attr("className","link on"))}}}),k(_).bind("onorientationchange"in _?"orientationchange":"resize",p.id,function(e){var t=e?e.data:null;t&&k.isString(t)&&_[t]&&_[t].refresh()})},start:function(){var e=this;e.timer=setTimeout(function(){f&&!0===e.valSetter?e.valSetter=!1:(e.updateData(),e.textElStart=!1,e.isRunning=!1)},200),e.isRunning=!0},stop:function(){_.clearTimeout(this.timer),this.isRunning=!1},updateData:function(){var e=this;e.query=e.textEl.value;var t=e.query;h||k.validate.alerter.hide(),k.trim(t).length?(e.el.value=e.query,e._filterList()?(e.refresh(),h||e.show(),e.visible&&e.scroller&&e.scroller.refresh()):e.hide()):h||e.textElStart||e.hide()},_filterList:function(){var a=this;if(!(a.ItemCount<=0)){var r=h||"down"==a.dir?"asc":"desc";a.listItems.sort(function(e,t){var l=k(e).children("div .main").text(),i=k(t).children("div .main").text(),n=l.indexOf(a.query),s=i.indexOf(a.query);return"asc"==r?s<n?-1:n<s?1:0:s<n?1:n<s?-1:0});var o=!1;return k.each(a.listItems,function(e,t){var l=k(t).children("div .main"),i=l.text(),n=i.indexOf(a.query),s=t.getAttribute("idx");-1<n?(l.html(i.replace(new RegExp(a.query),'<span class="e_red">'+a.query+"</span>")),o||(o=!0)):l.text(i.replace(/<\/?.+?>/g,"")),a.selectedIndex!=undefined&&-1<a.selectedIndex&&a.selectedIndex==s&&s!=e&&(a.selectedIndex=e),t.setAttribute("idx",e),a.listUlEl.appendChild(t)}),a.ctrlIndex=-1,o&&(a.scroller?a.scroller.dirY&&("asc"==r?a.scroller.scrollTo(0,0-a.scroller.y):a.scroller.scrollTo(0,a.scroller.y)):h||k.os.pad||a.listHeight>a.scrollHeight&&setTimeout(function(){k(a.scrollEl).scrollTop("asc"==r?0:a.listHeight-a.scrollHeight)},0),k("li[class*=on]",a.listUlEl).attr("className","link"),k("li[idx="+("asc"==r?"0":a.listItems.length-1)+"]",a.listUlEl).attr("className","link on"),a.ctrlIndex=0),o||h||k.validate.alerter.one(a.textEl,k.lang.get("ui.component.select.tip.nonematch")),k.event.trigger("afterFilter",o,a.el),o}},_resetSelected:function(){var e=this;-1<e.ctrlIndex&&-1<e.selectedIndex&&e.ctrlIndex!=e.selectedIndex&&(k("li[idx="+e.ctrlIndex+"]",e.listUlEl).attr("className","link"),k("li[idx="+e.selectedIndex+"]",e.listUlEl).attr("className","link on"))},_bind:function(e,t,l){C.addEventListener&&(t||this.floatEl).addEventListener(e,this,!!l)},_unbind:function(e,t,l){C.removeEventListener&&(t||this.floatEl).removeEventListener(e,this,!!l)},_transitionEnd:function(e){var t=this,l=e.target;l&&l.nodeType&&(-1<(" "+(l.className?l.className:"")+" ").indexOf(" content ")&&(1==t.visible?t.scroller||!h&&!k.os.pad?t.scroller&&t.scroller.refresh():t.scroller=new k.Scroll(t.scrollEl):0==t.visible&&(t.floatEl.style.display="none")),l.style[a]="none")}}),k(function(){k(C.body).bind(v,function(e){if(e&&e.target&&E){for(var t=0,l=e.target,i=!1;t<50&&l&&l.nodeType&&l!=C.body;){var n=k.attr(l,"id");if(E==n||E+"_span"==n||E+"_float"==n){i=!0;break}l=l.parentNode,t++}!i&&_[E]&&_[E].hide()}}),o||k(C.body).bind("mousewheel",function(e){if(e&&e.target&&E){for(var t=0,l=e.target,i=!1;l!=C.body&&t<50;){if(l.nodeType&&k.attr(l,"id")==E+"_float"){i=!0;break}l=l.parentNode,t++}!i&&_[E]&&_[E].hide()}})}),k.extend(w,{append:function(e,t,l){return m(e,"append",t,l)},prepend:function(e,t,l){return m(e,"prepend",t,l)},before:function(e,t,l){return m(e,"before",t,l)},after:function(e,t,l){return m(e,"after",t,l)}}),i=null,_.Select=k.Select=w}function m(e,t,l,i){if(e&&k.isString(e)&&(e=C.getElementById(e)),e&&e.nodeType){var n=k.extend({},l);if(n.name&&k.isString(n.name)){if(n.id&&k.isString(n.id)||(n.id=n.name),!(_[n.id]&&_[n.id]instanceof w)){var s=n.className&&k.isString(n.className)?n.className:"e_select",a=n.style&&k.isString(n.style)?n.style:"",r=n.textField&&k.isString(n.textField)?n.textField:"TEXT",o=n.valueField&&k.isString(n.valueField)?n.valueField:"VALUE",d=n.titleField&&k.isString(n.titleField)?n.titleField:"TITLE",c=n.defaultText&&k.isString(n.defaultText)?n.defaultText:k.lang.get("ui.component.select.default-text"),u="",f=-1,p=[];if(p.push('\r\n<div id="'+n.id+'_float" class="c_float" style="'+(k.isNumeric(n.optionWidth)&&0<n.optionWidth?"width:"+n.optionWidth+"em;":"")+'display:none">'),p.push('\r\n<div class="bg"></div>'),p.push('\r\n<div class="content">\r\n<div class="c_scrollContent">'),p.push('\r\n<div class="c_list c_list-pc-s c_list-phone-line '+(k.isNumeric(n.optionColumn)&&1<n.optionColumn?" c_list-col-"+n.optionColumn+" ":"")+'">\r\n<ul>'),i&&i.length){var x=i instanceof Array,h=i instanceof k.DatasetList;if(x||h){if(!1!==n.addDefault&&!0!==n.inputable){var v={};v[r]=c,v[o]="",h?i.splice(0,0,new k.DataMap(v)):x&&i.splice(0,0,v)}var E,m,g,y,b,T,I=!1,N=0;k.each(i,function(e){if(g=h?i.get(e):i[e]){var l;if(y=h?g.get(r):g[r],b=h?g.get(o):g[o],T=h?g.get(d):g[d],0==N&&(E=y,m=b),T||(T=y),(I=f<0&&typeof n.value!=undefined&&null!=n.value&&""!=n.value&&n.value==b)&&(c=y,u=b,f=N),p.push('\r\n<li class="link'+(I?" on":"")+'" idx="'+N+'" title="'+T+'" val="'+b+'"'),n.attributeField&&k.isString(n.attributeField))k.each(n.attributeField.split(","),function(e,t){typeof(l=h?g.get(t):g[t])!=undefined&&p.push(" "+attr+'="'+k.xss(l)+'" ')});p.push(">"),p.push('\r\n<div class="main">'+y+"</div>"),p.push("\r\n</li>"),N++}}),!1!==n.addDefault&&!0!==n.inputable&&(h||x)&&i.splice(0,1)}}return p.push("\r\n</ul>\r\n</div>"),p.push("\r\n</div>\r\n</div>"),p.push("\r\n</div>"),k(C.body).append(p.join("")),!1===n.addDefault&&f<0&&(u=m,c=E),(p=[]).push('<span class="'+s+'"'+(a?' style="'+a+'" ':"")+">"),!0===n.inputable?p.push('<input type="text" autocomplete="off" name="'+n.name+'_TEXT" placeholder="'+k.lang.get("ui.component.select.textinput-placeholder")+'" '+(-1<f&&c?'"value="'+c+'"':"")+" />"):p.push("<span>"+c+"</span>"),p.push('<input type="hidden" x-wade-uicomponent="select" name="'+n.name+'" id="'+n.id+'" value="'+u+'" '+(n.desc&&k.isString(n.desc)?' desc="'+n.desc+'" ':"")+(n.nullable&&k.isString(n.nullable)?' nullable="'+n.nullable+'" ':"")+" />"),p.push("</span>"),k(e)[t](p.join("")),p=null,_[n.id]=new Wade.Select(n.id,{value:u,disabled:!0===n.disabled,inputable:!0===n.inputable,addDefault:!1!==n.addDefault,optionColumn:n.optionColumn?n.optionColumn:null,optionWidth:n.optionWidth?n.optionWidth:null,optionAlign:n.optionAlign?n.optionAlign:null,selectedIndex:f,defaultText:c,selectedText:c}),_[n.id]}MessageBox.error('Select component "'+n.id+'" is exist!')}}}function g(e){return""===t?e:(e=e.charAt(0).toUpperCase()+e.substr(1),t+e)}}(window.Wade,window,document);