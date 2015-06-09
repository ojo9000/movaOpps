<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->

<script>
$(document).ready(function() { 
$( "#info_dailog" ).dialog({
			autoOpen: false,
			width: 850,
			height: 350,
			modal: true,
			buttons: {
				"关闭": function() {
				$( this ).dialog( "close" );
				$("#info_dailog").html("");
				}  
			} 
		}); 
}); 
</script>
  <div id="info_dailog" title="选择条目">
	public dailog
</div> 


<%
	session("PUBLIC_LIST_URL") = Request.ServerVariables("SCRIPT_NAME") & "?1=1&" & Request.ServerVariables("QUERY_STRING")
 Dim FRM_objectId,FRM_customer_id
 Dim REQ_showType
 REQ_showType=""
REQ_showType =  req("showType")
	FRM_objectId = req("objectId")
	if FRM_objectId="" or isNull(FRM_objectId) then 
			FRM_objectId = session("F_objectId")
	else
			session("F_objectId") = FRM_objectId
	end if 
	if getParamID(req("cid"))=-1 then 
			FRM_customer_id = session("F_customerId")
	else
			FRM_customer_id = getParamID(req("cid"))
			session("F_customerId") = FRM_customer_id
	end if
 chkAccountStr getObjectOppSec(session("F_objectId"),"DY_SEARCH")

	if req("hid")<>"" then 
		FRM_hierarchy_id = req("hid")
	end if  
	
 Dim Cur_col ,isNew,FRM_opp_id,sqlString
 Cur_col = 0
	
	isNew =true 
	if FRM_opp_id>1 then 
		isNew = false
	end if
	
	sqlString = "select * from mu_object where owner='" & session("customerNo") & "'"
	sqlString = sqlString + " and archive='F' and is_publish='T' and is_discard='F' and object_id="& session("F_objectId")

	executeQuery conn,movaRS,sqlString,1,1
	if movaRS.bof or movaRS.eof then
		movaRS.close
		response.write  "对不起，不存在这个业务模型"
	else
		'Dim Form_Frm
		Dim FRM_object_name,FRM_table_name,FRM_object_code,FRM_allow_batch,FRM_is_single,FRM_view_col
		FRM_object_name = movaRS("object_name")
		FRM_table_name = movaRS("table_name")
		FRM_object_code = movaRS("object_code")
		FRM_allow_batch = movaRS("allow_batch")
		FRM_is_single = movaRS("is_single")
		FRM_view_col = 2
		FRM_view_col = FRM_view_col * 2
	
		getObjectField FRM_objectId,"SEARCH" 

		'获取表的主键字段 
		Dim keyName,objectNo
		keyName = getKeyNameByTable(FRM_table_name)
		objectNo = getNoNameByTable(FRM_table_name) 
		 
%>
<% if not (req("def") = "Phone" and FRM_table_name ="MU_CUSTOMER") then %> 

<script>
	function chk()
	{
		var str;
		str="";
	 
		return showInputError(str);
	}
	
	function selectAll(form){
	for (i=0;i<form.elements.length;i++){
			if (form.elements[i].name=="mutId"){
					form.elements[i].checked=form.selAll.checked;
			}
	}
}

</script> 
<div class="cn_list_title">《<font color=red><%=FRM_object_name%></font>》查询</div>
<div class="cn_list_title_right">
	<% if ucase(FRM_table_name) = ucase("mu_customer")  and  chkAccount( getObjectOppSec(session("F_objectId"),"DY_NEW")) then  response.write "<BUTTON class=cn_button06 type=button onClick='location.href(" & chr(34) & "opp.asp?objectId="  & session("F_objectId")   & chr(34) & ")'>新增"& FRM_object_name &"</button>"  %>
