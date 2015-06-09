<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHeadTab.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->

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
		Dim FRM_object_name,FRM_table_name,FRM_object_code,FRM_allow_batch,FRM_is_single,FRM_view_col,FRM_all_show_master,FRM_depend_master
		FRM_object_name = movaRS("object_name")
		FRM_table_name = movaRS("table_name")
		FRM_object_code = movaRS("object_code")
		FRM_allow_batch = movaRS("allow_batch")
		FRM_is_single = movaRS("is_single")
		
 		FRM_all_show_master = movaRS("all_show_master")
 		FRM_depend_master = movaRS("depend_master")
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
	<%
	if chkAccount(getObjectOppSec(FRM_objectId,"DY_NEW") ) then 
		 Dim allowCreate 
		 allowCreate = true
	 	if FRM_is_single<>"T"  and FRM_depend_master<>"" then 
			 initJoinShowMastFieldCode FRM_objectId
			 initMastTableFieldArray FRM_objectId,session("F_customerId")
		 
		  
			for i=1 to mastTableFieldArray_X
				if mastTableFieldArray(i,1)="" then exit for
				 if instr(ucase(FRM_depend_master), ucase(replace(mastTableFieldArray(i,1),"___","")) ) >0  then 
					getCtrolSplitValue FRM_depend_master,  ucase(replace(mastTableFieldArray(i,1),"___",""))
					if  ucase(mastTableFieldArray(i,3))=ucase(CtrolReturnValue) then
						if instr(CtrolReturnValueExt,"N")=0 then 
							allowCreate = false
						end if 
					end if 
				end if 
			Next 
		end if
		if allowCreate then 
			if  (FRM_objectId = "18" or FRM_objectId = "2") and (session("userid")&""=  mastTableFieldArray( getIndex_mastTableFieldArray("D2",1),3)&""  or session("userid")&""=  mastTableFieldArray( getIndex_mastTableFieldArray("D1",1),3)&"") then 
				response.write "<a href="& chr(34) & "javascript:"
				response.write "dialogPick('opp.asp?navType=dialog&objectId=" & FRM_objectId & "&cid="& session("F_customerId") & "','')" 
				response.write chr(34) & "  >+"& FRM_object_name   & "</a>"
			end if 
			
		end if 
	end if 
	%>
</div>
<DIV class=cn_col01>  

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
  			<th>组</th>
  		<% end if %>
  		<tH><%=FRM_object_name%>编号</tH>
  	 
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
  		 
			
    		<td><a href="javascript:dialogPick('opp.asp?navType=dialog&objectId=<%=FRM_objectId%>&id=<%=FRM_opp_id%>&cid=<%=FRM_customer_id%>','')"><%=FRM_opp_no%></a></TD>
    		 
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