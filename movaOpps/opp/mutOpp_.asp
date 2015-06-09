<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
 
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
 	
	Dim updateSQL,tableName,mutFieldName,mutId,mutValue,objectIdName,mutFieldText,objectId
	Frm_objectId = req("objectId")
	tableName = req("objectName") 
	mutFieldText = req("fieldName")
	mutFieldName = req("mutField")
	mutId = req("mutId")
	mutValue = req(req("mutField"))
	objectId = req("objectId")
	
	getObjectField FRM_objectId,"LIST"
	objectIdName = getKeyNameByTable(tableName)
	 
	
	'如果字段类型是字符串，则处理下sql语句。

	if  ObjectFieldArray(getPosFromArray(mutFieldName),13) = "T" then 
		sqlValue = mutValue
	else 
		sqlValue = "'" & mutValue & "'"  
	end if 
	
	if req("mutId")="" or mutFieldName="" then 
		response.write "没有选择需要更新的数据"
	else
		updateSQL = "update " & tableName & " set modifydate=getdate(),modifyuser=" & session("userid") & "," & mutFieldName  & " =" & sqlValue & " where " & objectIdName & " in (" & mutId & " ) and  owner='" &  session("customerNo") &"'"
	'	response.write updateSQL  & "<BR>"
		executeUpdate conn,updateSQL
		updateSQL = "insert into mu_log (object_id,object_code,object_no,operation,description,createuser,createdate) " 
	
		updateSQL = updateSQL & "select "& objectIdName & ",object_code,"& getNoNameByTable(tableName) & ",'编辑','<font color=red>&nbsp;/&nbsp;</font>'+ '"& mutFieldText &":{' + '"&  mutValue &"' +'}' "
		updateSQL = updateSQL & ","&  session("userid") & ",getDate() from "& tableName &" where  "& getKeyNameByTable(tableName) &" in ("& mutId & " )"
 
		executeUpdate conn,updateSQL
		MessageBox "已经成功批量修改", "searchOpp.asp?objectId="& objectId & "&isStart=2&def=Last"
	end if 
	
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
