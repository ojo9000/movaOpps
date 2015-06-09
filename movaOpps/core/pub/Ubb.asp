<%
function ChkBadWords(fString)
    bwords = split(BadWords, "|")
    for i = 0 to ubound(bwords)
        fString = Replace(fString, bwords(i), string(len(bwords(i)),"*"), 1,-1,1) 
    next
    ChkBadWords = fString
end function

function HTMLEncode(fString)
    if fString<>"" then
	    fString = replace(fString, ">", "&gt;")
	    fString = replace(fString, "<", "&lt;")    
	    fString = Replace(fString, CHR(13), "<br>")
	    fString = Replace(fString, CHR(10) & CHR(10), "</P><P>")
	    fString = Replace(fString, CHR(10), "")
	    fString = Replace(fString, CHR(32), "&nbsp;")
    end if
    HTMLEncode = fString
end function

function HTMLDecode(fString)

    fString = replace(fString, "&gt;", ">")
    fString = replace(fString, "&lt;", "<")

    fString = Replace(fString, "", CHR(13))
    fString = Replace(fString, "</P><P>", CHR(10) & CHR(10))
    fString = Replace(fString, "<BR>", CHR(10))
    HTMLDecode = fString
end function

'function HTMLDecode1(fString)
    'fString = replace(fString, "&gt;", ">")
    'fString = replace(fString, "&lt;", "<")
    'fString = Replace(fString, "", CHR(13))
    'fString = Replace(fString, "</P><P>", CHR(10) & CHR(10))
    'fString = Replace(fString, "<BR>", CHR(10))
    'HTMLDecode1 = fString
'end function

