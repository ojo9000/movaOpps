<!DOCTYPE HTML PUBLIC "-/[/W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE> </TITLE>
<META content="text/html; charset=gb2312" http-equiv=Content-Type> 
<!--script language="javascript"> history.forward();</script-->
 <script language="JavaScript" src="/movaOpps/core/js/include.js"></script>
<script language="JavaScript" src="/movaOpps/core/js/CheckInput.js"></script>

 <LINK rel=stylesheet type=text/css  href="<%=movaStyle%>/style.css">
<STYLE>HTML {BORDER-LEFT: #b8bdc0 1px solid; MIN-HEIGHT: 99.6%; HEIGHT: auto} </STYLE>
 	<link rel="stylesheet" href="/movaOpps/core/kindEdit/themes/default/default.css" />
	<link rel="stylesheet" href="/movaOpps/core/kindEdit/plugins/code/prettify.css" />
	<script charset="utf-8" src="/movaOpps/core/kindEdit/kindeditor.js"></script>
	<script charset="utf-8" src="/movaOpps/core/kindEdit/lang/zh_CN.js"></script>
	<script charset="utf-8" src="/movaOpps/core/kindEdit/plugins/code/prettify.js"></script>
	
	
    <link rel="stylesheet" type="text/css" href="/movaOpps/core/js/calendar/css/jscal2.css" /> 
   	<link id="skin-win2k" title="Win 2K" type="text/css" rel="alternate stylesheet" href="/movaOpps/core/js/calendar/css/win2k/win2k.css" />
    <script type="text/javascript" src="/movaOpps/core/js/calendar/js/jscal2.js"></script>
    <script type="text/javascript" src="/movaOpps/core/js/calendar/js/lang/cn.js"></script>
    <script type="text/javascript" src="/movaOpps/opp/js/pub.js"></script> 
	<style>
	.ui-resizable-se {
		bottom: 17px;
	}
	</style>
<META name=GENERATOR content="MSHTML 8.00.6001.18928"></HEAD>
<BODY>
<DIV class=cn_main>

<%
'弹出窗口返回窗口
Dim idKey,valueKey
if req("pickId")<>"" then  session("pickId")= req("pickId")
if req("pickValue")<>"" then  session("pickValue")= req("pickValue")
 

%>
<script>
	var pickIdKey ="<%= session("pickId")%>";
	var pickValueKey ="<%=session("pickValue")%>";
</script>