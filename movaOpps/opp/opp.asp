<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->


	
<%
	'debugSwitch = true
	Dim FRM_objectId,FRM_customer_id,FRM_opp_id,REQ_add_continue
	FRM_objectId = getParamID(req("objectId"))
	FRM_customer_id = getParamID(req("cid"))
	FRM_opp_id = getParamID(req("id"))
	REQ_add_continue = req("continue") 
	REQ_objectName = req("objectName")
	OPP_CUR_OBJECT_ID = FRM_opp_id
	OPP_CUR_JOIN_OBJECT_ID = FRM_customer_id
	
	Dim haveRuleField '是否含有规则字段
	haveRuleField = false
  
  Dim haveEditField '是否有可编辑的字段
  haveEditField = false

 chkAccountStr getObjectOppSec(FRM_objectId,"DY_SEARCH")
	dim req_hid
	REQ_hid= req("hid")
	if REQ_hid="" then REQ_hid="0"
	
	DIm REQ_hName
	REQ_hName= req("hName")
	
	Dim allowEdit ,allowDelete
	allowEdit = "T" 
	allowDelete = "T" 
	Dim FRM_is_private
	FRM_is_private = "T"
	
	DIm isNew
	isNew =true
	if FRM_opp_id>=1 then 
		isNew = false
	end if
	
	Dim sqlString 
	sqlString = "select * from mu_object where owner='" & session("customerNo") & "'"
	sqlString = sqlString + " and archive='F' and is_publish='T' and is_discard='F' and object_id="& FRM_objectId 
	 
	executeQuery conn,movaRS,sqlString,1,1
	if movaRS.bof or movaRS.eof then
		movaRS.close
		response.write  "对不起，不存在这个业务模型"
	else
	'Dim Form_Frm
	Dim FRM_object_name,FRM_object_code,FRM_print_template,FRM_table_name
	Dim FRM_is_hierarchy,FRM_chk_repeat,FRM_add_continue,FRM_is_single
	Dim FRM_pre_new_js,FRM_end_new_js,FRM_end_edit_js,FRM_pre_edit_js,FRM_pub_js
	Dim FRM_supper_manager,is_supper_manager
	Dim FRM_is_owner,FRM_depend_master,FRM_mark_fieldValue ,FRM_template_field,FRM_template_define
	
	FRM_object_name = movaRS("object_name")
	if REQ_objectName<>"" then 
		FRM_object_name = REQ_objectName
	end if 
	FRM_table_name = movaRS("table_name")
	FRM_object_code = movaRS("object_code")
	FRM_print_template = movaRS("print_template")
	FRM_is_private = movaRS("is_private")
	FRM_is_hierarchy = movaRS("is_hierarchy")
	FRM_chk_repeat = ucase(movaRS("chk_repeat"))
	FRM_add_continue = movaRS("add_continue")
	if FRM_customer_id="-1" then 
		FRM_is_single="T"
	else
		FRM_is_single = movaRS("is_single")
	end if 
	'FRM_is_single = movaRS("is_single")
	FRM_pre_new_js  = movaRS("pre_new_js")	
 	FRM_end_new_js  = movaRS("end_new_js")
	FRM_end_edit_js = movaRS("end_edit_js")
 	FRM_pre_edit_js = movaRS("pre_edit_js")
 	FRM_pub_js = movaRS("pub_js")
 	FRM_is_owner = movaRS("is_owner")
 	FRM_depend_master = movaRS("depend_master")
 	FRM_template_field = movaRS("template_field")
 	FRM_template_define = movaRS("template_define")

	'标记模板的字段定义内容
	FRM_mark_fieldValue =""
	Dim Hidden_Field_list ,hidden_Object_List
	Hidden_Field_list = ""
	hidden_Object_List=""
	
 	'超级管理员，面向模型的
 	FRM_supper_manager = movaRS("supper_manager") 
 	is_supper_manager = false
 	if inStr( "," & UCase(FRM_supper_manager)& "," , "," & UCase(session("userRole"))& ","  )>0   then 
		is_supper_manager = true 
	end if 
	
	Dim FRM_new_submit_js,FRM_edit_submit_js,FRM_all_show_master,FRM_view_col
	Dim FRM_object_searchScope
 	FRM_new_submit_js = movaRS("new_submit_js")
 	FRM_edit_submit_js = movaRS("edit_submit_js") 
 	FRM_all_show_master = movaRS("all_show_master")
	
	FRM_view_col = movaRS("view_Col")
	FRM_view_col = FRM_view_col * 2
	
	FRM_object_searchScope = movaRS("search_scope")



'获取表的主键字段
Dim keyName,objectNo,FRM_pre_js,FRM_end_js
keyName = getKeyNameByTable(FRM_table_name)
objectNo = getNoNameByTable(FRM_table_name)
Dim masterName
masterName = getmasterNameByTable(FRM_table_name)


FRM_pre_js =""
FRM_end_js = ""
Dim FRM_submit_js
FRM_submit_js=""
FRM_pre_js = FRM_pub_js
dim is_owner_allow_edit
is_owner_allow_edit=true
if isNew then 
	getObjectField FRM_objectId,"NEW"		'获取字段属性
	'debugObjectField
	'页面显示时执行的js 
	FRM_pre_js = FRM_pre_js & vbcrlf & FRM_pre_new_js  & "" & vbcrlf
	FRM_submit_js = FRM_new_submit_js  & "" & vbcrlf  
	
	sqlString = "select O.*,"
	sqlString = sqlString & "T.team_name"
	sqlString = sqlString & " from " & FRM_table_name & " O,mova_team T "
	sqlString = sqlString & " where O.archive='F' and O.owner='" & session("customerNo") & "' and O."& keyName &"="& FRM_opp_id 
	Dim FRM_team_id 
	FRM_team_id = session("team")
	Dim FRM_scope 
	FRM_scope = FRM_object_searchScope

		dyParamValue = req("dyParam") 
		'获取对象屏蔽字段和子对象　
			if trim(FRM_template_field) <> "" then 
				getCtrolSplitValue dyParamValue,FRM_template_field 
				Dim dyValue 
				dyValue = CtrolReturnValue
				getCtrolSplitValue  FRM_template_define,dyValue
		 		Hidden_Field_list = CtrolReturnValue
				hidden_Object_List=CtrolReturnValueExt 
			end if  
	'response.write sqlString