function AutoLink(Cvb_strContent)
       dim strContent
       strContent=Cvb_strContent
       '允许开关
       strIMGInPosts=1
       strflash = 1
       strIcons = 1
       
       if strContent<>"" then	    	
	  	  
	    if strAllowHTML <> 1 then
	        strContent = HTMLEncode(strContent)
	    end if
	    
	    dim re
	    Set re=new RegExp
	    re.IgnoreCase =true
	    re.Global=True
	
	    if strIMGInPosts = "1" then
	    	re.Pattern="(\[IMG\])(.[^\]]*)(\[\/IMG\])"
	    	strContent=re.Replace(strContent,"<IMG SRC=""$2"" border=0>")
	    end if
	
	    re.Pattern="\[DIR=*([0-9]*),*([0-9]*)\](.[^\]]*)\[\/DIR]"
	    strContent=re.Replace(strContent,"<object classid=clsid:166B1BCA-3F9C-11CF-8075-444553540000 codebase=http://download.macromedia.com/pub/shockwave/cabs/director/sw.cab#version=7,0,2,0 width=$1 height=$2><param name=src value=$3><embed src=$3 pluginspage=http://www.macromedia.com/shockwave/download/ width=$1 height=$2></embed></object>")
	    re.Pattern="\[QT=*([0-9]*),*([0-9]*)\](.[^\]]*)\[\/QT]"
	    strContent=re.Replace(strContent,"<embed src=$3 width=$1 height=$2 autoplay=true loop=false controller=true playeveryframe=false cache=false scale=TOFIT bgcolor=#000000 kioskmode=false targetcache=false pluginspage=http://www.apple.com/quicktime/>")
	    re.Pattern="\[MP=*([0-9]*),*([0-9]*)\](.[^\]]*)\[\/MP]"
	    strContent=re.Replace(strContent,"<object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=$1 height=$2 ><param name=ShowStatusBar value=-1><param name=Filename value=$3><embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=$3  width=$1 height=$2></embed></object>")
	    re.Pattern="\[RM=*([0-9]*),*([0-9]*)\](.[^\]]*)\[\/RM]"
	    strContent=re.Replace(strContent,"<OBJECT classid=clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA class=OBJECT id=RAOCX width=$1 height=$2><PARAM NAME=SRC VALUE=$3><PARAM NAME=CONSOLE VALUE=Clip1><PARAM NAME=CONTROLS VALUE=imagewindow><PARAM NAME=AUTOSTART VALUE=true></OBJECT><br><OBJECT classid=CLSID:CFCDAA03-8BE4-11CF-B84B-0020AFBBCCFA height=32 id=video2 width=$1><PARAM NAME=SRC VALUE=$3><PARAM NAME=AUTOSTART VALUE=-1><PARAM NAME=CONTROLS VALUE=controlpanel><PARAM NAME=CONSOLE VALUE=Clip1></OBJECT>")
	
	    if strflash= "1" then
	    	re.Pattern="(\[FLASH\])(.[^\]]*)(\[\/FLASH\])"
	    	strContent= re.Replace(strContent,"<OBJECT codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0 classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 width=280 height=228><PARAM NAME=movie VALUE=""$2""><PARAM NAME=quality VALUE=high><embed src=""$2"" quality=high pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash' type='application/x-shockwave-flash' width=280 height=228>$2</embed></OBJECT>")
	    end if
	
	    re.Pattern="(\[ZIP\])(.[^\]]*)(\[\/ZIP\])"
	    strContent=re.Replace(strContent,"<br><IMG SRC=pic/zip.gif border=0> <a href=""$2"">点击下载该文件</a>")
	    re.Pattern="(\[RAR\])(.[^\]]*)(\[\/RAR\])"
	    strContent=re.Replace(strContent,"<br><IMG SRC=pic/rar.gif border=0> <a href=""$2"">点击下载该文件</a>")
	    re.Pattern="(\[UPLOAD=(.[^\]]*)\])(.[^\]]*)(\[\/UPLOAD\])"
	    strContent= re.Replace(strContent,"<IMG SRC=""pic/$2.gif"" border=0><A HREF=""$3"" TARGET=_blank>新窗口打开图片</A><br><IMG SRC=""$3"" border=0>")
	
	    re.Pattern="(\[URL\])(http:\/\/.[^\]]*)(\[\/URL\])"
	    strContent= re.Replace(strContent,"<A HREF=""$2"" TARGET=_blank>$2</A>")
	    re.Pattern="(\[URL\])(.[^\]]*)(\[\/URL\])"
	    strContent= re.Replace(strContent,"<A HREF=""http://$2"" TARGET=_blank>$2</A>")
	
	    re.Pattern="(\[URL=(http:\/\/.[^\]]*)\])(.[^\]]*)(\[\/URL\])"
	    strContent= re.Replace(strContent,"<A HREF=""$2"" TARGET=_blank>$3</A>")
	    re.Pattern="(\[URL=(.[^\]]*)\])(.[^\]]*)(\[\/URL\])"
	    strContent= re.Replace(strContent,"<A HREF=""http://$2"" TARGET=_blank>$3</A>")
	
	    re.Pattern="(\[EMAIL\])(.[^\]]*)(\[\/EMAIL\])"
	    strContent= re.Replace(strContent,"<img align=absmiddle src=pic/email1.gif><A HREF=""mailto:$2"">$2</A>")
	    re.Pattern="(\[EMAIL=(.[^\]]*)\])(.[^\]]*)(\[\/EMAIL\])"
	    strContent= re.Replace(strContent,"<img align=absmiddle src=pic/email1.gif><A HREF=""mailto:$2"" TARGET=_blank>$3</A>")
	
	    re.Pattern = "^(http://[A-Za-z0-9\./=\?%\-&_~`@']+)"
	    strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	    re.Pattern = "(http://[A-Za-z0-9\./=\?%\-&_~`@']+)$"
	    strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	    re.Pattern = "[^>=""](http://[A-Za-z0-9\.\/=\?%\-&_~`@']+)"
	    strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	
	    if strIcons = "1" then
	    re.Pattern="(\[em(.[^\]]*)\])"
	    strContent=re.Replace(strContent,"<img src=smile/em$2.gif border=0 align=middle>")
	    end if
	
	    re.Pattern="(\[HTML\])(.[^\]]*)(\[\/HTML\])"
	    strContent=re.Replace(strContent,"<table width='100%' border='0' cellspacing='0' cellpadding='6' bgcolor='"&abgcolor&"'><td><b>以下内容为程序代码:</b><br>$2</td></table>")
	    re.Pattern="(\[code\])(.[^\]]*)(\[\/code\])"
	    strContent=re.Replace(strContent,"<table width='100%' border='0' cellspacing='0' cellpadding='6' bgcolor='"&abgcolor&"'><td><b>以下内容为程序代码:</b><br>$2</td></table>")
	
	
	    re.Pattern="(\[QUOTE\])(.[^\]]*)(\[\/QUOTE\])"
	    strContent=re.Replace(strContent,"<BLOCKQUOTE><table width='100%' border='0' cellspacing='1' cellpadding='6' bgcolor='"& TableBorderColor &"'><td bgcolor='#dfdfdf'>$2</td></table></BLOCKQUOTE><br>")
	    re.Pattern="(\[fly\])(.*)(\[\/fly\])"
	    strContent=re.Replace(strContent,"<marquee width=90% behavior=alternate scrollamount=3>$2</marquee>")
	    re.Pattern="(\[move\])(.*)(\[\/move\])"
	    strContent=re.Replace(strContent,"<MARQUEE scrollamount=3>$2</marquee>")	
	    re.Pattern="\[GLOW=*([0-9]*),*(#*[a-z0-9]*),*([0-9]*)\](.[^\]]*)\[\/GLOW]"
	    strContent=re.Replace(strContent,"<table width=$1 style=""filter:glow(color=$2, strength=$3)"">$4</table>")
	    re.Pattern="\[SHADOW=*([0-9]*),*(#*[a-z0-9]*),*([0-9]*)\](.[^\]]*)\[\/SHADOW]"
	    strContent=re.Replace(strContent,"<table width=$1 style=""filter:shadow(color=$2, strength=$3)"">$4</table>")
	
	    re.Pattern="(\[face=(.[^\]]*)\])(.*)(\[\/face\])"
	    strContent=re.Replace(strContent,"<font face=$2>$3</font>")
	
	    re.Pattern="(\[i\])(.[^\]]*)(\[\/i\])"
	    strContent=re.Replace(strContent,"<i>$2</i>")
	    re.Pattern="(\[u\])(.[^\]]*)(\[\/u\])"
	    strContent=re.Replace(strContent,"<u>$2</u>")
	    re.Pattern="(\[b\])(.[^\]]*)(\[\/b\])"
	    strContent=re.Replace(strContent,"<b>$2</b>")
	    re.Pattern="\[align=(.[^\]]*)\](.*)\[\/align\]"
	    strContent=re.Replace(strContent,"<div align=$1>$2</div>")
	    re.Pattern="\[color=(.[^\]]*)\](.[^\[]*)\[\/color\]"
	    strContent=re.Replace(strContent,"<font color=$1>$2</font>")
	
	    re.Pattern="(\[size=1\])(.[^\[]*)(\[\/size\])"
	    strContent=re.Replace(strContent,"<font size=1>$2</font>")
	    re.Pattern="(\[size=2\])(.[^\[]*)(\[\/size\])"
	    strContent=re.Replace(strContent,"<font size=2>$2</font>")
	    re.Pattern="(\[size=3\])(.[^\[]*)(\[\/size\])"
	    strContent=re.Replace(strContent,"<font size=3>$2</font>")
	    re.Pattern="(\[size=4\])(.[^\[]*)(\[\/size\])"
	    strContent=re.Replace(strContent,"<font size=4>$2</font>")
	
	    strContent=ChkBadWords(strContent)
	
	    set re=Nothing
    end if
    
    AutoLink = strContent
