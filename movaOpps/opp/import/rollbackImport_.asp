<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
Dim  FRM_import_batch_no,FRM_import_file,FRM_objectCode,FRM_team
FRM_import_batch_no = req("import_batch_no")
FRM_import_file = req("import_file")
FRM_objectCode = req("objectCode")
FRM_team = req("team")

 
Dim keyName,owner,search_scope,sqlString,FLD_table
sqlString = "select table_name,owner,search_scope from mu_object where object_code='"& FRM_objectCode &"'"
executeQuery conn,movaRS,sqlString,1,3

if not (movaRS.eof or movaRS.bof)  then
	FLD_table = movaRS("table_name") 
	keyName = getKeyNameByTable(FLD_table)
	owner =  movaRS("owner")
	search_scope = movaRS("search_scope")
end if 
movaRS.close
sqlString = "delete from " & FLD_table & " where import_batch_no='" & FRM_import_batch_no & "'" 
executeUpdate conn,sqlString
response.write "<br>回退批次成功<a href='import.asp?t="& getTimestamp()  &"'>返回数据导入</a>"
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->