else

	
	'页面显示时执行的js 
	FRM_pre_js = FRM_pre_js & vbcrlf & FRM_pre_edit_js  & "" & vbcrlf
  FRM_submit_js = FRM_edit_submit_js  & "" & vbcrlf 
 	
	getObjectField FRM_objectId,"EDIT" '获取字段属性
	'debugObjectField
	getRuleArray FRM_objectId '获取模型规则
		if FRM_is_single="T" then 
			sqlString = "select O.* ,"
			sqlString = sqlString & "T.team_name,"
			sqlString = sqlString & "(select username from mova_user where mova_userid=O.createuser) as createBy ,"
			sqlString = sqlString & "(select username from mova_user where mova_userid=O.modifyUser) as modifyBy  "
	
			sqlString = sqlString & " from " & FRM_table_name & " O,mova_team t "
		  
			sqlString = sqlString & " where O.team=T.team_id "
			sqlString = sqlString & " and O.archive='F' and O.owner='" & session("customerNo") & "' and O."& keyName &"="& FRM_opp_id
			if session("roleScope")<>"G" then 
					sqlString = sqlString & " and (O.team=" & session("team") & " or O.search_scope='ALL' )"
			end if 
		else
				sqlString = "select c.customer_no,C.customer,c.main_phone,"
				sqlString = sqlString + " O.* ,"
				sqlString = sqlString & "T.team_name,"
				sqlString = sqlString & "(select username from mova_user where mova_userid=O.createuser) as createBy ,"
				sqlString = sqlString & "(select username from mova_user where mova_userid=O.modifyUser) as modifyBy  "
				sqlString = sqlString + " from "& FRM_table_name &" O, MU_CUSTOMER C,mova_team T "
				sqlString = sqlString & " where O.CUSTOMER_ID=C.CUSTOMER_ID and O.Team=t.team_id "
				sqlString = sqlString & " and C.owner='" & session("customerNo") & "' AND O.owner='" & session("customerNo") & "'" 
				sqlString = sqlString & " AND  O.archive='F' and c.archive='F' and o."& keyName &"=" & FRM_opp_id
				if session("roleScope")<>"G" then 
					sqlString = sqlString & " and (O.team=" & session("team") & " or (O.search_scope='ALL' and C.search_scope='ALL'))"
				end if  
		end IF 
 
		executeQuery conn,movaRS,sqlString,1,1
		if movaRS.bof or movaRS.eof then
			movaRS.close
			'response.write sqlString
			MsgBox "没有这个记录",""
			response.end
		end if
		
	''同创代码
	
	
	
	if ucase(FRM_table_name)="MU_CUSTOMER" then 
		session("isSLR") =true
		session("isZRR") =true
		session("locked")=false	
		session("isRW")= false
	end if 
	
	if ucase(FRM_table_name)="MU_OPP20" then 
		session("isSLR") =false
		session("isZRR") =false
		session("locked")=false	
		session("isRW")= true
	 if cstr(session("userid"))=cstr(movaRS("d1")) then 
			session("isSLR") = true
	 end if 
	 if cstr(session("userid"))=cstr(movaRS("d2")) then 
			 session("isZRR") = true
	 end if  
		if (getOnefield("select txt from mu_item_list where item_code='M00_I0051' and txt='"&movaRS("v1")&"'")<>"") or  movaRS("v1")="已完成" then 
			session("locked") = true
		else
			
		end if 
	END IF 
	

		
			'获取对象屏蔽字段和子对象　
			if trim(FRM_template_field) <> "" then 
		 		getCtrolSplitValue  FRM_template_define,movaRS(FRM_template_field)
		 		Hidden_Field_list = CtrolReturnValue
				hidden_Object_List=CtrolReturnValueExt
			end if 
			
		Dim FRM_createdate,FRM_createBy,FRM_modifydate,FRM_modifyBy,FRM_hierarchy_id,FRM_createuser
		FRM_team_id= movaRS("team")
		FRM_scope = movaRS("search_scope")
		FRM_createdate=movaRS("createdate")
		FRM_createBy=movaRS("createBy")
		FRM_modifydate=movaRS("modifydate")
		FRM_modifyBy=movaRS("modifyBy")
		OPP_CUR_TEAM = FRM_team_id
		FRM_hierarchy_id= movaRS("hierarchy_id")
		FRM_createuser = movaRS("createUser")
		if FRM_is_single="F" then 
			FRM_customer = movaRS("customer")
		end if 
		FRM_object_no = movaRS(objectNo)
		  
			if FRM_is_owner="T" then
				if session("userid")<>FRM_createuser then 
					if not is_supper_manager then
						is_owner_allow_edit = false
					end if 
			 	else
			 		is_owner_allow_edit=true
				end if 
			else
				is_owner_allow_edit = true
			end if 
 
		
		chkObjectTeam FRM_team_id,FRM_scope 
		'获取每个字段的值
		For k=1 to ObjectFieldArray_X
 			if ObjectFieldArray(k,1)="" then exit For
 			ObjectFieldArray(k,curIndex_Property_value) = movaRS(ObjectFieldArray(k,1)) & "" 			'潜在的字段类型转变
 			if trim(ObjectFieldArray(k,18))<>"" then '处理规则字段！！！
 				haveRuleField = true 
 				
				'解析规则			
 				parseFieldRule ObjectFieldArray(k,1),ObjectFieldArray(k,curIndex_Property_value),ObjectFieldArray(k,18)
 			end if 
		Next
		if ucase(FRM_table_name) = ucase("mu_customer") then 
			newObject_list = ""
			viewObject_list = ""
			getNewObjectMenu FRM_opp_id,movaRS("customer_no"),hidden_Object_List
		end if
		movaRs.close
