<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "roleSys" %>

<%
'debug(1)
'Dim Form：
Dim FLD_mova_roleid,FLD_scope,keyid,tmpSql
Dim FLD_object,FLD_rolename,FLD_rolecode,FLD_description,FLD_firstPage,FLD_submit
'Get Post Param:
FLD_rolename = req("rolename")
FLD_rolecode = req("rolecode")
FLD_description = req("description")
FLD_firstPage = req("firstPage")
FLD_mova_roleid = req("mova_roleid")
FLD_scope = req("scope")
'Get Get Param:


'DataBase Coding....:
openDatabase
Sql = "Select * From mova_role Where mova_roleid =" & FLD_mova_roleid
movaRS.open Sql,conn,1,3

'RS seting...:
movaRS("rolename")= FLD_rolename
movaRS("rolecode")= FLD_rolecode
movaRS("description")= FLD_description
movaRS("firstPage")= FLD_firstPage
movaRS("scope") = FLD_scope
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid = movaRS("mova_roleid")
movaRS.close

'调试的角色权限
 
		tmpSql = "select c.category + '`' + c.code  as code from mova_user a,mova_rolefunction b,mova_function c "
		tmpSql = tmpsQL & "where a.mova_roleid=b.mova_roleid and b.mova_functionid=c.mova_functionid "
			tmpSql = tmpsQL & " and a.mova_userid=" & session("userid")  
			'response.write tmpsQL & "<br/>"
			
			set movaRs1=conn.execute(tmpSQL)
			session("secString")=""
			do 
				if movaRs1.eof or movaRs1.bof then
					exit do
				end if 
				session("secString")=session("secString") & movaRs1("code") & "|"
				movaRs1.moveNext
			loop
			movaRs1.close


closeDatabase



gotoUrl "modiRole.asp?mova_roleid=" & keyid 
%>