</div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <FORM id=form method=post name=mainform action=searchOpp.asp>
  	<input type="hidden" name="isStart" value="0">
  	<input type="hidden" name="objectId" value="<%=FRM_objectId%>">
  <TBODY>
  <TR>
		<%'默认编码 %>
  	<TD class=cn_td09 align=right><%=FRM_object_name%>编号:</TD>
    <TD class=cn_td10  align="left" ><input class=cn_input03 type=text name="objectNumber"></td>
		<% Cur_col = Cur_col + 1 + +1 %>
		<%if session("roleScope")="G" then %>
		<TD class=cn_td09 align=right>组:</TD>
    <TD class=cn_td10  align="left" >
    	<select name="objectTeam">
    		<option value=""></option>
    		<%=getUserTeamPicklist("","")%>
    	</select></td>
 
		<%Cur_col = Cur_col + 1 + 1 
		if Cur_col >= FRM_view_col then
			response.write "</tr>" & chr(13)& "<tr>" 
			Cur_col = 0
		end if%>
		<%end if %>
		<%
'结束默认编码

'如果是业务对象，则默认电话 和 姓名 、编码条件
 
	if FRM_is_single="F" then 
%>
		<TD class=cn_td09 align=right>主要电话:</TD>
    <TD class=cn_td10  align="left" ><input class=cn_input03 type=text name="mainPhone"></td>
		<%Cur_col = Cur_col + 1 + 1 
		if Cur_col >= FRM_view_col then
			response.write "</tr>" & chr(13)& "<tr>" 
			Cur_col = 0
		end if%>
		<TD class=cn_td09 align=right>标题:</TD>
    <TD class=cn_td10  align="left" ><input class=cn_input03 type=text name="customer">模糊</td>
		<% Cur_col = Cur_col + 1 +1 
		if Cur_col >= FRM_view_col then
			response.write "</tr>" & chr(13)& "<tr>" 
			Cur_col = 0
		end if
		%>
<%
	end if 

Dim k,j,FormName,curValue
for k=1 to ObjectFieldArray_X
		for j=1 to ObjectFieldArray_Y
			if ObjectFieldArray(k,1)="" then exit For
		Next
		if ObjectFieldArray(k,1)="" then exit For

		FormName = getFormName(ObjectFieldArray(k,1))
		
 
		if Cur_col >= FRM_view_col then
			response.write "</tr>" & chr(13)& "<tr>" 
			Cur_col = 0
		end if
%>
		<TD class=cn_td09 align=right><%=ObjectFieldArray(k,2)%>:</TD>
    <TD class=cn_td10  align="left" > 
<%
		'如果是 等于 或者 包含条件
		if ObjectFieldArray(k,3)<>"INT" and ObjectFieldArray(k,3)<>"VARCHAR" and  ObjectFieldArray(k,3)<>"PHONE" and ObjectFieldArray(k,3)<>"TIME" and ObjectFieldArray(k,3)<>"TIME" and  ObjectFieldArray(k,3)<>"DATE" and  ObjectFieldArray(k,3)<>"TEXT" then 
			%>
							<select name="<%=FormName%>">
								<option value=""></option>
								<%=getItemList(ObjectFieldArray(k,3),curValue)%>
							</select>
			<%
		else
			if ObjectFieldArray(k,5)="=" OR ObjectFieldArray(k,5)="like" then 
				if ObjectFieldArray(k,24)<>"" then 
						response.write "					<nobr>"
						response.write "			 			 <input class=cn_input03 id="& chr(34) & FormName& "_txt" & chr(34) &" type="&chr(34)&"text" & chr(34) &  " size="&chr(34)& ObjectFieldArray(k,8) &chr(34)&" readonly name=" & chr(34) &FormName& "_txt" & chr(34) & " value=" & chr(34) & getPickValue( ObjectFieldArray(k,24),"" )& chr(34) &">"
						response.write  "			 			<input class=cn_input03 id="& chr(34) & FormName & chr(34) &" type="&chr(34)& "hidden" &chr(34) & "  name="&chr(34)& FormName &chr(34)& " value="& chr(34) & curValue & chr(34) & ">"
						response.write "<img title='搜索' id='" & FormName & "_pic' src='" & movaStyle & "/images/search.png' align='top' " 
						response.write " border=0  " 
						response.write " onClick='dialogPick("& chr(34)&appendPickUrl(ObjectFieldArray(k,25),FormName,FormName& "_txt") & chr(34) &","& chr(34)& chr(34) &")'"  
						response.write  " alt='点击查询'/></nobr>" 
					else
					response.write  " <input class=cn_input03 type=text size=20 name='"&FormName&"' value=''>"
			end if 
			%>
				<%if ObjectFieldArray(k,5)="like" then %>模糊<%end if %>
			<%else%>
				<% '如果是TIME
				if ObjectFieldArray(k,5)="timeRange" then %>
					从<INPUT  READONLY ondblclick="this.value=''" size="<%=ObjectFieldArray(k,8)%>" class=cn_input03 type=text name="S<%=FormName%>" value="" id="S<%=FormName%>"><%=getCalendar("S" & ObjectFieldArray(k,1),"S" & FormName,"T")%>
					到<INPUT  READONLY ondblclick="this.value=''" size="<%=ObjectFieldArray(k,8)%>" class=cn_input03 type=text name="E<%=FormName%>" value="" id="E<%=FormName%>"><%=getCalendar("E" & ObjectFieldArray(k,1),"E" & FormName,"T")%>
				<%else%>
					<% '如果是DATE
					if ObjectFieldArray(k,5)="dateRange" then %>
						从<INPUT  READONLY ondblclick="this.value=''" size="<%=ObjectFieldArray(k,8)%>" class=cn_input03 type=text name="S<%=FormName%>" id="S<%=FormName%>"><%=getCalendar("S" & ObjectFieldArray(k,1),"S" & FormName,"D")%>
						到<INPUT  READONLY ondblclick="this.value=''" size="<%=ObjectFieldArray(k,8)%>" class=cn_input03 type=text name="E<%=FormName%>" id="E<%=FormName%>"><%=getCalendar("E" & ObjectFieldArray(k,1),"E" & FormName,"D")%>
					<%end if %>
				<%end if %>
			<%end if %>
		<%end if %>
		
    </TD> 
