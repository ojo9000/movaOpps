<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=application("COMPANY")%>_<%=application("SYSTEM_NAME")%></title>
<link href="<%=movaStyle%>/style.css" rel="stylesheet" type="text/css" />
</head>
<% 
	session("firstPage") = replace( session("firstPage") ,"{DOMAIN}",session("ext_domain")&"" ,1,1,1)
	session("firstPage") = replace( session("firstPage") ,"{DEFOBJECTID}",session("defObjectId") ,1,1,1)
%>
<frameset name="right" rows="75,8,*,0" cols="*" frameborder="no" border="0" framespacing="0">
	<frame src="usertop.asp" name="mytop" scrolling="no"  noresize="noresize" />
	<frame src="nav.asp" name="controltop" scrolling="no"  noresize="noresize" />
	<frameset cols="170,7,*" frameborder="no" border="0" framespacing="0" name="main1">
		<frame src="usermenu.asp" name="left" noresize="noresize" />
		<frame src="control.asp" name="control" scrolling="no"/>
		<frameset rows="*,1,0" cols="*" framespacing="0" frameborder="no" border="0" name="main2">
		  <frame src="<%=session("firstPage")%>" name="main" noresize="noresize" scrolling="auto" id="mainFrame" title="mainFrame" />
		  <frame src="knowledgeNav.asp" name="controlKnowledge" scrolling="no"  noresize="noresize" />
		  <frame src="blank.html" name="KnowledgeFrame" id="KnowledgeFrame" title="KnowledgeFrame" scrolling="auto"/>
		</frameset> 
	</frameset>
		<frame src="blank.html" name="hiddenFrame" scrolling="no"/>
</frameset>
 
<noframes>
	<body bgcolor='#FFFFFF' text='#000000'>
	您的浏览器不支持框架！
	</body>
</noframes>



<body>
</body>
</html>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->