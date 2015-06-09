<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>无标题文档</title>
		<link href="<%=movaStyle%>/style.css" rel="stylesheet" type="text/css" />
 
		<script type="text/javascript">
		</script>
	</head>
	<body>
		<div class="cn_header">
			<div class="cn_logo"><img src="<%=application("LOGO")%>" /></div>
<div class="cn_header_right">
				<dl>
					<a href="<%=session("firstPage") %>" target="main">首页</a> 
					<% if chkAccount("info_User") then %><a href="/movaOpps/core/user/" target="main">更改密码</a> <%end if %><a href="/movaOpps/logout_.asp" target="_top"> 退出系统</a>
				 </dl>
				 <nobr> 当前用户:<span class="cn_font03"><%=session("username")%></span>　 </nobr>
			</div> 
		</div>
	</body>
</html>

<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->