end function


function AutoLink_Note(Cvb_strContent)
       dim strContent
       strContent=Cvb_strContent
       
       if strContent<>"" then	    	
	  	  
	    if strAllowHTML <> 1 then
	        strContent = HTMLEncode(strContent)
	    end if
	    
	    dim re
	    Set re=new RegExp
	    re.IgnoreCase =true
	    re.Global=True
	
	    if strIMGInPosts = "1" then
	    	re.Pattern="(\[IMG\])(.[^\]]*)(\[\/IMG\])"
	    	strContent=re.Replace(strContent,"<IMG SRC=""$2"" border=0>")
	    end if
	
	    re.Pattern="\[DIR=*([0-9]*),*([0-9]*)\](.[^\]]*)\[\/DIR]"
	    strContent=re.Replace(strContent,"<object classid=clsid:166B1BCA-3F9C-11CF-8075-444553540000 codebase=http://download.macromedia.com/pub/shockwave/cabs/director/sw.cab#version=7,0,2,0 width=$1 height=$2><param name=src value=$3><embed src=$3 pluginspage=http://www.macromedia.com/shockwave/download/ width=$1 height=$2></embed></object>")
	    re.Pattern="\[QT=*([0-9]*),*([0-9]*)\](.[^\]]*)\[\/QT]"
	    strContent=re.Replace(strContent,"<embed src=$3 width=$1 height=$2 autoplay=true loop=false controller=true playeveryframe=false cache=false scale=TOFIT bgcolor=#000000 kioskmode=false targetcache=false pluginspage=http://www.apple.com/quicktime/>")
	    re.Pattern="\[MP=*([0-9]*),*([0-9]*)\](.[^\]]*)\[\/MP]"
	   	
	    re.Pattern="(\[ZIP\])(.[^\]]*)(\[\/ZIP\])"
	    strContent=re.Replace(strContent,"<br><IMG SRC=pic/zip.gif border=0> <a href=""$2"">点击下载该文件</a>")
	    re.Pattern="(\[RAR\])(.[^\]]*)(\[\/RAR\])"
	    strContent=re.Replace(strContent,"<br><IMG SRC=pic/rar.gif border=0> <a href=""$2"">点击下载该文件</a>")
	    re.Pattern="(\[UPLOAD=(.[^\]]*)\])(.[^\]]*)(\[\/UPLOAD\])"
	    strContent= re.Replace(strContent,"<IMG SRC=""pic/$2.gif"" border=0><A HREF=""$3"" TARGET=_blank>新窗口打开图片</A><br><IMG SRC=""$3"" border=0>")
	
	   
	    re.Pattern = "^(http://[A-Za-z0-9\./=\?%\-&_~`@']+)"
	    strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	    re.Pattern = "(http://[A-Za-z0-9\./=\?%\-&_~`@']+)$"
	    strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	    re.Pattern = "[^>=""](http://[A-Za-z0-9\.\/=\?%\-&_~`@']+)"
	    strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	
	    if strIcons = "1" then
	    re.Pattern="(\[em(.[^\]]*)\])"
	    strContent=re.Replace(strContent,"<img src=smile/em$2.gif border=0 align=middle>")
	    end if
	
	    re.Pattern="(\[HTML\])(.[^\]]*)(\[\/HTML\])"
	    strContent=re.Replace(strContent,"<table width='100%' border='0' cellspacing='0' cellpadding='6' bgcolor='"&abgcolor&"'><td><b>以下内容为程序代码:</b><br>$2</td></table>")
	    re.Pattern="(\[code\])(.[^\]]*)(\[\/code\])"
	    strContent=re.Replace(strContent,"<table width='100%' border='0' cellspacing='0' cellpadding='6' bgcolor='"&abgcolor&"'><td><b>以下内容为程序代码:</b><br>$2</td></table>")
	
	
	    re.Pattern="(\[QUOTE\])(.[^\]]*)(\[\/QUOTE\])"
	    strContent=re.Replace(strContent,"<BLOCKQUOTE><table width='100%' border='0' cellspacing='1' cellpadding='6' bgcolor='"& TableBorderColor &"'><td bgcolor='#dfdfdf'>$2</td></table></BLOCKQUOTE><br>")
	    re.Pattern="(\[fly\])(.*)(\[\/fly\])"
	    strContent=re.Replace(strContent,"<marquee width=90% behavior=alternate scrollamount=3>$2</marquee>")
	    re.Pattern="(\[move\])(.*)(\[\/move\])"
	    strContent=re.Replace(strContent,"<MARQUEE scrollamount=3>$2</marquee>")	
	    re.Pattern="\[GLOW=*([0-9]*),*(#*[a-z0-9]*),*([0-9]*)\](.[^\]]*)\[\/GLOW]"
	    strContent=re.Replace(strContent,"<table width=$1 style=""filter:glow(color=$2, strength=$3)"">$4</table>")
	    re.Pattern="\[SHADOW=*([0-9]*),*(#*[a-z0-9]*),*([0-9]*)\](.[^\]]*)\[\/SHADOW]"
	    strContent=re.Replace(strContent,"<table width=$1 style=""filter:shadow(color=$2, strength=$3)"">$4</table>")
	
	    re.Pattern="(\[face=(.[^\]]*)\])(.*)(\[\/face\])"
	    strContent=re.Replace(strContent,"<font face=$2>$3</font>")
	
	    re.Pattern="(\[i\])(.[^\]]*)(\[\/i\])"
	    strContent=re.Replace(strContent,"<i>$2</i>")
	    re.Pattern="(\[u\])(.[^\]]*)(\[\/u\])"
	    strContent=re.Replace(strContent,"<u>$2</u>")
	    re.Pattern="(\[b\])(.[^\]]*)(\[\/b\])"
	    strContent=re.Replace(strContent,"<b>$2</b>")
	    re.Pattern="\[align=(.[^\]]*)\](.*)\[\/align\]"
	    strContent=re.Replace(strContent,"<div align=$1>$2</div>")
	    re.Pattern="\[color=(.[^\]]*)\](.[^\[]*)\[\/color\]"
	    strContent=re.Replace(strContent,"<font color=$1>$2</font>")
	
	    re.Pattern="(\[size=1\])(.[^\[]*)(\[\/size\])"
	    strContent=re.Replace(strContent,"<font size=1>$2</font>")
	    re.Pattern="(\[size=2\])(.[^\[]*)(\[\/size\])"
	    strContent=re.Replace(strContent,"<font size=2>$2</font>")
	    re.Pattern="(\[size=3\])(.[^\[]*)(\[\/size\])"
	    strContent=re.Replace(strContent,"<font size=3>$2</font>")
	    re.Pattern="(\[size=4\])(.[^\[]*)(\[\/size\])"
	    strContent=re.Replace(strContent,"<font size=4>$2</font>")
	
	    strContent=ChkBadWords(strContent)
	
	    set re=Nothing
    end if
    
    AutoLink_Note = strContent
end function
%>