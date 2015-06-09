<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "pickSys" %>

<%
'debug(1)
dim keyid ,FLD_code

keyid = req("mova_picklistid")
FLD_code = req("code")
if keyid<>"" then
	
	opendatabase
	
	sql = "delete from mova_picklist where mova_picklistid=" & keyid
	conn.execute(sql)
	
	closeDatabase
end if 
gotoUrl "listPicklist.asp?picklistcode=" & FLD_code
%>