end if
' 	for i=0 to 10
' 			if curRuleOperate(i,1)="" then exit for 
' 			response.write curRuleOperate(i,1) & "," & curRuleOperate(i,2) & "<BR>"
' 	Next
'	response.write curRuleAllowEditField
'获取主表的 字段信息
if FRM_is_single<>"T" and FRM_all_show_master="T" then 
	initJoinShowMastFieldCode FRM_objectId
	initMastTableFieldArray FRM_objectId,FRM_customer_id
end if 

'输出开始的js
response.write "<script>" & vbcrlf & convertData2JS(FRM_pre_js) & "</script>" & vbcrlf

'输出提交时执行的submit js 
response.write "<script>function oppSubmit(){" & vbcrlf & convertData2JS(FRM_submit_js) & vbcrlf 
response.write "return chk(window.document.mainform);" & vbcrlf
response.write "}</script>" & vbcrlf
 


'jquery支持开始<加载后调用>
response.write "<script>" & vbcrlf
response.write "$(document).ready(function() { " & vbcrlf
'查询有参照克隆信息的字段
Dim k
 for k=1 to ObjectFieldArray_X
			if ObjectFieldArray(k,11)="T" then
				'发现有可以参照克隆信息的字段
				printCloneJavascript FRM_table_name,FRM_object_code,ObjectFieldArray(k,1),FRM_opp_id
			exit For
			end if 
Next

'jquery支持结束<加载后调用>
		


'弹出信息框
response.write "$( "& chr(34) &"#info_dailog"& chr(34) &" ).dialog({" & vbcrlf
response.write "			autoOpen: false," & vbcrlf
response.write "			width: 850," & vbcrlf
response.write "			height: 350," & vbcrlf
response.write "			modal: true," & vbcrlf
response.write "			buttons: {" & vbcrlf
response.write "				"& chr(34) &"关闭"& chr(34) &": function() {" & vbcrlf
response.write "				$( this ).dialog( "& chr(34) &"close"& chr(34) &" );" & vbcrlf
response.write "				$("& chr(34) &"#info_dailog"& chr(34) &").html("& chr(34)& chr(34) &");" & vbcrlf
response.write "				}  " & vbcrlf
response.write "			} " & vbcrlf
response.write "		});" & vbcrlf
response.write "$( "& chr(34) &"#infoTabs"& chr(34) &" ).tabs({ remote: true });" & vbcrlf
 

'jquery支持结束<加载前调用>
response.write "}); " & vbcrlf	
response.write "</script>" & vbcrlf	
%> 


<%
for k=1 to ObjectFieldArray_X
			if ObjectFieldArray(k,6)="{IVR_DATA}" then
				'发现有交互IVR字段
				printIvrDateJavascript ObjectFieldArray(k,1)  
			exit For
			end if 
Next
%> 
<div class="cn_list_title">
	<%if FRM_opp_id="-1" then %>
		新增《<font color=red><%=FRM_object_name%></font>》 
 	  			
		<%if FRM_is_hierarchy ="T" then %>
<!---			，关联<%=FRM_object_name%>：<a href="opp.asp?objectId=<%=FRM_objectId%>&id=<%=REQ_hid%>&cid=<%=REQ_hid%>"><%=REQ_hName%></a>-->
		<%end if %>
	<%end if%>
	
	<%if FRM_opp_id<>"-1" then %>
		《<font color=red><%=FRM_object_name%></font>》编号：<%=FRM_object_no%>
		<%if FRM_is_hierarchy ="T" and FRM_hierarchy_id<>"0" then %>
			，关联<%=FRM_object_name%>：<a href="opp.asp?objectId=<%=FRM_objectId%>&id=<%=FRM_hierarchy_id%>&cid=<%=FRM_hierarchy_id%>"><%=getOppProperty(FRM_table_name,FRM_hierarchy_id,masterName)%></a>
			
		<%end if %>
	<%end if %>
<% 
	if not isNew then
		if FRM_is_single<>"T" and req("navType")<>"dialog" then 
		%>，相关业务处理：<a href="opp.asp?objectId=<%=session("DEF_OBJECT_ID")%>&id=<%=FRM_customer_id%>&cid=<%=FRM_customer_id%>"><font color=#FF8000 size=+1><b><%=FRM_customer%></font></a><%
		end if
	else
		if ucase(FRM_table_name) <> ucase("mu_customer") then 
			%><a href="opp.asp?objectId=<%=session("DEF_OBJECT_ID")%>&id=<%=FRM_customer_id%>&cid=<%=FRM_customer_id%>"><%=mastTableFieldArray(getIndex_mastTableFieldArray("CUSTOMER",1),3)%></a>	<%	
		end if 
	end if %>
</div>
<div class="cn_list_title_right">
	 <%
	 Dim FRM_customer,FRM_object_no
	  if FRM_is_hierarchy ="T"  and FRM_customer&""<>"" then %>
	 		| <a href="opp.asp?objectId=<%=FRM_objectId%>&hid=<%=FRM_customer_id%>&hName=<%=FRM_customer%>">新增<%=FRM_object_name%></a> 
	 <% end if %>
	 
	 
	 <%=newObject_list %>
</div>




<DIV class=cn_col01>


 <TABLE border=0 cellSpacing=1 cellPadding=0>

 <form action="opp_.asp" method="post" name="mainform" id="mainform" onSubmit="return oppSubmit();"> 
  <input type="hidden" name="d" value="F">
  <input type="hidden" name="id" value="<%=FRM_opp_id%>">
  <input type="hidden" name="i" value="<%=FRM_objectId%>">
  <input type="hidden" name="t" value="<%=FRM_table_name%>">
  <input type="hidden" name="o" value="<%=FRM_object_code%>">
  <input type="hidden" name="no" value="<%=FRM_object_no%>">
  <input type="hidden" name="c" value="<%=FRM_customer_id%>">
  <input type="hidden" name="ot" id="ot" value="<%=session("oppType")%>">
  <input type="hidden" name="param1" id="param1" value="<%=session("param1")%>">
  
  <input type="hidden" name="hierarchy_id" value="<%=REQ_hid%>">
  <input type="hidden" name="chk_repeat" value="<%=FRM_chk_repeat%>">
	<input type="hidden" name="add_continue" value="<%=FRM_add_continue%>">
  
  <input type="hidden" name="dyParam" value="<%=req("dyParam")%>">
 	<input type="hidden" name="navType" value="<%=req("navType")%>">
 	
 	
  <TBODY>
