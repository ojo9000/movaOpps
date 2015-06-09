<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "webConfig" %>

<%
'	debug(1)
'Dim Form£º
Dim FLD_object,FLD_selectvalue,FLD_mova_picklistid,FLD_code,FLD_txt,FLD_submit,FLD_sortno
'Get Post Param:

FLD_param_Value = req("param_Value")
configId = req("configId")
		 
         
         
'Get Get Param:


'DataBase Coding....:
openDatabase
Sql = "Select * From mova_Config Where mova_configid ="& configId
'response.write sql
movaRS.open Sql,conn,1,3
'RS seting...:
movaRS("param_value")= FLD_param_Value


movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid =FLD_mova_picklistid
movaRS.close

closeDatabase
	
gotoUrl "listConfig.asp"
%>