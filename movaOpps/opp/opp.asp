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
	
	Dim haveRuleField '�Ƿ��й����ֶ�
	haveRuleField = false
  
  Dim haveEditField '�Ƿ��пɱ༭���ֶ�
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
		response.write  "�Բ��𣬲��������ҵ��ģ��"
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

	'���ģ����ֶζ�������
	FRM_mark_fieldValue =""
	Dim Hidden_Field_list ,hidden_Object_List
	Hidden_Field_list = ""
	hidden_Object_List=""
	
 	'��������Ա������ģ�͵�
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



'��ȡ��������ֶ�
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
	getObjectField FRM_objectId,"NEW"		'��ȡ�ֶ�����
	'debugObjectField
	'ҳ����ʾʱִ�е�js 
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
		'��ȡ���������ֶκ��Ӷ���
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

	
	'ҳ����ʾʱִ�е�js 
	FRM_pre_js = FRM_pre_js & vbcrlf & FRM_pre_edit_js  & "" & vbcrlf
  FRM_submit_js = FRM_edit_submit_js  & "" & vbcrlf 
 	
	getObjectField FRM_objectId,"EDIT" '��ȡ�ֶ�����
	'debugObjectField
	getRuleArray FRM_objectId '��ȡģ�͹���
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
			MsgBox "û�������¼",""
			response.end
		end if
		
	''ͬ������
	
	
	
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
		if (getOnefield("select txt from mu_item_list where item_code='M00_I0051' and txt='"&movaRS("v1")&"'")<>"") or  movaRS("v1")="�����" then 
			session("locked") = true
		else
			
		end if 
	END IF 
	

		
			'��ȡ���������ֶκ��Ӷ���
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
		'��ȡÿ���ֶε�ֵ
		For k=1 to ObjectFieldArray_X
 			if ObjectFieldArray(k,1)="" then exit For
 			ObjectFieldArray(k,curIndex_Property_value) = movaRS(ObjectFieldArray(k,1)) & "" 			'Ǳ�ڵ��ֶ�����ת��
 			if trim(ObjectFieldArray(k,18))<>"" then '��������ֶΣ�����
 				haveRuleField = true 
 				
				'��������			
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
'��ȡ����� �ֶ���Ϣ
if FRM_is_single<>"T" and FRM_all_show_master="T" then 
	initJoinShowMastFieldCode FRM_objectId
	initMastTableFieldArray FRM_objectId,FRM_customer_id
end if 

'�����ʼ��js
response.write "<script>" & vbcrlf & convertData2JS(FRM_pre_js) & "</script>" & vbcrlf

'����ύʱִ�е�submit js 
response.write "<script>function oppSubmit(){" & vbcrlf & convertData2JS(FRM_submit_js) & vbcrlf 
response.write "return chk(window.document.mainform);" & vbcrlf
response.write "}</script>" & vbcrlf
 


'jquery֧�ֿ�ʼ<���غ����>
response.write "<script>" & vbcrlf
response.write "$(document).ready(function() { " & vbcrlf
'��ѯ�в��տ�¡��Ϣ���ֶ�
Dim k
 for k=1 to ObjectFieldArray_X
			if ObjectFieldArray(k,11)="T" then
				'�����п��Բ��տ�¡��Ϣ���ֶ�
				printCloneJavascript FRM_table_name,FRM_object_code,ObjectFieldArray(k,1),FRM_opp_id
			exit For
			end if 
Next

'jquery֧�ֽ���<���غ����>
		


'������Ϣ��
response.write "$( "& chr(34) &"#info_dailog"& chr(34) &" ).dialog({" & vbcrlf
response.write "			autoOpen: false," & vbcrlf
response.write "			width: 850," & vbcrlf
response.write "			height: 350," & vbcrlf
response.write "			modal: true," & vbcrlf
response.write "			buttons: {" & vbcrlf
response.write "				"& chr(34) &"�ر�"& chr(34) &": function() {" & vbcrlf
response.write "				$( this ).dialog( "& chr(34) &"close"& chr(34) &" );" & vbcrlf
response.write "				$("& chr(34) &"#info_dailog"& chr(34) &").html("& chr(34)& chr(34) &");" & vbcrlf
response.write "				}  " & vbcrlf
response.write "			} " & vbcrlf
response.write "		});" & vbcrlf
response.write "$( "& chr(34) &"#infoTabs"& chr(34) &" ).tabs({ remote: true });" & vbcrlf
 

