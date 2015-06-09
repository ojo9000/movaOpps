<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<link href="/movaOpps/css/<%=application("STYLE")%>/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
html,body {
	height:100%;
}
body {
	background:#eef2fb url(/movaOpps/css/<%=application("STYLE")%>/images/cn_control.gif) repeat-y left top;
	text-align:left;
	cursor:pointer;
}
td {
	height:100%;
	width:7px;
}
-->
</style>
</head>

<script language="javascript">
var COOKIE_NAME = "x";
var CACHE_DATA_KEY = "cData";
var CACHE_DATA_NAME = "cDataName";
var flag = false;

//获取cookie值
function getCookie(sName) {
	var aCookie = document.cookie.split("; ");
	for (var i=0; i < aCookie.length; i++) {
		var aCrumb = aCookie[i].split("=");
		if (sName == aCrumb[0]) 
		return unescape(aCrumb[1]);
	}
	return "";
}

//从缓存中导入数据
function loadDataFromCache() {	
	var cacheData = document.getElementById("cacheData");
	if(cacheData.getAttribute(CACHE_DATA_NAME)!=null)
		return cacheData.getAttribute(CACHE_DATA_NAME);
	else
		return "";
}

//从缓存中删除数据
function removeDataFromCache() {
	try {
		var cacheData = document.getElementById("cacheData");
		cacheData.removeAttribute(CACHE_DATA_NAME);		
		cacheData.save(CACHE_DATA_KEY);
	} catch(e) {};
}

//恢复本地的数据
function restoreLocale() {
	var cv = getCookie(COOKIE_NAME);
	var str = loadDataFromCache();
	if (cv && str && str.length>0) {
		var frame_obj = str.split(",");

		var layoutObj = new Array();
		for (i=0; i<frame_obj.length; i++) {
			var piece = frame_obj[i].split("^");
			if (piece[0]==window.name) continue;
			eval("top." + piece[0] + ".location = '" + piece[1] + "'");
		}
	}
	removeDataFromCache();
}

//点击头部页面隐藏或打开
function shift_status(){
	var rightFrame = top.document.getElementsByName("main1")[0];
	if(flag){
		if(screen.height>768)
			rightFrame.cols = "170,7,*";
		else if(screen.height>600)	
			rightFrame.cols = "170,7,*";
		else
			rightFrame.cols = "170,7,*";
	}
	else{
		rightFrame.cols = "0,7,*";
	}
	flag = !flag;
}
</script>

<body onclick="shift_status()" onLoad="restoreLocale()">
	<span class="cacher" id="cacheData" name="cacheData"></span>
	<div class="cn_control">
		<table height="100%" width="7" cellspacing="0" cellpadding="0" border="0">
			<tr>
				<td valign="middle" align="center"><img src="/movaOpps/css/<%=application("STYLE")%>/images/cn_control_ico01.gif"  width="7" height="54" border="0" align="absmiddle"  title="隐藏" ></td>
		  </tr>
		</table>		
	</div>
</body>
</html>
