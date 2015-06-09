<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/md5.asp" -->
<!-- #include virtual="/movaOpps/core/pub/mail.asp" -->
<%
	Dim login,password
	workid=request("id")
	tempPassword=MyRandn(8)
	password=md5(tempPassword)
	 
	opendatabase
		sql  = "select * from mova_user where workid='" & workid & "' or username='" & request("id") & "'"
		rs.open sql,conn,3,2

	 
		if rs.eof or rs.bof then
			closedatabase
			response.write "<script>alert('对不起，没有这个工号!');history.back();</script>"
		else
			if rs.RecordCount>1 then 
				response.write "<script>alert('对不起，您的姓名可能发生重复，请与管理员联系');history.back();</script>"
			else 
				Email=rs("mail")
				Topic="您的客户系统密码." 
				Mailbody = ""
				Mailbody =Mailbody & "帐号:" & workid & "<br>" & chr(13)
				Mailbody =Mailbody & "您的密码:" & tempPassword & "<br>" & chr(13)
				Mailbody =Mailbody & "发送时间:" & date() & " " & time()& "<br>" & chr(13) 
      	
				updateSql = "update mova_user set [password]='" & password & "' where workid='" & workid & "'"
				'response.write updateSql
				conn.execute(updateSql)
				Jmail Email,Topic,Mailbody 
				closedatabase
				response.write "<script>alert('密码已经成功发送到:"&  Email &"。 \n\n请注意查收!');history.back();</script>"
			end if 
		end if 
		
	
%>
