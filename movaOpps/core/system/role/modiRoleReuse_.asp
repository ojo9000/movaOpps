<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "roleSys" %>
<%
	openDATABASE
	Dim mova_roleid,mova_role_reuse_id ,tempStr,mreUseid,i
		mova_roleid = req("mova_roleid")
		mova_role_reuse_id = req("reuse_Roleid")
		
		sql="delete from mova_role_reuse  where  mova_roleid=" & mova_roleid
		conn.execute(sql)
		
		if mova_role_reuse_id<>"" then 
			tempStr=trim(replace(req("reuse_Roleid")," ",""))
			mreUseid=split(tempStr,",")
				For i=0 to ubound(mreUseid)
					if mreUseid(i)="" then 
						exit for
					end if 
					sql="insert into mova_role_reuse (mova_roleid,reuse_Role_id) values(" & mova_roleid & "," &  mreUseid(i) & ")"
					conn.execute(sql)
				next
	 	end if 
	closedatabase
gotoUrl "modiRole.asp?mova_roleid=" & mova_roleid
%>