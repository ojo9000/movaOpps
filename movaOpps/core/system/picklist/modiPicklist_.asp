<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "pickSys" %>

<%
'	debug(1)
'Dim Form£º
Dim FLD_object,FLD_selectvalue,FLD_mova_picklistid,FLD_code,FLD_txt,FLD_submit,FLD_sortno,FLD_is_memory
Dim keyid
'Get Post Param:
FLD_object = req("object")
FLD_selectvalue = req("selectvalue")
FLD_mova_picklistid = req("mova_picklistid")
FLD_code = req("code")
FLD_txt = req("txt")
FLD_sortno = req("sortno")
FLD_is_memory	= req("is_memory")

'Get Get Param:


'DataBase Coding....:
openDatabase
Sql = "Select * From mova_picklist Where mova_picklistid ="& FLD_mova_picklistid
'response.write sql
movaRS.open Sql,conn,1,3
'RS seting...:
movaRS("selectvalue")= FLD_selectvalue
movaRS("code")= FLD_code
movaRS("txt")= FLD_txt
movaRS("sortno")= FLD_sortno
movaRS("is_memory")=FLD_is_memory

movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid =FLD_mova_picklistid
movaRS.close

closeDatabase
	
gotoUrl "listPicklist.asp?picklistCode=" & FLD_code
%>