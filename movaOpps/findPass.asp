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
			response.write "<script>alert('�Բ���û���������!');history.back();</script>"
		else
			if rs.RecordCount>1 then 
				response.write "<script>alert('�Բ��������������ܷ����ظ����������Ա��ϵ');history.back();</script>"
			else 
				Email=rs("mail")
				Topic="���Ŀͻ�ϵͳ����." 
				Mailbody = ""
				Mailbody =Mailbody & "�ʺ�:" & workid & "<br>" & chr(13)
				Mailbody =Mailbody & "��������:" & tempPassword & "<br>" & chr(13)
				Mailbody =Mailbody & "����ʱ��:" & date() & " " & time()& "<br>" & chr(13) 
      	
				updateSql = "update mova_user set [password]='" & password & "' where workid='" & workid & "'"
				'response.write updateSql
				conn.execute(updateSql)
				Jmail Email,Topic,Mailbody 
				closedatabase
				response.write "<script>alert('�����Ѿ��ɹ����͵�:"&  Email &"�� \n\n��ע�����!');history.back();</script>"
			end if 
		end if 
		
	
%>
