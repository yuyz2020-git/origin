/*!
 * popup component
 * http://www.wadecn.com/
 * auth:xiedx@asiainfo.com
 * Copyright 2015, WADE
 */
!function(c,m,v){"use strict";if(c&&"undefined"==typeof c.Popup){Math;var n=v.createElement("div").style,t=function(){for(var e="t,webkitT,MozT,msT,OT".split(","),t=0,i=e.length;t<i;t++)if(e[t]+"ransform"in n)return e[t].substr(0,e[t].length-1);return!1}(),y=t?"-"+t.toLowerCase()+"-":"",h=i("transform"),b=i("transitionProperty"),a=i("transitionDuration"),o=(i("transformOrigin"),i("transitionTimingFunction")),e=(i("transitionDelay"),i("perspective")in n),w=("undefined"!=typeof c.hasTouch&&c.hasTouch,!1!==t),p=(i("transition"),function(){if(!1===t)return!1;return{"":"transitionend",webkit:"webkitTransitionEnd",Moz:"transitionend",O:"otransitionend",ms:"MSTransitionEnd"}[t]}()),g=e?" translateZ(0)":"";n[h]=g;var u=Array.prototype.push,x=Array.prototype.splice,_=c.os.phone||!0===c.ratioPhone,T=Math.round(2857)/100,r=/^[1-9]{1}$/,d=/^[1-9]{1}$/,f=[],s=function(e,t){var i=this;i.el=e&&1==e.nodeType?e:v.getElementById(e),i.el&&i.el.nodeType&&(i.id=c.attr(i.el,"id"))&&(t&&c.isObject(t)&&c.extend(i,t),c.attr(i.el,"x-wade-uicomponent")||c.attr(i.el,"x-wade-uicomponent","popup"),i._init(),i.constructor.call(i))};s.prototype=c.extend(new c.UIComponent,{handleEvent:function(e){switch(e.type){case p:this._transitionEnd(e)}},show:function(e,t){var i=this;if(!0!==i.visible||t){var n;if(!0!==i.visible&&!0!==i.mask&&!0!==i.overlap)c.each(f,function(e,t){t!=i.id&&1==(n=m[t]).visible&&n.mask==i.mask&&n.hide()});var s=c("div[visible-snapshot=true]",i.el);s.attr("visible",!0),s.attr("visible-snapshot",!1),w?s.css("visibility","visible"):s.css("display",""),s=null,!1!==t&&(i.reset(),i._showItem(1,e),i._itemPath=[e]),i.el.style.zIndex=c.zIndexer.get(i.id),i.el.style.visibility="visible",w&&setTimeout(function(){i.el.style[b]=y+"transform",i.el.style[h]="translate(0,0)"+g},1),i.visible=!0,i.mask}},hide:function(){var e=this;if(!1!==e.visible&&!1!==c.event.trigger("hideAction",null,e.el)){if(c.zIndexer.remove(e.id),w)setTimeout(function(){e.el.style[b]=y+"transform",e.el.style[h]="translate(100%,0)"+g},1);else{e.el.style.visibility="hidden";var t=c("div[visible=true]",e.el);t.attr("visible",!1),t.attr("visible-snapshot",!0),t.css("display","none"),t=null}e.visible=!1}},reset:function(){var e=this,t=!0===e.visible?y+"transform":"none";e.isFull||e.isWide?w?(e.wrapper.style[b]=t,e.wrapper.style[h]="translate(0,0)"+g):e.wrapper.style.marginLeft="":e.isHalf?w?e.isHalfBg?(e.box.style[b]=y+"transform",e.box.style[h]="translate(0,0)"+g):(e.el.style[b]=y+"transform",e.el.style[h]="translate(0,0)"+g):(e.el.style.left="",e.box.style.left="",e.wrapper.style.marginLeft=""):_?w?(e.wrapper.style[b]=t,e.wrapper.style[h]="translate(0,0)"+g):e.wrapper.style.marginLeft="":w?(e.box.style[b]=t,e.box.style[h]="translate(0,0) "+g,e.wrapper.style[b]=y+"transform",e.wrapper.style[h]="translate(0,0)"+g):(e.box.style.left=T+"em",e.wrapper.style.marginLeft=""),e.level=1},forward:function(e,t){var i=this,n=null;e&&e.nodeType&&(n=S(e),parseInt(c.attr(n,"level")));var s=null,l=null;if(n)for(var r=0,a=n.nextSibling;r<20&&a;){if(a.nodeType&&c.nodeName(a,"div")&&-1<(" "+a.className+" ").indexOf(" c_popupGroup ")){s=a,l=parseInt(c.attr(a,"level"));break}a=a.nextSibling,r++}else l=i.level+1,s=i._findGroup(l);if(!(8<l)&&s){if(undefined==t&&(t=1),i._showItem(s,t),i.isFull||i.isWide)w?setTimeout(function(){i.wrapper.style[b]=y+"transform",i.wrapper.style[h]="translate(-"+12.5*(l-1)+"%,0)"+g},1):i.wrapper.style.marginLeft="-"+100*(l-1)+"%";else if(i.isHalf)w?_?setTimeout(function(){i.wrapper.style[b]=y+"transform",i.wrapper.style[h]="translate(-"+12.5*(l-1)+"%,0)"+g},1):(i.isHalfBg?2==l&&setTimeout(function(){i.box.style[b]=y+"transform",i.box.style[h]="translate(-50%,0)"+g},1):2==l&&setTimeout(function(){i.el.style[b]=y+"transform",i.el.style[h]="translate(-50%,0)"+g},1),3<=l&&setTimeout(function(){i.wrapper.style[b]=y+"transform",i.wrapper.style[h]="translate(-"+12.5*(l-2)+"%,0)"+g},1)):(i.isHalfBg?2==l&&(i.box.style.left="0"):2==l&&(i.el.style.left="0"),3<=l&&(i.wrapper.style.marginLeft="-"+50*(l-2)+"%"));else{_||2!=l||(w?setTimeout(function(){i.box.style[b]=y+"transform",i.box.style[h]="translate(-"+T+"em,0)"+g},1):i.box.style.left="0");var o=_?2:3;o<=l&&(w?setTimeout(function(){i.wrapper.style[b]=y+"transform",i.wrapper.style[h]="translate(-"+T*(l-o+1)+"em,0)"+g},1):i.wrapper.style.marginLeft="-"+T*(l-o+1)+"em")}i.level=l,i._itemPath[i.level-1]=t}},back:function(e,t,i,n){var s=this;c.isObject(t)&&(n=i,i=t,t=null);var l=s.level-1;if(l<1)s.hide();else{var r=null;if(e&&e.nodeType&&(r=S(e),parseInt(c.attr(r,"level"))),r){for(var a,o=r.childNodes,p=0;p<o.length;)1==(e=o[p]).nodeType&&c.nodeName(e,"div")&&-1<(" "+(a=e.className?e.className:"")+" ").indexOf(" c_popupItem ")&&-1<(" "+a+" ").indexOf(" c_popupItem-show ")&&(e.className=c.trim((" "+a+" ").replace(/ c_popupItem-show /g," "))),p++;e=a=null,t=o=null}var u=s._findGroup(l);if(u){t||(t=s._itemPath[l-1]);var d=s._showItem(u,t);if(s.isFull||s.isWide)w?setTimeout(function(){s.wrapper.style[b]=y+"transform",s.wrapper.style[h]="translate(-"+12.5*(l-1)+"%,0)"+g},1):s.wrapper.style.marginLeft="-"+100*(l-1)+"%";else if(s.isHalf)w?_?setTimeout(function(){s.wrapper.style[b]=y+"transform",s.wrapper.style[h]="translate(-"+12.5*(l-1)+"%,0)"+g},1):1==l?s.isHalfBg?setTimeout(function(){s.box.style[b]=y+"transform",s.box.style[h]="translate(0,0)"+g},1):setTimeout(function(){s.el.style[b]=y+"transform",s.el.style[h]="translate(0,0)"+g},1):2<=l&&setTimeout(function(){s.wrapper.style[b]=y+"transform",s.wrapper.style[h]="translate(-"+12.5*(l-2)+"%,0)"+g},1):1==l?s.isHalfBg?s.box.style.left="":s.el.style.left="":2<=l&&(s.wrapper.style.marginLeft="-"+50*(l-2)+"%");else{_||1!=l||(w?setTimeout(function(){s.box.style[b]=y+"transform",s.box.style[h]="translate(0,0) "+g},1):s.box.style.left=T+"em");var f=_?2:3;f-1<=l&&(w?setTimeout(function(){s.wrapper.style[b]=y+"transform",s.wrapper.style[h]="translate(-"+T*(l-f+1)+"em,0)"+g},1):s.wrapper.style.marginLeft="-"+T*(l-f+1)+"em")}s.level=l,x.call(s._itemPath,s._itemPath.length-1,1),B(d,i,n)}r=null,u=null}},append:function(e,t){if(e&&e.nodeType&&t&&c.isString(t)){var i=S(e);if(i){for(var n,s=parseInt(c.attr(i,"level")),l=0,r=i.nextSibling;l<10&&r;){if(r.nodeType&&c.nodeName(r,"div")&&-1<(" "+r.className+" ").indexOf(" c_popupGroup ")&&s+1==c.attr(r,"level")){n=r;break}r=r.nextSibling,l++}var a=this.id+"_group"+(s+1);if(n&&n.nodeType)c.attr(n,"id")||c.attr(n,"id",a);else c(this.wrapper).append('<div id="'+a+'" class="c_popupGroup" level="'+(s+1)+'"></div>'),n=v.getElementById(a);var o=a+"_item"+c.md5(t),p="frame_"+o,u=v.getElementById(o);u||(c(n).append('<div id="'+o+'" class="c_popupItem"></div>'),u=v.getElementById(o));var d=v.getElementById(p);if(!d){var f=[];f.push('<iframe id="'+p+'" style="width:100%;height:100%;display:none" frameborder="0"></iframe>'),f.push('<div id="'+p+'_loading" class="c_msg c_msg-full c_msg-loading">'),f.push('<div class="wrapper">'),f.push('<div class="emote"></div>'),f.push('<div class="info"><div class="text"><div class="title" id=id="'+p+'_loading_txt">loading</div></div></div>'),f.push("</div>"),f.push("</div>"),c(u).append(f.join("")),f=null,m[p]=new Wade.Frame(p,{autoInit:!1,title:t})}return i=d=u=n=null,o}}},getFrame:function(e){return m[e]},setPopupReturnValue:function(e,t,i){e&&(c.isPlainObject(e)&&(i=t),B(null,e,t,this.srcWindow?this.srcWindow:null),!1!==i&&this.hide(),c.event.trigger("afterAction",null,this.el))},destroy:function(){var e=this;c.zIndexer.remove(e.id),w&&e._unbind(p);var t=c.inArray(e.id,f);-1<t&&x.call(f,t,1),e._itemPath=[],e._itemPath=null,e.srcWindow=null,e.bg=null,e.wrapper=null,e.box=null,e.el=null},_init:function(){var e=this;e.level=1,e.bg=c(e.el).children("div.c_popupBg:first")[0],e.box=c(e.el).children("div.c_popupBox:first")[0],e.wrapper=c(e.el).find("div.c_popupWrapper:first")[0],u.call(f,e.id);var t=e.el.className?e.el.className:"";e.isHalf=-1<(" "+t+" ").indexOf(" c_popup-half "),e.isFull=-1<(" "+t+" ").indexOf(" c_popup-full "),e.isWide=-1<(" "+t+" ").indexOf(" c_popup-wide "),e.isHalfBg=-1<(" "+t+" ").indexOf(" c_popup-half-hasBg "),e.isDefShow=e.defaultShowItemId||-1<(" "+t+" ").indexOf(" c_popup-show "),e.isHalf&&!e.isHalfBg&&(e.mask=!1,c(e.bg).remove(),e.bg=null),e.bg&&e.bg.nodeType&&c(e.bg).tap(function(){var e=this.className?this.className:"";if(e&&!(" "+e+" ").indexOf(" c_popupBg ")){var t=c(this).parents("div.c_popup:first").attr("id");if(t){var i=m[t];i&&i instanceof c.Popup&&i.hide()}}});var i=e.wrapper.childNodes;if(i&&0<i.length)for(var n,s=0,l=0;s<i.length;)(n=i[s]).nodeType&&c.nodeName(n,"div")&&-1<(" "+n.className+" ").indexOf(" c_popupGroup ")&&(l++,c.attr(n,"level",l)),s++;i=null,e._itemPath=[],w&&(e.el.style[b]="none",e.el.style[a]="300ms",e.el.style[o]="ease-out",e.el.style[h]="translate(100%,0)"+g,e.box.style[b]="none",e.box.style[a]="300ms",e.box.style[o]="ease-out",e.box.style[h]="translate(0,0)"+g,e.wrapper.style[b]="none",e.wrapper.style[a]="300ms",e.wrapper.style[o]="ease-out",e.wrapper.style[h]="translate(0,0)"+g,e._bind(p));var r=e.defaultShowItemId;c("div.c_popupItem",e.el).each(function(){var e=c.attr(this,"id");e&&!r&&(r=e),-1<(" "+(this.className?this.className:"")+" ").indexOf(" c_popupItem-show ")&&this.setAttribute("visible-snapshot",!0),w?(this.style[b]="none",this.style[a]="300ms",this.style[o]="ease-out",this.style[h]="translate(0,0)"+g):(this.style.visibility="visible",this.style.display="none")}),r&&e.isDefShow&&e.show(r)},_findGroup:function(e){if(!r.test(e)&&!c.isString(e))return null;if(c.isNumber(e)&&(e<1||8<e))return null;var t=null;if(c.isNumber(e)){var i=this.wrapper.childNodes;if(i&&0<i.length)for(var n,s=0,l=0;s<i.length;){if((n=i[s]).nodeType&&c.nodeName(n,"div")&&-1<(" "+n.className+" ").indexOf(" c_popupGroup ")&&e==++l){t=n;break}s++}}else c.isString(e)&&(t=v.getElementById(e));return t},_showItem:function(e,t){if(d.test(t)||c.isString(t)){var i=e&&e.nodeType?e:this._findGroup(e);if(i&&i.nodeType){for(var n,s,l=c.attr(i,"level")==this.level,r=i.childNodes,a=0,o=0;a<r.length;)1==(s=r[a]).nodeType&&c.nodeName(s,"div")&&-1<(" "+(s.className?s.className:"")+" ").indexOf(" c_popupItem ")&&(o++,c.isNumber(t)&&o==t||c.isString(t)&&t==c.attr(s,"id")?((n=s).setAttribute("visible",!0),"visible"!=s.style.visibility&&(s.style.visibility="visible"),w||(s.style.display=""),w&&setTimeout(function(e){return function(){e.style[b]=l?y+"transform":"none",e.style[h]="translate(0,0)"+g}}(s),1),N(s,this.id),I(s),O(s)):(s.setAttribute("visible",!1),w&&!l?s.style.visibility="hidden":w||(s.style.display="none"),w&&setTimeout(function(e){return function(){e.style[b]=l?y+"transform":"none",e.style[h]="translate(100%,0)"+g}}(s),1))),a++;return n}}},_bind:function(e,t,i){v.addEventListener&&(t||this.el).addEventListener(e,this,!!i)},_unbind:function(e,t,i){v.removeEventListener&&(t||this.el).removeEventListener(e,this,!!i)},_transitionEnd:function(e){var t=e.target;if(t&&t.nodeType){var i=t.className?t.className:"";if(-1<(" "+i+" ").indexOf(" c_popup ")){if(0==this.visible){t.style.visibility="hidden";var n=c("div[visible=true]",this.el);n.attr("visible",!1),n.attr("visible-snapshot",!0),n.css("visibility","hidden"),n=null}}else-1<(" "+i+" ").indexOf(" c_popupBox ")||-1<(" "+i+" ").indexOf(" c_popupWrapper ")||-1<(" "+i+" ").indexOf(" c_popupItem ")&&"false"==t.getAttribute("visible")&&(t.style.visibility="hidden");-1<(" "+i+" ").indexOf(" c_popup ")&&(t.style[b]="none")}}}),c.extend(s,{back:function(i){var n=!1;return c.zIndexer.each(function(e,t){if(-1<c.inArray(t,f)&&m[t]&&m[t]instanceof s&&(void 0===i||1==i&&i==m[t].mask))return m[t].back(),!(n=!0)}),n}});var N=function(e,t){var i,n;c.Frame&&c.isFunction(c.Frame)&&c.Frame.prototype._init&&c("iframe[x-wade-uicomponent=frame]",e).each(function(){i=c.attr(this,"id"),(n=m[i])&&n instanceof c.Frame&&(n.setAttribute("popupId",t),!0!==n.inited?setTimeout("window['"+i+"'].init()",w?350:0):setTimeout("window['"+i+"'].adjust();",w?350:0))})},I=function(e){var t,i;c.Scroller&&c.isFunction(c.Scroller)&&c.Scroller.prototype._init&&c("div[x-wade-uicomponent=scroller]",e).each(function(){t=c.attr(this,"id"),(i=m[t])&&i instanceof c.Scroller&&setTimeout("window['"+t+"'].refresh()",w?350:0)})},O=function(e){var t,i;c.Table&&c.isFunction(c.Table)&&c.Table.prototype._init&&c("div[x-wade-uicomponent=table]",e).each(function(){t=c.attr(this,"id"),(i=m[t])&&i instanceof c.Table&&setTimeout("window['"+t+"'].adjust()",w?350:0)})},S=function(e){if(!e||!e.nodeType)return null;for(var t=0,i=e.parentNode;t<20&&i&&i.nodeType&&i!=v.body;){if(c.nodeName(i,"div")&&-1<(" "+i.className+" ").indexOf(" c_popupGroup "))return i;i=i.parentNode,t++}},B=function(e,t,i,n){var s=n||m,l=e?c("iframe[x-wade-uicomponent=frame]",e)[0]:null;if(l&&l.nodeType&&c.nodeName(l,"iframe")&&(s=l.contentWindow),s&&s.Wade&&s.$)if(c.isString(t))s.$("#"+t).val(i);else if(c.isPlainObject(t))for(var r in t)s.$("#"+r).val(t[r]);else if(c.isArray(t)&&t.length&&t.length%2==0)for(var a=0;a<t.length;a+=2){r=t[a];var o=t[a+1];r&&"undefined"!=r&&s.$("#"+r).val(o)}};n=null,m.Popup=c.Popup=s}function i(e){return""===t?e:(e=e.charAt(0).toUpperCase()+e.substr(1),t+e)}}(window.Wade,window,document);