<%
		Cur_col = Cur_col + 1 + +1
		if Cur_col >= FRM_view_col then
			response.write "</tr>" & chr(13)& "<tr>" 
			Cur_col = 0
		end if 
Next
		if Cur_col<=FRM_view_col and Cur_col>0 then 
			%>
				<TD class=cn_td09 align=right>&nbsp;</TD>
    		<TD class=cn_td10 align="left" >&nbsp;</td>
			<%
		end if 
%>
 </tr>
 <tr>
 <td colspan="<%=FRM_view_col%>" align="center">
 	 <BUTTON class=cn_button01 type=submit >查询</button>
 	 
 </td>
 </tr>
</TBODY>
</form>
</TABLE>
</div>
  	
  	 
<DIV class=cn_col></DIV>

<%end if %>

<!--查询结果-->

<% if req("isStart") <> "1" then  %>
<!--查询结果-->
<DIV class=cn_col>
<form id=form2 method=post name=mainform action=mutOpp_.asp> 
<TABLE border=0 cellSpacing=1 cellPadding=0>
<% 			
 			Dim order
 			if FRM_is_single="T"  then 
 				sqlString ="select O.*,T.team_name,T.team_id "
 				sqlString = sqlString & "  from "& FRM_table_name &" o ,mova_team T " 
 				sqlString = sqlString & " where o.team=T.team_id "
 				sqlString = sqlString & " and o.archive='F' and o.owner='" & session("customerNo") & "' and o.object_code='" & FRM_object_code & "' " 
 				if session("roleScope")<>"G" then 
					sqlString = sqlString & " and (O.team=" & session("team") & " or O.search_scope='ALL' )"
				end if 
 			 
 				order =  " order by o.modifydate desc "  
 			else
 					sqlString = "select T.team_id,T.team_name,c.customer_no,C.customer,c.main_phone,O.* "
 					sqlString = sqlString & " from "& FRM_table_name &" O, MU_CUSTOMER C ,mova_team T"
					sqlString = sqlString & " where O.CUSTOMER_ID=C.CUSTOMER_ID and O.team=T.team_id "
					sqlString = sqlString & " and C.owner='" & session("customerNo") & "' AND O.owner='" & session("customerNo") & "'" 
					sqlString = sqlString & " AND  O.archive='F' and c.archive='F' and o.object_code='" & FRM_object_code & "' "
					if session("roleScope")<>"G" then 
						sqlString = sqlString & " and (O.team=" & session("team") & " or (O.search_scope='ALL' and C.search_scope='ALL'))"
					end if 
					order =  " order by o.modifydate desc " 
 			end if
 			
 			
 			if req("isStart") = "0" then
				'置空相关参数
				for k=1 to ObjectFieldArray_X
					for j=1 to ObjectFieldArray_Y
						if ObjectFieldArray(k,1)="" then exit For
					Next
					if ObjectFieldArray(k,1)="" then exit For
      		
      		if ObjectFieldArray(k,5)="=" or ObjectFieldArray(k,5)="like" then
      			session("F_" & ObjectFieldArray(k,1)) = ""
      		end if 
      		if ObjectFieldArray(k,5)="timeRange" or ObjectFieldArray(k,5)="dateRange" then
      			session("F_S" & ObjectFieldArray(k,1)) = ""
      			session("F_E" & ObjectFieldArray(k,1)) = ""
      		end if 
      		
      	Next
      	
 				'默认条件
 				session("objectTeam")=""
 				session("objectNumber")=""
 				session("mainPhone")=""
 				session("customer")=""
 				session("cNo")="" 
 				
 				
 				session("F_objectId") = ""
				session("F_customerId") = ""
 				session("defCondition") = ""
 				
 				'如果是点击查询按钮则执行以下
 				'根据输入的值设置参数
 				for k=1 to ObjectFieldArray_X
					for j=1 to ObjectFieldArray_Y
						if ObjectFieldArray(k,1)="" then exit For
					Next
					if ObjectFieldArray(k,1)="" then exit For
      		
      		if ObjectFieldArray(k,5)="=" or ObjectFieldArray(k,5)="like" then
      			session("F_" & ObjectFieldArray(k,1)) = req(getFormName(ObjectFieldArray(k,1)))
      		end if 
      		if ObjectFieldArray(k,5)="timeRange" or ObjectFieldArray(k,5)="dateRange" then
      			session("F_S" & ObjectFieldArray(k,1)) = req("S" & getFormName(ObjectFieldArray(k,1)))
      			session("F_E" & ObjectFieldArray(k,1)) = req("E" & getFormName(ObjectFieldArray(k,1)))
      		end if 
      		
      	Next
      	
      	'默认条件
      	session("objectTeam")=req("objectTeam")
      	session("objectNumber")=req("objectNumber")
      	session("mainPhone")=req("mainPhone")
 				session("customer")=req("customer")
 				session("cNo")=req("cNo")
      	
      	session("F_objectId") = req("objectId")
 				session("defCondition") = ""
 				
 				'递归对象的条件
 				Dim FRM_hierarchy_id
 				if FRM_hierarchy_id<>"" then 
 					session("defCondition") = " and hierarchy_id=" &  FRM_hierarchy_id
 				end if 
 			end if 
 			
 			if req("isStart")="2" and req("def")<>"" then
				'置空相关参数
				for k=1 to ObjectFieldArray_X
					for j=1 to ObjectFieldArray_Y
						if ObjectFieldArray(k,1)="" then exit For
					Next
					if ObjectFieldArray(k,1)="" then exit For
      		
      		if ObjectFieldArray(k,5)="=" or ObjectFieldArray(k,5)="like" then
      			session("F_" & ObjectFieldArray(k,1)) = ""
      		end if 
      		if ObjectFieldArray(k,5)="timeRange" or ObjectFieldArray(k,5)="dateRange" then
      			session("F_S" & ObjectFieldArray(k,1)) = ""
      			session("F_E" & ObjectFieldArray(k,1)) = ""
      		end if 
      		
      	Next
				
				'默认条件
				session("objectTeam")=""
				session("objectNumber")=""
				session("mainPhone")=""
 				session("customer")=""
 				session("cNo")=""
				
 				session("defCondition") = ""
 				
 				if req("def") = "Phone" and FRM_table_name ="MU_CUSTOMER" then
 				'根据号码查
 				msgPhone = req("msg")
 				
 				if msgPhone<>"" then 
 					session("incomingTel") = msgPhone
 					session("defCondition") = " and exists (select customer_id from mu_phone where owner='"& session("customerNo") &"' "
 					session("defCondition") = session("defCondition") & " and archive='F' and phone='"& msgPhone &"' and customer_id = o.customer_id ) " 
 				end if 
 			end if
		end if  			
 			
 			
 			if req("def") = "Last" then
 				'最近的机会
 				session("defCondition") = " and dateDiff(Day,o.modifydate,getdate()) <= 7 " 
 				order = " order by o.modifydate desc"
 			end if
 			Dim condition
			condition = ""
			
			'根据参数合成条件
				if session("objectNumber")<>"" then condition= condition & " and upper("& objectNo & ")=upper('" &  session("objectNumber") & "')" 
				if session("mainPhone") <> "" then condition= condition & " and upper(main_phone)=upper('" &  session("mainPhone") & "')" 
 				if session("customer") <> "" then condition= condition & " and upper(customer) like upper('%" &  session("customer") & "%')" 
				if session("cNo") <> "" then  condition= condition & " and upper(customer_no) = upper('" &  session("cNo") & "')" 
				if session("objectTeam")<>"" then  condition= condition & " and O.team=" &  session("objectTeam") 
				
				for k=1 to ObjectFieldArray_X
					for j=1 to ObjectFieldArray_Y
						if ObjectFieldArray(k,1)="" then exit For
					Next
					if ObjectFieldArray(k,1)="" then exit For
      		
      		if ObjectFieldArray(k,5)="=" then
      			if session("F_" & ObjectFieldArray(k,1)) <> "" then condition= condition & " and upper(o."& ObjectFieldArray(k,1) &") = upper('" & session("F_" & ObjectFieldArray(k,1)) & "')"
      		end if 
      		if ObjectFieldArray(k,5)="like" then
      			if session("F_" & ObjectFieldArray(k,1)) <> "" then condition= condition & " and upper(o."& ObjectFieldArray(k,1) &") like upper('%" & session("F_" & ObjectFieldArray(k,1)) & "%')"
      		end if 
      		if ObjectFieldArray(k,5)="timeRange" or ObjectFieldArray(k,5)="dateRange" then
      			if session("F_S" & ObjectFieldArray(k,1))<>"" then condition= condition & " and upper(o."& ObjectFieldArray(k,1) &") >= upper('" & session("F_S" & ObjectFieldArray(k,1)) & " 00:00:00')"
						if session("F_E" & ObjectFieldArray(k,1))<>"" then condition= condition & " and upper(o."& ObjectFieldArray(k,1) &") <= upper('" & session("F_E" & ObjectFieldArray(k,1)) & " 23:59:59')"
      		end if 
      	Next
		 
			if session("defCondition") <> "" then condition = condition + session("defCondition")
			Dim securitySQL
			securitySQL = " "
			
			if condition="" then condition = " and 1=2 "
			
			'必须在这个位置上进行获取，列表字段
			getObjectField FRM_objectId,"LIST" 
			
			sqlString=sqlString & condition & securitySQL &  order 
			'response.write sqlString
			executeQuery conn,movaRS,sqlString, 1, 1 
			if req("def") = "Phone"  and  ucase(FRM_table_name) = ucase("mu_customer") then 
				if movaRS.recordCount=1 then 
					gotoURL "/movaOpps/opp/opp.asp?objectId="& FRM_objectId &"&id="& movaRS("customer_id") & "&cid=" & movaRS("customer_id")
				end if 
			end if 
