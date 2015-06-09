<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
'输出字段的输入框
'输入参数：   object_id / fieldName 

Dim object_id,fieldName

object_id= req("object_id")  & ""
fieldName = req("fieldName")  & "" 

Dim rsFieldType,rsWidth,curValue

'如果有一项参数为空，则返回错误
if object_id & fieldName  ="" then 
	response.write "<font color='red'>参数异常，不能进行输出。</font>"
else
	sqlString = "select   *  from mu_object_field  where object_id="& object_id &"and field_code='" & fieldName & "'"
 
	executeQuery conn,movaRS,sqlString,1,1
	if movaRS.eof or movaRS.bof then 
		response.write "没有这个字段，输出异常"
	else
			rsFieldType = movaRS("field_type")
			rsWidth = movaRS("width")
 
		 curValue = ""
			if rsFieldType="INT" OR rsFieldType="VARCHAR" OR rsFieldType="PHONE" then  
				response.write "<input class=cn_input03 type='text' size='" & rsWidth  & "'  name='" & fieldName &  "' value=''>"
			else 
				if rsFieldType="TIME" then  
					response.write "<INPUT  READONLY ondblclick=" & chr(34)  & "this.value=''"& chr(34) & "  size='" & rsWidth & "' class=cn_input03 type=text name='" & fieldName & "' value='' id='" &  fieldName & "'>" &  getCalendar(fieldName & "_",fieldName,"T") 
				else 
					if rsFieldType="DATE" then 
						response.write "<INPUT  READONLY ondblclick=" & chr(34) & "this.value=''"& chr(34) & " size='" & rsWidth & "' class=cn_input03 type=text name='" & fieldName & "'  value='' id='" & fieldName & "'>" & getCalendar(fieldName & "_",fieldName,"D") 
					else 
							if rsFieldType="TEXT" then 
								response.write "<textarea  name='" & fieldName & "' cols='" & rsWidth & "'></textarea>"
							else
								response.write "<select name='" & fieldName & "'>" 
								response.write " <option value=''></option>" 
								response.write getItemList(rsFieldType,curValue)
								response.write "</select>"
							end if 
					end if 
				end if 
 			end if 
 
	end if
	movaRS.close
end if 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->