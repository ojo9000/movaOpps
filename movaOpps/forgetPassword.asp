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
			response.write "<script>alert('�Բ���û������˻�!');history.back();</script>"
		else
			if rs.RecordCount>1 then 
				response.write "<script>alert('�Բ��������˻�"&req("email")&" ���ܷ����ظ����������Ա��ϵ');history.back();</script>"
			else 
				Email=rs("mail")
				Topic="���Ŀͻ�ϵͳ����." 
				Mailbody = ""
				Mailbody =Mailbody & "�ʺ�:" & email & "<br>" & chr(13)
				Mailbody =Mailbody & "��������:" & tempPassword & "<br>" & chr(13)
				Mailbody =Mailbody & "����ʱ��:" & date() & " " & time()& "<br>" & chr(13) 
      	
				updateSql = "update mova_user set [password]='" & password & "' where mail='" & email & "'"
				'response.write updateSql
				conn.execute(updateSql)
				cdoMail Email,Topic,Mailbody 
				closedatabase
				response.write "<script>alert('�����Ѿ��ɹ����͵�:"&  Email &"�� \n\n��ע�����!');</script>"
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
�����������ʼ���ַ��<input type="text" name="email" value="" size=15><input type="submit" value="�һ�����">
<br><br>
<a href="/movaopps/" >����ϵͳ��¼ҳ</a>
</div>
<script>
 document.mainform.email.value="";
</script>
</center>
</form>
</body>
</html>
<%end if %>