<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->

<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
'debug 1
'Dim Form：
 
	function shi2T(str) 
		if str="是" then 
			shi2T = "T"
		else
			shi2T = "F"
		end if 
	end Function
 
'Get Get Param:
Dim  FLD_field_id,FLD_object_id,FLD_field_code, FLD_field_name,FLD_field_type,FLD_is_new,FLD_is_list,FLD_is_edit,FLD_is_seat,FLD_is_search,FLD_is_required,FLD_search_type,FLD_def_value,FLD_col_span,FLD_sort_edit,FLD_sort_list,FLD_width,FLD_high,FLD_allow_batch,FLD_allow_recall,FLD_new_onChange,FLD_edit_onChange,FLD_edit_ext_html,FLD_new_ext_html,FLD_new_read_only,FLD_edit_read_only,FLD_is_forbidden,FLD_status_rule,FLD_status_rule_bk,FLD_is_richText,FLD_is_attachment,FLD_hidden_by,FLD_clone_by,FLD_allow_clone,FLD_del,FLD_old_field_type
Dim FLD_FK_select,FLD_FK_window,FLD_hidden_by_field
Dim FLD_multiple_size,FLD_allow_suggestion  

FLD_field_id=getParamID(req("field_id"))

FLD_object_id = req("object_id")
FLD_field_code  = req("field_code")
FLD_field_name = req("field_name")
FLD_field_type = req("field_type")
FLD_is_new = req("is_new")
FLD_is_list = req("is_list")
FLD_is_edit = req("is_edit")
FLD_is_seat = req("is_seat")
FLD_is_search = req("is_search")
FLD_is_required = req("is_required")
FLD_search_type = req("search_type")
FLD_def_value = req("def_value")
FLD_col_span = req("col_span")
FLD_sort_edit = req("sort_edit")
FLD_sort_list = req("sort_list")
FLD_width = req("width")
FLD_high = req("high")
FLD_allow_batch= req("allow_batch")
FLD_allow_recall= req("allow_recall")
FLD_new_onChange = decode_HTML2SQL(req("new_onchange"))
FLD_edit_onChange = decode_HTML2SQL(req("edit_onchange"))
FLD_multiple_size =  req("multiple_size")
FLD_allow_suggestion =  req("allow_suggestion")




FLD_edit_ext_html = decode_HTML2SQL(req("edit_ext_html"))
FLD_new_ext_html = decode_HTML2SQL(req("new_ext_html"))

 
				
FLD_new_read_only = trim(req("new_read_only"))
FLD_edit_read_only = trim(req("edit_read_only"))
FLD_is_forbidden = req("is_forbidden")
FLD_status_rule = trim(req("status_rule"))
FLD_status_rule_bk = trim(req("status_rule_bk"))
FLD_is_richText = req("is_richText")
FLD_is_attachment = req("is_attachment") 
FLD_hidden_by = req("hidden_by")

FLD_clone_by= req("clone_by")
FLD_allow_clone= req("allow_clone")

FLD_del=req("del") '删除标记

FLD_old_field_type = req("old_field_type")


FLD_FK_select = req("fk_select")
FLD_FK_window= req("fk_window")
FLD_hidden_by_field = req("hidden_by_field")


'不能更换字段类型 
Dim allowUpdate 
allowUpdate = true 
if  FLD_field_type<>FLD_old_field_type then 
	if getFieldDataType(FLD_field_type)<>getFieldDataType(FLD_old_field_type) then 
		MessageBox "前后字段类型不一致！不能更改字段类型！！","" 
		allowUpdate = false 
	end if
end if
 

if allowUpdate then 
			'DataBase Coding....:
			Dim sqlString
			sqlString = "Select * From mu_object_field Where owner='" &  session("customerNo") &"' and field_id=" & FLD_field_id
			
			executeQuery conn,movaRS,sqlString,1,3
			
			if movaRS.eof or movaRS.bof  then
			 
			else
				
				movaRS("field_name") = FLD_field_name
				movaRS("field_type") = FLD_field_type
				movaRS("is_new") = FLD_is_new
				movaRS("is_list") = FLD_is_list
				movaRS("is_edit") = FLD_is_edit
				movaRS("is_seat") = FLD_is_seat
				movaRS("is_search") = FLD_is_search
				movaRS("is_required") = FLD_is_required
				movaRS("search_type") = FLD_search_type
				movaRS("def_value") = FLD_def_value
				movaRS("col_span") = FLD_col_span
				movaRS("sort_edit") = FLD_sort_edit
				movaRS("sort_list") = FLD_sort_list
				movaRS("width") = FLD_width
				movaRS("high") = FLD_high
				movaRS("allow_batch") = FLD_allow_batch
				movaRS("allow_recall") = FLD_allow_recall
				
				movaRS("is_forbidden") = FLD_is_forbidden
				movaRS("is_richText") = FLD_is_richText
				movaRS("is_attachment") = FLD_is_attachment
				movaRS("new_onchange") = FLD_new_onChange & ""
				movaRS("edit_onchange") = FLD_edit_onChange & ""
				
				movaRS("edit_ext_html") = FLD_edit_ext_html & ""
				movaRS("new_ext_html") = FLD_new_ext_html & ""



				movaRS("edit_read_only") = FLD_edit_read_only
				movaRS("new_read_only") = FLD_new_read_only
				movaRS("status_rule") = FLD_status_rule
				movaRS("clone_by") = FLD_clone_by
				movaRS("allow_clone") = FLD_allow_clone
				
				movaRS("hidden_by") = FLD_hidden_by
				
				movaRS("fk_select")=FLD_FK_select
				movaRS("fk_window")=FLD_FK_window
				movaRS("hidden_by_field") = FLD_hidden_by_field
				
				movaRS("multiple_size") = FLD_multiple_size 
				movaRS("allow_suggestion") = FLD_allow_suggestion




				
				movaRS("archive") = FLD_del
				movaRS("modifyDate") = Now
				movaRS("modifyUser") = cint(session("userid"))
				movaRS.Update
			end if 
			movaRS.close
			
			if FLD_status_rule<>"" then 
				'一个模型只能设定一个字段作为状态规则、
				oneSQL = "update mu_object_field set status_rule ='' where object_id="& FLD_object_id &" and  owner='" &  session("customerNo") &"' and field_id<>" & FLD_field_id
				executeUpdate conn,oneSQL
				if req("resetSec")="true" then
					oneSQL = "delete mova_function where code like 'RL_"& FLD_object_id &"%'"
					'response.write oneSQL 
			'	response.end 
					executeUpdate conn,oneSQL
					buildSecurityByRule FLD_object_id,FLD_status_rule 
				end if 
			end if
