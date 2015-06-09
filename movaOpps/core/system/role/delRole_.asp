<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "roleSys" %>

<%
'debug(1)
dim keyid ,sqlString
opendatabase
keyid = req("mova_roleid")
	sqlString = "Select * From mova_user Where mova_roleID=" & keyid & " and isDel='F'"
 
	 executeQuery conn,movaRS,sqlString,1,1
if keyid<>"" and movaRS.recordCount=0 then
	
	opendatabase
	
	sql = "delete from mova_role where mova_roleid=" & keyid
	conn.execute(sql)
	
	sql = "delete from mova_roleFunction where mova_roleid=" & keyid
	conn.execute(sql)
	
	sql = "Update mova_user set mova_roleid is null where mova_roleid=" & keyid
	closeDatabase
else
		 closeDatabase
		 msgBox "有账户关联该角色，不能删除", "listRole.asp"
end if 
gotoUrl "listRole.asp"
%>