'jquery֧�ֽ���<����ǰ����>
response.write "}); " & vbcrlf	
response.write "</script>" & vbcrlf	
%> 


<%
for k=1 to ObjectFieldArray_X
			if ObjectFieldArray(k,6)="{IVR_DATA}" then
				'�����н���IVR�ֶ�
				printIvrDateJavascript ObjectFieldArray(k,1)  
			exit For
			end if 
Next
%> 
<div class="cn_list_title">
	<%if FRM_opp_id="-1" then %>
		������<font color=red><%=FRM_object_name%></font>�� 
 	  			
		<%if FRM_is_hierarchy ="T" then %>
<!---			������<%=FRM_object_name%>��<a href="opp.asp?objectId=<%=FRM_objectId%>&id=<%=REQ_hid%>&cid=<%=REQ_hid%>"><%=REQ_hName%></a>-->
		<%end if %>
	<%end if%>
	
	<%if FRM_opp_id<>"-1" then %>
		��<font color=red><%=FRM_object_name%></font>����ţ�<%=FRM_object_no%>
		<%if FRM_is_hierarchy ="T" and FRM_hierarchy_id<>"0" then %>
			������<%=FRM_object_name%>��<a href="opp.asp?objectId=<%=FRM_objectId%>&id=<%=FRM_hierarchy_id%>&cid=<%=FRM_hierarchy_id%>"><%=getOppProperty(FRM_table_name,FRM_hierarchy_id,masterName)%></a>
			
		<%end if %>
	<%end if %>
<% 
	if not isNew then
		if FRM_is_single<>"T" and req("navType")<>"dialog" then 
		%>�����ҵ����<a href="opp.asp?objectId=<%=session("DEF_OBJECT_ID")%>&id=<%=FRM_customer_id%>&cid=<%=FRM_customer_id%>"><font color=#FF8000 size=+1><b><%=FRM_customer%></font></a><%
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
	 		| <a href="opp.asp?objectId=<%=FRM_objectId%>&hid=<%=FRM_customer_id%>&hName=<%=FRM_customer%>">����<%=FRM_object_name%></a> 
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
	
	
	'��ʾ��������������Ϣ
 %>
 	<tr>
 	<%
 	 Dim Cur_col
 	 Cur_col = 0
 	for i=1 to mastTableFieldArray_X
		if mastTableFieldArray(i,1)="" then exit for
		
		'����������Ʊ༭ɾ��
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
		
		'������
		Dim FormName,HiddenFormName,FaceFormName
		FormName = getFormName(ObjectFieldArray(k,1))
		HiddenFormName = getHiddenFormName(ObjectFieldArray(k,1))
		FaceFormName = getFaceFormName(ObjectFieldArray(k,1))
		
		'¼��У��
		if ObjectFieldArray(k,4)="T" then 
			requireStr = requireStr & "if (isEmptyObj( form." & FormName & ")){ str=str +  '"& ObjectFieldArray(k,2) &"�������룡\n';}" & vbcrlf
		end if
		
		'��ֵУ��
		if ObjectFieldArray(k,13)="T" then 
			requireStr = requireStr & " str = str + Validate( '"& FormName &"', '" & ObjectFieldArray(k,2) & "' , 'Numeric');" & vbcrlf
		end if 
		  
		
		'��ȡ��ǰ��ֵ
		Dim curValue
		if isNew then
	 'response.write FRM_add_continue &"|" & REQ_add_continue & "|x..." & ObjectFieldArray(k,10)
			if REQ_add_continue="T" and ObjectFieldArray(k,10)="T" then 
				'�����ֶ�
				curValue = session(FRM_object_code & "_" & ObjectFieldArray(k,1)) & ""
			 
			else
					curValue=getDefaultValue(ObjectFieldArray(k,6)) & ""
					if left("curValue",1)="~" then
					'Ĭ�Ͽͻ���Ϣ��������	
					end if
			end if
			Dim dyParamValue 
			dyParamValue = req("dyParam")
			getCtrolSplitValue dyParamValue,ObjectFieldArray(k,1)
			if CtrolReturnValue<>"" then curValue = CtrolReturnValue  '����ȡurl����
			ObjectFieldArray(k,curIndex_Property_value) = curValue
		else
			curValue=ObjectFieldArray(k,curIndex_Property_value) 
			ObjectFieldArray(k,curIndex_Property_value) = curValue
			if ObjectFieldArray(k,10)="T" then 
				session(FRM_object_code & "_" & ObjectFieldArray(k,1)) = ""
			end if 
 
			'ҵ������жϣ����
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
		'������
		Dim widthFieldHTML
		widthFieldHTML = ""
		if instr(ucase(ObjectFieldArray(k,8)),"%")>0 or instr(ucase(ObjectFieldArray(k,8)),"PX")>0 then
			widthFieldHTML = " style='width:" & ObjectFieldArray(k,8) & "' "
		else
			widthFieldHTML = " size='" & ObjectFieldArray(k,8) & "' "
		end if 
		
		'���ԭʼ��ֵ
		response.write "<input type="&chr(34)&"hidden"&chr(34)&" id="&chr(34)&"OLD_" & FormName &chr(34)&" name="&chr(34)&"OLD_" & FormName &chr(34)&" value="& chr(34)& decode_SQL2HTML(curValue) &chr(34)&">" 
		if not is_hiddenField  then  ' ������������ֶΣ������ 
