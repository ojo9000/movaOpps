<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
'debug 1
'Dim Form£º

'Get Get Param:
Dim  FLD_plugin_id,FRM_plugin_no,FRM_saveData
FLD_plugin_id	= getParamID(req("keyid"))
FRM_plugin_no = req("plugin_no")
FRM_saveData = req("saveData")
Dim sqlString 
'DataBase Coding....:
sqlString = "delete from  mova_plugin_object Where  plugin_no='" & FRM_plugin_no & "'"
executeUpdate conn,sqlString 

sqlString = "delete from  mova_plugin Where plugin_id=" & FLD_plugin_id
executeUpdate conn,sqlString 
gotourl "plugin.asp"

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
