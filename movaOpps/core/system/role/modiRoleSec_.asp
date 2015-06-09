<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "roleSys" %>
<%
	Dim mova_roleid,mova_functionid,i,mFunctionid,tempStr,have_userManage
	openDATABASE
		mova_roleid = req("mova_roleid")
		mova_functionid = req("mova_functionid")
		
		sql="delete from mova_rolefunction  where  mova_roleid=" & mova_roleid
		conn.execute(sql)
		have_userManage = false
		if mova_functionid<>"" then 
			tempStr=replace(req("mova_functionid")," ","")
			mFunctionid=split(tempStr,",")
				For i=0 to ubound(mFunctionid)
					if mFunctionid(i)="" then 
						exit for
					end if 
					sql="insert into mova_roleFunction (mova_functionid,mova_roleid) values(" & mFunctionid(i) & "," & mova_roleid & ")"
					conn.execute(sql)
					if cint(mFunctionid(i)) =107  then  '如果功能是用户管理
						have_userManage=true
					end if 
				next
	 	end if 
	 	if not have_userManage then 
			conn.execute("delete from mova_role_reuse where mova_roleid=" & mova_roleid)	
		end if
	 	
	closedatabase
gotoUrl "modiRole.asp?mova_roleid=" & mova_roleid
%>