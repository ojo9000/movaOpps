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
	sqlString = "select   *  from mu_object_field  where object_id="& object_id &" and field_code='" & fieldName & "'  and archive='F'"
 'response.write sqlString &"<BR>"
	executeQuery conn,movaRS,sqlString,1,1
	if movaRS.eof or movaRS.bof then 
		response.write "没有这个字段，输出异常"
	else
			rsFieldType = movaRS("field_type")
			rsWidth = movaRS("width")
			rsFk_select = movaRS("Fk_select")
			rsFk_window = movaRS("Fk_window")
 
		 curValue = ""
			if rsFieldType="INT" OR rsFieldType="VARCHAR" OR rsFieldType="PHONE" then  
				if rsFk_select<>"" then 
					response.write  "					<nobr>"
					response.write  "			 			 <input class=cn_input03 id="& chr(34) & fieldName& "_txt" & chr(34) &" type="&chr(34)&"text" & chr(34) & rsWidth & " readonly name=" & chr(34) &fieldName& "_txt" & chr(34) & " value=" & chr(34)  & chr(34) &">"
					response.write  "			 			<input class=cn_input03 id="& chr(34) & fieldName & chr(34) &" type="&chr(34)& "hidden" &chr(34) & "  name="&chr(34)& fieldName &chr(34)& " value="& chr(34) &  chr(34) & ">"
					response.write  "<img title='搜索' id='" & fieldName & "_pic' src='" & movaStyle & "/images/search.png' align='top' " 
					response.write " border=0  " 
					response.write " onClick='dialogPick("& chr(34)&appendPickUrl(rsFk_window,fieldName,fieldName& "_txt") & chr(34) &","& chr(34)& chr(34) &")'"  
					response.write  " alt='点击查询'/></nobr>"
				else 
					response.write "<input class=cn_input03 type='text' size='" & rsWidth  & "'  name='" & fieldName &  "' value=''>"
				end if 
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

 