<%
 Dim allowMasterEdit ,allowMaserDel
		 	 allowMasterEdit = true
		 	 allowMaserDel = true
 	  	 
if FRM_is_single<>"T" and FRM_all_show_master="T"  then
	
	
	'显示关联的主数据信息
 %>
 	<tr>
 	<%
 	 Dim Cur_col
 	 Cur_col = 0
 	for i=1 to mastTableFieldArray_X
		if mastTableFieldArray(i,1)="" then exit for
		
		'依赖主表控制编辑删除
			if instr(ucase(FRM_depend_master),ucase(replace(mastTableFieldArray(i,1),"___",""))&"^")>0  then 
					getCtrolSplitValue FRM_depend_master,replace(mastTableFieldArray(i,1),"___","")
					'response.write CtrolReturnValueExt & "|" & CtrolReturnValue &"<BR>"
					if instr(CtrolReturnValueExt,"M")>0 and ucase(mastTableFieldArray(i,3))=ucase(CtrolReturnValue) then
						allowMasterEdit = false
					end if 
					if instr(CtrolReturnValueExt,"D")>0 and ucase(mastTableFieldArray(i,3))=ucase(CtrolReturnValue) then
						allowMaserDel = false
					end if 
				end if 	
			
			
		%>
		<input type="hidden" id="<%=getMastFormName(mastTableFieldArray(i,1))%>" name="<%=getMastHiddenFormName(mastTableFieldArray(i,1))%>"  title="<%=getMastHiddenFormName(mastTableFieldArray(i,2))%>"  value="<%=mastTableFieldArray(i,3)%>">
		<%
		Dim j
			for j=1 to JoinShowMastFieldCodeArray_X+1
				if JoinShowMastFieldCodeArray(j)="" then exit for
				if JoinShowMastFieldCodeArray(j)=mastTableFieldArray(i,1) then 
					%>
						<TD class=cn_td09 align=right ><%=mastTableFieldArray(i,2) %>:</TD>
    				<TD class=cn_td10 valign="left" >
    					<div id="<%=getMastHiddenFormName(mastTableFieldArray(i,1))%>"><%=mastTableFieldArray(i,3)%></div></td>
					<%
				 		Cur_col = Cur_col + 1 + 0*2+1
						if Cur_col >= FRM_view_col then
							response.write "</tr>" & vbcrlf& "<tr>" 
							Cur_col = 0
						end if 
					end if 
			Next
	Next
		if Cur_col<=FRM_view_col and Cur_col>0 then 
			for i=1 to  (FRM_view_col-Cur_col)/2
			%>
					<TD class=cn_td09 align=right>&nbsp;</TD>
  	  		<TD class=cn_td10 align="left" >&nbsp;</td>
			<%
			Next
		end if
	%>
</tr>
	
<tr><td class=cn_td09 	colspan="<%=FRM_view_col%>"></td></tr>
<%end if %>
<TR>
<%
 
  Dim colspan
  Dim isRequired
  Dim requireStr
  Dim  isHidden,isReadOnly
  Cur_col = 0
  colSpan = ""
  isRequired = ""
  Dim is_hiddenField
  for k=1 to ObjectFieldArray_X
		if ObjectFieldArray(k,1)=""  then exit For
		if  instr(ucase(Hidden_Field_list),"|"&ucase(ObjectFieldArray(k,1))&"|")>0 then 
			is_hiddenField = true 
		else
			is_hiddenField = is_hidden_field_by_role(ObjectFieldArray(k,21))
	end if 
		
		if cint(ObjectFieldArray(k,7))>0 then 
			colSpan = " colSpan='" & cint(ObjectFieldArray(k,7))*2+1 & "' "
		else
			colSpan = ""
		end if
		
		if ObjectFieldArray(k,4)="T" then 
			isRequired = " class='require' "
		else
			isRequired = ""
		end if
		
		'表单名称
		Dim FormName,HiddenFormName,FaceFormName
		FormName = getFormName(ObjectFieldArray(k,1))
		HiddenFormName = getHiddenFormName(ObjectFieldArray(k,1))
		FaceFormName = getFaceFormName(ObjectFieldArray(k,1))
		
		'录入校验
		if ObjectFieldArray(k,4)="T" then 
			requireStr = requireStr & "if (isEmptyObj( form." & FormName & ")){ str=str +  '"& ObjectFieldArray(k,2) &"必须输入！\n';}" & vbcrlf
		end if
		
		'数值校验
		if ObjectFieldArray(k,13)="T" then 
			requireStr = requireStr & " str = str + Validate( '"& FormName &"', '" & ObjectFieldArray(k,2) & "' , 'Numeric');" & vbcrlf
		end if 
		  
		
		'获取当前的值
		Dim curValue
		if isNew then
	 'response.write FRM_add_continue &"|" & REQ_add_continue & "|x..." & ObjectFieldArray(k,10)
			if REQ_add_continue="T" and ObjectFieldArray(k,10)="T" then 
				'记忆字段
				curValue = session(FRM_object_code & "_" & ObjectFieldArray(k,1)) & ""
			 
			else
					curValue=getDefaultValue(ObjectFieldArray(k,6)) & ""
					if left("curValue",1)="~" then
					'默认客户信息，待补充	
					end if
			end if
			Dim dyParamValue 
			dyParamValue = req("dyParam")
			getCtrolSplitValue dyParamValue,ObjectFieldArray(k,1)
			if CtrolReturnValue<>"" then curValue = CtrolReturnValue  '优先取url传参
			ObjectFieldArray(k,curIndex_Property_value) = curValue
		else
			curValue=ObjectFieldArray(k,curIndex_Property_value) 
			ObjectFieldArray(k,curIndex_Property_value) = curValue
			if ObjectFieldArray(k,10)="T" then 
				session(FRM_object_code & "_" & ObjectFieldArray(k,1)) = ""
			end if 
 
			'业务规则判断，入口
			if allowEdit ="T" then 
				allowEdit   = getObjectRule(FRM_objectId,ObjectFieldArray(k,1),"Edit",curValue)
			end if 
			
			if allowDelete ="T" then
				allowDelete = getObjectRule(FRM_objectId,ObjectFieldArray(k,1),"Delete",curValue)
			end if 
			
			if FRM_is_private = "T" then 
				if FRM_createuser = cint(session("userid")) then 
					allowEdit ="T"
					allowDelete ="T"
				else
					allowEdit ="F"
					allowDelete ="F"
				end if 
			end if 
			
			
			
			
	
	
		end if
		'处理宽度
		Dim widthFieldHTML
		widthFieldHTML = ""
		if instr(ucase(ObjectFieldArray(k,8)),"%")>0 or instr(ucase(ObjectFieldArray(k,8)),"PX")>0 then
			widthFieldHTML = " style='width:" & ObjectFieldArray(k,8) & "' "
		else
			widthFieldHTML = " size='" & ObjectFieldArray(k,8) & "' "
		end if 
		
		'输出原始的值
		response.write "<input type="&chr(34)&"hidden"&chr(34)&" id="&chr(34)&"OLD_" & FormName &chr(34)&" name="&chr(34)&"OLD_" & FormName &chr(34)&" value="& chr(34)& decode_SQL2HTML(curValue) &chr(34)&">" 
		if not is_hiddenField  then  ' 如果不是隐藏字段，则输出 
