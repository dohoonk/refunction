!function(){"use strict";var e=function(t){var n=t,l=function(){return n};return{get:l,set:function(e){n=e},clone:function(){return e(l())}}},t=tinymce.util.Tools.resolve("tinymce.PluginManager"),n=tinymce.util.Tools.resolve("tinymce.util.Tools"),l=tinymce.util.Tools.resolve("tinymce.html.DomParser"),i=tinymce.util.Tools.resolve("tinymce.html.Node"),r=tinymce.util.Tools.resolve("tinymce.html.Serializer"),o=function(e){return e.getParam("fullpage_hide_in_source_view")},a=function(e){return e.getParam("fullpage_default_xml_pi")},c=function(e){return e.getParam("fullpage_default_encoding")},s=function(e){return e.getParam("fullpage_default_font_family")},u=function(e){return e.getParam("fullpage_default_font_size")},d=function(e){return e.getParam("fullpage_default_text_color")},f=function(e){return e.getParam("fullpage_default_title")},g=function(e){return e.getParam("fullpage_default_doctype","<!DOCTYPE html>")},m=function(e){return l({validate:!1,root_name:"#document"}).parse(e)},h=m,p=function(e,t){function l(e,t){return e.attr(t)||""}var i,r,o=m(t),a={};return a.fontface=s(e),a.fontsize=u(e),7===(i=o.firstChild).type&&(a.xml_pi=!0,(r=/encoding="([^"]+)"/.exec(i.value))&&(a.docencoding=r[1])),(i=o.getAll("#doctype")[0])&&(a.doctype="<!DOCTYPE"+i.value+">"),(i=o.getAll("title")[0])&&i.firstChild&&(a.title=i.firstChild.value),n.each(o.getAll("meta"),function(e){var t,n=e.attr("name"),l=e.attr("http-equiv");n?a[n.toLowerCase()]=e.attr("content"):"Content-Type"===l&&(t=/charset\s*=\s*(.*)\s*/gi.exec(e.attr("content")))&&(a.docencoding=t[1])}),(i=o.getAll("html")[0])&&(a.langcode=l(i,"lang")||l(i,"xml:lang")),a.stylesheets=[],n.each(o.getAll("link"),function(e){"stylesheet"===e.attr("rel")&&a.stylesheets.push(e.attr("href"))}),(i=o.getAll("body")[0])&&(a.langdir=l(i,"dir"),a.style=l(i,"style"),a.visited_color=l(i,"vlink"),a.link_color=l(i,"link"),a.active_color=l(i,"alink")),a},y=function(e,t,l){function o(e,t,n){e.attr(t,n||undefined)}function a(e){s.firstChild?s.insert(e,s.firstChild):s.append(e)}var c,s,u,d,f,g=e.dom;c=m(l),(s=c.getAll("head")[0])||(d=c.getAll("html")[0],s=new i("head",1),d.firstChild?d.insert(s,d.firstChild,!0):d.append(s)),d=c.firstChild,t.xml_pi?(f='version="1.0"',t.docencoding&&(f+=' encoding="'+t.docencoding+'"'),7!==d.type&&(d=new i("xml",7),c.insert(d,c.firstChild,!0)),d.value=f):d&&7===d.type&&d.remove(),d=c.getAll("#doctype")[0],t.doctype?(d||(d=new i("#doctype",10),t.xml_pi?c.insert(d,c.firstChild):a(d)),d.value=t.doctype.substring(9,t.doctype.length-1)):d&&d.remove(),d=null,n.each(c.getAll("meta"),function(e){"Content-Type"===e.attr("http-equiv")&&(d=e)}),t.docencoding?(d||((d=new i("meta",1)).attr("http-equiv","Content-Type"),d.shortEnded=!0,a(d)),d.attr("content","text/html; charset="+t.docencoding)):d&&d.remove(),d=c.getAll("title")[0],t.title?(d?d.empty():a(d=new i("title",1)),d.append(new i("#text",3)).value=t.title):d&&d.remove(),n.each("keywords,description,author,copyright,robots".split(","),function(e){var n,l,r=c.getAll("meta"),o=t[e];for(n=0;n<r.length;n++)if((l=r[n]).attr("name")===e)return void(o?l.attr("content",o):l.remove());o&&((d=new i("meta",1)).attr("name",e),d.attr("content",o),d.shortEnded=!0,a(d))});var h={};return n.each(c.getAll("link"),function(e){"stylesheet"===e.attr("rel")&&(h[e.attr("href")]=e)}),n.each(t.stylesheets,function(e){h[e]||((d=new i("link",1)).attr({rel:"stylesheet",text:"text/css",href:e}),d.shortEnded=!0,a(d)),delete h[e]}),n.each(h,function(e){e.remove()}),(d=c.getAll("body")[0])&&(o(d,"dir",t.langdir),o(d,"style",t.style),o(d,"vlink",t.visited_color),o(d,"link",t.link_color),o(d,"alink",t.active_color),g.setAttribs(e.getBody(),{style:t.style,dir:t.dir,vLink:t.visited_color,link:t.link_color,aLink:t.active_color})),(d=c.getAll("html")[0])&&(o(d,"lang",t.langcode),o(d,"xml:lang",t.langcode)),s.firstChild||s.remove(),(u=r({validate:!1,indent:!0,apply_source_formatting:!0,indent_before:"head,html,body,meta,title,script,link,style",indent_after:"head,html,body,meta,title,script,link,style"}).serialize(c)).substring(0,u.indexOf("</body>"))},v=function(e,t){var l=p(e,t.get());e.windowManager.open({title:"Document properties",data:l,defaults:{type:"textbox",size:40},body:[{name:"title",label:"Title"},{name:"keywords",label:"Keywords"},{name:"description",label:"Description"},{name:"robots",label:"Robots"},{name:"author",label:"Author"},{name:"docencoding",label:"Encoding"}],onSubmit:function(i){var r=y(e,n.extend(l,i.data),t.get());t.set(r)}})},_=function(e,t){e.addCommand("mceFullPageProperties",function(){v(e,t)})},b=function(e,t){return n.each(e,function(e){t=t.replace(e,function(e){return"<!--mce:protected "+escape(e)+"-->"})}),t},x=function(e){return e.replace(/<!--mce:protected ([\s\S]*?)-->/g,function(e,t){return unescape(t)})},k=n.each,C=function(e){return e.replace(/<\/?[A-Z]+/g,function(e){return e.toLowerCase()})},A=function(e){var t,n="",l="";a(e)&&(n+='<?xml version="1.0" encoding="'+(c(e)||"ISO-8859-1")+'" ?>\n');return n+=g(e),n+="\n<html>\n<head>\n",(t=f(e))&&(n+="<title>"+t+"</title>\n"),(t=c(e))&&(n+='<meta http-equiv="Content-Type" content="text/html; charset='+t+'" />\n'),(t=s(e))&&(l+="font-family: "+t+";"),(t=u(e))&&(l+="font-size: "+t+";"),(t=d(e))&&(l+="color: "+t+";"),n+"</head>\n<body"+(l?' style="'+l+'"':"")+">\n"},w=function(e,t,l){e.on("BeforeSetContent",function(i){!function(e,t,l,i){var r,a,c,s,u,d="",f=e.dom;if(!(i.selection||(c=b(e.settings.protect,i.content),"raw"===i.format&&t.get()||i.source_view&&o(e)))){0!==c.length||i.source_view||(c=n.trim(t.get())+"\n"+n.trim(c)+"\n"+n.trim(l.get())),-1!==(r=(c=c.replace(/<(\/?)BODY/gi,"<$1body")).indexOf("<body"))?(r=c.indexOf(">",r),t.set(C(c.substring(0,r+1))),-1===(a=c.indexOf("</body",r))&&(a=c.length),i.content=n.trim(c.substring(r+1,a)),l.set(C(c.substring(a)))):(t.set(A(e)),l.set("\n</body>\n</html>")),s=h(t.get()),k(s.getAll("style"),function(e){e.firstChild&&(d+=e.firstChild.value)}),(u=s.getAll("body")[0])&&f.setAttribs(e.getBody(),{style:u.attr("style")||"",dir:u.attr("dir")||"",vLink:u.attr("vlink")||"",link:u.attr("link")||"",aLink:u.attr("alink")||""}),f.remove("fullpage_styles");var g=e.getDoc().getElementsByTagName("head")[0];d&&(f.add(g,"style",{id:"fullpage_styles"},d),(u=f.get("fullpage_styles")).styleSheet&&(u.styleSheet.cssText=d));var m={};n.each(g.getElementsByTagName("link"),function(e){"stylesheet"===e.rel&&e.getAttribute("data-mce-fullpage")&&(m[e.href]=e)}),n.each(s.getAll("link"),function(e){var t=e.attr("href");if(!t)return!0;m[t]||"stylesheet"!==e.attr("rel")||f.add(g,"link",{rel:"stylesheet",text:"text/css",href:t,"data-mce-fullpage":"1"}),delete m[t]}),n.each(m,function(e){e.parentNode.removeChild(e)})}}(e,t,l,i)}),e.on("GetContent",function(i){var r,a,c,s;r=e,a=t.get(),c=l.get(),(s=i).selection||s.source_view&&o(r)||(s.content=x(n.trim(a)+"\n"+n.trim(s.content)+"\n"+n.trim(c)))})},P=function(e){e.addButton("fullpage",{title:"Document properties",cmd:"mceFullPageProperties"}),e.addMenuItem("fullpage",{text:"Document properties",cmd:"mceFullPageProperties",context:"file"})};t.add("fullpage",function(t){var n=e(""),l=e("");_(t,n),P(t),w(t,n,l)})}();