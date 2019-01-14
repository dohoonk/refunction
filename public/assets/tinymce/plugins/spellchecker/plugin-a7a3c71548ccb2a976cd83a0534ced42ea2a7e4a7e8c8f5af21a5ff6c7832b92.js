!function(){"use strict";function m(e){return e&&1===e.nodeType&&"false"===e.contentEditable}var g,c=function(e){var t=e,n=function(){return t};return{get:n,set:function(e){t=e},clone:function(){return c(n())}}},t=tinymce.util.Tools.resolve("tinymce.PluginManager"),a=function(e){return!(!/(^|[ ,])tinymcespellchecker([, ]|$)/.test(e.settings.plugins)||!t.get("tinymcespellchecker")||("undefined"!=typeof window.console&&window.console.log&&window.console.log("Spell Checker Pro is incompatible with Spell Checker plugin! Remove 'spellchecker' from the 'plugins' option."),0))},h=function(e){return e.getParam("spellchecker_languages","English=en,Danish=da,Dutch=nl,Finnish=fi,French=fr_FR,German=de,Italian=it,Polish=pl,Portuguese=pt_BR,Spanish=es,Swedish=sv")},l=function(e){var t=e.getParam("language","en");return e.getParam("spellchecker_language",t)},u=function(e){return e.getParam("spellchecker_rpc_url")},d=function(e){return e.getParam("spellchecker_callback")},s=function(e){var t=new RegExp('[^\\s!"#$%&()*+,-./:;<=>?@[\\]^_{|}`\xa7\xa9\xab\xae\xb1\xb6\xb7\xb8\xbb\xbc\xbd\xbe\xbf\xd7\xf7\xa4\u201d\u201c\u201e\xa0\u2002\u2003\u2009]+',"g");return e.getParam("spellchecker_wordchar_pattern",t)},p=tinymce.util.Tools.resolve("tinymce.util.Tools"),f=tinymce.util.Tools.resolve("tinymce.util.URI"),v=tinymce.util.Tools.resolve("tinymce.util.XHR"),x=function(e){return e.fire("SpellcheckStart")},o=function(e){return e.fire("SpellcheckEnd")},r=function(c,r){function n(e,t){if(!e[0])throw new Error("findAndReplaceDOMText cannot handle zero-length matches");return{start:e.index,end:e.index+e[0].length,text:e[0],data:t}}function o(e){var t=c.getElementsByTagName("*"),n=[];e="number"==typeof e?""+e:null;for(var r=0;r<t.length;r++){var o=t[r],i=o.getAttribute("data-mce-index");null!==i&&i.length&&-1!==o.className.indexOf("mce-spellchecker-word")&&(i!==e&&null!==e||n.push(o))}return n}function i(e){for(var t=u.length;t--;)if(u[t]===e)return t;return-1}function e(e){for(var t=0,n=u.length;t<n&&!1!==e(u[t],t);t++);return this}function t(e){var t,n,r=o(e?i(e):null);for(t=r.length;t--;)(n=r[t]).parentNode.insertBefore(n.firstChild,n),n.parentNode.removeChild(n);return this}function a(e){var t=o(i(e)),n=r.dom.createRng();return n.setStartBefore(t[0]),n.setEndAfter(t[t.length-1]),n}var l,s,f,g,h,u=[],v=r.dom;return f=r.schema.getBlockElements(),g=r.schema.getWhiteSpaceElements(),h=r.schema.getShortEndedElements(),{text:s=function d(e){var t;if(3===e.nodeType)return e.data;if(g[e.nodeName]&&!f[e.nodeName])return"";if(m(e))return"\n";if(t="",(f[e.nodeName]||h[e.nodeName])&&(t+="\n"),e=e.firstChild)for(;t+=d(e),e=e.nextSibling;);return t}(c),matches:u,each:e,filter:function(n){var r=[];return e(function(e,t){n(e,t)&&r.push(e)}),u=r,this},reset:function(){return u.splice(0,u.length),t(),this},matchFromElement:function(e){return u[e.getAttribute("data-mce-index")]},elementFromMatch:function(e){return o(i(e))[0]},find:function(e,t){if(s&&e.global)for(;l=e.exec(s);)u.push(n(l,t));return this},add:function(e,t,n){return u.push({start:e,end:e+t,text:s.substr(e,t),data:n}),this},wrap:function(e){return u.length&&function(e,t,n){var r,o,i,c,a,l=[],s=0,u=e,d=0;(t=t.slice(0)).sort(function(e,t){return e.start-t.start}),a=t.shift();e:for(;;){if((f[u.nodeName]||h[u.nodeName]||m(u))&&s++,3===u.nodeType&&(!o&&u.length+s>=a.end?(o=u,c=a.end-s):r&&l.push(u),!r&&u.length+s>a.start&&(r=u,i=a.start-s),s+=u.length),r&&o){if(u=n({startNode:r,startNodeIndex:i,endNode:o,endNodeIndex:c,innerNodes:l,match:a.text,matchIndex:d}),s-=o.length-c,o=r=null,l=[],d++,!(a=t.shift()))break}else if(g[u.nodeName]&&!f[u.nodeName]||!u.firstChild){if(u.nextSibling){u=u.nextSibling;continue}}else if(!m(u)){u=u.firstChild;continue}for(;;){if(u.nextSibling){u=u.nextSibling;break}if(u.parentNode===e)break e;u=u.parentNode}}}(c,u,function(o){function p(e,t){var n=u[t];n.stencil||(n.stencil=o(n));var r=n.stencil.cloneNode(!1);return r.setAttribute("data-mce-index",t),e&&r.appendChild(v.doc.createTextNode(e)),r}return function(e){var t,n,r,o=e.startNode,i=e.endNode,c=e.matchIndex,a=v.doc;if(o===i){var l=o;r=l.parentNode,0<e.startNodeIndex&&(t=a.createTextNode(l.data.substring(0,e.startNodeIndex)),r.insertBefore(t,l));var s=p(e.match,c);return r.insertBefore(s,l),e.endNodeIndex<l.length&&(n=a.createTextNode(l.data.substring(e.endNodeIndex)),r.insertBefore(n,l)),l.parentNode.removeChild(l),s}t=a.createTextNode(o.data.substring(0,e.startNodeIndex)),n=a.createTextNode(i.data.substring(e.endNodeIndex));for(var u=p(o.data.substring(e.startNodeIndex),c),d=0,f=e.innerNodes.length;d<f;++d){var g=e.innerNodes[d],h=p(g.data,c);g.parentNode.replaceChild(h,g)}var m=p(i.data.substring(0,e.endNodeIndex),c);return(r=o.parentNode).insertBefore(t,o),r.insertBefore(u,o),r.removeChild(o),(r=i.parentNode).insertBefore(m,i),r.insertBefore(n,i),r.removeChild(i),m}}(e)),this},unwrap:t,replace:function(e,t){var n=a(e);return n.deleteContents(),0<t.length&&n.insertNode(r.dom.doc.createTextNode(t)),n},rangeFromMatch:a,indexOf:i}},k=function(e,t){if(!t.get()){var n=r(e.getBody(),e);t.set(n)}return t.get()},N=function(e,t,n,r,o,i,c){var a,l,s;(d(e)||(a=e,l=t,s=n,function(e,t,n,r){var o={method:e,lang:s.get()},i="";o["addToDictionary"===e?"word":"text"]=t,p.each(o,function(e,t){i&&(i+="&"),i+=t+"="+encodeURIComponent(e)}),v.send({url:new f(l).toAbsolute(u(a)),type:"post",content_type:"application/x-www-form-urlencoded",data:i,success:function(e){if(e=JSON.parse(e))e.error?r(e.error):n(e);else{var t=a.translate("Server response wasn't proper JSON.");r(t)}},error:function(){var e=a.translate("The spelling service was not found: (")+u(a)+a.translate(")");r(e)}})})).call(e.plugins.spellchecker,r,o,i,c)},y=function(e,t,n){e.dom.select("span.mce-spellchecker-word").length||S(e,t,n)},S=function(e,t,n){var r=e.selection.getBookmark();if(k(e,n).reset(),e.selection.moveToBookmark(r),n.set(null),t.get())return t.set(!1),o(e),!0},w=function(e){var t=e.getAttribute("data-mce-index");return"number"==typeof t?""+t:t},b=function(t,e,n,r,o){var i,c;if("string"!=typeof o&&o.words?(c=!!o.dictionary,i=o.words):i=o,t.setProgressState(!1),function(e){for(var t in e)return!1;return!0}(i)){var a=t.translate("No misspellings found.");return t.notificationManager.open({text:a,type:"info"}),void e.set(!1)}r.set({suggestions:i,hasDictionarySupport:c});var l=t.selection.getBookmark();k(t,n).find(s(t)).filter(function(e){return!!i[e.text]}).wrap(function(e){return t.dom.create("span",{"class":"mce-spellchecker-word","data-mce-bogus":1,"data-mce-word":e.text})}),t.selection.moveToBookmark(l),e.set(!0),x(t)},T={spellcheck:function(t,e,n,r,o,i){S(t,n,r)||(t.setProgressState(!0),N(t,e,i,"spellcheck",k(t,r).text,function(e){b(t,n,r,o,e)},function(e){t.notificationManager.open({text:e,type:"error"}),t.setProgressState(!1),S(t,n,r)}),t.focus())},checkIfFinished:y,addToDictionary:function(t,e,n,r,o,i,c){t.setProgressState(!0),N(t,e,o,"addToDictionary",i,function(){t.setProgressState(!1),t.dom.remove(c,!0),y(t,n,r)},function(e){t.notificationManager.open({text:e,type:"error"}),t.setProgressState(!1)})},ignoreWord:function(t,e,n,r,o,i){t.selection.collapse(),i?p.each(t.dom.select("span.mce-spellchecker-word"),function(e){e.getAttribute("data-mce-word")===r&&t.dom.remove(e,!0)}):t.dom.remove(o,!0),y(t,e,n)},findSpansByIndex:function(e,t){var n,r=[];if((n=p.toArray(e.getBody().getElementsByTagName("span"))).length)for(var o=0;o<n.length;o++){var i=w(n[o]);null!==i&&i.length&&i===t.toString()&&r.push(n[o])}return r},getElmIndex:w,markErrors:b},B=function(t,n,r,o,e){return{getTextMatcher:function(){return o.get()},getWordCharPattern:function(){return s(t)},markErrors:function(e){T.markErrors(t,n,o,r,e)},getLanguage:function(){return e.get()}}},I=function(e,t,n,r,o,i){e.addCommand("mceSpellCheck",function(){T.spellcheck(e,t,n,r,o,i)})},E=function(n,e,r,t,o,i){var c,a,l,s,u=(l=n,c=p.map(h(l).split(","),function(e){return{name:(e=e.split("="))[0],value:e[1]}}),a=[],p.each(c,function(e){a.push({selectable:!0,text:e.name,data:e.value})}),a),d=function(){T.spellcheck(n,e,r,t,i,o)},f={tooltip:"Spellcheck",onclick:d,onPostRender:function(e){var t=e.control;n.on("SpellcheckStart SpellcheckEnd",function(){t.active(r.get())})}};1<u.length&&(f.type="splitbutton",f.menu=u,f.onshow=(s=o,function(e){var t=s.get();e.control.items().each(function(e){e.active(e.settings.data===t)})}),f.onselect=function(e){o.set(e.control.settings.data)}),n.addButton("spellchecker",f),n.addMenuItem("spellchecker",{text:"Spellcheck",context:"tools",onclick:d,selectable:!0,onPostRender:function(){var e=this;e.active(r.get()),n.on("SpellcheckStart SpellcheckEnd",function(){e.active(r.get())})}})},P=tinymce.util.Tools.resolve("tinymce.dom.DOMUtils"),C=tinymce.util.Tools.resolve("tinymce.ui.Factory"),D=function(o,i,c,a,l,s){o.on("click",function(e){var t=e.target;if("mce-spellchecker-word"===t.className){e.preventDefault();var n=T.findSpansByIndex(o,T.getElmIndex(t));if(0<n.length){var r=o.dom.createRng();r.setStartBefore(n[0]),r.setEndAfter(n[n.length-1]),o.selection.setRng(r),function(t,e,n,r,o,i,c,a){var l=[],s=n.get().suggestions[c];p.each(s,function(e){l.push({text:e,onclick:function(){t.insertContent(t.dom.encode(e)),t.dom.remove(a),T.checkIfFinished(t,r,o)}})}),l.push({text:"-"}),n.get().hasDictionarySupport&&l.push({text:"Add to Dictionary",onclick:function(){T.addToDictionary(t,e,r,o,i,c,a)}}),l.push.apply(l,[{text:"Ignore",onclick:function(){T.ignoreWord(t,r,o,c,a)}},{text:"Ignore all",onclick:function(){T.ignoreWord(t,r,o,c,a,!0)}}]),(g=C.create("menu",{items:l,context:"contextmenu",onautohide:function(e){-1!==e.target.className.indexOf("spellchecker")&&e.preventDefault()},onhide:function(){g.remove(),g=null}})).renderTo(document.body);var u=P.DOM.getPos(t.getContentAreaContainer()),d=t.dom.getPos(a[0]),f=t.dom.getRoot();"BODY"===f.nodeName?(d.x-=f.ownerDocument.documentElement.scrollLeft||f.scrollLeft,d.y-=f.ownerDocument.documentElement.scrollTop||f.scrollTop):(d.x-=f.scrollLeft,d.y-=f.scrollTop),u.x+=d.x,u.y+=d.y,g.moveTo(u.x,u.y+a[0].offsetHeight)}(o,i,c,a,l,s,t.getAttribute("data-mce-word"),n)}}})};t.add("spellchecker",function(e,t){if(!1===a(e)){var n=c(!1),r=c(l(e)),o=c(null),i=c(null);return E(e,t,n,o,r,i),D(e,t,i,n,o,r),I(e,t,n,o,i,r),B(e,n,i,o,r,t)}})}();