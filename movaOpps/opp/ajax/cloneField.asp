<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
'http://127.0.0.1:85/movaOpps/opp/ajax/cloneField.asp?t=1300556254843&objectTable=MU_CUSTOMER&object_code=M023_K0002&repeatField=customer&opp_id=-1&repeatValue=测试的姓名
%>
<%
'根据当前参数获取最近的相同的记录
'输入参数：  objectTable/ object_id /repeatField / repeatValue

Dim objectTable,object_id,repeatField,repeatValue,opp_id,object_code
objectTable= req("objectTable")  & ""
object_code = req("object_code")  & ""
repeatField = req("repeatField")  & ""
repeatValue = req("repeatValue")  & ""
opp_id = req("opp_id") & "" 

'如果有一项参数为空，则返回错误
if objectTable & object_id  & repeatField & repeatValue & opp_id  ="" then 
	response.write "<font color='red'>参数异常，不能检查重复。</font>"
else
	Dim sqlString
	sqlString = "select top 1 *  from " & objectTable  
	sqlString = sqlString &  " where archive='F'"
	sqlString = sqlString &  " and owner='"& session("customerNo") &"'"
	sqlString = sqlString &  " and object_code='" & object_code  & "'" 
	sqlString = sqlString &  " and upper(" & repeatField & ") = upper('"& repeatValue &"')"
	sqlString = sqlString &  " and " & getKeyNameByTable(objectTable) & "<>" & opp_id
	sqlString = sqlString &  " order by modifyDate desc " 
	
	'response.write sqlString & "<BR>" & chr(13)
	executeQuery conn,movaRS,sqlString,1,1
	if movaRS.eof or movaRS.bof then 
		response.write ""
	else
		'读取业务模型的所有字段，遍历需要克隆的字段
		 
			sqlString = "select field_code from mu_object_field "
			sqlString = sqlString & " where object_id=(select object_id from mu_object where object_code='"& object_code &"')" 
			sqlString = sqlString & " and allow_clone='T' and is_forbidden='F'"
		'	response.write sqlString 
			executeQuery conn,rs,sqlString,1,1
			do 
				if rs.eof or rs.bof then exit do 
				Dim tmpField
				tmpField= trim(ucase(rs("field_code")))
				response.write "_" & tmpField & "^" & movaRS(tmpField) & "|"
				rs.moveNext
			loop 
			rs.close
	end if
	movaRS.close
end if
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->