%>
	<THEAD>
  	<TR>
  		<% if FRM_allow_batch="T" and chkAccount(getObjectOppSec(session("F_objectId"),"DY_BATCH"))  then  response.write "<TH><input type='checkbox' name='selAll' onClick='selectAll(this.form)' title='选择所有的'></th>" %>
  		<% if session("roleScope")="G" then %>
  			<th>公司</th>
  		<% end if %>
  		<tH><%=FRM_object_name%>编号</tH>
  		<% if FRM_is_single ="F"  then %><tH>标题</tH><%end if %>
  		
			<%
			for k=1 to ObjectFieldArray_X
					for j=1 to ObjectFieldArray_Y
						if ObjectFieldArray(k,1)="" then exit For
					Next
					if ObjectFieldArray(k,1)="" then exit For
					response.write "<TH>" & ObjectFieldArray(k,2) & "</TH>" & chr(13)
			Next
			%>
   </TR>
   </THEAD>
  <TBODY>

<%
			' 初始化页
			InitRS movaRS, application("DEF_SPLIT_PAGE")	' 默认每页 行数
			Dim i,FRM_customer
			For i = 1 to movaRS.pagesize 
				if movaRS.eof then exit For
				if FRM_is_single ="F"  then 
					FRM_customer_id = movaRS("customer_id")
					FRM_customer=movaRS("customer")
				end if 
				Dim FRM_opp_no,FRM_team_name
				FRM_opp_no = movaRS(objectNo)
				FRM_opp_id = movaRS(keyName)
				
				FRM_team_name = movaRS("team_name")

