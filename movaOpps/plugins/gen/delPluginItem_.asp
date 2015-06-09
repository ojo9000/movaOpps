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
Dim  FLD_plugin_object_id,FRM_plugin_no
FLD_plugin_object_id	= getParamID(req("keyid"))
FRM_plugin_no	= req("pluginNo")

Dim sqlString 
'DataBase Coding....:
sqlString = "delete from  mova_plugin_object Where  plugin_object_id=" & FLD_plugin_object_id
executeUpdate conn,sqlString 
gotourl "modifyPlugin.asp?pluginNo="& FRM_plugin_no

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