%>
		<TD class=cn_td09 align=right  id="<%=getFieldTitleBoxName(ObjectFieldArray(k,1))%>"><div id="<%=FormName%>__"  style="display: inline;"></div><span <%=isRequired%>><%=ObjectFieldArray(k,2)%></span>:</TD>
    <TD class=cn_td10 <%=colSpan%> align="left"  id="<%=getFieldTitleContentName(ObjectFieldArray(k,1))%>">
		<%
		'response.write "K:"  & is_owner_allow_edit
		'业务规则判断该字段是否可编辑  isNew 
		if (getFieldRule(FRM_objectId,ObjectFieldArray(k,1),k,isNew) ="F"  or  not is_owner_allow_edit) and not is_supper_manager then 
 
			 isReadOnly=true
		 ' and (isNew or  inStr(curRuleAllowEditField,"," & ucase(ObjectFieldArray(k,1)) & "," )>0)  then 
		 	'	ObjectFieldArray(k,curIndex_Property_readOnly)="T"
		 	'不可编辑
			if ObjectFieldArray(k,19)="T" then 
				'如果是富文本
				%>
					<div class="noneStyle">
					<%= decode_SQL2HTML(curValue) %>
					</div>
				<%
			else	
				if ObjectFieldArray(k,20)="T" then 
					'如果是附件
					%>
					<div style="display: inline;" id="<%=HiddenFormName%>"><a href="/movaOpps/opp/<%=curValue%>" target="_blank" title="/movaOpps/opp/<%=curValue%>"> 点击新窗口打开</a> </div> 
					<%
				else
					'其他的
					if ObjectFieldArray(k,24)<>"" then 
			 		'是pick 窗口选择字段
			 		%>
			 		<div style="display: inline;" id="<%=HiddenFormName%>"><%=getPickValue( ObjectFieldArray(k,24),curValue )%></div>
			 		<%
			 	else
			 		%>
			 			<div style="display: inline;" id="<%=HiddenFormName%>"><%=curValue%></div>
			 		<%
				end if 
				 
				end if 
			end if 
		%> <input type="hidden" id="<%=FormName%>" name="<%=FormName%>" value="<%=decode_SQL2HTML(curValue)%>"> 
			
		<%
		else 
			haveEditField = true
			isReadOnly = false 
			
			'可以编辑
			ObjectFieldArray(k,curIndex_Property_readOnly)="F"
			'如果是文本输入框
			if ObjectFieldArray(k,3)="INT" OR ObjectFieldArray(k,3)="VARCHAR" OR ObjectFieldArray(k,3)="PHONE" then 
			 
			 	if ObjectFieldArray(k,24)<>"" then 
			 		'是pick 窗口选择字段
			 		%><nobr>
			 			 <input class=cn_input03 id="<%=FaceFormName%>" type="text" <%=widthFieldHTML%> readonly name="<%=FaceFormName%>" value="<%=getPickValue( ObjectFieldArray(k,24),curValue )%>">
			 			<input class=cn_input03 id="<%=FormName%>" type="hidden"  name="<%=FormName%>" value="<%=curValue%>">
			 			 
			 		<%
			 	 
				response.write "<img title='搜索' id='" & FormName & "_pic' src='" & movaStyle & "/images/search.png' align='top' " 
				response.write " border=0  " 
			
				response.write " onClick='dialogPick("& chr(34)&appendPickUrl(ObjectFieldArray(k,25),FormName,FaceFormName) & chr(34) &","& chr(34)& chr(34) &")'"  
				response.write " alt='点击查询'/></nobr>" 
			 	else
			 		%>
			 			<input class=cn_input03 id="<%=FormName%>" type="text" <%=widthFieldHTML%> name="<%=FormName%>" value="<%=curValue%>">
			 		<%
				end if 
				%>
				
				
				
				 <%if ObjectFieldArray(k,20)="T" then %>	
					<button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.<%=FormName%>','JPG|GIF|PNG|DOC|DOCX|PPT|PPTX|XLS|XLSX|TXT|PDF','5000','client/file','_')">上传附件</button><a href="<%=curValue%>" target="_blank" title="<%=curValue%>">打开</a>
				<%end if %>
			<%else%>
				<% '如果是TIME
				if ObjectFieldArray(k,3)="TIME" then %>
				<NOBR><INPUT ondblclick="this.value=''"  id="<%=FormName%>"  <%=widthFieldHTML%> class=cn_input03 type=text name="<%=FormName%>" value="<%=curValue%>" id="<%=FormName%>"><%=getCalendar(ObjectFieldArray(k,1),FormName,"T")%></NOBR>
				<%else%>
					<% '如果是DATE
					if ObjectFieldArray(k,3)="DATE" then %>
					<NOBR><INPUT  ondblclick="this.value=''"  id="<%=FormName%>"  <%=widthFieldHTML%> class=cn_input03 type=text name="<%=FormName%>" value="<%=curValue%>" id="<%=FormName%>"><%=getCalendar(ObjectFieldArray(k,1),FormName,"D")%></NOBR>
					<%else%>
							<% '如果是TEXT
							if ObjectFieldArray(k,3)="TEXT" then  
								if ObjectFieldArray(k,19)="T" then 
								'如果是富文本
								%><div class="noneStyle">
									<textarea  name="<%=FormName%>"  id="<%=FormName%>"  <%=widthFieldHTML%> rows="<%=ObjectFieldArray(k,9)%>" 
										 style="width:100%;height:<%=cint(ObjectFieldArray(k,9))*23 %>px;visibility:hidden;"
										><%=htmlspecialchars(curValue)%></textarea>
								</div>
								<% kindEdit "mainform",FormName
								else
								%><textarea  name="<%=FormName%>"  id="<%=FormName%>"  <%=widthFieldHTML%> rows="<%=ObjectFieldArray(k,9)%>" ><%=curValue%></textarea><%
								end if 
						else%>
								 <select id="<%=FormName%>"  name="<%=FormName%>">
									<option value=""></option>
									<%=getItemList(ObjectFieldArray(k,3),curValue)%>
								</select>
							<%end if %>
					<%end if %>
				<%end if %>
			<%end if %>
