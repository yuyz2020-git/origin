var SWFUpload;"function"==typeof SWFUpload&&(SWFUpload.prototype.initSettings=function(o){return function(t){"function"==typeof o&&o.call(this,t),this.refreshCookies(!1)}}(SWFUpload.prototype.initSettings),SWFUpload.prototype.refreshCookies=function(t){t===undefined&&(t=!0),t=!!t;var o,i,n,s,e,r=this.settings.post_params,p=document.cookie.split(";"),a=p.length;for(o=0;o<a;o++){for(i=p[o];" "===i.charAt(0);)i=i.substring(1,i.length);0<(n=i.indexOf("="))&&(s=i.substring(0,n),e=i.substring(n+1),r[s]=e)}t&&this.setPostParams(r)});