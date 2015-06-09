<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
'debug 1
'Dim Form：

'Get Get Param:
Dim FLD_object_id,FLD_table_name,FLD_object_name,FLD_is_locked,FLD_is_publish,FLD_is_system,FLD_is_discard,FLD_is_rule,FLD_view_col,FLD_print_template
Dim FLD_is_seat,FLD_is_private,FLD_is_hierarchy,FLD_chk_repeat,FLD_allow_batch,FLD_is_single,FLD_search_scope
Dim FLD_add_continue,FLD_all_show_master,FLD_pre_new_js,FLD_pre_edit_js,FLD_end_new_js,FLD_end_edit_js,FLD_pub_js
Dim FLD_supper_manager,FLD_edit_submit_js,FLD_new_submit_js 
Dim isNew,tmpResult,sqlString,updateMPLSQL,FLD_object_code
Dim FLD_is_owner,FLD_depend_master 

FLD_object_id=getParamID(req("object_id"))

FLD_is_locked = req("is_locked")
FLD_is_discard = req("is_discard")
FLD_is_publish = req("is_publish")
FLD_is_seat = req("is_seat")
if FLD_is_seat="" then  FLD_is_seat ="F"
FLD_is_rule = req("is_rule")
FLD_is_private = req("is_private")
FLD_is_hierarchy=req("is_hierarchy")
FLD_chk_repeat = req("chk_repeat")
FLD_allow_batch = req("allow_batch")
FLD_is_single = req("is_single")
FLD_search_scope = req("search_scope")

FLD_add_continue = req("add_continue")
FLD_all_show_master = req("all_show_master")
FLD_pre_new_js = decode_HTML2SQL(req("pre_new_js"))
FLD_pre_edit_js = decode_HTML2SQL(req("pre_edit_js"))
FLD_end_new_js = decode_HTML2SQL(req("end_new_js"))
FLD_end_edit_js = decode_HTML2SQL(req("end_edit_js"))
FLD_pub_js= decode_HTML2SQL(req("pub_js"))

FLD_supper_manager = req("supper_manager")

FLD_edit_submit_js = decode_HTML2SQL(req("edit_submit_js"))
FLD_new_submit_js = decode_HTML2SQL(req("new_submit_js"))

FLD_is_owner=req("is_owner")
FLD_depend_master = req("depend_master")

FLD_template_define = req("template_define")
FLD_template_field = req("template_field")
FLD_show_no = req("show_no")


FLD_print_template = req("print_template")
FLD_table_name = req("table_name")
if FLD_table_name = "MU_CUSTOMER" then 
	FLD_view_col = 2
	FLD_object_name =	"任务处理"
else
	FLD_view_col = cint(req("view_col"))
	FLD_object_name = req("object_name")
end if  
isNew = false
 
'DataBase Coding....:
sqlString = "Select * From mu_object Where owner='" &  session("customerNo") &"' and  object_id=" & FLD_object_id
 
executeQuery conn,movaRS,sqlString,1,3
FLD_object_code = ""
if movaRS.eof or movaRS.bof  then
	movaRS.addnew
	isNew = true
	FLD_object_code = session("customerNo") & "_" + getSerial("Object")
	movaRS("object_code") = FLD_object_code
	
	movaRS("owner")= session("customerNo")
	movaRS("is_system")="F"
	movaRS("table_name") = FLD_table_name
	movaRS("is_single") = FLD_is_single
	if FLD_table_name = "MU_CUSTOMER" then 
		movaRS("is_system")="T"
	end if
	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
	movaRS("archive")="F"
else
	FLD_object_code = movaRS("object_code")
	FLD_print_template = movaRS("print_template") & ""
end if 
'RS seting...: 
if FLD_is_rule <> "" then movaRS("is_rule") = FLD_is_rule
if FLD_is_rule ="F" then FLD_is_private="F"