<%		end if 
			if "_" & FRM_chk_repeat= FormName then 	response.write "<span id='errorInfo'></span>"

			'克隆字段
			if ObjectFieldArray(k,11)="T" and  not isReadOnly then 
				 response.write "&nbsp;&nbsp;<img id='" & FormName & "_clone' src='" & movaStyle& "/images/refresh.png' valign='absmiddle' " 
				 response.write " border=0  " 
				 response.write " alt='点击根据该字段克隆信息录入'  title='点击根据该字段克隆信息录入'/>"
				 
			end if 
			
			'关联查询
			'if ObjectFieldArray(k,5)="=" then 
			'	response.write "&nbsp;&nbsp;<img title='点击根据该字段关联查询' id='" & FormName & "_clone' src='/movaOpps/opp/images/search.png' align='top' " 
			'	response.write " border=0  " 
				
			'	response.write " onClick='window.location.href="& chr(34) &"searchOpp.asp?objectId="& FRM_objectId &"&isStart=0" 
			'	response.write "&_" & ObjectFieldArray(k,1) & "=" & curValue &  chr(34) & "'"
			'	response.write " alt='点击根据该字段关联查询'/>"
			'end if
			
			
			
			
			
			'输出字段HTML扩展，只有在字段可以显示时才输出 
			if isNew then 
				response.write convertData2JS(ObjectFieldArray(k,22) & "") 
			else
				response.write convertData2JS(ObjectFieldArray(k,23) & "")
			end if
%>
    </TD>
<%
		Cur_col = Cur_col + 1 + cint(ObjectFieldArray(k,7))*2+1
		if Cur_col >= FRM_view_col then
			response.write "</tr>" & vbcrlf& "<tr>" 
			Cur_col = 0
		end if 
	
	else
		'输出隐藏字段 
			%><input type="hidden" id="<%=FormName%>" name="<%=FormName%>" value="<%=decode_SQL2HTML(curValue)%>"><%
	end if
		
	Next
	
	
	'如果是联系客户模型 则处理
	'***************
	if FRM_objectId="20" then 
		 %>
		 <input type="hidden" name="from_vk" id="from_vk" value="<%=req("vk")%>">
		 <%
	end if 
	
	'输出Team的
	if session("roleScope")="G" then %>
		<TD class=cn_td09 align=right><span class='require'>公司:</TD>
    <TD class=cn_td10 align="left" >
   	<select name="team">
   		<option value=""></option>
    		<%=getUserTeamPicklist(FRM_team_id,"")%>
    </select>
	<%
		Cur_col = Cur_col + 1 + 0*2+1
		if Cur_col >= FRM_view_col then
			response.write "</tr>" & vbcrlf& "<tr>" 
			Cur_col = 0
		end if 
	else
		%>
			<input type="hidden" name="team" value="<%=FRM_team_id%>">
		<%
		    end IF
	'输出可视范围	    
	if session("roleScope")="G" then %>
		<TD class=cn_td09 align=right>可视范围:</TD>
    <TD class=cn_td10 align="left" >
   	<select name="_SCOPE" id="_SCOPE">
    		<%=picklist("#search_scope",FRM_scope)%>
    </select>
	<%
		Cur_col = Cur_col + 1 + 0*2+1
		if Cur_col >= FRM_view_col then
			response.write "</tr>" & vbcrlf& "<tr>" 
			Cur_col = 0
		end if 
	else
		%>
			<input type="hidden" name="_SCOPE" value="<%=FRM_scope%>" id="_SCOPE">
		<%
		    end IF    
	if Cur_col<=FRM_view_col and Cur_col>0 then 
