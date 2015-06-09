<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
'检查相应字段的数据是否有重复
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
	sqlString = "select count(*) as resultCount from " & objectTable  
	sqlString = sqlString &  " where archive='F'"
	sqlString = sqlString &  " and owner='"& session("customerNo") &"'"
	sqlString = sqlString &  " and object_code='" & object_code  & "'" 
	sqlString = sqlString &  " and upper(" & repeatField & ") like  upper('%"& repeatValue &"%')"
	sqlString = sqlString &  " and " & getKeyNameByTable(objectTable) & "<>" & opp_id
	
	'response.write sqlString & "<BR>" & chr(13)
	executeQuery conn,movaRS,sqlString,1,1
	if movaRS("resultCount") >0 then 
		response.write "<br><font color='red'>发生了"& movaRS("resultCount") &"条重复录入</font>"
	else
		response.write "<font color='green'>没有发现重复</font>"
	end if
	movaRS.close
end if
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->