if req("editType")="ADV" then '如果是高级编辑模式则执行 
	movaRS("is_private") = FLD_is_private
	movaRS("is_hierarchy")=FLD_is_hierarchy
	movaRS("chk_repeat") = FLD_chk_repeat
	movaRS("allow_batch") = FLD_allow_batch
	movaRS("add_continue") = FLD_add_continue
	movaRS("search_scope") = FLD_search_scope
	
	movaRS("pre_new_js")= FLD_pre_new_js
	movaRS("pre_edit_js")= FLD_pre_edit_js
	movaRS("end_new_js")= FLD_end_new_js
	movaRS("end_edit_js")= FLD_end_edit_js 
	movaRS("print_template")= FLD_print_template
	movaRS("edit_submit_js")=FLD_edit_submit_js
	movaRS("new_submit_js")=FLD_new_submit_js
	movaRS("pub_js") = FLD_pub_js
	
	movaRS("supper_manager") = FLD_supper_manager
	movaRS("show_no") = FLD_show_no 
	movaRS("is_owner") = FLD_is_owner
	movaRS("depend_master") = FLD_depend_master
	movaRS("template_define") = FLD_template_define
	movaRS("template_field") = FLD_template_field
		 	  
	
	if movaRS("is_single") = "F" then movaRS("all_show_master") =FLD_all_show_master
end if 


movaRS("is_locked")= FLD_is_locked
movaRS("is_publish")=FLD_is_publish
movaRS("is_seat")=FLD_is_seat
movaRS("object_name")=FLD_object_name
movaRS("view_col")=FLD_view_col

movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))


if req("del") ="T" then
	movaRS("archive")="T"
end if  
movaRS.Update
FLD_object_id = movaRS("object_id")
FLD_is_single = movaRS("is_single")

if isNew then 
	if FLD_table_name = "MU_CUSTOMER" then 
		'insertFieldString ="insert into mu_object_field "
		'insertFieldString = insertFieldString &  "(owner,object_id,field_code,field_name,field_type,is_new,is_list,is_edit,is_seat,"
		'insertFieldString = insertFieldString &  "is_search,is_required,search_type,def_value,col_span,sort_edit,sort_list,width,high)"
		'insertFieldString = insertFieldString &  " values ( '" & session("customerNo") & "',"
		'insertFieldString = insertFieldString &  FLD_object_id & ",'customer','姓名','VARCHAR','T','T','T','T','T','T','like','',0,1,1,20,1 )"
		'executeUpdate conn,insertFieldString

		insertFieldString ="insert into mu_object_field "
		insertFieldString = insertFieldString &  "(owner,object_id,field_code,field_name,field_type)"
		insertFieldString = insertFieldString &  " values ( '" & session("customerNo") & "',"
		insertFieldString = insertFieldString &  FLD_object_id & ",'customer','姓名','VARCHAR')"
		executeUpdate conn,insertFieldString
		
		
		insertFieldString ="insert into mu_object_field "
		insertFieldString = insertFieldString &  "(owner,object_id,field_code,field_name,field_type)"
		insertFieldString = insertFieldString &  " values ( '" & session("customerNo") & "',"
		insertFieldString = insertFieldString &  FLD_object_id & ",'main_phone','主要电话','VARCHAR')"
		executeUpdate conn,insertFieldString
		
	
		'创建默认的知识库分类
		insertDefPicklist = "insert into mu_item (owner,item_code,item_name,archive) values (" 
		insertDefPicklist = insertDefPicklist & "'" & session("customerNo") & "','" & session("customerNo") & "_M0000','知识库分类','F')"
		executeUpdate conn,insertDefPicklist
		
	end if
	

end if
movaRS.close

	
'同步权限点
'删除的处理
if req("del") ="T" or FLD_is_publish="F" then
	updateMPLSQL = "update mova_function set status='F' where category='" & FLD_object_code & "'"
	executeUpdate conn,updateMPLSQL