Dim i
		for i=1 to  (FRM_view_col-Cur_col)/2
		%>
				<TD class=cn_td09 align=right>&nbsp;</TD>
    		<TD class=cn_td10 align="left" >&nbsp;</td>
		<%
		Next
	end if 
	%> 
	
 </tr>
 <tr>
 <td colspan="<%=FRM_view_col%>" align="center">
 	<input name="logType" value="" type="hidden"> 

	<% if allowEdit="T" then 
	'	response.write session("isRW") & "<BR>"
	'	response.write FRM_table_name & "<BR>"
	'	response.write session("iszRR") & "<BR>"
	'	response.write session("isSLR") & "<BR>"
	'	response.write session("locked") & "<BR>"
		
		%>
	 	
	<%if chkAccount(getObjectOppSec(FRM_objectId,"DY_NEW") ) and isNew then  %>
 	  	<BUTTON class=cn_button01 type=submit onClick="this.form.logType.value='';" >保存</button>
 	  	<%if FRM_objectID="21" THEN %><br>
 	  	<DIV width=500 align="left">
 	  		<input type="hidden" name="allowMutiValue"  value="F" > 
 	  		<input type="checkbox" name="allowMuti" onClick="mutiInput(this,this.form)" > 挑勾开启批量录入任务<br>
 	  		说明： 批量录入时，请在任务内容中按回车键分行逐个录入每个任务。
 	  		<script>
 	  			function mutiInput(obj,form){
 	  				if (obj.checked){
 	  					form.allowMutiValue.value="T";
 	  				}else{
 	  					form.allowMutiValue.value="F";
 	  				} 
 	  			}
 	  		</script>
 	  		</DIV>
 	  	<%end if %>
 	  	 
 	  <%end if %>
 	  <%if  checkTC_sec(FRM_table_name,"EDIT") and chkAccount(getObjectOppSec(FRM_objectId,"DY_EDIT") ) and not isNew and haveEditField and is_owner_allow_edit AND allowMasterEdit  then 
 	  	
 	  	 %>
 	  
 	  	<BUTTON class=cn_button01 type=submit onClick=" onClick="this.form.add_continue.value='F';this.form.logType.value='';return chk(this.form);" >保存</button>
 	  	 
 	  <%end if %>
 	  <%for i=0 to 10
			if curRuleOperate(i,1)="" then exit for 
			if trim(curRuleOperate(i,1))<>"."  and chkAccount(getMplFieldRule(FRM_objectId,curRuleOperate(i,1) ))  then%>
			<BUTTON class=cn_button01 type=submit onClick="return confirmStatus(this.form,'<%=ucase(curRuleOperate(i,3))%>','<%=curRuleOperate(i,2)%>','<%=curRuleOperate(i,1)%>');"><%=curRuleOperate(i,2)%></button>
		<% 
			end if 
		Next
		%>
 	  <%end if %>
 	  
 	
 	  
 	  
 	  
 	 <%if FRM_print_template="" or FRM_print_template=null then %>
 	 <%else %>
 	 	<%if chkAccount(getObjectOppSec(FRM_objectId,"DY_PRINT") ) then %> 
 	 		<button name="printer" class=cn_button01  type="button" onClick="return confirmPrint(<%=FRM_objectId%>,<%=FRM_opp_id%>)"> 打印</button>
 	 	<%end if %>
 	 <%end if %>
 	 <%	if allowDelete="T"  and not isNew AND allowMaserDel and checkTC_sec(FRM_table_name,"del")  then %> 
 	 		<%if chkAccount(getObjectOppSec(FRM_objectId,"DY_DEL") ) and is_owner_allow_edit then %> 
 	 			<BUTTON class=cn_button01 type=submit  onClick="return chkDel(this.form)">删除</button>
 	 		<%end if %>
 	 <%end if%>
 	   <%
 	  '########################个性化按钮!!
 	  if FRM_objectId=1   then '是模拟验房 和新增任务时的特殊处理
 	  		IF getOppProperty("MU_CUSTOMER",FRM_opp_id,"D2")&""=cStr(session("userid"))&""  AND getOppProperty("MU_CUSTOMER",FRM_opp_id,"V1")="已发送" then 
 	  			response.write "<BUTTON class=cn_button01 type=submit  onClick='acceptJob(1)'>接受</button>" 
 	  			response.write "<BUTTON class=cn_button01 type=submit  onClick='acceptJob(0)'>不接受</button>" 
 	  		end if 
 		end if 
 		
 		if FRM_objectId=21  and not isNew  then '是任务时的特殊处理
 			%>
 			 <% if not session("locked") then %> <BUTTON class=cn_button01 type=button  onClick="sendEmail($('#_D2').val(),this.form.no.value)">发送邮件</button> 
 	  			 <BUTTON class=cn_button01 type=button  onClick='sendPrint()'>派单打印</button> 
 	  			  <iframe name="print" id="print" src="#" width=0 height=0 frameborder=0></iframe>
 	  			 <%end if %>
 	  	<%
 			if session("isSLR")   then 
 			%> 
 	  			
 	  			 <BUTTON class=cn_button01 type=submit  onClick="this.form.add_continue.value='T'">同客户继续新增任务</button> 
 	  	<%end if %>
 	  	<%if (session("isSLR") or session("isZRR")) and  not session("locked")  then %>
 	  	<BUTTON class=cn_button01 type=button  onClick="dialogPick('/movaOpps/core/pub/dailog/listUser.asp?pickId=_D2&pickValue=_SHOW_D2&submit=true','选择移交人')">任务移交</button>
 	  	<%END IF %>
 	  	
 	  			<script>
 	  			function sendEmail(userid,no){
						if (userid!="0"){
							if (confirm("发送邮件，确定吗？")){
	 	  					htmlobj=$.ajax({url:"/movaopps/userDefine/sendMail.asp?user="+ userid +"&no=" + no,async:false});
	 	  					alert(htmlobj.responseText); 
							}
						}else{
							alert("请选择责任人。");
						}
						
   				}
   				
   				function sendPrint(){
   					
   					if ($('#_VJ').val()==""||$('#_VO').val()==""){
   						alert("承建商和处理方必须输入才能进行派单打印");
   					}else{
   						if (confirm("确定打印？")){
 	  						$("#print").attr("src", "/movaopps/userDefine/sendPrint.asp?no=<%=FRM_object_no%>"); 
 	  						//window.open("/movaopps/userDefine/sendPrint.asp?no=<%=FRM_object_no%>");
 	  					}
   					}
   					
   					
 	  				
 	  				   
   				}
   
   				</script>
  
 	  			
 	  			<%
 		end if 
 	  
 	  
 	  %>
 	 <%
 	 	if FRM_opp_id="-1"  and FRM_add_continue="T" and chkAccount(getObjectOppSec(FRM_objectId,"DY_EDIT") ) then 
 			%>
 			<input type="checkbox" checked name="chkAddContinue" onClick="chgAddContinue(this.checked)"> 连续创建
 			<script>
 				function chgAddContinue(t){
 					if (t){
 						document.mainform.add_continue.value="T";
 					}else{
 						document.mainform.add_continue.value="F";
 					}
 				}
 			</script>
 			<%
 		end if
 	 
		if FRM_is_hierarchy ="T" then 
		itemCount = getOneField("select count(*) from " & FRM_table_name & " where owner='" & session("customerNo") & "' and hierarchy_id =" & FRM_opp_id  & " and archive='F'" ) 
			response.write " &nbsp;|&nbsp;&nbsp;<a href='searchOpp.asp?objectId="& FRM_objectId &"&isStart=0&hid="& FRM_opp_id &"'>"& FRM_object_name & "(<font color=#FF8000 size=+1><b>" & itemCount & "</b></font>个)</a>&nbsp;"
		end if	
			 
 	
 %>
 
 </td>
 </tr>
 <tr><td colspan=10 align="right">
 	<% if not isNew then %> 
			<font color="#AFAFAF">最新修改时间：<%=FRM_modifyDate%> &nbsp;
 	最新修改人：<%=FRM_modifyBy%> &nbsp;
 	创建时间：<%=FRM_createDate%> &nbsp;
 	创建人：<%=FRM_createBy%> &nbsp;
