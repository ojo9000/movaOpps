<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/md5.asp" -->
<!-- #include virtual="/movaOpps/core/pub/mail.asp" -->
<%if trim(req("email"))<>"" then  
 
 	Dim email,password
	email=request("email")
	tempPassword=MyRandn(8)
	password=md5(tempPassword)
	 
	opendatabase
		sql  = "select * from mova_user where upper(mail)=upper('" & trim(email) & "')"
		rs.open sql,conn,3,2

	 
		if rs.eof or rs.bof then
			closedatabase
			response.write "<script>alert('对不起，没有这个账户!');history.back();</script>"
		else
			if rs.RecordCount>1 then 
				response.write "<script>alert('对不起，您的账户"&req("email")&" 可能发生重复，请与管理员联系');history.back();</script>"
			else 
				Email=rs("mail")
				Topic="您的客户系统密码." 
				Mailbody = ""
				Mailbody =Mailbody & "帐号:" & email & "<br>" & chr(13)
				Mailbody =Mailbody & "您的密码:" & tempPassword & "<br>" & chr(13)
				Mailbody =Mailbody & "发送时间:" & date() & " " & time()& "<br>" & chr(13) 
      	
				updateSql = "update mova_user set [password]='" & password & "' where mail='" & email & "'"
				'response.write updateSql
				conn.execute(updateSql)
				cdoMail Email,Topic,Mailbody 
				closedatabase
				response.write "<script>alert('密码已经成功发送到:"&  Email &"。 \n\n请注意查收!');</script>"
				response.write "<script>window.parent.location.href='/movaopps'</script>"
			end if 
		end if 
 
 else%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
<title><%=application("COMPANY")%>_<%=application("SYSTEM_NAME")%></title>
<link rel="stylesheet" href="<%=movaStyle%>/login.css" type="text/css" media="screen" />
<script type="text/javascript" src="/movaOpps/core/jquery/jquery-1.7.1.min.js"></script>
<!--[if IE 6]>
    <script type="text/javascript" src="scripts/DD_belatedPNG_0.0.7a.js"></script>
<![endif]-->
</head>
<body bgColor="#DFDFDF"> 
<form name="mainform" action="forgetPassword.asp" method="post" >
	<center><br><br><br><br>
请输入您的邮件地址：<input type="text" name="email" value="" size=15><input type="submit" value="找回密码">
<br><br>
<a href="/movaopps/" >返回系统登录页</a>
</div>
<script>
 document.mainform.email.value="";
</script>
</center>
</form>
</body>
</html>
<%end if %>