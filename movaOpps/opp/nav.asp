<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
<link href="/movaOpps/css/<%=application("STYLE")%>/style.css" rel="stylesheet" type="text/css" />
</head>
<script language="javascript">
var COOKIE_NAME = "x";
var CACHE_DATA_KEY = "cData";
var CACHE_DATA_NAME = "cDataName";
var flag = false;

//��ȡcookieֵ
function getCookie(sName) {
	var aCookie = document.cookie.split("; ");
	for (var i=0; i < aCookie.length; i++) {
		var aCrumb = aCookie[i].split("=");
		if (sName == aCrumb[0]) 
		return unescape(aCrumb[1]);
	}
	return "";
}

//�ӻ����е�������
function loadDataFromCache() {	
	var cacheData = document.getElementById("cacheData");
	if(cacheData.getAttribute(CACHE_DATA_NAME)!=null)
		return cacheData.getAttribute(CACHE_DATA_NAME);
	else
		return "";
}

//�ӻ�����ɾ������
function removeDataFromCache() {
	try {
		var cacheData = document.getElementById("cacheData");
		cacheData.removeAttribute(CACHE_DATA_NAME);		
		cacheData.save(CACHE_DATA_KEY);
	} catch(e) {};
}

//�ָ����ص�����
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

//���ͷ��ҳ�����ػ��
function shift_status(){
	var rightFrame = top.document.getElementsByName("right")[0];
	if(flag){
		if(screen.height>768)
			rightFrame.rows = "75,8,*";
		else if(screen.height>600)	
			rightFrame.rows = "75,8,*";
		else
			rightFrame.rows = "75,8,*";
	}
	else{
		rightFrame.rows = "0,8,*";
	}
	flag = !flag;
}
</script>
<body onclick="shift_status()" onLoad="restoreLocale()">
<span class="cacher" id="cacheData" name="cacheData"></span>
	<div class="cn_nav">
		<div class="cn_navr_img"><a href="#"><img src="/movaOpps/css/<%=application("STYLE")%>/images/cn_nav_control01.gif" align="absmiddle" /></a></div>
	</div>
</body>
</html>