end if 

if FLD_del= "F" then 
	gotourl "field.asp?objectId="& FLD_object_id & "&id=" & FLD_field_id
else
	gotourl  "objectField.asp?object_id="& FLD_object_id  
end if 


%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
<%
 
sub buildSecurityByRule(pObjectId,pRule)	'解析当前值规则的操作权限点
'权限点分类 objectCode,	格式：rule_objectid_状态名
	Dim cRule
	cRule = pRule

	sqlString = "select * from mu_object where owner='" & session("customerNo") & "'"
	sqlString = sqlString + " and archive='F' and object_id="& pObjectId  & ""
	executeQuery conn,rs,sqlString,1,1
	
	if rs.bof or rs.eof then
	else
		'Dim Form_Frm
		FLD_objectCode = rs("object_code")
		object_name = rs("object_name")
	end if 
	rs.close
	
	Object_rootFunction = getOnefield("select mova_functionid from mova_function where parent_id=0 and  code='" & FLD_objectCode & "'")
		
		for i=0 to 10
			curRuleOperate(i,1)=""
			curRuleOperate(i,2)=""
		Next
		curRuleAllowEditField="*"
		
	 
		ruleArrary=split(replaceEnter( pRule) ,"|") 
		for pi=0 to ubound(ruleArrary)
			itemArray = split(ruleArrary(pi),"->") 
				Dim itemArrayVar 
				if inStr(itemArray(1),",")<=0 then    '如果只能是一个操作，那么需要补齐一个逗号。
					itemArrayVar = itemArray(1) & ","
				else
					itemArrayVar = itemArray(1)  
				end if 
				
				operationArray = split(trim(itemArrayVar),",")    
				if ubound(operationArray)>0 then 
					for pj=0 to ubound(operationArray)
						curRuleOperation= split(operationArray(pj),"(")
						if ubound(curRuleOperation)>0 then 
							curRuleOperate(pj,1)=curRuleOperation(0)
							curRuleOperate(pj,2)=left(curRuleOperation(1),len(curRuleOperation(1))-1) 
							'############################################写入权限点
							if curRuleOperate(pj,2)<>"" then 
								updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getMplFieldRule(pObjectId,curRuleOperate(pj,1)) & "'" 
								'response.write    updateMPLSQL  &"<BR>"
								executeQuery conn,rs,updateMPLSQL,1,3
								if rs.eof or rs.bof then 
									rs.addNew
									rs("sortNo") =9999
									rs("createdate") = Now
									rs("createUser") = cint(session("userid"))
								end if 
								rs("parent_Id") = cint(Object_rootFunction)
								rs("category") = FLD_objectCode
								rs("categoryName") = object_name
								rs("code") = getMplFieldRule(pObjectId,curRuleOperate(pj,1))
								rs("functionName") = curRuleOperate(pj,2)
								rs("function_type") = ""
								rs("url") = ""
								rs("modifyDate") = Now
								rs("modifyUser") = cint(session("userid"))
								rs.Update
								rs.close
								'############################################
								'	response.write curRuleOperate(pj,2) & "ssssssssssss<BR>"
								' response.write ">>" & cint(Object_rootFunction)                               & "<BR>"
								' response.write ">>" & FLD_objectCode                                          & "<BR>"
								' response.write ">>" & object_name                                             & "<BR>"
								' response.write ">>" & getMplFieldRule(pObjectId,curRuleOperate(pj,1))         & "<BR>"
								' response.write ">>" & curRuleOperate(pj,2)                                    & "<BR>"
							end if
						end if 
						
					Next
			end if 
		Next
 
end Sub 
%>
 