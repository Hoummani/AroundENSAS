(window.webpackJsonp=window.webpackJsonp||[]).push([[11],{"0Ux2":function(t,e,n){"use strict";n.d(e,"b",function(){return l}),n.d(e,"a",function(){return i});var r=n("CcnG"),o=n("6fnK"),i=function(){function t(t){this._share=t,this.showIcon=!0,this.showText=!1,this.showCount=!1,this.size=this._share.config.size,this.theme=this._share.config.theme,this.count=new r.m,this.opened=new r.m,this.closed=new r.m}return Object.defineProperty(t.prototype,"createButton",{set:function(t){this.shareCount=0,this.button=t},enumerable:!0,configurable:!0}),Object.defineProperty(t.prototype,"setUrl",{set:function(t){this.shareCount=0,this.url=t},enumerable:!0,configurable:!0}),Object.defineProperty(t.prototype,"buttonClass",{get:function(){return"sb-button sb-"+this.theme},enumerable:!0,configurable:!0}),t.prototype.onCount=function(t){this.shareCount=t,this.count.emit(t)},t}(),l=function(){function t(){}return t.withConfig=function(e){return{ngModule:t,providers:[{provide:o.a,useValue:e}]}},t}()},"132j":function(t,e,n){"use strict";n.d(e,"a",function(){return i}),n.d(e,"b",function(){return u});var r=n("CcnG"),o=(n("sU9O"),n("Ip0R")),i=r.ob({encapsulation:0,styles:[".loader[_ngcontent-%COMP%]{box-sizing:border-box;-webkit-animation:2s ease-in-out infinite progress;animation:2s ease-in-out infinite progress;background:0 0/200px 100% no-repeat #eff1f6;background-image:linear-gradient(90deg,rgba(255,255,255,0),rgba(255,255,255,.6),rgba(255,255,255,0));border-radius:4px;width:100%;height:20px;display:inline-block;margin-bottom:10px}.loader[_ngcontent-%COMP%]:after, .loader[_ngcontent-%COMP%]:before{box-sizing:border-box}.loader.circle[_ngcontent-%COMP%]{width:40px;height:40px;margin:5px;border-radius:50%}@-webkit-keyframes progress{0%{background-position:-200px 0}100%{background-position:calc(200px + 100%) 0}}@keyframes progress{0%{background-position:-200px 0}100%{background-position:calc(200px + 100%) 0}}"],data:{}});function l(t){return r.Jb(0,[(t()(),r.qb(0,0,null,null,3,"span",[["class","loader"]],null,null,null,null,null)),r.pb(1,278528,null,0,o.j,[r.s,r.t,r.k,r.E],{klass:[0,"klass"],ngClass:[1,"ngClass"]},null),r.Cb(2,{circle:0}),r.pb(3,278528,null,0,o.o,[r.t,r.k,r.E],{ngStyle:[0,"ngStyle"]},null)],function(t,e){var n=e.component,r=t(e,2,0,"circle"===n.appearance);t(e,1,0,"loader",r),t(e,3,0,n.styles)},null)}function u(t){return r.Jb(0,[(t()(),r.hb(16777216,null,null,1,null,l)),r.pb(1,278528,null,0,o.k,[r.P,r.M,r.s],{ngForOf:[0,"ngForOf"]},null)],function(t,e){t(e,1,0,e.component.items)},null)}},"4ro/":function(t,e,n){"use strict";n.d(e,"a",function(){return r});var r=function(){return function(){this.text="",this.icon="alert"}}()},"6fnK":function(t,e,n){"use strict";n.d(e,"d",function(){return z}),n.d(e,"e",function(){return I}),n.d(e,"c",function(){return P}),n.d(e,"a",function(){return s}),n.d(e,"b",function(){return M});var r=n("26FU"),o=n("pugT"),i=n("67Y/"),l=n("mrSG"),u=n("CcnG"),s=new u.p("shareButtonsConfig"),a=function(){function t(t,e,n,r,o,i,l,u){this._props=t,this._url=e,this._http=n,this._platform=r,this._document=o,this._windowSize=i,this._disableButtonClick=l,this._logger=u,this._self=this,this.supportShareCount=!1}return Object.defineProperty(t.prototype,"text",{get:function(){return this._props.text},enumerable:!0,configurable:!0}),Object.defineProperty(t.prototype,"ariaLabel",{get:function(){return this._props.ariaLabel},enumerable:!0,configurable:!0}),Object.defineProperty(t.prototype,"color",{get:function(){return this._props.color},enumerable:!0,configurable:!0}),Object.defineProperty(t.prototype,"icon",{get:function(){return this._props.icon},enumerable:!0,configurable:!0}),Object.defineProperty(t.prototype,"desktop",{get:function(){},enumerable:!0,configurable:!0}),Object.defineProperty(t.prototype,"android",{get:function(){return this.desktop},enumerable:!0,configurable:!0}),Object.defineProperty(t.prototype,"ios",{get:function(){return this.desktop},enumerable:!0,configurable:!0}),Object.defineProperty(t.prototype,"sharerUrl",{get:function(){return this._platform.IOS?this.ios:this._platform.ANDROID?this.android:this.desktop},enumerable:!0,configurable:!0}),t.prototype.click=function(t){return this._open(this._serializeMetaTags(t))},t.prototype.shareCount=function(t){},t.prototype._serializeMetaTags=function(t){return Object.entries(this._supportedMetaTags).map(function(e){var n=Object(l.h)(e,2),r=n[0];return t[r]?n[1]+"="+encodeURIComponent(t[r]):""}).join("&")},t.prototype._open=function(t){var e=this;return new Promise(function(n){if(e.sharerUrl&&e._platform.isBrowser){var r=e.sharerUrl+t;e._logger(r);var o=e._document.defaultView.open(r,"newwindow",e._windowSize);if(o)var i=e._document.defaultView.setInterval(function(){o.closed&&(e._document.defaultView.clearInterval(i),n())},200)}else console.warn(e.text+" button is not compatible on this Platform")})},t}(),c=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a.supportShareCount=!0,a._supportedMetaTags={url:"u"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"https://www.facebook.com/sharer/sharer.php?"},enumerable:!0,configurable:!0}),e.prototype.shareCount=function(t){return this._http.get("https://graph.facebook.com?id="+t).pipe(Object(i.a)(function(t){return+t.share.share_count}))},e}(a),p=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={url:"url",description:"text",tags:"hashtags",via:"via"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"https://twitter.com/intent/tweet?"},enumerable:!0,configurable:!0}),e}(a),h=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={url:"url",title:"title",description:"summary"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"http://www.linkedin.com/shareArticle?"},enumerable:!0,configurable:!0}),e}(a),f=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={url:"url"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"https://plus.google.com/share?"},enumerable:!0,configurable:!0}),e}(a),d=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a.supportShareCount=!0,a._supportedMetaTags={url:"canonicalUrl",description:"caption",tags:"tags"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"http://tumblr.com/widgets/share/tool?"},enumerable:!0,configurable:!0}),e.prototype.shareCount=function(t){return this._http.jsonp("https://api.tumblr.com/v2/share/stats?url="+t,"callback").pipe(Object(i.a)(function(t){return+t.response.note_count}))},e}(a),b=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a.supportShareCount=!0,a._supportedMetaTags={url:"url",description:"description",image:"media"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"https://in.pinterest.com/pin/create/button/?"},enumerable:!0,configurable:!0}),e.prototype.click=function(t){if(t.image)return this._open(this._serializeMetaTags(t));console.warn("Pinterest button: image parameter is required!")},e.prototype.shareCount=function(t){return this._http.get("https://api.pinterest.com/v1/urls/count.json?url="+t,{responseType:"text"}).pipe(Object(i.a)(function(t){return JSON.parse(t.replace(/^receiveCount\((.*)\)/,"$1"))}),Object(i.a)(function(t){return+t.count}))},e}(a),g=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={url:"url",title:"title"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"http://www.reddit.com/submit?"},enumerable:!0,configurable:!0}),e}(a),m=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={url:"url"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"http://vk.com/share.php?"},enumerable:!0,configurable:!0}),e}(a),_=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={url:"url",description:"text"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"https://t.me/share/url?"},enumerable:!0,configurable:!0}),e}(a),w=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={url:"link"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"android",{get:function(){return"fb-messenger://share/?"},enumerable:!0,configurable:!0}),Object.defineProperty(e.prototype,"ios",{get:function(){return"fb-messenger://share/?"},enumerable:!0,configurable:!0}),e}(a),y=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={description:"text"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"https://wa.me/?"},enumerable:!0,configurable:!0}),Object.defineProperty(e.prototype,"android",{get:function(){return"whatsapp://send?"},enumerable:!0,configurable:!0}),e.prototype.click=function(t){t.description=t.description?t.description+"\r\n"+this._url():this._url();var e=this._serializeMetaTags(t);return this._open(e)},e}(a),v=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={url:"url"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"https://www.xing.com/app/user?op=share&"},enumerable:!0,configurable:!0}),e}(a),x=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={description:"body"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"sms:?"},enumerable:!0,configurable:!0}),Object.defineProperty(e.prototype,"android",{get:function(){return"sms:?"},enumerable:!0,configurable:!0}),Object.defineProperty(e.prototype,"ios",{get:function(){return"sms:&"},enumerable:!0,configurable:!0}),e.prototype.click=function(t){t.description=t.description?t.description+"\r\n"+this._url():this._url();var e=this._serializeMetaTags(t);return this._open(e)},e}(a),k=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={title:"subject",description:"body"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"mailto:?"},enumerable:!0,configurable:!0}),e.prototype.click=function(t){t.description=t.description?t.description+"\r\n"+this._url():this._url();var e=this._serializeMetaTags(t);return this._open(e)},e}(a),C=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a}return Object(l.d)(e,t),e.prototype.click=function(){var t=this;return new Promise(function(e){t._document.defaultView.print(),e()})},e}(a),O=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"text",{get:function(){return this._disable?this._props.extra.successLabel:this._props.text},enumerable:!0,configurable:!0}),Object.defineProperty(e.prototype,"icon",{get:function(){return this._disable?this._props.extra.successIcon:this._props.icon},enumerable:!0,configurable:!0}),e.prototype._disableButton=function(){this._disable=!0,this._disableButtonClick(!0)},e.prototype._resetButton=function(){this._disable=!1,this._disableButtonClick(!1)},e.prototype.click=function(){var t=this;return new Promise(function(e){try{var n=t._document.createElement("textarea");if(n.value=decodeURIComponent(t._url()),t._document.body.appendChild(n),t._platform.IOS){var r=t._document.createRange();r.selectNodeContents(n);var o=t._document.defaultView.getSelection();o.removeAllRanges(),o.addRange(r),n.readOnly=!0,n.setSelectionRange(0,999999)}else n.select();t._document.execCommand("copy"),t._document.body.removeChild(n),t._disableButton()}catch(i){console.warn("Copy link failed!",i.message)}finally{setTimeout(function(){return t._resetButton()},2e3),e()}})},e}(a),j=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={url:"url"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"https://mix.com/add?"},enumerable:!0,configurable:!0}),e}(a),S=function(t){function e(e,n,r,o,i,l,u,s){var a=t.call(this,e,n,r,o,i,l,u,s)||this;return a._props=e,a._url=n,a._http=r,a._platform=o,a._document=i,a._windowSize=l,a._disableButtonClick=u,a._logger=s,a._supportedMetaTags={url:"url"},a}return Object(l.d)(e,t),Object.defineProperty(e.prototype,"desktop",{get:function(){return"https://social-plugins.line.me/lineit/share?"},enumerable:!0,configurable:!0}),e}(a),B={facebook:{create:function(t,e,n,r,o,i,l,u){return new c(t,e,n,r,o,i,l,u)},text:"Facebook",icon:["fab","facebook-f"],color:"#4267B2",ariaLabel:"Share on Facebook"},twitter:{create:function(t,e,n,r,o,i,l,u){return new p(t,e,n,r,o,i,l,u)},text:"Twitter",icon:["fab","twitter"],color:"#00acee",ariaLabel:"Share on Twitter"},linkedin:{create:function(t,e,n,r,o,i,l,u){return new h(t,e,n,r,o,i,l,u)},text:"LinkedIn",icon:["fab","linkedin-in"],color:"#006fa6",ariaLabel:"Share on LinkedIn"},google:{create:function(t,e,n,r,o,i,l,u){return new f(t,e,n,r,o,i,l,u)},text:"Google+",icon:["fab","google-plus-g"],color:"#DB4437",ariaLabel:"Share on Google plus"},pinterest:{create:function(t,e,n,r,o,i,l,u){return new b(t,e,n,r,o,i,l,u)},text:"Pinterest",icon:["fab","pinterest-p"],color:"#BD091D",ariaLabel:"Share on Pinterest"},reddit:{create:function(t,e,n,r,o,i,l,u){return new g(t,e,n,r,o,i,l,u)},text:"Reddit",icon:["fab","reddit-alien"],color:"#FF4006",ariaLabel:"Share on Reddit"},tumblr:{create:function(t,e,n,r,o,i,l,u){return new d(t,e,n,r,o,i,l,u)},text:"Tumblr",icon:["fab","tumblr"],color:"#36465D",ariaLabel:"Share on Tumblr"},mix:{create:function(t,e,n,r,o,i,l,u){return new j(t,e,n,r,o,i,l,u)},text:"Mix",icon:["fab","mix"],color:"#ff8226",ariaLabel:"Share on Mix"},vk:{create:function(t,e,n,r,o,i,l,u){return new m(t,e,n,r,o,i,l,u)},text:"VKontakte",icon:["fab","vk"],color:"#4C75A3",ariaLabel:"Share on VKontakte"},telegram:{create:function(t,e,n,r,o,i,l,u){return new _(t,e,n,r,o,i,l,u)},text:"Telegram",icon:["fab","telegram-plane"],color:"#0088cc",ariaLabel:"Share on Telegram"},messenger:{create:function(t,e,n,r,o,i,l,u){return new w(t,e,n,r,o,i,l,u)},text:"Messenger",icon:["fab","facebook-messenger"],color:"#0080FF",ariaLabel:"Share on Messenger"},whatsapp:{create:function(t,e,n,r,o,i,l,u){return new y(t,e,n,r,o,i,l,u)},text:"WhatsApp",icon:["fab","whatsapp"],color:"#25D366",ariaLabel:"Share on WhatsApp"},xing:{create:function(t,e,n,r,o,i,l,u){return new v(t,e,n,r,o,i,l,u)},text:"Xing",icon:["fab","xing"],color:"#006567",ariaLabel:"Share on Xing"},line:{create:function(t,e,n,r,o,i,l,u){return new S(t,e,n,r,o,i,l,u)},text:"Line",icon:["fab","line"],color:"#00b900",ariaLabel:"Share on Line"},sms:{create:function(t,e,n,r,o,i,l,u){return new x(t,e,n,r,o,i,l,u)},text:"SMS",icon:"comment-alt",color:"#20c16c",ariaLabel:"Share link via SMS"},email:{create:function(t,e,n,r,o,i,l,u){return new k(t,e,n,r,o,i,l,u)},text:"Email",icon:"envelope",color:"#FF961C",ariaLabel:"Share link via email"},print:{create:function(t,e,n,r,o,i,l,u){return new C(t,e,n,r,o,i,l,u)},text:"Print",icon:"print",color:"#765AA2",ariaLabel:"Print page"},copy:{create:function(t,e,n,r,o,i,l,u){return new O(t,e,n,r,o,i,l,u)},text:"Copy link",icon:"link",color:"#607D8B",ariaLabel:"Copy link",extra:{successLabel:"Copied",successIcon:"check"}}};function T(t){return t&&"object"==typeof t&&!Array.isArray(t)}var I=function(){function t(t){this.config={prop:B,theme:"default",include:[],exclude:[],size:0,autoSetMeta:!0,windowWidth:800,windowHeight:500,moreButtonIcon:"ellipsis-h",lessButtonIcon:"minus"},this.config$=new r.a(this.config),t&&this.setConfig(t)}return Object.defineProperty(t.prototype,"prop",{get:function(){return this.config.prop},enumerable:!0,configurable:!0}),Object.defineProperty(t.prototype,"windowSize",{get:function(){return"width="+this.config.windowWidth+", height="+this.config.windowHeight},enumerable:!0,configurable:!0}),t.prototype.setConfig=function(t){this.config=function t(e){for(var n,r,o=[],i=1;i<arguments.length;i++)o[i-1]=arguments[i];if(!o.length)return e;var u=o.shift();if(T(e)&&T(u))for(var s in u)T(u[s])?(e[s]||Object.assign(e,((n={})[s]={},n)),t(e[s],u[s])):Object.assign(e,((r={})[s]=u[s],r));return t.apply(void 0,Object(l.i)([e],o))}(this.config,t),this.config$.next(this.config)},t.ngInjectableDef=Object(u.T)({factory:function(){return new t(Object(u.X)(s,8))},token:t,providedIn:"root"}),t}(),P=function(){function t(t,e,n,r,i,l,s,a){this._meta=t,this._el=e,this._http=n,this._platform=r,this._renderer=i,this._cd=l,this._share=s,this._document=a,this._shareWindowClosed=o.a.EMPTY,this.getCount=!1,this.autoSetMeta=this._share.config.autoSetMeta,this.url=this._share.config.url,this.title=this._share.config.title,this.description=this._share.config.description,this.image=this._share.config.image,this.tags=this._share.config.tags,this.count=new u.m,this.opened=new u.m,this.closed=new u.m}return t.prototype.share=function(){var t=this,e=this.autoSetMeta?{url:this.url,title:this.title||this._getMetaTagContent("og:title"),description:this.description||this._getMetaTagContent("og:description"),image:this.image||this._getMetaTagContent("og:image"),via:this._share.config.twitterAccount,tags:this.tags}:{url:this.url,title:this.title,description:this.description,image:this.image,tags:this.tags,via:this._share.config.twitterAccount};this.opened.emit(this.shareButtonName),this.shareButton.click(e).then(function(){return t.closed.emit(t.shareButtonName)})},t.prototype.ngOnChanges=function(t){var e=this;this._platform.isBrowser&&(this._shareButtonChanged(t.shareButtonName)&&this._createShareButton(),this._urlChanged(t.url)&&(this.url=function(t,e){if(t){if(/(http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/.test(t))return t;console.warn("[ShareButtons]: Sharing link '"+t+"' is invalid!")}return e}(this.autoSetMeta?this.url||this._getMetaTagContent("og:url"):this.url,this._document.defaultView.location.href),this.getCount&&this.shareButton.supportShareCount&&this.shareButton.shareCount(this.url).subscribe(function(t){return e.count.emit(t)})))},t.prototype.ngOnDestroy=function(){this._shareWindowClosed.unsubscribe()},t.prototype._createShareButton=function(){var t=this,e=this._share.config.prop[this.shareButtonName],n=e.create(e,function(){return t.url},this._http,this._platform,this._document,this._share.windowSize,function(e){t.pointerEvents=e?"none":"auto",t._cd.markForCheck()},function(e){return t._share.config.debug?console.log(e):null});n?(this.shareButton=n,this._renderer.removeClass(this._el.nativeElement,"sb-"+this._buttonClass),this._renderer.addClass(this._el.nativeElement,"sb-"+this.shareButtonName),this._el.nativeElement.style.setProperty("--button-color",this.shareButton.color),this._buttonClass=this.shareButtonName,this._renderer.setAttribute(this._el.nativeElement,"aria-label",n.ariaLabel)):console.error("[ShareButtons]: The share button '"+this.shareButtonName+"' does not exist!")},t.prototype._getMetaTagContent=function(t){var e=this._meta.getTag('property="'+t+'"');if(e)return e.getAttribute("content");var n=this._meta.getTag('name="'+t+'"');return n?n.getAttribute("content"):void 0},t.prototype._shareButtonChanged=function(t){return t&&(t.firstChange||t.previousValue!==t.currentValue)},t.prototype._urlChanged=function(t){return!this.url||t&&t.previousValue!==t.currentValue},t}(),M=function(){function t(){}return t.prototype.transform=function(t,e){return function(t,e){for(var n=[{value:1e9,symbol:"B"},{value:1e6,symbol:"M"},{value:1e3,symbol:"K"}],r=/\.0+$|(\.[0-9]*[1-9])0+$/,o=0;o<n.length;o++)if(t>=n[o].value)return(t/n[o].value).toFixed(e).replace(r,"$1")+n[o].symbol;return t.toFixed(e).replace(r,"$1")}(t,e)},t}(),z=function(){function t(){}return t.withConfig=function(e){return{ngModule:t,providers:[{provide:s,useValue:e}]}},t}()},"7asV":function(t,e,n){"use strict";n.d(e,"a",function(){return r}),n("ZZ/e");var r=function(){function t(t){this.modalCtrl=t}return t.prototype.ngOnInit=function(){},t.prototype.onDismiss=function(){this.modalCtrl.dismiss()},t}()},"Hf/j":function(t,e,n){"use strict";n.d(e,"f",function(){return m}),n.d(e,"a",function(){return p}),n.d(e,"b",function(){return c}),n.d(e,"c",function(){return h}),n.d(e,"e",function(){return b}),n.d(e,"d",function(){return g});var r=n("7O5W"),o=n("CcnG"),i=n("mrSG"),l=function(t,e){return void 0===e&&(e="fas"),null==t?null:void 0!==(n=t).prefix&&void 0!==n.iconName?t:Array.isArray(t)&&2===t.length?{prefix:t[0],iconName:t[1]}:"string"==typeof t?{prefix:e,iconName:t}:void 0;var n},u=function(t,e){var n;return Array.isArray(e)&&e.length>0||!Array.isArray(e)&&e?((n={})[t]=e,n):{}},s=function(t){var e,n=((e={"fa-spin":t.spin,"fa-pulse":t.pulse,"fa-fw":t.fixedWidth,"fa-border":t.border,"fa-li":t.listItem,"fa-inverse":t.inverse,"fa-layers-counter":t.counter,"fa-flip-horizontal":"horizontal"===t.flip||"both"===t.flip,"fa-flip-vertical":"vertical"===t.flip||"both"===t.flip})["fa-"+t.size]=null!==t.size,e["fa-rotate-"+t.rotate]=null!==t.rotate,e["fa-pull-"+t.pull]=null!==t.pull,e);return Object.keys(n).map(function(t){return n[t]?t:null}).filter(function(t){return t})},a='<svg class="'+r.a.replacementClass+'" viewBox="0 0 448 512"></svg>\x3c!--icon not found--\x3e',c=function(){function t(){this.defaultPrefix="fas"}return t.ngInjectableDef=Object(o.T)({factory:function(){return new t},token:t,providedIn:"root"}),t}(),p=function(){function t(t,e){this.sanitizer=t,this.iconService=e,this.classes=[]}return t.prototype.ngOnChanges=function(t){t&&(this.updateIconSpec(),this.updateParams(),this.updateIcon(),this.renderIcon())},t.prototype.updateIconSpec=function(){this.iconSpec=l(this.iconProp,this.iconService.defaultPrefix)},t.prototype.updateParams=function(){var t={flip:this.flip,spin:this.spin,pulse:this.pulse,border:this.border,inverse:this.inverse,listItem:this.listItem,size:this.size||null,pull:this.pull||null,rotate:this.rotate||null,fixedWidth:this.fixedWidth},e=u("classes",Object(i.i)(s(t),this.classes)),n=u("mask",l(this.mask,this.iconService.defaultPrefix)),o="string"==typeof this.transform?r.e.transform(this.transform):this.transform,a=u("transform",o);this.params=Object(i.a)({title:this.title},a,e,n,{styles:this.styles,symbol:this.symbol})},t.prototype.updateIcon=function(){this.icon=Object(r.c)(this.iconSpec,this.params)},t.prototype.renderIcon=function(){this.iconSpec||console.error("FontAwesome: Could not find icon. It looks like you've provided a null or undefined icon object to this component."),function(t,e){e&&!t&&console.error("FontAwesome: Could not find icon with iconName="+e.iconName+" and prefix="+e.prefix)}(this.icon,this.iconSpec),this.renderedIconHTML=this.sanitizer.bypassSecurityTrustHtml(this.icon?this.icon.html.join("\n"):a)},t}(),h=function(){function t(t,e){this.renderer=t,this.elementRef=e}return t.prototype.ngOnInit=function(){this.renderer.addClass(this.elementRef.nativeElement,"fa-layers")},t.prototype.ngOnChanges=function(t){"size"in t&&(null!=t.size.currentValue&&this.renderer.addClass(this.elementRef.nativeElement,"fa-"+t.size.currentValue),null!=t.size.previousValue&&this.renderer.removeClass(this.elementRef.nativeElement,"fa-"+t.size.previousValue))},t}(),f=function(t,e,n){t||console.error("FontAwesome: "+n+" should be used as child of "+e+" only.")},d=function(){function t(t,e){this.parent=t,this.sanitizer=e,this.classes=[],f(this.parent,"FaLayersComponent",this.constructor.name)}return t.prototype.ngOnChanges=function(t){t&&(this.updateParams(),this.updateContent())},t.prototype.updateContent=function(){this.renderedHTML=this.sanitizer.bypassSecurityTrustHtml(this.renderFontawesomeObject(this.content||"",this.params).html.join("\n"))},t}(),b=function(t){function e(){return null!==t&&t.apply(this,arguments)||this}return Object(i.d)(e,t),e.prototype.updateParams=function(){var t={flip:this.flip,spin:this.spin,pulse:this.pulse,border:this.border,inverse:this.inverse,listItem:this.listItem,size:this.size||null,pull:this.pull||null,rotate:this.rotate||null,fixedWidth:this.fixedWidth},e=u("classes",Object(i.i)(s(t),this.classes)),n="string"==typeof this.transform?r.e.transform(this.transform):this.transform,o=u("transform",n);this.params=Object(i.a)({},o,e,{title:this.title,styles:this.styles})},e.prototype.renderFontawesomeObject=function(t,e){return Object(r.f)(t,e)},e}(d),g=function(t){function e(){return null!==t&&t.apply(this,arguments)||this}return Object(i.d)(e,t),e.prototype.updateParams=function(){this.params={title:this.title,classes:this.classes,styles:this.styles}},e.prototype.renderFontawesomeObject=function(t,e){return Object(r.b)(t,e)},e}(d),m=function(){return function(){}}()},Hr7V:function(t,e,n){"use strict";n.d(e,"a",function(){return r});var r=function(){return function(){}}()},cUS3:function(t,e,n){"use strict";var r=n("CcnG"),o=n("oBZk"),i=n("ZZ/e"),l=n("A7o+"),u=n("0Ux2"),s=n("Ip0R"),a=n("dWZg"),c=n("6fnK"),p=n("Hf/j"),h=n("ZYjt"),f=r.ob({encapsulation:2,styles:[],data:{}});function d(t){return r.Jb(0,[],null,null)}var b=n("t/Na"),g=r.ob({encapsulation:0,styles:[".sb-button,   .sb-group{display:inline-flex;align-items:flex-start}  .sb-group{flex-wrap:wrap}  .sb-button{margin:.3125em}  .sb-wrapper{font-size:inherit;cursor:pointer;position:relative;outline:0;min-width:4.125em;height:2.5em;border:none;border-radius:1px;padding:0;line-height:2.571em;background-color:transparent}  .sb-wrapper .sb-count,   .sb-wrapper .sb-icon,   .sb-wrapper .sb-text{display:flex;align-items:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}  .sb-wrapper .sb-inner{display:flex;flex:1;width:100%;height:100%}  .sb-wrapper .sb-content{display:flex;height:100%;width:100%}  .sb-wrapper .sb-text{padding:0 .7em;flex:1;height:100%;white-space:nowrap}  .sb-wrapper .sb-icon{text-align:center;width:100%;height:100%;font-size:1.2em;min-width:2em}  .sb-wrapper .sb-count{font-size:.9em;padding:0 .7em}  .sb-wrapper .sb-count,   .sb-wrapper .sb-text{font-weight:700}  .sb-show-text .sb-icon{width:2em}  .sb-show-count{min-width:5.333em}"],data:{}});function m(t){return r.Jb(0,[(t()(),r.qb(0,0,null,null,2,"div",[["class","sb-icon"]],null,null,null,null,null)),(t()(),r.qb(1,0,null,null,1,"fa-icon",[["class","ng-fa-icon"]],[[8,"innerHTML",1]],null,null,d,f)),r.pb(2,573440,null,0,p.a,[h.c,p.b],{iconProp:[0,"iconProp"],fixedWidth:[1,"fixedWidth"]},null)],function(t,e){var n=e.component;t(e,2,0,n.icon||n.ref.shareButton.icon,!0)},function(t,e){t(e,1,0,r.Ab(e,2).renderedIconHTML)})}function _(t){return r.Jb(0,[(t()(),r.qb(0,0,null,null,1,"div",[["class","sb-text"]],null,null,null,null,null)),(t()(),r.Hb(1,null,[" "," "]))],null,function(t,e){var n=e.component;t(e,1,0,n.text||n.ref.shareButton.text)})}function w(t){return r.Jb(0,[(t()(),r.qb(0,0,null,null,3,"div",[["class","sb-count"]],null,null,null,null,null)),(t()(),r.qb(1,0,null,null,2,"span",[],null,null,null,null,null)),(t()(),r.Hb(2,null,["",""])),r.Db(3,1)],null,function(t,e){var n=e.component,o=r.Ib(e,2,0,t(e,3,0,r.Ab(e.parent,0),n.shareCount));t(e,2,0,o)})}function y(t){return r.Jb(2,[r.Bb(0,c.b,[]),r.Fb(402653184,1,{ref:0}),(t()(),r.qb(2,0,null,null,9,"button",[["class","sb-wrapper"]],[[2,"sb-show-icon",null],[2,"sb-show-text",null],[2,"sb-show-count",null],[4,"fontSize","px"],[4,"pointerEvents",null]],[[null,"count"],[null,"opened"],[null,"closed"],[null,"click"]],function(t,e,n){var o=!0,i=t.component;return"click"===e&&(o=!1!==r.Ab(t,3).share()&&o),"count"===e&&(o=!1!==i.onCount(n)&&o),"opened"===e&&(o=!1!==i.opened.emit(n)&&o),"closed"===e&&(o=!1!==i.closed.emit(n)&&o),o},null,null)),r.pb(3,671744,[[1,4]],0,c.c,[h.i,r.k,b.c,a.a,r.E,r.h,c.e,s.d],{shareButtonName:[0,"shareButtonName"],getCount:[1,"getCount"],autoSetMeta:[2,"autoSetMeta"],url:[3,"url"],title:[4,"title"],description:[5,"description"],image:[6,"image"],tags:[7,"tags"]},{count:"count",opened:"opened",closed:"closed"}),(t()(),r.qb(4,0,null,null,7,"div",[["class","sb-inner"]],null,null,null,null,null)),(t()(),r.qb(5,0,null,null,4,"div",[["class","sb-content"]],null,null,null,null,null)),(t()(),r.hb(16777216,null,null,1,null,m)),r.pb(7,16384,null,0,s.l,[r.P,r.M],{ngIf:[0,"ngIf"]},null),(t()(),r.hb(16777216,null,null,1,null,_)),r.pb(9,16384,null,0,s.l,[r.P,r.M],{ngIf:[0,"ngIf"]},null),(t()(),r.hb(16777216,null,null,1,null,w)),r.pb(11,16384,null,0,s.l,[r.P,r.M],{ngIf:[0,"ngIf"]},null)],function(t,e){var n=e.component;t(e,3,0,n.button,n.showCount,n.autoSetMeta,n.url,n.title,n.description,n.image,n.tags),t(e,7,0,n.showIcon&&n.ref.shareButton),t(e,9,0,n.showText&&n.ref.shareButton),t(e,11,0,n.showCount&&n.shareCount)},function(t,e){var n=e.component;t(e,2,0,n.showIcon,n.showText,n.showCount&&n.shareCount,14*(1+n.size/20),r.Ab(e,3).pointerEvents)})}var v=n("7asV");n.d(e,"a",function(){return O});var x=r.ob({encapsulation:0,styles:[[""]],data:{}});function k(t){return r.Jb(0,[(t()(),r.qb(0,0,null,null,9,"ion-header",[["no-border",""]],null,null,null,o.ib,o.p)),r.pb(1,49152,null,0,i.C,[r.h,r.k],null,null),(t()(),r.qb(2,0,null,0,7,"ion-toolbar",[],null,null,null,o.Lb,o.S)),r.pb(3,49152,null,0,i.Cb,[r.h,r.k],null,null),(t()(),r.qb(4,0,null,0,5,"ion-buttons",[["slot","end"]],null,null,null,o.X,o.e)),r.pb(5,49152,null,0,i.m,[r.h,r.k],null,null),(t()(),r.qb(6,0,null,0,3,"ion-button",[],null,[[null,"click"]],function(t,e,n){var r=!0;return"click"===e&&(r=!1!==t.component.onDismiss()&&r),r},o.W,o.d)),r.pb(7,49152,null,0,i.l,[r.h,r.k],null,null),(t()(),r.qb(8,0,null,0,1,"ion-icon",[["name","close"],["slot","icon-only"]],null,null,null,o.jb,o.q)),r.pb(9,49152,null,0,i.D,[r.h,r.k],{name:[0,"name"]},null),(t()(),r.qb(10,0,null,null,27,"ion-content",[["padding",""]],null,null,null,o.cb,o.j)),r.pb(11,49152,null,0,i.v,[r.h,r.k],null,null),(t()(),r.qb(12,0,null,0,25,"div",[["class","flex-center"]],null,null,null,null,null)),(t()(),r.qb(13,0,null,null,7,"ion-row",[["margin-bottom",""]],null,null,null,o.vb,o.C)),r.pb(14,49152,null,0,i.jb,[r.h,r.k],null,null),(t()(),r.qb(15,0,null,0,5,"ion-col",[["text-center",""]],null,null,null,o.bb,o.i)),r.pb(16,49152,null,0,i.u,[r.h,r.k],null,null),(t()(),r.qb(17,0,null,0,2,"h3",[["class","text-xlarge no-margin-top"]],null,null,null,null,null)),(t()(),r.Hb(18,null,["",""])),r.Bb(131072,l.i,[l.j,r.h]),(t()(),r.qb(20,0,null,0,0,"img",[["margin-top",""],["src","./assets/img/social-share.svg"],["width","300"]],null,null,null,null,null)),(t()(),r.qb(21,0,null,null,16,"ion-row",[],null,null,null,o.vb,o.C)),r.pb(22,49152,null,0,i.jb,[r.h,r.k],null,null),(t()(),r.qb(23,0,null,0,4,"ion-col",[["size","4"]],null,null,null,o.bb,o.i)),r.pb(24,49152,null,0,i.u,[r.h,r.k],{size:[0,"size"]},null),(t()(),r.qb(25,0,null,0,2,"share-button",[["button","facebook"]],[[8,"className",0]],null,null,y,g)),r.pb(26,49152,null,0,u.a,[c.e],{createButton:[0,"createButton"],showText:[1,"showText"],text:[2,"text"]},null),r.Bb(131072,l.i,[l.j,r.h]),(t()(),r.qb(28,0,null,0,4,"ion-col",[["size","4"]],null,null,null,o.bb,o.i)),r.pb(29,49152,null,0,i.u,[r.h,r.k],{size:[0,"size"]},null),(t()(),r.qb(30,0,null,0,2,"share-button",[["button","twitter"]],[[8,"className",0]],null,null,y,g)),r.pb(31,49152,null,0,u.a,[c.e],{createButton:[0,"createButton"],showText:[1,"showText"],text:[2,"text"]},null),r.Bb(131072,l.i,[l.j,r.h]),(t()(),r.qb(33,0,null,0,4,"ion-col",[["size","4"]],null,null,null,o.bb,o.i)),r.pb(34,49152,null,0,i.u,[r.h,r.k],{size:[0,"size"]},null),(t()(),r.qb(35,0,null,0,2,"share-button",[["button","whatsapp"]],[[8,"className",0]],null,null,y,g)),r.pb(36,49152,null,0,u.a,[c.e],{createButton:[0,"createButton"],showText:[1,"showText"],text:[2,"text"]},null),r.Bb(131072,l.i,[l.j,r.h])],function(t,e){t(e,9,0,"close"),t(e,24,0,"4"),t(e,26,0,"facebook",!0,r.Ib(e,26,2,r.Ab(e,27).transform("SHARE"))),t(e,29,0,"4"),t(e,31,0,"twitter",!0,r.Ib(e,31,2,r.Ab(e,32).transform("SHARE"))),t(e,34,0,"4"),t(e,36,0,"whatsapp",!0,r.Ib(e,36,2,r.Ab(e,37).transform("SHARE")))},function(t,e){t(e,18,0,r.Ib(e,18,0,r.Ab(e,19).transform("SHARE_THIS"))),t(e,25,0,r.Ab(e,26).buttonClass),t(e,30,0,r.Ab(e,31).buttonClass),t(e,35,0,r.Ab(e,36).buttonClass)})}function C(t){return r.Jb(0,[(t()(),r.qb(0,0,null,null,1,"app-share",[],null,null,null,k,x)),r.pb(1,114688,null,0,v.a,[i.Hb],null,null)],function(t,e){t(e,1,0)},null)}var O=r.mb("app-share",v.a,C,{},{},[])},dWZg:function(t,e,n){"use strict";n.d(e,"a",function(){return u}),n.d(e,"b",function(){return s}),n.d(e,"e",function(){return a}),n.d(e,"f",function(){return h}),n.d(e,"d",function(){return f}),n.d(e,"c",function(){return p});var r,o=n("CcnG"),i=n("Ip0R"),l="undefined"!=typeof Intl&&Intl.v8BreakIterator,u=function(){function t(t){this._platformId=t,this.isBrowser=this._platformId?Object(i.w)(this._platformId):"object"==typeof document&&!!document,this.EDGE=this.isBrowser&&/(edge)/i.test(navigator.userAgent),this.TRIDENT=this.isBrowser&&/(msie|trident)/i.test(navigator.userAgent),this.BLINK=this.isBrowser&&!(!window.chrome&&!l)&&"undefined"!=typeof CSS&&!this.EDGE&&!this.TRIDENT,this.WEBKIT=this.isBrowser&&/AppleWebKit/i.test(navigator.userAgent)&&!this.BLINK&&!this.EDGE&&!this.TRIDENT,this.IOS=this.isBrowser&&/iPad|iPhone|iPod/.test(navigator.userAgent)&&!("MSStream"in window),this.FIREFOX=this.isBrowser&&/(firefox|minefield)/i.test(navigator.userAgent),this.ANDROID=this.isBrowser&&/android/i.test(navigator.userAgent)&&!this.TRIDENT,this.SAFARI=this.isBrowser&&/safari/i.test(navigator.userAgent)&&this.WEBKIT}return t.ngInjectableDef=Object(o.T)({factory:function(){return new t(Object(o.X)(o.B,8))},token:t,providedIn:"root"}),t}(),s=function(){return function(){}}();function a(t){return function(){if(null==r&&"undefined"!=typeof window)try{window.addEventListener("test",null,Object.defineProperty({},"passive",{get:function(){return r=!0}}))}finally{r=r||!1}return r}()?t:!!t.capture}var c,p=function(){var t={NORMAL:0,NEGATED:1,INVERTED:2};return t[t.NORMAL]="NORMAL",t[t.NEGATED]="NEGATED",t[t.INVERTED]="INVERTED",t}();function h(){return!!("object"==typeof document&&"scrollBehavior"in document.documentElement.style)}function f(){if("object"!=typeof document||!document)return p.NORMAL;if(!c){var t=document.createElement("div"),e=t.style;t.dir="rtl",e.height="1px",e.width="1px",e.overflow="auto",e.visibility="hidden",e.pointerEvents="none",e.position="absolute";var n=document.createElement("div"),r=n.style;r.width="2px",r.height="1px",t.appendChild(n),document.body.appendChild(t),c=p.NORMAL,0===t.scrollLeft&&(t.scrollLeft=1,c=0===t.scrollLeft?p.NEGATED:p.INVERTED),t.parentNode.removeChild(t)}return c}},"j87/":function(t,e,n){"use strict";var r=n("CcnG"),o=n("oBZk"),i=n("ZZ/e");n("4ro/"),n.d(e,"a",function(){return l}),n.d(e,"b",function(){return u});var l=r.ob({encapsulation:0,styles:[["[_nghost-%COMP%]{display:flex;align-items:center;justify-content:center;text-align:center;height:100%}[_nghost-%COMP%]   .container[_ngcontent-%COMP%]   ion-icon[_ngcontent-%COMP%]{font-size:64px}"]],data:{}});function u(t){return r.Jb(0,[(t()(),r.qb(0,0,null,null,6,"div",[["class","container"]],null,null,null,null,null)),(t()(),r.qb(1,0,null,null,1,"ion-icon",[["color","medium"]],null,null,null,o.jb,o.q)),r.pb(2,49152,null,0,i.D,[r.h,r.k],{color:[0,"color"],name:[1,"name"]},null),(t()(),r.qb(3,0,null,null,3,"ion-text",[["color","medium"]],null,null,null,o.Hb,o.O)),r.pb(4,49152,null,0,i.xb,[r.h,r.k],{color:[0,"color"]},null),(t()(),r.qb(5,0,null,0,1,"p",[],null,null,null,null,null)),(t()(),r.Hb(6,null,["",""]))],function(t,e){t(e,2,0,"medium",e.component.icon),t(e,4,0,"medium")},function(t,e){t(e,6,0,e.component.text)})}}}]);