%>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
    		<% if FRM_allow_batch="T" and chkAccount(getObjectOppSec(session("F_objectId"),"DY_BATCH"))  then  response.write "<Td><input type='checkbox' name='mutId' value='"& FRM_opp_id & "'></td>" %>
    		<% if session("roleScope")="G" then %>
  			<td><%=FRM_team_name%></td>
  		<% end if %>
    		<td><a href="opp.asp?objectId=<%=FRM_objectId%>&id=<%=FRM_opp_id%>&cid=<%=FRM_customer_id%>"><%=FRM_opp_no%></a></TD>
    		<% if FRM_is_single ="F" then %>
    		<td><a href="opp.asp?objectId=<%=session("DEF_OBJECT_ID")%>&id=<%=FRM_customer_id%>&cid=<%=FRM_customer_id%>"><%=FRM_customer%></a></td>
    		<%end if %>
<%
			for k=1 to ObjectFieldArray_X
						for j=1 to ObjectFieldArray_Y
							if ObjectFieldArray(k,1)="" then exit For
						Next
						if ObjectFieldArray(k,1)="" then exit For
						if ObjectFieldArray(k,20)="T" and trim(movaRS(ObjectFieldArray(k,1))<>"") then 
							response.write "<TD><a href='" & movaRS(ObjectFieldArray(k,1)) & "' target='_blank' title='"& movaRS(ObjectFieldArray(k,1)) &"'>下载</a></TD>" & chr(13)
						else
							if ObjectFieldArray(k,24)<>"" and trim(movaRS(ObjectFieldArray(k,1))<>"") then 
								response.write "<TD>" &getOneField(replace(ObjectFieldArray(k,24),"^id",movaRS(ObjectFieldArray(k,1)))) & "</TD>" & chr(13)
							else
								response.write "<TD>" & movaRS(ObjectFieldArray(k,1)) & "</TD>" & chr(13)
							end if 
							
						end if 
						
				Next
%>				
				
  </TR>
 
<%			
		movaRS.Movenext
		Next
%>

</TBODY>
 
   
  <TR>
    <TD colSpan=30> <% call PageNavigator %> </TD></TR> </TABLE>
    <%if chkAccount(getObjectOppSec(session("F_objectId"),"DY_BATCH")) then %>
	<% if FRM_allow_batch="T" then %> 修改已经选中的记录，把字段
	<% printBatchJavascript FRM_objectId,"mutField" %>
	<input type="hidden" name="objectName" value="<%=FRM_table_name%>">
	<input type="hidden" name="objectId" value="<%=FRM_objectId%>">
	<input type="hidden" name="fieldName" value="">
	<select name="mutField" onChange="this.form.fieldName.value=this.options[this.selectedIndex].text">
		<option value="">选择一个字段</option>
		<%=getObjectFieldPicklistByBatch(FRM_objectId,"")%>
	</select>
	修改为<span id="batchInfo"></span>
	<BUTTON class=cn_button01 type=submit onClick="return confirm('您确定进行批量更新吗？');">修改</button>
    	</form>
   <%end if %>
   <%end if %>	
<%end if %>

<%end if %>

 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->