else
	updateMPLSQL = "update mova_function set status='T' where category='" & FLD_object_code & "'"
	executeUpdate conn,updateMPLSQL
	
	'设置菜单组
		updateMPLSQL = "Select top 1 * From mova_function Where code = '" & FLD_object_code & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =FLD_object_id
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if
		movaRS("status")="T"
		movaRS("parent_Id") = 0
		movaRS("category") = FLD_object_code
		movaRS("categoryName") = FLD_object_name
		movaRS("code") = FLD_object_code
		movaRS("functionName") = FLD_object_name
		movaRS("function_type") = "URL"
		movaRS("url") = "#"
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		Dim objectRootFunctionID
 		objectRootFunctionID = movaRS("mova_functionid")
 		movaRS.close
 		
 	

		'数据**新增				Dy_{objectID}_New			dy_new
		updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getObjectOppSec(FLD_object_id,"dy_new") & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =FLD_object_id
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if 
		movaRS("status")="T"
		movaRS("parent_Id") = objectRootFunctionID
		movaRS("category") = FLD_object_code
		movaRS("categoryName") = FLD_object_name 
		movaRS("code") = getObjectOppSec(FLD_object_id,"dy_new")
		movaRS("functionName") =    FLD_object_name & "新增"
		'如果是单一表，则添加新增的菜单
		if FLD_is_single ="T" then
			movaRS("function_type") = "URL"
			movaRS("url") = "/movaOpps/opp/opp.asp?objectId="& FLD_object_id 
		else
			movaRS("function_type") = ""
			movaRS("url") = ""
		end if 
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		movaRS.close
 
		 
		 
		
	'数据**查询				Dy_{objectID}_Search dy_search
		updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getObjectOppSec(FLD_object_id,"dy_search") & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =FLD_object_id
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if 
		movaRS("status")="T"
		movaRS("parent_Id") = objectRootFunctionID
		movaRS("category") = FLD_object_code
		movaRS("categoryName") = FLD_object_name 
		movaRS("code") = getObjectOppSec(FLD_object_id,"dy_search")
		movaRS("functionName") = FLD_object_name & "查询"
		movaRS("function_type") = "URL"
		movaRS("url") = "/movaOpps/opp/searchOpp.asp?objectId="& FLD_object_id &"&isStart=2&def=Last"
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		movaRS.close
		
	'数据**打印				Dy_{objectID}_Print		dy_print
	updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getObjectOppSec(FLD_object_id,"dy_print") & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =FLD_object_id
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if 
		if FLD_print_template ="" then 
			movaRS("status")="F"
		else
			movaRS("status")="T"
		end if 
		movaRS("parent_Id") = objectRootFunctionID
		movaRS("category") = FLD_object_code
		movaRS("categoryName") = FLD_object_name 
		movaRS("code") = getObjectOppSec(FLD_object_id,"dy_print")
		movaRS("functionName") = FLD_object_name & "打印"
		movaRS("function_type") = ""
		movaRS("url") = ""
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		movaRS.close
		
	
		
		
		
	'数据**编辑				Dy_{objectID}_Edit		dy_edit
	updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getObjectOppSec(FLD_object_id,"dy_edit") & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =FLD_object_id
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if 
		movaRS("status")="T"
		movaRS("parent_Id") = objectRootFunctionID
		movaRS("category") = FLD_object_code
		movaRS("categoryName") = FLD_object_name 
		movaRS("code") = getObjectOppSec(FLD_object_id,"dy_edit")
		movaRS("functionName") = FLD_object_name & "编辑"
		movaRS("function_type") = ""
		movaRS("url") = ""
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		movaRS.close
		
	'数据**删除				Dy_{objectID}_Del			dy_del
	updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getObjectOppSec(FLD_object_id,"dy_del") & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =FLD_object_id
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if 
		movaRS("status")="T"
		movaRS("parent_Id") = objectRootFunctionID
		movaRS("category") = FLD_object_code
		movaRS("categoryName") = FLD_object_name 
		movaRS("code") = getObjectOppSec(FLD_object_id,"dy_del")
		movaRS("functionName") = FLD_object_name & "删除"
		movaRS("function_type") = ""
		movaRS("url") = ""
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		movaRS.close


	'数据**日志 			Dy_{objectID}_Log		dy_log
	updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getObjectOppSec(FLD_object_id,"dy_log") & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =FLD_object_id
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if 
		movaRS("status")="T"
		movaRS("parent_Id") = objectRootFunctionID
		movaRS("category") = FLD_object_code
		movaRS("categoryName") = FLD_object_name 
		movaRS("code") = getObjectOppSec(FLD_object_id,"dy_log")
		movaRS("functionName") = FLD_object_name & "日志"
		movaRS("function_type") = ""
		movaRS("url") = ""
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		movaRS.close
		

	'数据**批量操作		Dy_{objectID}_Batch		dy_batch
	updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getObjectOppSec(FLD_object_id,"dy_batch") & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =FLD_object_id
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if 
		if FLD_allow_batch="T" then 
			movaRS("status")="T"
		else
			movaRS("status")="F"
		end if 
		movaRS("parent_Id") = objectRootFunctionID
		movaRS("category") = FLD_object_code
		movaRS("categoryName") = FLD_object_name 
		movaRS("code") = getObjectOppSec(FLD_object_id,"dy_batch")
		movaRS("functionName") = FLD_object_name & "批量操作"
		movaRS("function_type") = ""
		movaRS("url") = ""
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		movaRS.close
end if 

 gotourl "objectAdv.asp?id=" & FLD_object_id

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