%>
		<TD class=cn_td09 align=right  id="<%=getFieldTitleBoxName(ObjectFieldArray(k,1))%>"><div id="<%=FormName%>__"  style="display: inline;"></div><span <%=isRequired%>><%=ObjectFieldArray(k,2)%></span>:</TD>
    <TD class=cn_td10 <%=colSpan%> align="left"  id="<%=getFieldTitleContentName(ObjectFieldArray(k,1))%>">
		<%
		'response.write "K:"  & is_owner_allow_edit
		'ҵ������жϸ��ֶ��Ƿ�ɱ༭  isNew 
		if (getFieldRule(FRM_objectId,ObjectFieldArray(k,1),k,isNew) ="F"  or  not is_owner_allow_edit) and not is_supper_manager then 
 
			 isReadOnly=true
		 ' and (isNew or  inStr(curRuleAllowEditField,"," & ucase(ObjectFieldArray(k,1)) & "," )>0)  then 
		 	'	ObjectFieldArray(k,curIndex_Property_readOnly)="T"
		 	'���ɱ༭
			if ObjectFieldArray(k,19)="T" then 
				'����Ǹ��ı�
				%>
					<div class="noneStyle">
					<%= decode_SQL2HTML(curValue) %>
					</div>
				<%
			else	
				if ObjectFieldArray(k,20)="T" then 
					'����Ǹ���
					%>
					<div style="display: inline;" id="<%=HiddenFormName%>"><a href="/movaOpps/opp/<%=curValue%>" target="_blank" title="/movaOpps/opp/<%=curValue%>"> ����´��ڴ�</a> </div> 
					<%
				else
					'������
					if ObjectFieldArray(k,24)<>"" then 
			 		'��pick ����ѡ���ֶ�
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
			
			'���Ա༭
			ObjectFieldArray(k,curIndex_Property_readOnly)="F"
			'������ı������
			if ObjectFieldArray(k,3)="INT" OR ObjectFieldArray(k,3)="VARCHAR" OR ObjectFieldArray(k,3)="PHONE" then 
			 
			 	if ObjectFieldArray(k,24)<>"" then 
			 		'��pick ����ѡ���ֶ�
			 		%><nobr>
			 			 <input class=cn_input03 id="<%=FaceFormName%>" type="text" <%=widthFieldHTML%> readonly name="<%=FaceFormName%>" value="<%=getPickValue( ObjectFieldArray(k,24),curValue )%>">
			 			<input class=cn_input03 id="<%=FormName%>" type="hidden"  name="<%=FormName%>" value="<%=curValue%>">
			 			 
			 		<%
			 	 
				response.write "<img title='����' id='" & FormName & "_pic' src='" & movaStyle & "/images/search.png' align='top' " 
				response.write " border=0  " 
			
				response.write " onClick='dialogPick("& chr(34)&appendPickUrl(ObjectFieldArray(k,25),FormName,FaceFormName) & chr(34) &","& chr(34)& chr(34) &")'"  
				response.write " alt='�����ѯ'/></nobr>" 
			 	else
			 		%>
			 			<input class=cn_input03 id="<%=FormName%>" type="text" <%=widthFieldHTML%> name="<%=FormName%>" value="<%=curValue%>">
			 		<%
				end if 
				%>
				
				
				
				 <%if ObjectFieldArray(k,20)="T" then %>	
					<button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.<%=FormName%>','JPG|GIF|PNG|DOC|DOCX|PPT|PPTX|XLS|XLSX|TXT|PDF','5000','client/file','_')">�ϴ�����</button><a href="<%=curValue%>" target="_blank" title="<%=curValue%>">��</a>
				<%end if %>
			<%else%>
				<% '�����TIME
				if ObjectFieldArray(k,3)="TIME" then %>
				<NOBR><INPUT ondblclick="this.value=''"  id="<%=FormName%>"  <%=widthFieldHTML%> class=cn_input03 type=text name="<%=FormName%>" value="<%=curValue%>" id="<%=FormName%>"><%=getCalendar(ObjectFieldArray(k,1),FormName,"T")%></NOBR>
				<%else%>
					<% '�����DATE
					if ObjectFieldArray(k,3)="DATE" then %>
					<NOBR><INPUT  ondblclick="this.value=''"  id="<%=FormName%>"  <%=widthFieldHTML%> class=cn_input03 type=text name="<%=FormName%>" value="<%=curValue%>" id="<%=FormName%>"><%=getCalendar(ObjectFieldArray(k,1),FormName,"D")%></NOBR>
					<%else%>
							<% '�����TEXT
							if ObjectFieldArray(k,3)="TEXT" then  
								if ObjectFieldArray(k,19)="T" then 
								'����Ǹ��ı�
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

			'��¡�ֶ�
			if ObjectFieldArray(k,11)="T" and  not isReadOnly then 
				 response.write "&nbsp;&nbsp;<img id='" & FormName & "_clone' src='" & movaStyle& "/images/refresh.png' valign='absmiddle' " 
				 response.write " border=0  " 
				 response.write " alt='������ݸ��ֶο�¡��Ϣ¼��'  title='������ݸ��ֶο�¡��Ϣ¼��'/>"
				 
			end if 
			
			'������ѯ
			'if ObjectFieldArray(k,5)="=" then 
			'	response.write "&nbsp;&nbsp;<img title='������ݸ��ֶι�����ѯ' id='" & FormName & "_clone' src='/movaOpps/opp/images/search.png' align='top' " 
			'	response.write " border=0  " 
				
			'	response.write " onClick='window.location.href="& chr(34) &"searchOpp.asp?objectId="& FRM_objectId &"&isStart=0" 
			'	response.write "&_" & ObjectFieldArray(k,1) & "=" & curValue &  chr(34) & "'"
			'	response.write " alt='������ݸ��ֶι�����ѯ'/>"
			'end if
			
			
			
			
			
			'����ֶ�HTML��չ��ֻ�����ֶο�����ʾʱ����� 
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
		'��������ֶ� 
			%><input type="hidden" id="<%=FormName%>" name="<%=FormName%>" value="<%=decode_SQL2HTML(curValue)%>"><%
	end if
		
	Next
	
	
	'�������ϵ�ͻ�ģ�� ����
	'***************
	if FRM_objectId="20" then 
		 %>
		 <input type="hidden" name="from_vk" id="from_vk" value="<%=req("vk")%>">
		 <%
	end if 
	
	'���Team��
	if session("roleScope")="G" then %>
		<TD class=cn_td09 align=right><span class='require'>��˾:</TD>
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
	'������ӷ�Χ	    
	if session("roleScope")="G" then %>
		<TD class=cn_td09 align=right>���ӷ�Χ:</TD>
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
 	  	<BUTTON class=cn_button01 type=submit onClick="this.form.logType.value='';" >����</button>
 	  	<%if FRM_objectID="21" THEN %><br>
 	  	<DIV width=500 align="left">
 	  		<input type="hidden" name="allowMutiValue"  value="F" > 
 	  		<input type="checkbox" name="allowMuti" onClick="mutiInput(this,this.form)" > ������������¼������<br>
 	  		˵���� ����¼��ʱ���������������а��س����������¼��ÿ������
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
 	  
 	  	<BUTTON class=cn_button01 type=submit onClick=" onClick="this.form.add_continue.value='F';this.form.logType.value='';return chk(this.form);" >����</button>
 	  	 
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
 	 		<button name="printer" class=cn_button01  type="button" onClick="return confirmPrint(<%=FRM_objectId%>,<%=FRM_opp_id%>)"> ��ӡ</button>
 	 	<%end if %>
 	 <%end if %>
 	 <%	if allowDelete="T"  and not isNew AND allowMaserDel and checkTC_sec(FRM_table_name,"del")  then %> 
 	 		<%if chkAccount(getObjectOppSec(FRM_objectId,"DY_DEL") ) and is_owner_allow_edit then %> 
 	 			<BUTTON class=cn_button01 type=submit  onClick="return chkDel(this.form)">ɾ��</button>
 	 		<%end if %>
 	 <%end if%>
 	   <%
 	  '########################���Ի���ť!!
 	  if FRM_objectId=1   then '��ģ���鷿 ����������ʱ�����⴦��
 	  		IF getOppProperty("MU_CUSTOMER",FRM_opp_id,"D2")&""=cStr(session("userid"))&""  AND getOppProperty("MU_CUSTOMER",FRM_opp_id,"V1")="�ѷ���" then 
 	  			response.write "<BUTTON class=cn_button01 type=submit  onClick='acceptJob(1)'>����</button>" 
 	  			response.write "<BUTTON class=cn_button01 type=submit  onClick='acceptJob(0)'>������</button>" 
 	  		end if 
 		end if 
 		
 		if FRM_objectId=21  and not isNew  then '������ʱ�����⴦��
 			%>
 			 <% if not session("locked") then %> <BUTTON class=cn_button01 type=button  onClick="sendEmail($('#_D2').val(),this.form.no.value)">�����ʼ�</button> 
 	  			 <BUTTON class=cn_button01 type=button  onClick='sendPrint()'>�ɵ���ӡ</button> 
 	  			  <iframe name="print" id="print" src="#" width=0 height=0 frameborder=0></iframe>
 	  			 <%end if %>
 	  	<%
 			if session("isSLR")   then 
 			%> 
 	  			
 	  			 <BUTTON class=cn_button01 type=submit  onClick="this.form.add_continue.value='T'">ͬ�ͻ�������������</button> 
 	  	<%end if %>
 	  	<%if (session("isSLR") or session("isZRR")) and  not session("locked")  then %>
 	  	<BUTTON class=cn_button01 type=button  onClick="dialogPick('/movaOpps/core/pub/dailog/listUser.asp?pickId=_D2&pickValue=_SHOW_D2&submit=true','ѡ���ƽ���')">�����ƽ�</button>
 	  	<%END IF %>
 	  	
 	  			<script>
 	  			function sendEmail(userid,no){
						if (userid!="0"){
							if (confirm("�����ʼ���ȷ����")){
	 	  					htmlobj=$.ajax({url:"/movaopps/userDefine/sendMail.asp?user="+ userid +"&no=" + no,async:false});
	 	  					alert(htmlobj.responseText); 
							}
						}else{
							alert("��ѡ�������ˡ�");
						}
						
   				}
   				
   				function sendPrint(){
   					
   					if ($('#_VJ').val()==""||$('#_VO').val()==""){
   						alert("�н��̺ʹ�������������ܽ����ɵ���ӡ");
   					}else{
   						if (confirm("ȷ����ӡ��")){
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
 			<input type="checkbox" checked name="chkAddContinue" onClick="chgAddContinue(this.checked)"> ��������
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
			response.write " &nbsp;|&nbsp;&nbsp;<a href='searchOpp.asp?objectId="& FRM_objectId &"&isStart=0&hid="& FRM_opp_id &"'>"& FRM_object_name & "(<font color=#FF8000 size=+1><b>" & itemCount & "</b></font>��)</a>&nbsp;"
		end if	
			 
 	
 %>
 
 </td>
 </tr>
 <tr><td colspan=10 align="right">
 	<% if not isNew then %> 
			<font color="#AFAFAF">�����޸�ʱ�䣺<%=FRM_modifyDate%> &nbsp;
 	�����޸��ˣ�<%=FRM_modifyBy%> &nbsp;
 	����ʱ�䣺<%=FRM_createDate%> &nbsp;
 	�����ˣ�<%=FRM_createBy%> &nbsp;
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
 	 		
 	 		'##### �û�������Ӳ˵�
 	 		
 	 		if not isNew  and ucase(FRM_table_name) = ucase("mu_customer")  then 
 	 		%>
 	 		<li><a href="/movaOpps/opp/mpl.asp?object_id=1&no=sameRoomMY&param1=<%=ObjectFieldArray(getIndex_ObjectFieldArray("V5",1),curIndex_Property_value)%>">ͬ��������(<font color=#FF8000 ><%=countByMpl("sameRoomMY")%></font>)</a></li>
 	 		
 	 		<%end if %>
 	 		
 	 		
<%	if not isNew  and ucase(FRM_table_name) = ucase("mu_opp20")  then   
	'response.write ObjectFieldArray(getIndex_ObjectFieldArray("VK",1),curIndex_Property_value) 
 	 		response.write "<li><a href='/movaOpps/userDefine/trackOpp.asp?no=" & FRM_object_no &"&v0="&ObjectFieldArray(getIndex_ObjectFieldArray("V0",1),curIndex_Property_value)&"&vk="&ObjectFieldArray(getIndex_ObjectFieldArray("VK",1),curIndex_Property_value) &"&status=" & ObjectFieldArray(getIndex_ObjectFieldArray("V1",1),curIndex_Property_value) &"'>�������</a></li>"
 	 		response.write "<li><a href='/movaOpps/opp/mplTab.asp?object_id=1&no=job_room&param1="& ObjectFieldArray(getIndex_ObjectFieldArray("V5",1),curIndex_Property_value)&"'>��ͬ��������</a></li>"
 	 		end if %>
 	 		<%
			if not isNew and chkAccount(getObjectOppSec(FRM_objectId,"DY_LOG")) then  
				response.write "<li><a href='logInfo.asp?objectCode=" & FRM_object_code &"&oppId=" & FRM_opp_id &"'>��־</a></li>"
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
	if (confirm("��ȷ����"+ p2+"����")){
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
			str = str + "��˾�������룡"
		}
		return showInputError(str);
}
	function chkDel(form){
		form.d.value="T";
		return confirm("ȷ����Ҫɾ����");
	}
	
</script>
<%		
	end if 
%> 

<%

 
'���Jquery��javascript
response.write "<script>" & vbcrlf & "$(document).ready(function() { " & vbcrlf

'����ظ���ѯ��jqury ajax
if FRM_chk_repeat<>"" then  printRepeatJavascript FRM_table_name,FRM_object_code,FRM_chk_repeat,FRM_opp_id 

' ����ֶ�onChange�¼�
	printJquery_field_onChange_js isNew 

response.write " });" & vbcrlf & "</script>" & vbcrlf 'jquery ִ�н���

response.write "<script>"& vbcrlf
'���������js
if isNew then 
	FRM_end_js = convertData2JS(FRM_end_new_js) & "" & vbcrlf
else
	FRM_end_js = convertData2JS(FRM_end_edit_js) & "" & vbcrlf
end if
response.write FRM_end_js
response.write "</script>"& vbcrlf



%> 
 <div id="info_dailog" title="ѡ����Ŀ">
	public dailog
</div> 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->        
 