</font >
	 
<%end if %>


 	</td></tr>
</TBODY>
</TABLE>
 
</div>
<DIV class=cn_col01>

<div id="infoTabs">
  <ul id="infoTabsUL">
   
  	 <%
  	 	if ucase(FRM_table_name) = ucase("mu_customer") then 
 				response.write viewObject_list
 			end if 
 	 		
 	 		'##### 用户定义的子菜单
 	 		
 	 		if not isNew  and ucase(FRM_table_name) = ucase("mu_customer")  then 
 	 		%>
 	 		<li><a href="/movaOpps/opp/mpl.asp?object_id=1&no=sameRoomMY&param1=<%=ObjectFieldArray(getIndex_ObjectFieldArray("V5",1),curIndex_Property_value)%>">同房间任务(<font color=#FF8000 ><%=countByMpl("sameRoomMY")%></font>)</a></li>
 	 		
 	 		<%end if %>
 	 		
 	 		
<%	if not isNew  and ucase(FRM_table_name) = ucase("mu_opp20")  then   
	'response.write ObjectFieldArray(getIndex_ObjectFieldArray("VK",1),curIndex_Property_value) 
 	 		response.write "<li><a href='/movaOpps/userDefine/trackOpp.asp?no=" & FRM_object_no &"&v0="&ObjectFieldArray(getIndex_ObjectFieldArray("V0",1),curIndex_Property_value)&"&vk="&ObjectFieldArray(getIndex_ObjectFieldArray("VK",1),curIndex_Property_value) &"&status=" & ObjectFieldArray(getIndex_ObjectFieldArray("V1",1),curIndex_Property_value) &"'>任务跟踪</a></li>"
 	 		response.write "<li><a href='/movaOpps/opp/mplTab.asp?object_id=1&no=job_room&param1="& ObjectFieldArray(getIndex_ObjectFieldArray("V5",1),curIndex_Property_value)&"'>相同房间任务</a></li>"
 	 		end if %>
 	 		<%
			if not isNew and chkAccount(getObjectOppSec(FRM_objectId,"DY_LOG")) then  
				response.write "<li><a href='logInfo.asp?objectCode=" & FRM_object_code &"&oppId=" & FRM_opp_id &"'>日志</a></li>"
 			end if 
 %> 
    
  </ul> 
</div> 
<%
session("OBJECT_TABLE_NAME") = FRM_table_name 
session("OBJECT_TABLE_IsNew") = isNew
session("OBJECT_TABLE_Values_V0") = ObjectFieldArray(getIndex_ObjectFieldArray("V0",1),curIndex_Property_value) 
session("OBJECT_TABLE_IsContinue") = FRM_add_continue 
%>
<!-- #include virtual="/movaOpps/userDefine/u_opp.asp" -->
<%
session("OBJECT_TABLE_NAME") = ""
session("OBJECT_TABLE_IsNew") = ""
session("OBJECT_TABLE_Values_V0") = ""
session("OBJECT_TABLE_IsContinue") = "" 
%>

<script>

if ($("#infoTabsUL li").length==0){
	$("#infoTabs").hide();
}

function confirmStatus(form,p1,p2,p3){
	if (confirm("您确定“"+ p2+"”吗？")){
		 setValue("_"+p1,p3);
		 form.logType.value=p2;
		 return true
	}else{
		return false;	
	}
	alert(p1+"\n" +p2+"\n" +p3+"\n" );
}
function confirmPrint(objectId,id){
	window.open("print.asp?objectId=" + objectId + "&id=" + id );
}
function chk(form){
		var str;
		str="";
		<%=	requireStr%>
		if (form.team.value==""){
			str = str + "公司必须输入！"
		}
		return showInputError(str);
}
	function chkDel(form){
		form.d.value="T";
		return confirm("确定需要删除吗？");
	}
	
</script>
<%		
	end if 
%> 

<%

 
'输出Jquery的javascript
response.write "<script>" & vbcrlf & "$(document).ready(function() { " & vbcrlf

'输出重复查询的jqury ajax
if FRM_chk_repeat<>"" then  printRepeatJavascript FRM_table_name,FRM_object_code,FRM_chk_repeat,FRM_opp_id 

' 输出字段onChange事件
	printJquery_field_onChange_js isNew 

response.write " });" & vbcrlf & "</script>" & vbcrlf 'jquery 执行结束

response.write "<script>"& vbcrlf
'输出结束的js
if isNew then 
	FRM_end_js = convertData2JS(FRM_end_new_js) & "" & vbcrlf
else
	FRM_end_js = convertData2JS(FRM_end_edit_js) & "" & vbcrlf
end if
response.write FRM_end_js
response.write "</script>"& vbcrlf



%> 
 <div id="info_dailog" title="选择条目">
	public dailog
</div> 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->        
 