<!-- #include virtual="/movaOpps/opp/pub/m.asp" --> 
<%
	

	'ajax获取坐席号码
	Function ajaxGetSeatPhone(cPhone)
		
	End Function 
	
	'获取坐席_NO
	Function getSeat_NO 
		getSeat_NO = getSerial("Seat")
	End Function
	
	'获取订单_NO
	Function getOrder_NO 
		getOrder_NO = getSerial("Order")
	End Function
 
 
	 
 
	'获取客户坐席Mac
	Function getCustomerSeat(customerId,id)
		if isNULL(customerId) or customerId="" then 
			getCustomerSeat = ""
		else
			getCustomerSeat = cachePicklist("select isnull(mac_addr,seat_no) as selectvalue,seat_tel txt from cc_seat where archive='F' and customer_id=" & customerId & " order by seat_tel",id) 
		end if 
	End Function
	
	'获取客户坐席电话号码
	Function getCustomerPhone(customerId,id)
		if isNULL(customerId) or customerId="" then 
			getCustomerPhone = ""
		else
			getCustomerPhone = cachePicklist("select seat_tel as selectvalue,seat_tel txt from cc_seat where archive='F' and customer_id=" & customerId & " order by seat_tel",id) 
		end if 
	End Function
	
	'获取客户功能键
	Function getCustomerMenu(customerId,menu_no)
		menuStr = "select menu_no as selectvalue,' ' + menu_no + '...' + description as  txt from cc_menu where archive='F' and customer_id=" & customerId & " order by menu_no"
		response.write menuStr
 
		if isNULL(customerId) or customerId="" then 
			getCustomerMenu = ""
		else
			getCustomerMenu = cachePicklist(menuStr,menu_no) 
		end if
	End Function
	
	'获取数据模型字段列表 返回 Field_code  value text
	Function getObjectFieldPicklist(objectId,id)
		if isNULL(objectId) or objectId="" then 
			getObjectFieldPicklist = ""
		else
			getObjectFieldPicklist = cachePicklist("select field_code as selectValue,field_name as txt from mu_object_field where object_id="& objectId &" and field_type<>'TEXT' and field_name<>''  and is_forbidden='F' and field_name is not null order by sort_edit,field_name ",id)
		 
		end if 
	End Function
	
	'获取关联表的字段 select 部分 
	Function getMastTable_Field_sql_select(pObjectId)
		sql = "select C.field_code ,field_name as txt from mu_object_field where object_id="& objectId &" and field_type<>'TEXT' and field_name<>'' and is_forbidden='F' and field_name is not null order by sort_edit,field_name "
		
		Dim tmp
		tmp = getJoinObjectTableName("","")
	end Function 
		
	
	
	'获取数据模型字段列表  返回 ID value text
	Function getObjectFieldIDPicklist(objectId,id)
		if isNULL(objectId) or objectId="" then 
			getObjectFieldIDPicklist = ""
		else
			getObjectFieldIDPicklist = cachePicklist("select field_id as selectValue,field_name as txt from mu_object_field where object_id="& objectId &" and field_type<>'TEXT' and field_name<>'' and is_forbidden='F' and field_name is not null order by sort_edit,field_name ",id)
		 
		end if 
	End Function
	
 
	
	'获取数据模型字段列表 仅限分组字段
	Function getObjectFieldPicklistByGroup(objectId,id)
		if isNULL(objectId) or objectId="" then 
			getObjectFieldPicklistByGroup = ""
		else
			getObjectFieldPicklistByGroup = cachePicklist("select field_code as selectValue,field_name as txt from mu_object_field where object_id="& objectId &" and field_type<>'TEXT' and field_name<>'' and is_forbidden='F' and field_name is not null and field_type like '"& session("customerNo") &"_%' order by field_code ",id)
		 
		end if 
	End Function

	'获取数据模型字段列表 仅限批量修改字段
	Function getObjectFieldPicklistByBatch(objectId,id)
		if isNULL(objectId) or objectId="" then 
			getObjectFieldPicklistByBatch = ""
		else
			getObjectFieldPicklistByBatch = cachePicklist("select field_code as selectValue,field_name as txt from mu_object_field where object_id="& objectId &" and is_forbidden='F' and field_type<>'TEXT' and field_name<>'' and allow_batch='T' and field_name is not null order by field_code ",id)
		 
		end if 
	End Function
	
'获取当前对象id的表名
Function getObjectProperty(objectid,propertyValue)
	if objectPropertyArray(1)="" then 
		getObjectPropertyArray(objectid)
	end if 
	if ucase(propertyvalue)="PLUGIN_NO" then getObjectProperty = 								 objectPropertyArray(1) 
	if ucase(propertyvalue)="TABLE_NAME" then getObjectProperty =                objectPropertyArray(2) 
	if ucase(propertyvalue)="OBJECT_CODE" then getObjectProperty =               objectPropertyArray(3) 
	if ucase(propertyvalue)="OBJECT_NAME" then getObjectProperty =               objectPropertyArray(4) 
	if ucase(propertyvalue)="OWNER" then getObjectProperty =                     objectPropertyArray(5) 
	if ucase(propertyvalue)="IS_LOCKED" then getObjectProperty =                 objectPropertyArray(6) 
	if ucase(propertyvalue)="IS_DISCARD" then getObjectProperty =                objectPropertyArray(7) 
	if ucase(propertyvalue)="IS_SYSTEM" then getObjectProperty =                 objectPropertyArray(8) 
	if ucase(propertyvalue)="IS_PUBLISH" then getObjectProperty =                objectPropertyArray(9) 
	if ucase(propertyvalue)="VIEW_COL" then getObjectProperty =                  objectPropertyArray(10)
	if ucase(propertyvalue)="PRINT_TEMPLATE" then getObjectProperty =            objectPropertyArray(11)
	if ucase(propertyvalue)="IS_RULE" then getObjectProperty =                   objectPropertyArray(12)
	if ucase(propertyvalue)="IS_PRIVATE" then getObjectProperty =                objectPropertyArray(13)
	if ucase(propertyvalue)="IS_HIERARCHY" then getObjectProperty =              objectPropertyArray(14)
	if ucase(propertyvalue)="CHK_REPEAT" then getObjectProperty =                objectPropertyArray(15)
	if ucase(propertyvalue)="ALLOW_BATCH" then getObjectProperty =               objectPropertyArray(16)
	if ucase(propertyvalue)="ADD_CONTINUE" then getObjectProperty =              objectPropertyArray(17)
	if ucase(propertyvalue)="IS_SINGLE" then getObjectProperty =                 objectPropertyArray(18)
	if ucase(propertyvalue)="PRE_NEW_JS" then getObjectProperty =                objectPropertyArray(19)
	if ucase(propertyvalue)="PRE_EDIT_JS" then getObjectProperty =               objectPropertyArray(20)
	if ucase(propertyvalue)="END_NEW_JS" then getObjectProperty =                objectPropertyArray(21)
	if ucase(propertyvalue)="END_EDIT_JS" then getObjectProperty =               objectPropertyArray(22)
	if ucase(propertyvalue)="ALL_SHOW_MASTER" then getObjectProperty =           objectPropertyArray(23)
	if ucase(propertyvalue)="SEARCH_SCOPE" then getObjectProperty =              objectPropertyArray(24)
	if ucase(propertyvalue)="NEW_SUBMIT_JS" then getObjectProperty =             objectPropertyArray(25)
	if ucase(propertyvalue)="EDIT_SUBMIT_JS" then getObjectProperty =            objectPropertyArray(26)
	if ucase(propertyvalue)="PUB_JS" then getObjectProperty =                    objectPropertyArray(27)
	if ucase(propertyvalue)="SUPPER_MANAGER" then getObjectProperty =            objectPropertyArray(28)
	if ucase(propertyvalue)="IS_OWNER" then getObjectProperty =                  objectPropertyArray(29)
	if ucase(propertyvalue)="DEPEND_MASTER" then getObjectProperty =             objectPropertyArray(30) 
end function

'获取当前对象所有属性
Dim objectPropertyArray(50)
sub  getObjectPropertyArray(objectid)
	for oj=1 to 50
			objectPropertyArray(oj)=""
	Next
	
	sqlString = "select * from mu_object where owner='" & session("customerNo") & "'"
	sqlString = sqlString + " and archive='F' and is_publish='T' and is_discard='F' and object_id="& objectid 
	executeQuery conn,movaRS1,sqlString,1,1
	
	if movaRS1.bof or movaRS1.eof then
		movaRS1.close
	else
		objectPropertyArray(1)=movaRS1("plugin_no")
		objectPropertyArray(2)=movaRS1("table_name")
		objectPropertyArray(3)=movaRS1("object_code")
		objectPropertyArray(4)=movaRS1("object_name")
		objectPropertyArray(5)=movaRS1("owner")
		objectPropertyArray(6)=movaRS1("is_locked")
		objectPropertyArray(7)=movaRS1("is_discard")
		objectPropertyArray(8)=movaRS1("is_system")
		objectPropertyArray(9)=movaRS1("is_publish")
		objectPropertyArray(10)=movaRS1("view_col")
		objectPropertyArray(11)=movaRS1("print_template")
		objectPropertyArray(12)=movaRS1("is_rule")
		objectPropertyArray(13)=movaRS1("is_private")
		objectPropertyArray(14)=movaRS1("is_hierarchy")
		objectPropertyArray(15)=movaRS1("chk_repeat")
		objectPropertyArray(16)=movaRS1("allow_batch")
		objectPropertyArray(17)=movaRS1("add_continue")
		objectPropertyArray(18)=movaRS1("is_single")
		objectPropertyArray(19)=movaRS1("pre_new_js")
		objectPropertyArray(20)=movaRS1("pre_edit_js")
		objectPropertyArray(21)=movaRS1("end_new_js")
		objectPropertyArray(22)=movaRS1("end_edit_js")
		objectPropertyArray(23)=movaRS1("all_show_master")
		objectPropertyArray(24)=movaRS1("search_scope")
		objectPropertyArray(25)=movaRS1("new_submit_js")
		objectPropertyArray(26)=movaRS1("edit_submit_js")
		objectPropertyArray(27)=movaRS1("pub_js")
		objectPropertyArray(28)=movaRS1("supper_manager")
		objectPropertyArray(29)=movaRS1("is_owner")
		objectPropertyArray(30)=movaRS1("depend_master")
		objectPropertyArray(31)=movaRS1("template_field")
		objectPropertyArray(32)=movaRS1("template_define")
		movaRS1.close
	end if 
end sub 

'获取当前对象的属性
Function getObjectPropertyByCode(object_code,propertyValue)
sqlString = "select * from mu_object where owner='" & session("customerNo") & "'"
	sqlString = sqlString + " and archive='F' and is_publish='T' and object_code='"& object_code  & "'"
	executeQuery conn,movaRS1,sqlString,1,1
	
	if movaRS1.bof or movaRS1.eof then
		movaRS1.close
		getObjectTableName = ""
	else
		'Dim Form_Frm
		getObjectPropertyByCode = movaRS1(propertyValue)
		movaRS1.close
	end if 
end function 

 
 '获取业务数据字段
Function getOppProperty(tableName,pOppId,propertyValue)
if  inStr(ucase(tableName),"MU_OPP")>0 then 
	sqlString = "select * from "& tableName &" where opp_id ="& pOppId &" and archive='F' and owner='" & session("customerNo") & "'"
else
	sqlString = "select * from "& tableName &" where "& right(tableName,len(tableName)-3) &"_id ="& pOppId &" and archive='F' and owner='" & session("customerNo") & "'"
end if 

	executeQuery conn,movaRS1,sqlString,1,1
	
	if movaRS1.bof or movaRS1.eof then
		movaRS1.close
		getOppProperty = ""
	else
		'Dim Form_Frm
		getOppProperty = movaRS1(propertyValue)
		movaRS1.close
	end if 
end function 

'生成客户员工工号
function getWorkNo(customerId)
	uSql = "update cc_customer  set serialno=serialno + 1 where customer_id=" & customerId & ""
	'response.write uSQl & "<BR>"
	executeUpdate conn,uSql
	'response.write "select  right(ltrim(str(serialno)),len(ltrim(str(serialno)))-1) from cc_customer where customer_id=" & customerId & "<BR>"
	getWorkNo = getOneField("select  right(ltrim(str(serialno)),len(ltrim(str(serialno)))-1) from cc_customer where customer_id=" & customerId )
end Function


'获取业务模型规则到数组
Dim ObjectRuleArray(20,7)

sub getRuleArray(objectId)
 
	Dim k,j
	k=1
	 j=1
	'初始化
	for k=1 to 20 
		for j=1 to 7
			ObjectRuleArray(k,j)=""
		Next
	Next
	 
	dim sqlRule
	sqlRule = "select r.type,r.object_id,con_role,con_field,isnull(con_value,'') as con_value,isnull(con_edit,'T') as con_edit,isnull(con_delete,'T') as con_delete from mu_object o,mu_object_rule r  where o.object_id=r.object_id and  is_rule='T' and r.archive='F' and o .archive='F' and o.owner='"& session("customerNo") &"'"
	executeQuery conn,movaRs1,sqlRule, 1, 1
	Dim i
	i=1
	do
		if movaRs1.eof or movaRs1.bof then exit do
		
		FRM_type  = movaRs1("type")
		FRM_object_id = movaRs1("object_id")
		FRM_con_role = movaRs1("con_role")
		FRM_con_field =  movaRs1("con_field")
		
		if movaRs1("con_value") ="" or isnull(movaRs1("con_value")) then 
			FRM_con_value  = " "
		else
			FRM_con_value  = movaRs1("con_value")
		end if
		
		if movaRs1("con_edit") ="" or isnull(movaRs1("con_delete")) then 
			FRM_con_edit  = "T"
		else
			FRM_con_edit  = movaRs1("con_edit")
		end if
		
		if rs("con_delete") ="" or isnull(movaRs1("con_delete")) then 
			FRM_con_delete  = "T"
		else
			FRM_con_delete  = movaRs1("con_delete")
		end if
		
		ObjectRuleArray(i,1)=FRM_object_id
		ObjectRuleArray(i,2)=FRM_type
		ObjectRuleArray(i,3)=FRM_con_role
		ObjectRuleArray(i,4)=FRM_con_field
		ObjectRuleArray(i,5)=FRM_con_value
		ObjectRuleArray(i,6)=FRM_con_edit
		ObjectRuleArray(i,7)=FRM_con_delete
		i=i+1
		movaRs1.Movenext 
	Loop
	movaRs1.close
end sub

'根据字段值判断业务模型业务规则
'返回该字段的值，如果为 ^ 则表示可以进行所有操作
function getObjectRule(objectId,fieldCode,operationType,conValue)
		'如果 operationType = "Edit" 则表示判断 编辑 操作
		'如果 operationType = "Delete" 则表示判断 删除 操作
		'conValue为比对值
		
		Dim returnValue 
		returnValue="T"
Dim ok
		ok=1
		for ok=1 to 20 
			if ObjectRuleArray(ok,1) = objectId and ObjectRuleArray(ok,2)="O" and ObjectRuleArray(ok,3)=session("userRole") and ObjectRuleArray(ok,5)= conValue then 
				if operationType = "Edit" then
					if ObjectRuleArray(ok,6) = "F" then 
						returnValue= "F"
						exit For
					end if 
				end if 
			 
				if operationType = "Delete" then
					if ObjectRuleArray(ok,7) = "F" then 
						returnValue= "F"
						exit For
					end if 
				end if  
			end if 
			if ObjectRuleArray(ok,1)="" then exit for
		Next
		'response.write "operationType:" & operationType & ":" & returnValue & "<br>"
		getObjectRule = returnValue
end Function

'检测字段规则
'如果不可以编辑，则返回 F， 如果可以编辑则返回 T
function getFieldRule(objectId,fieldCode,fieldIndex,isNew)
		Dim allowEdit,readIndex
		allowEdit="T"
		
		if    isAdministrator() then 
			
			if isNew then 
				readIndex = 14
			else
				readIndex = 15 
			end if 
		if inStr( "," & UCase(ObjectFieldArray(fieldIndex,readIndex))& "," , "," & UCase(session("userRole"))& ","  )>0 or inStr( ObjectFieldArray(fieldIndex,readIndex) & "","*") >0   then 
				allowEdit="F"
		else 
		 	  allowEdit="T"
		end if 
		if   ObjectFieldArray(fieldIndex,readIndex)="*" then 
			allowEdit="F"
		end if 
				
			if allowEdit="T" then 
				ok=1
				for ok=1 to 20 
					if ObjectRuleArray(ok,1) = objectId and ObjectRuleArray(ok,4)=fieldCode and  ObjectRuleArray(ok,2)="F" and ObjectRuleArray(ok,3)=session("userRole") then 
						allowEdit = ObjectRuleArray(ok,6) 
						exit for
					end if 
					if ObjectRuleArray(ok,1)="" then exit for
				Next
				if curRuleAllowEditField<>",*," then 
	 					'response.write curRuleAllowEditField & ">>>" & "," & ucase(ObjectFieldArray(fieldIndex,1)) & ","
	 					if inStr(curRuleAllowEditField,"," & ucase(ObjectFieldArray(fieldIndex,1)) & "," )>0 then 
							if allowEdit="T" then 
								allowEdit="T"
							end if 
						else
							allowEdit="F"
					 	end if 
	 			end if
			end if 
	 	else
			 allowEdit="T"
		end if 
		getFieldRule = allowEdit 
end Function

  

'自定义字段数组
Dim ObjectFieldArray(100,30)		
Dim ObjectFieldArray_X,ObjectFieldArray_Y  '定义字段的数量_X及属性_Y的数量， 
Dim curIndex_Property_readOnly		'需要动态确定的只读字段的位置。_X 
ObjectFieldArray_X=100
ObjectFieldArray_Y=30

dim curIndex_Property_NewReadOnly,curIndex_Property_value
curIndex_Property_readOnly = 15		'只读属性的序号，需要根据实际情况修改
curIndex_Property_NewReadOnly = 14		'新增时只读属性的序号，需要根据实际情况修改
curIndex_Property_value = 26+1			'当前属性的值索引（数组最大值 + 1）

'自定义主表的字段数组
Dim mastTableFieldArray(100,4)
Dim mastTableFieldArray_X,mastTableFieldArray_Y
mastTableFieldArray_X=30-1
mastTableFieldArray_Y=4-1
Sub initMastTAbleFieldArray(pObjectid,pId)
			Dim  j
			'初始化
			for i=1 to 100-1
				for j=1 to 4-1
					mastTableFieldArray(i,j)=""	
				Next
			Next

		 		sql = "select * from mu_object_field  where archive='F' and owner='" & session("customerNo") & "'  and is_forbidden='F' and object_id=" & getJoinObjectId(pObjectid,"") & " order by sort_edit,field_name"
				executeQuery conn,rs,sql, 1, 1
 				i=1
 				do
					if rs.eof or rs.bof then exit do
					mastTableFieldArray(i,1)=rs("field_code")
					mastTableFieldArray(i,2)=rs("field_Name")
					i=i+1
					rs.moveNext
				loop
				rs.close
			 
			
			sql = "select * from " & getJoinObjectTableName(pObjectid,"") & " where archive='F' and owner='" & session("customerNo") & "' and customer_id=" & pId
			'response.write sql & "<BR>"
			executeQuery conn,rs,sql, 1, 1
 			Dim i
 			i=1
 				if rs.eof or rs.bof then 
 				else
 						for i=1 to 30-1
 								if mastTableFieldArray(i,1)="" then exit for 
								
									'response.write mastTableFieldArray(i,1) &","
									mastTableFieldArray(i,3)=rs(mastTableFieldArray(i,1))
						Next
						
				end if 
 			rs.close
end Sub 

'从表所需要显示的主表字段
Dim JoinShowMastFieldCodeArray(20) 
Dim JoinShowMastFieldCodeArray_X
JoinShowMastFieldCodeArray_X = 20-1
Sub initJoinShowMastFieldCode(pObjectid)
'初始化
			for i=1 to 20-1
				JoinShowMastFieldCodeArray(i)=""
			Next
			
			sql = "select f.field_code from mu_object_master_field m,mu_object_field f "
			sql = sql & " where m.field_id=f.field_id and f.owner='"& session("customerNo") &"' "
			sql = sql & " and m.object_id="& pObjectId &" and f.is_forbidden='F' AND m.archive='F' order by m.sort_no "
			executeQuery conn,rs,sql, 1, 1
 			i=1
 				do
				if rs.eof or rs.bof then exit do
					JoinShowMastFieldCodeArray(i)=rs("field_code")
					i=i+1
					rs.moveNext
				loop
				rs.close
end sub

sub debugObjectField
for k=1 to ObjectFieldArray_X 
		for j=1 to ObjectFieldArray_Y
			response.write  ObjectFieldArray(k,2) & ":--------" & j & ":" & ObjectFieldArray(k,j) & "<br>" 
		Next
	Next
end sub 

sub getObjectField(objectId,use)
'获取对象字段定义
'LIST 列表使用
'EDIT 编辑时使用
'NEW	新增时使用
'SEARCH	查询时使用
Dim k
	 k=1
Dim j
	 j=1
	'初始化
	for k=1 to ObjectFieldArray_X 
		for j=1 to ObjectFieldArray_Y
			ObjectFieldArray(k,j)=""
		Next
	Next
	
 
Dim sqlObject
	sqlObject="select *,isNull(field_name,'_') as fn from mu_object_field where archive='F' and is_forbidden='F' and object_id=" & objectId
	
	Dim securitySQLx ,orderBy,objectCondition,objectOrder
	securitySQLx = " and owner='" & session("customerNo") & "'"
 			if  isNull(orderBy) or orderBy="" then 
 				objectOrder =  " order by field_code " 
 			end if 
 			
 			if ucase(use)="LIST" then 
 				objectCondition = " and is_list='T' "
 				objectOrder =  " order by sort_list " 
 			end if 
 			
 			if ucase(use)="EDIT" then 
 				objectCondition = " and is_edit='T' "
 				objectOrder =  " order by sort_edit " 
 			end if
 			
 			
 			if ucase(use)="SEARCH" then 
 				objectCondition = " and is_search='T' "
 				objectOrder =  " order by is_search  " 
 			end if
 			
 			if ucase(use)="NEW" then 
 				objectCondition = " and is_new='T' "
 				objectOrder =  " order by sort_edit " 
 			end if
 			sqlObject=sqlObject & objectCondition & securitySQLx &  objectOrder 
 
			executeQuery conn,rs,sqlObject, 1, 1
 			Dim i
 			i=1
Dim FRM_field_code,FRM_field_name,FRM_field_type,FRM_is_required
Dim FRM_search_type,FRM_def_value,FRM_col_span,FRM_width,FRM_high
Dim FRM_allow_recall,FRM_allow_clone,FRM_clone_by,FRM_is_num,FRM_new_onChange
Dim FRM_edit_onChange,FRM_new_read_only,FRM_status_rule,FRM_edit_read_only
Dim FRM_is_richText,FRM_is_attachment,FRM_hidden_by,FRM_new_ext_html,FRM_edit_ext_html
dIM FRM_PK_select,FRM_PK_window
 				do
				if rs.eof or rs.bof then exit do
				
				
				FRM_field_code  = rs("field_code")
				FRM_field_name = rs("field_name")
				FRM_field_type = rs("field_type")
				FRM_is_required =  rs("is_required")
				FRM_search_type = rs("search_type")
				FRM_def_value = rs("def_value")
				FRM_col_span = rs("col_span")
				FRM_width = rs("width")
				FRM_high = rs("high")
 				FRM_allow_recall = rs("allow_recall")
 				FRM_allow_clone = rs("allow_clone")
 				FRM_clone_by = rs("clone_by")
 				FRM_is_num = rs("is_num")
 				
 				FRM_new_onChange = rs("new_onchange") '这里不需要再转换了
				FRM_edit_onChange = rs("edit_onchange")'这里不需要再转换了
				
				FRM_new_read_only = rs("new_read_only")
				FRM_edit_read_only = rs("edit_read_only")
				FRM_status_rule = rs("status_rule")
				FRM_is_richText = rs("is_richText")
				FRM_is_attachment = rs("is_attachment")
				FRM_hidden_by = rs("hidden_by")
				FRM_new_ext_html = rs("new_ext_html")
				FRM_edit_ext_html = rs("edit_ext_html")
				
				FRM_FK_select = rs("fk_select")
				FRM_FK_window = rs("fk_window")
				FRM_hidden_by_field = rs("hidden_by_field")
			 
				ObjectFieldArray(i,1)=FRM_field_code			'字段名
				ObjectFieldArray(i,2)=FRM_field_name			'字段名称
				ObjectFieldArray(i,3)=FRM_field_type			'字段类型
				ObjectFieldArray(i,4)=FRM_is_required			'字段是否必填
				ObjectFieldArray(i,5)=FRM_search_type			'字段查询条件类型
				ObjectFieldArray(i,6)=FRM_def_value				'字段默认值
				ObjectFieldArray(i,7)=FRM_col_span				'字段布局跨列数
				ObjectFieldArray(i,8)=FRM_width						'字段输入框宽度
				ObjectFieldArray(i,9)=FRM_high						'字段输入框高度
				ObjectFieldArray(i,10)=FRM_allow_recall		'字段记忆
				
				ObjectFieldArray(i,11)=FRM_clone_by				'字段克隆标记
				ObjectFieldArray(i,12)=FRM_allow_clone		'字段是否允许克隆
				ObjectFieldArray(i,13)=FRM_is_num					'字段是否为数字
				ObjectFieldArray(i,14)=FRM_new_read_only	'字段新增时只读
				ObjectFieldArray(i,15)=FRM_edit_read_only	'字段编辑时只读
				ObjectFieldArray(i,16)=FRM_new_onChange		'字段新增时onChange事件	
				ObjectFieldArray(i,17)=FRM_edit_onChange	'字段编辑时onChange事件
				ObjectFieldArray(i,18)=FRM_status_rule		'字段规则字符串 ，处理状态的				
 				ObjectFieldArray(i,19)=FRM_is_richText		'是否是富文本
				ObjectFieldArray(i,20)=FRM_is_attachment	'是否是附件
				ObjectFieldArray(i,21)=FRM_hidden_by			'对列表的角色隐藏显示
				ObjectFieldArray(i,22)=FRM_new_ext_html		'字段新增时html扩展 
				ObjectFieldArray(i,23)=FRM_edit_ext_html	'字段编辑时html扩展
				
				ObjectFieldArray(i,24)=FRM_FK_select		'外键select语句  
				ObjectFieldArray(i,25)=FRM_FK_window	  '外键查询url
				ObjectFieldArray(i,26)=FRM_hidden_by_field '根据字段决定是否隐藏该字段
				
				i=i+1
				rs.Movenext 
			Loop
			rs.close
	end sub
 
 '从字段级数组中定位某个字段名的位置
	function getPosFromArray(fieldName)
		Dim returnPosFromArray 
		returnPosFromArray = 0
		for k=1 to ObjectFieldArray_X 
				if ObjectFieldArray(k,1) ="" then exit for 
				if ucase(ObjectFieldArray(k,1)) = ucase(fieldName) then 
					returnPosFromArray = k
				end if 
		Next
		getPosFromArray = returnPosFromArray
	end function 
 

'从  "[字段代码]^[值]^[N|M|D]" 解析获取值
Dim CtrolReturnValue,CtrolReturnValueExt
'
function getCtrolSplitValue(CtrolString,keyStr)
  
	CtrolReturnValue=""
	CtrolReturnValueExt=""
	Dim ctrolArray
	if  inStr(CtrolString,"^")>0 then
		 
		ctrolArray=split(CtrolString ,",") 
		for pi=0 to ubound(ctrolArray)
			Dim ctrolItemArray 
			   
				ctrolItemArray = split(ctrolArray(pi) ,"^")
				if ubound(ctrolItemArray)>0 then 
				if ucase(ctrolItemArray(0))=ucase(keyStr) then 
					CtrolReturnValue = ctrolItemArray(1)
					if ubound(ctrolItemArray)>1 then CtrolReturnValueExt = ctrolItemArray(2)
					exit for  
				end if 
			end if 
				
		Next
	else
		getCtrolSplitValue = ""
	end if
end function 

 	'判断当前角色是否在列表内
 	function is_hidden_field_by_role(param_hidden_by) 
		if  param_hidden_by & "" = "" then
			
			is_hidden_field_by_role=false
		else
			if inStr( "," & UCase(param_hidden_by)& "," , "," & UCase(session("userRole"))& ","  )>0  or  inStr(  param_hidden_by & "", "*")>0  then 
				is_hidden_field_by_role=true
			else 
				is_hidden_field_by_role=false
			end if
		end if 
	 
			
		
	end function 

	'获取用户自定义下拉列表
	function getItemList(itemCode,selValue)
	Dim   itemSql
			itemSql = "select txt as selectvalue,txt from mu_item_list where owner='" & session("customerNo") &"' and item_code='" & itemCode &"' and archive='F' order by sort_no"
 		' response.write itemSql
		 getItemList = cachePicklist(itemSql,selValue)
	end function
	
	
	'获取表单名称
	function getFormName(form)
		getFormName = ucase( "_" + form)
	end Function
	
	'获取隐藏表单名
	function getHiddenFormName(form)
			getHiddenFormName = ucase("_HTML" & getFormName(form))
	end function
	
	function getFaceFormName(form)
			getFaceFormName = ucase("_SHOW" & getFormName(form))
	end function 
	
	
	
		'获取表单名称
	function getMastFormName(form)
		getMastFormName = ucase("__" + form)
	end Function
	
	'获取隐藏表单名
	function getMastHiddenFormName(form)
			getMastHiddenFormName = "_HTML_" & getFormName(form)
	end function
	
	'获取字段标题框ID名
	function getFieldTitleBoxName(form)
			getFieldTitleBoxName = "_TITLE_" & getFormName(form)
	end function
	
	'获取字段内容框ID名
	function getFieldTitleContentName(form)
			getFieldTitleContentName = "_CONTENT_" & getFormName(form)
	end function
	

'获取子菜单链接 <li模式
sub getObjectMenu(userObjectMenu)
		sqlString="select * from mu_object where owner='"& session("customerNo") &"' and archive='F' and is_publish='T' order by table_name"
 	 	executeQuery conn,movaRS,sqlString,1, 1
			do 
				if movaRS.eof or movaRS.bof then exit do
					response.write "<li name='li_sub" & 500+movaRS("object_id") &"' onClick='SwitchMenu(" & chr(34) & "sub" & 500+movaRS("object_id") & chr(34) & ")'>" & chr(13)
					response.write "<a href='/movaOpps/opp/searchOpp.asp?objectId=" & movaRS("object_id") & "&isStart=2&def=Last' target='main'>"& movaRS("object_name") &"查询" &"</a>" & chr(13)
					response.write "<ul id='sub"& 500+movaRS("object_id") &"' style='display:none'> </ul>"
					response.write "</li>" & chr(13)
				if movaRS("table_name")="MU_CUSTOMER" then 
					'如果是客户表，则设置客户表的session信息
					session("DEF_OBJECT_ID")= movaRS("object_id")
				end if 
				
				movaRS.moveNext
			loop 
		movaRS.close
end sub

'获取子菜单链接 <a模式
Dim newObject_list,viewObject_list
newObject_list = ""
viewObject_list = ""
sub getNewObjectMenu(pcId,pcNo,hiddenObjectStr)
		Dim itemCount
		sqlString="select * from mu_object where owner='"& session("customerNo") &"' and table_name<>'MU_CUSTOMER' and archive='F' and is_publish='T' and is_single='F' order by sort_no"
 	  
 	 	executeQuery conn,rs,sqlString, 1, 1
			do 
				if rs.eof or rs.bof then exit do
					Dim tempObj 
					tempObj = "|" & cStr(rs("object_id"))& "|" 
					if instr(hiddenObjectStr,tempObj)<1 then 
					if chkAccount(getObjectOppSec(rs("object_id"),"DY_SEARCH") ) then 
					 	itemCount = getOneField("select count(*) from "& RS("table_name") &" o ,mu_customer c where o.customer_id=c.customer_id and  o.owner='"& session("customerNo") &"' and o.archive='F' and o.object_code='" &  rs("object_code") & "' and c.CUSTOMER_NO='" & pcNo & "'" )
						viewObject_list = viewObject_list & "" & "<li><a href='searchOppTab.asp?showType=item&objectId=" & rs("object_id") & "&isStart=0&cid="&pcId&"&cNo=" & pcNo &" '   >"& rs("object_name") & "(<font color=#FF8000 >" & itemCount & "</font>)</a></li>"
					end if 
					end if 
				rs.moveNext
			loop
		rs.close
		viewObject_list = viewObject_list  
end sub

 
'获取当前客户坐席 上面相关的数据列表
function getSeatObject()
	getSeatObject = getOneField("select top 1 object_id from mu_object where owner='"& session("customerNo")  &"' and archive='F' and is_seat='T' and table_name<>'MU_CUSTOMER'")
end function

'获取当前用户的坐席网卡
function getUserMac()
	sqlusermac = "select top 1 mac_addr  from cc_user where archive='F' and customer_id="& session("customerId") &" and login='"& session("userlogin") &"'"
	getUserMac = getOneField(sqlusermac)
end function 


'获取用户picklist

	'生成picklist的列表
	Function curPicklist(str,valuelist) 
		dim f,sss,isvalue,p_i,j,sqlStr,p_k,p_j,isid
		if left(str,1)="#" then
			sqlStr = "select txt as selectvalue,txt from mu_item_list where archive='F' and  item_code='" & right(str,len(str)-1) & "'  and owner='"& session("customerNo") &"' order by sort_no"
		else
			sqlStr = str		
		end if 
		setDebug "picklist","",sqlStr 
		set rs=conn.execute(sqlStr)
		p_i=0
		p_k=0
		do 
			p_i=p_i+1
			p_j=0
			if rs.eof or rs.bof then
				exit do 
			end if
			if isNull(valuelist) then
				isvalue="aaaaa"
			end if 
			isvalue=cstr(rs("txt"))
			if isNull(isvalue) then
				isValue=""
			end if 
			if isNull(valuelist) then
				valuelist=""
			end if 
			isvalue=replace(isvalue," ","",1,1,1)
			valuelist=replace(valuelist," ","",1,1,1)
			isid=cstr(rs("selectvalue"))
			sss=split(valuelist,",")
			For Each f In sss
				if f=isid then 
					p_j=1
					p_k=1
				end if 
			Next
			if p_j=1 then
	%>
				<option value="<%=isid%>" selected><%=isvalue%></option>
	<%
			else 
	%>
				<option value="<%=isid%>"><%=isvalue%></option>
	<%
			end if 
			rs.movenext
		loop
	 	if p_k=0 then 
			sss=split(valuelist,",")
			For Each f In sss
	%>
				<option value="<%=valuelist%>" selected><%=valuelist%></option>
	<%
			Next
			rs.close
		end if 
	End Function
	
	Function getDefaultValue(pKeyValue)
		if pKeyValue="" or pKeyValue=null then 
			getDefaultValue=""
		else
			if left(pKeyValue,1)="{" and right(pKeyValue,1)="}" then 
				Dim defaultKey 
				defaultKey = ucase(pKeyValue)
				defaultKey = left(defaultKey,len(defaultKey)-1)
				defaultKey = right(defaultKey,len(defaultKey)-1)
				if left(defaultKey,4)="CUR_" then 
					diffDate = 0
					if inStr(defaultKey,"+")>0 then 
				 
					 diffDate =cInt(right(defaultKey,len(defaultKey)-inStr(defaultKey,"+")))
					end if 
					if left(defaultKey,8) = "CUR_DATE" then 
						defaultKey = getDate(diffDate,"day")
					end if
					
					if left(defaultKey,8)  = "CUR_TIME" then 
						defaultKey = getDate(diffDate,"time")
					end if
					if defaultKey = "CUR_WORKNO" then 
						defaultKey = session("seat_workNo")
					end if
					if defaultKey = "CUR_PHONE" then 
						defaultKey = session("incomingTel")
					end if
					if defaultKey = "CUR_USERNAME" then 
						defaultKey = session("username") 
					end if
					if defaultKey = "CUR_USERID" then 
						defaultKey = session("userid")
					end if
					
					if defaultKey = "CUR_TIMESTAMP" then 
						defaultKey = getTime() 
					end if
					
				end if 
				
				if left(defaultKey,4)="FLD_" then 
					defaultKey = right(defaultKey,len(defaultKey)-4)
					defaultKey = "^" & defaultKey
				end if
				
				getDefaultValue = defaultKey
			else
				getDefaultValue= pKeyValue
			end if 
		end if 
	End Function
	

'自定义字段定义数组
dim resultArray(60,3)

'根据字段名称获取字段列名， 带~开头的为其所对应的客户表列名，及定义
Function findResultArrayByName(nameStr)
	dim tempFindResultArrayByName
	tempFindResultArrayByName = ""
	for k=1 to 60 
		if resultArray(k,2)=""  then exit For
		if resultArray(k,2)=nameStr then 
			tempFindResultArrayByName = resultArray(k,1)
			exit For
		end if 
	Next
	findResultArrayByName = tempFindResultArrayByName
End Function

sub getFieldArray(pObjectId)
'获取列表函数 
	 kk=1
	 jj=1
	'初始化
	for kk=1 to 60 
		for jj=1 to 2
			resultArray(kk,j)=""
		Next
	Next
	
 
		sqlObject = "select * from mu_object_field where archive='F' and owner='"& session("customerNo") &"' and is_forbidden='F' "
		
		if   session("defObjectId")<>"" and session("defObjectId")<>cStr(pObjectId) then 
			sqlObject = sqlObject & " and (object_id="& pObjectId &" or object_id=" & session("defObjectId") & ") "
		else
			sqlObject = sqlObject & " and object_id="& pObjectId  
		end if 

		sqlObject = sqlObject & " and (field_name<>'' or field_name<>null) order by field_code"
		i=1
		executeQuery conn,rs,sqlObject, 1, 1
		do
				if rs.eof or rs.bof then exit do
					
				if cstr(pObjectId) = cstr(session("defObjectId")) then 
					resultArray(i,1)=rs("field_code")
					resultArray(i,2)=rs("field_name")
				else
					if cstr(rs("object_id")) = cstr(session("defObjectId")) then 
						resultArray(i,1)= rs("field_code")
						resultArray(i,2)="~" & rs("field_name")
					else
						resultArray(i,1)=rs("field_code")
						resultArray(i,2)=rs("field_name")
					end if 
				end if 
				
				i=i+1
				rs.Movenext 
			Loop
			rs.close
 
end sub

'日志相关
Dim logDescription
logDescription = ""

sub addLogDesription (fieldName,fieldValue)
	logDescription = logDescription & "<font color=red>&nbsp;/&nbsp;</font>" & fieldName & ":{" & fieldValue & "}"
end Sub
 

	sub showsetLog(objectCode,objectId)
	if objectCode<>"" and objectId<>"" then 
%>
<DIV class=cn_col>
	<div class=noneStyle>
	<table width=100% >
		
<% 			
 			sqlString="select l.object_code,l.object_id,l.operation,l.description,u.userName as createuser,l.createdate  from mu_log l,mova_user u "
 			sqlString=sqlString & " where l.createuser=u.mova_userid and  object_code='"& objectCode &"' and object_id="& objectId&" order by log_id desc "
			executeQuery conn,rs,sqlString, 1, 1
			Dim FRM_userName,FRM_operation_date,FRM_notes,FRM_operation
			do
				if rs.eof then exit Do


				FRM_userName = rs("createuser")
				FRM_operation_date = rs("createdate")
				FRM_notes = rs("description")
				FRM_operation = rs("operation")
				 
				
%>
<tr  onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
<td align="left" width=200 valign="top">	[<%=FRM_operation_date  %>]</td>
<td align="left">　<%=FRM_operation%>　<%=FRM_notes %> &nbsp;&nbsp;-&nbsp;&nbsp;<%= FRM_userName  %></td>
</tr>
 
<%			
		rs.Movenext
	loop
	rs.close
%>
</table>
</div>
<%
	end if
end Sub

'通过表名获取主键名称
Function getKeyNameByTable(tableName)
	if tableName<> "" then 
		if ucase(tableName)="MU_CUSTOMER" then
				getKeyNameByTable = "customer_id"
			else
				getKeyNameByTable  = "opp_id"
			end if  
	else
		getKeyNameByTable = ""
	end if 
End Function

'通过表名获取编码字段名
Function getNoNameByTable(tableName)
	if tableName<> "" then 
		if ucase(tableName)="MU_CUSTOMER" then
				getNoNameByTable = "customer_no"
			else
				getNoNameByTable  = "opp_no"
			end if
	else
		getNoNameByTable = ""
	end if 
End Function

'通过表名获取编码字段名
Function getmasterNameByTable(tableName)
	if tableName<> "" then 
		if ucase(tableName)="MU_CUSTOMER" then
			getmasterNameByTable = "customer"
		else
			getmasterNameByTable = "VA"
		end if 
	else
		getmasterNameByTable = ""
	end if 
End Function


'输出单位防重复的javascript
Sub printRepeatJavascript(objectTable,object_code,repeatField,opp_id)
%>
   $("input[name='_<%=repeatField%>']").change(function() {
     $.ajax({
    	url: '/movaOpps/opp/ajax/chkRepeat.asp?t=<%=getTimestamp()%>&objectTable=<%=objectTable%>&object_code=<%=object_code%>&repeatField=<%=repeatField%>&opp_id=<%=opp_id%>&repeatValue=' + $("input[name='_<%=repeatField%>']").val() ,
    	type: 'GET',
    	dataType: 'text',
    	timeout: 1000,
    	error: function(){
        alert('Error loading Text document');
    	},
    	success: function(result){
       	 	$("#errorInfo").empty();
       	 	$("#errorInfo").append(result);
      }
		});
   });
	 
<%
end Sub

sub printJquery_field_onChange_js (ParamIsNew)
	Dim paramI,jqueryJS 
	jqueryJS = ""
	for paramI=0 to ObjectFieldArray_X 
		if isNew then 
				jqueryJS = trim(ObjectFieldArray(paramI,16) &"")
		else 
				jqueryJS = trim(ObjectFieldArray(paramI,17) &"")
		end if 
		 
		if jqueryJS<> "" then
			  response.write "$(" & chr(34) & "#" & getFormName(ObjectFieldArray(paramI,1) )  & chr(34) & ").change(function() {" & chr(13)
				response.write convertData2JS(jqueryJS)
				response.write "});"
		end if 
		 
	next
end sub 

'输出IVR DATA的javascript
Sub printIvrDateJavascript(field_code)
	%>
		<script>_IVRField = "<%=field_code%>" ;</script>
	<%
end Sub

'输出克隆字段时所需要的javascript
Sub printCloneJavascript(objectTable,object_code,repeatField,opp_id)

%>

   $("#_<%=ucase(repeatField)%>_clone").click(function() { 
 
     $.ajax({
    	url: '/movaOpps/opp/ajax/cloneField.asp?t=<%=getTimestamp()%>&objectTable=<%=objectTable%>&object_code=<%=object_code%>&repeatField=<%=ucase(repeatField)%>&opp_id=<%=opp_id%>&repeatValue=' + $("input[name='_<%=ucase(repeatField)%>']").val() ,
    	type: 'GET',
    	dataType: 'text',
    	timeout: 5000,
    	error: function(){
        alert('Error loading Text document');
    	},
    	success: function(result){
    	 var resultTmp = result.trim();
       	if (resultTmp!=""){ 
        
       		//clone field start
						var s1=resultTmp.split('|');
		 				for(var i=0;i<s1.length;i++){
							if (s1[i]!=""){
								 var s2=s1[i].split('^'); 
								 
								 		$("#" + s2[0].trim()).val(s2[1].trim()); 
							}
						}
				 
					//end clone field
					
				}else{
       		alert("没有找到相同的记录");
       	}
      }
		});
   });

<%
end Sub


'输出批量修改时的javascript
Sub printBatchJavascript(object_id,batchName)
%>
<script>
	$(document).ready(function() {
   $("select[name='<%=batchName%>']").change(function() {
     $.ajax({
    	url: '/movaOpps/opp/ajax/fieldInputArea.asp?t=<%=getTimestamp()%>&object_id=<%=object_id%>&fieldName=' + $("select[name='<%=batchName%>']").val() ,
    	type: 'GET',
    	dataType: 'text',
    	timeout: 1000,
    	error: function(){
        alert('Error loading Text document');
    	},
    	success: function(result){
       	 	$("#batchInfo").empty();
       	 	$("#batchInfo").append(result);
      }
		});
   });
	});
	</script>
<%
end Sub


'获取外挂菜单
sub getExtMenu()
		sqlString="select * from mu_ext_menu where archive='F' and customer_no='"& session("customerNo") & "' order by sort_no "
 	 	executeQuery conn,movaRS,sqlString,1, 1
			do 
				if movaRS.eof or movaRS.bof then exit do
					tempMenuURL =replace(movaRS("menu_url"),"{DOMAIN}",session("ext_domain"),1,1,1)
					response.write "<li  name='li_sub"& 900+movars("mu_ext_menu_id") & "' ><a href='"& tempMenuURL &"' target='main'>"& movaRS("menu_name") &"</a></li>" & chr(13)
					movaRS.moveNext
			loop 
		movaRS.close
end sub

Dim userObjectPicklistSQL
userObjectPicklistSQL ="select object_id selectvalue, object_name txt from mu_object where archive='F' and is_publish='T' "
userObjectPicklistSQL = userObjectPicklistSQL & " and owner='" & session("customerNo") & "'"
userObjectPicklistSQL = userObjectPicklistSQL & " order by table_name,is_system desc,is_publish desc,createdate" 

'获取字段的实际数据库类型的首字母
function getFieldDataType(value)
	Dim returnFieldType 
	returnFieldType = ""
	if value = "DATE" then returnFieldType = "v"
	if value = "INT" then returnFieldType = "d"
	if value = "PHONE" then returnFieldType = "v"
	if value = "TEXT" then returnFieldType = "z"
	if value = "TIME" then returnFieldType = "v"
	if value = "VARCHAR" then returnFieldType = "v"
	if value = "USER" then returnFieldType = "d"
	if returnFieldType="" then returnFieldType = trim(getOneField("select field_type from mu_item where item_code='" & value & "'"))
	 
	if returnFieldType = "" then 
		getFieldDataType = "v"
	else 
		getFieldDataType = returnFieldType
	end if
End function

function getFieldStack(object_id,fieldType)				'获取当前可用的字段
	Dim tmpFieldType,tempSQL
	tmpFieldType = "varchar"
	if fieldType="d" then tmpFieldType="numeric"
	if fieldType="z" then tmpFieldType="text"
	tempSQL="select min(field_code) from mu_field_set where table_name =(select table_name from   mu_object where object_id="& object_id &") and f_type='"& tmpFieldType &"' and field_code not in ( select field_code from mu_object_field where object_id="& object_id &" and owner='"&  session("customerNo") &"' and archive='F' )"
	getFieldStack = getOneField(tempSQL)
	
	
end Function 

function getObjectListSql(owner) '获取对象列表的sql
	Dim tmpsql1
	 tmpsql1 = "select object_code as selectvalue,object_name as txt  from mu_object where archive='F' and is_publish='T'  and owner='"& owner &"' order by sort_no"
	 response.write tmpsql1
	 getObjectListSql = tmpsql1
end Function

function getObjectFildSet(table_name, objectid,is_single) '获取字段集合table_name 
	'如果is_single是T，则表示该表为主表，无关联表。否则为从表，需要指定默认主表（这里默认主表就是mu_customer）
	Dim defFieldSet(7,2)
	Dim objectNo_field,tempReturn,tempi,curSelectField
	
	defFieldSet(0,0) = "createdate"
	defFieldSet(0,1) = "创建时间"
	defFieldSet(1,0) = "createuser"
	defFieldSet(1,1) = "创建人"
	defFieldSet(2,0) = "modifydate"
	defFieldSet(2,1) = "修改时间"
	defFieldSet(3,0) = "modifyuser"
	defFieldSet(3,1) = "修改人"
	defFieldSet(4,0) = "team_Name"
	defFieldSet(4,1) = "组"
	
	objectNo_field = getNoNameByTable(table_name) 

	defFieldSet(5,0) = objectNo_field
	defFieldSet(5,1) = "编码"
	
	defFieldSet(6,0) = "team"
	defFieldSet(6,1) = "组ID"
	
	tempReturn = ""
	
	if is_single="T" then 
		tempReturn = picklist("select 'C.' + upper(field_code) as selectvalue,field_name  as txt from mu_object_field where object_id="& objectid &" and owner='" &  session("customerNo") & "' and archive='F' and is_forbidden='F' order by sort_list","")
		Dim teami
		for tempi=0 to 6
			if tempi=4 or teami=6 then 
				curSelectField =  "T." & ucase(defFieldSet(tempi,0))
			else
				curSelectField =  "" & ucase(defFieldSet(tempi,0))
			end if 
			tempReturn = tempReturn & "<option value="& chr(34) & curSelectField & chr(34) & "  >" & ucase(defFieldSet(tempi,1)) & "</option>" & chr(13)
		Next  
	else
		tempReturn = picklist("select 'P.' + upper(field_code) as selectvalue, 'P.' + field_name  as txt from mu_object_field where table_name='MU_CUSTOMER' and owner='" &  session("customerNo") & "' and is_forbidden='F' and archive='F' order by sort_list","") 
		for tempi=0 to 6
			if tempi=4 or teami=6 then 
				curSelectField =  "T." & ucase(defFieldSet(tempi,0))
			else
				curSelectField =  "P." & ucase(defFieldSet(tempi,0))
			end if 
			tempReturn = tempReturn & "<option value="& chr(34) & curSelectField & chr(34) & "  >" &  "P." & ucase(defFieldSet(tempi,1)) & "</option>" & chr(13)
		Next   
		
		
		
		tempReturn =tempReturn &  picklist("select 'C.' + upper(field_code) as selectvalue,field_name  as txt from mu_object_field where object_id="& objectid &" and owner='" &  session("customerNo") & "' and is_forbidden='F' and archive='F' order by sort_list","")
		for tempi=0 to 6
			if tempi=4 or teami=6 then 
				curSelectField =  "T." & ucase(defFieldSet(tempi,0))
			else
				curSelectField =  "C." & ucase(defFieldSet(tempi,0))
			end if 
			tempReturn = tempReturn & "<option value="& chr(34) & curSelectField & chr(34) & "  >" &  "C." & ucase(defFieldSet(tempi,1)) & "</option>" & chr(13) 
		Next 
		
		 
	end if
	getObjectFildSet = tempReturn
end function 

function isNumericField(mObjectId,FieldCode) '根据对象id和字段名判断该字段是否为数值
	 Dim tmpFieldCode,tmpObjectId,tmpReturn
	 tmpObjectId = mObjectId
	if left(req("field_code"),2)="P." then 
		tmpFieldCode =  trim(ucase(right(FieldCode,len(FieldCode)-2)))
		sql= "SELECT object_id FROM mu_object WHERE (table_name = 'MU_CUSTOMER') AND (owner = '"& session("customerNo") &"')"
 
		tmpObjectId = getOneField(sql )
	else
		tmpFieldCode = trim(ucase(FieldCode))
		
	end if 
	if tmpFieldCode="CREATEUSER" or tmpFieldCode="MODIFYUSER" or tmpFieldCode="TEAM" then
		isNumericField = "T"
	else
		sql = "SELECT is_num FROM mu_object_field WHERE (object_id = "& tmpObjectId& ") AND (owner = '"& session("customerNo") &"') AND (UPPER(field_code) = '"&tmpFieldCode &"')" 
		isNumericField = getOnefield(sql ) 
	end if 
end function 

'生成组合查询的语句
Dim mplSelectSQL,mplFromSQL, mplWhereSQL, mplOrderSQL,mplSelectCountSQL,mplSQL,mplCountSQL
Dim mplFieldArray(100,2)
Dim mplPreCondition(100,5)
function mplSearch(paramPreConditionSQL,paramIsSingle,paramTableName,paramObjectCode,mplSearchId) 
 
'生成组合查询的SQL
	'paramPreConditionSQL :前置输入条件
	'paramIsSingle : 是否为单一表
	'paramTableName : 表名
	'mplSearchId : 组合查询ID
'输出： mplSelectSQL,mplFromSQL, mplWhereSQL, mplOrderSQL,mplSelectCountSQL
'				mplSQL,mplCountSQL	
	Dim char39left,char39right,charLike,char39FieldLeft,char39FieldRight
	Dim isVaild,haveCount,mplGroupSQL
	Dim tempi
	isVaild = true 
	haveCount = false
	
	char39left=""
	char39right=""
	charLike=""
	char39FieldLeft=""
	char39FieldRight="" 
	
	mplSelectSQL=""
	mplFromSQL=""
	mplWhereSQL=""
	mplOrderSQL=""
	mplSelectCountSQL=""
	mplSQL = ""
	mplCountSQL=""
	mplGroupSQL = "" 
	
	for tempi=0 to 99
		mplFieldArray(tempi,0)=""
		mplFieldArray(tempi,1)=""
	Next 
	
	if isVaild then
		sqlString = "Select * From mu_mpl_group Where archive='F' and mu_mpl_search_id ="&mplSearchId  & " order by sort_no"  
		executeQuery conn,movaRS,sqlString,1,3
		do 
			if movaRS.eof or movaRS.bof then exit do
			FRM_archive = movaRS("archive")
			
			FRM_field_code = movaRS("field_code")
			'处理日期距离天数
				IF 	instr(FRM_field_code,"{^DATEDIFF(")>0 THEN 
					FRM_field_code = REPLACE(FRM_field_code,"{^DATEDIFF(","")
					FRM_field_code = REPLACE(FRM_field_code,")}","")
					FRM_field_code = "datediff(day,CONVERT(VARCHAR(10),GETDATE(),120),"& FRM_field_code &")"
				END IF  
			
			Dim FRM_mu_mpl_group_id,FRM_mu_mpl_search_id,FRM_field_name,FRM_sort_no
			FRM_mu_mpl_group_id = movaRS("mu_mpl_group_id")
			FRM_mu_mpl_search_id = movaRS("mu_mpl_search_id")
			FRM_field_name = movaRS("field_name") 
			FRM_sort_no = movaRS("sort_no")
			mplGroupSQL = mplGroupSQL & FRM_field_code & ","
			'response.write     FRM_field_code & "|" & FRM_asc_desc & "<BR>"
			movaRS.moveNext
		loop
		if trim(mplGroupSQL) <> "" then mplGroupSQL = left(mplGroupSQL,len(mplGroupSQL)-1) & " " ' 去除最后一个逗号
		movaRS.close
		end if 
		mplGroupSQL = trim(mplGroupSQL)
	
	if paramIsSingle = "F" then 
		if mplGroupSQL ="" then 
			mplSelectSQL = "C."& getKeyNameByTable(paramTableName ) &" as KEYID,C.CUSTOMER_ID as PKEYID,"
			mplSelectCountSQL = "'-' AS KEYID,"
		else
			mplSelectSQL = "-1  AS KEYID, -1 as pkeyid, "
			mplSelectCountSQL = "'-1' AS KEYId, -1 as pkeyid, "
		end if 
		mplFromSQL = " MU_CUSTOMER P," &  paramTableName & " C,mova_team t " 
		mplWhereSQL = " P.CUSTOMER_ID = C.CUSTOMER_ID and C.team=t.team_id  AND P.ARCHIVE='F' AND C.ARCHIVE='F'  " 
		mplWhereSQL = mplWhereSQL & " and C.object_code='" & paramObjectCode & "' "
	else 
		if mplGroupSQL ="" then 
			mplSelectSQL = "C." & getKeyNameByTable(paramTableName ) &" AS KEYID, -1 as pkeyid, "
			mplSelectCountSQL = "'-' AS KEYId,-1 as pkeyid,"
		else
			mplSelectSQL = "-1  AS KEYID, -1 as pkeyid, "
			mplSelectCountSQL = "'-1' AS KEYId,-1 as pkeyid,"
		end if 
		mplFromSQL = paramTableName   & " C,mova_team t" 
		mplWhereSQL = " c.team=t.team_id and   C.archive='F'  " 
		mplWhereSQL =  mplWhereSQL & " and C.object_code='" & paramObjectCode & "' "
	end if 
	mplWhereSQL = mplWhereSQL &   paramPreConditionSQL
	Dim selectIndex,FRM_mu_mpl_select_id,FRM_allow_count
	if isVaild then 
		sqlString = "Select * From mu_mpl_select Where archive='F' and mu_mpl_search_id ="&mplSearchId    & " order by sort_no"
		executeQuery conn,movaRS,sqlString,1,3
		if movaRS.recordCount<=0 then isVaild = false 
		selectIndex =0 
		do 
			if movaRS.eof or movaRS.bof then exit do
			FRM_archive = movaRS("archive")
			FRM_field_code = movaRS("field_code")
			IF 	instr(FRM_field_code,"{^DATEDIFF(")>0 THEN 
					FRM_field_code = REPLACE(FRM_field_code,"{^DATEDIFF(","")
					FRM_field_code = REPLACE(FRM_field_code,")}","")
					FRM_field_code = "datediff(day,CONVERT(VARCHAR(10),GETDATE(),120),"& FRM_field_code &")"
			END IF  
			FRM_mu_mpl_select_id = movaRS("mu_mpl_select_id")
			FRM_mu_mpl_search_id = movaRS("mu_mpl_search_id")
			FRM_field_name = movaRS("field_name")
			FRM_allow_count = movaRS("allow_count")
			FRM_sort_no = movaRS("sort_no")
			mplFieldArray(selectIndex,0) = FRM_field_code
			mplFieldArray(selectIndex,1) = FRM_field_name
			selectIndex = selectIndex + 1
			
			mplSelectSQL = mplSelectSQL &  FRM_field_code & " as [" & FRM_field_name & "],"
			
			if FRM_allow_count="F" then 
				
				mplSelectCountSQL = mplSelectCountSQL & "'-' as [" & FRM_field_name & "],"
			else
				haveCount = true
				mplSelectCountSQL = mplSelectCountSQL & "sum(" & FRM_field_code & ") as " & FRM_field_name & ","
			end if 
			
			movaRS.moveNext
		loop
		if isVaild then
			mplSelectSQL = left(mplSelectSQL,len(mplSelectSQL)-1) & " "  ' 去除最后一个逗号
			mplSelectCountSQL = left(mplSelectCountSQL,len(mplSelectCountSQL)-1) & " " 
		end if 
		movaRS.close
	end if 
	 if isVaild then
			sqlString = "Select * From mu_mpl_condition Where archive='F' and mu_mpl_search_id ="&mplSearchId  & " order by sort_no"  
			executeQuery conn,movaRS,sqlString,1,1
			if movaRS.recordCount>0 then 
				mplWhereSQL = mplWhereSQL & " and " 
			end if 
		         
			do 
				if movaRS.eof or movaRS.bof then exit do
			 	FRM_archive = movaRS("archive")
				FRM_field_code = movaRS("field_code")
				
				'处理日期距离天数
				IF 	instr(FRM_field_code,"{^DATEDIFF(")>0 THEN 
					FRM_field_code = REPLACE(FRM_field_code,"{^DATEDIFF(","")
					FRM_field_code = REPLACE(FRM_field_code,")}","")
					FRM_field_code = "datediff(day,CONVERT(VARCHAR(10),GETDATE(),120),"& FRM_field_code &")"
				END IF  
 
				Dim FRM_mu_mpl_condition_id,FRM_right_bracket,FRM_and_or,FRM_left_bracket,FRM_matching_value
				Dim FRM_condition
				FRM_mu_mpl_condition_id = movaRS("mu_mpl_condition_id")
				FRM_mu_mpl_search_id = movaRS("mu_mpl_search_id")
				FRM_field_name = movaRS("field_name")
				FRM_right_bracket = movaRS("right_bracket")
				FRM_and_or = movaRS("and_or")
				FRM_left_bracket = movaRS("left_bracket")
				
				FRM_matching_value = movaRS("matching_value")
				'处理替换标签
				FRM_matching_value = REPLACE(FRM_matching_value,"{^CURRENTGROUP}",session("userTeam"))
				FRM_matching_value = REPLACE(FRM_matching_value,"{^CURRENTUSERID}",session("userid")) 
				FRM_matching_value = REPLACE(FRM_matching_value,"{^PARAM1}",session("mplParam1")) 
				FRM_matching_value = REPLACE(FRM_matching_value,"{^PARAM2}",session("mplParam2")) 
				

				FRM_is_Numeric = movaRS("is_Numeric")
				FRM_sort_no = movaRS("sort_no")
				FRM_condition = movaRS("condition")
				if FRM_is_Numeric = "T" then 
					char39left = ""
					char39right = ""
					char39FieldLeft = ""
					char39FieldRight = ""
				else
					char39left = "upper('"
					char39right = "')"
					char39FieldLeft = "upper("
					char39FieldRight = ")"
				end if 
				if (FRM_condition="like" or FRM_condition = "not like") then 
					charLike= "%"
				else
					charLike = ""
				end if 
  		  
				mplWhereSQL = mplWhereSQL  & FRM_left_bracket &" " & char39FieldLeft &   FRM_field_code & char39FieldRight & " " & FRM_condition & " "  
				
				if not (FRM_condition = "is null" or FRM_condition= "is not null") then
					'如果是is null 和is not null条件，那么不需要使用匹配值作为条件
					mplWhereSQL = mplWhereSQL & char39left & charLike & trim(FRM_matching_value) & charLike & char39Right & " " 
					mplWhereSQL = mplWhereSQL & FRM_right_bracket & " " & FRM_and_or & " " 
				end if 
				
				'response.write FRM_is_Numeric & "|" & FRM_left_bracket & "|" & FRM_field_code & "|" &FRM_condition & "|" & FRM_matching_value & "|" & FRM_right_bracket & "|" & FRM_and_or & "|"  &   FRM_allow_count  & "<BR>" 
				movaRS.moveNext
			loop
			movaRs.close
		end if 
	
	if isVaild then
		sqlString = "Select * From mu_mpl_order Where archive='F' and mu_mpl_search_id ="&mplSearchId  & " order by sort_no"  
		executeQuery conn,movaRS,sqlString,1,3
		do 
			if movaRS.eof or movaRS.bof then exit do
			FRM_archive = movaRS("archive")
			
			FRM_field_code = movaRS("field_code")
			'处理日期距离天数
				IF 	instr(FRM_field_code,"{^DATEDIFF(")>0 THEN 
					FRM_field_code = REPLACE(FRM_field_code,"{^DATEDIFF(","")
					FRM_field_code = REPLACE(FRM_field_code,")}","")
					FRM_field_code = "datediff(day,CONVERT(VARCHAR(10),GETDATE(),120),"& FRM_field_code &")"
				END IF  
			
			Dim FRM_mu_mpl_order_id,FRM_asc_desc
			FRM_mu_mpl_order_id = movaRS("mu_mpl_order_id")
			FRM_mu_mpl_search_id = movaRS("mu_mpl_search_id")
			FRM_field_name = movaRS("field_name")
			FRM_asc_desc = movaRS("asc_desc")
			FRM_sort_no = movaRS("sort_no")
			mplOrderSQL = mplOrderSQL & FRM_field_code & " " &  FRM_asc_desc & ","
			'response.write     FRM_field_code & "|" & FRM_asc_desc & "<BR>"
			movaRS.moveNext
		loop
		if trim(mplOrderSQL) <> "" then mplOrderSQL = left(mplOrderSQL,len(mplOrderSQL)-1) & " " ' 去除最后一个逗号
		movaRS.close
		
 '	权限处理
 		
 		mplWhereSQL =  "(" & mplWhereSQL & ")  and  c.owner='"& session("customerNo") &"' "
 		if session("roleScope")<>"G" then 
 				if paramIsSingle = "T" then 
	 				mplWhereSQL= mplWhereSQL &  " and (c.team=" & session("team") & " or C.search_scope='ALL') "
 				ELSE
 					mplWhereSQL= mplWhereSQL &  " and (c.team=" & session("team") & " or (P.search_scope='ALL' and c.search_scope='ALL')) "
 				end IF  
 		end if 
 		
 		
 		'拼凑SQL
		mplSQL = "select " & mplSelectSQL 
		mplSQL = mplSQL &  " from " & mplFromSQL  
		mplSQL = mplSQL &  " where " &  mplWhereSQL
		if trim(mplGroupSQL)<>"" then mplSQL = mplSQL & " group by " & mplGroupSQL
		if trim(mplOrderSQL) <> ""  then mplSQL = mplSQL &  " order by " & mplOrderSQL 
		if haveCount and trim(mplGroupSQL)="" then 
			mplCountSQL = "select " & mplSelectCountSQL 
			mplCountSQL = mplCountSQL &  " from " & mplFromSQL  
			mplCountSQL = mplCountSQL &  " where " &  mplWhereSQL
		end if 
	end if 
	mplSearch = isVaild
	'response.write "paramPreConditionSQL:" & paramPreConditionSQL & "<BR>"
	'response.write "paramIsSingle:" & paramIsSingle & "<BR>"
	'response.write "paramTableName:" & paramTableName & "<BR>"
	'response.write "paramObjectCode:" & paramObjectCode & "<BR>"
	'response.write "mplSearchId:" & mplSearchId & "<BR>"
  'response.write "<hr size=1>"
  'response.write "mplSelectSQL:" & mplSelectSQL & "<BR>"
  'response.write "mplFromSQL:" & mplFromSQL & "<BR>"
  'response.write "mplWhereSQL:" & mplWhereSQL & "<BR>"
  'response.write "mplOrderSQL:" & mplOrderSQL & "<BR>"
  'response.write "mplSelectCountSQL:" & mplSelectCountSQL & "<BR>"
  'response.write "mplSQL:" & mplSQL & "<BR>"
  'response.write "mplCountSQL:" & mplCountSQL & "<BR>"
  'response.write "<hr size=1>"
   'response.write "select count(*) from " & mplFromSQL & " where " & mplWhereSQL
end Function

function countByMpl(mplNo)
		dim mplSql1
		mplSql1 = "select top 1 mpl.mu_mpl_search_id,obj.object_code,obj.is_single,obj.table_name "
		mplSql1 = mplSql1 & " from mu_mpl_search mpl,mu_object obj "
		mplSql1 = mplSql1 & " where mpl.object_code=obj.object_code "
		mplSql1 = mplSql1 & " and mpl.search_no='" & mplNo & "'"
		executeQuery conn,movaRS1,mplSql1 ,1,1
		objectCode=movaRS1("object_code")
		isSingle=movaRS1("is_single")
		tableName = movaRS1("table_name")
		mplId = movaRS1("mu_mpl_search_id")
		movaRs1.close
		mplSql1 = mplSearch("",isSingle,tableName,objectCode,mplId) 
		countByMpl = getOnefield("select count(*) from " & mplFromSQL & " where " & mplWhereSQL)
 
end Function 


'获取 当前表的主表 关联表 的objectID
function getJoinObjectId(pObjectid,pJoin)
	getJoinObjectId = 1
end function 

'获取 当前表的主表 关联表 的 TableName
function getJoinObjectTableName(pObjectid,pJoin)
	getJoinObjectTableName = "mu_customer"
end function 



Dim OPP_CUR_OBJECT_ID
Dim OPP_CUR_JOIN_OBJECT_ID
Dim OPP_CUR_TEAM

'业务模型数据JS引用时，相关的标签转换
function convertData2JS (dataJs)
	Dim si,marki,lastString,tmpLabelJs,pReturnStr,paramDataJs
	si=1
	paramDataJs = dataJs & ""
	Dim markStartIndex
		markStartIndex=0
	Dim markEndIndex
	markEndIndex=0
	pReturnStr = paramDataJs
	for si=0 to len(paramDataJs)
		lastString = right(paramDataJs,len(paramDataJs)-si) 
		if left(lastString,2)="{!" or left(lastString,2)="{~" or left(lastString,2)="{^"  then 
			 markStartIndex = si
			 tmpLabelJs = left(lastString,InStr(lastString,"}"))
			 pReturnStr =   replace(pReturnStr, tmpLabelJs,LABLE2JS(tmpLabelJs))
		else
			markStartIndex = 0
		end if 
	Next
	convertData2JS = pReturnStr
end Function

function LABLE2JS(labelJs)
							'&nbsp;&nbsp;<b>{!字段编码}</b>&nbsp;&nbsp;&nbsp;引用当前模型该字段的表单名，相应的编码请参照模型字段列表第一列<br>
	  			    '&nbsp;&nbsp;<b>{!@字段编码}</b>&nbsp;&nbsp;&nbsp;引用当前模型该字段的值<br>
	  				  '&nbsp;&nbsp;<b>{~字段编码}</b>&nbsp;&nbsp;&nbsp;引用关联模型该字段的表单名，相应的编码请参照模型字段列表第一列<br>
	  				  '&nbsp;&nbsp;<b>{~@字段编码}</b>&nbsp;&nbsp;&nbsp;引用关联模型该字段的值<br>
	  				  '&nbsp;&nbsp;<b>{!@TEAM}</b>&nbsp;&nbsp;&nbsp;引用当前模型的所属Team值,值为数字字符，请到组列表进行查阅<br>
	  				  '&nbsp;&nbsp;<b>{^^TEAM}</b>&nbsp;&nbsp;&nbsp;引用当前操作用户的Team值,值为数字字符，请到组列表进行查阅<br>
	  				  '&nbsp;&nbsp;<b>{!@OBJECTID}</b>&nbsp;&nbsp;&nbsp;引用当前模型的ID,值为数字字符，请到业务模型列表进行查阅<br>
	  				  '&nbsp;&nbsp;<b>{~@OBJECTID}</b>&nbsp;&nbsp;&nbsp;引用关联模型的ID,值为数字字符，请到业务模型列表进行查阅<br>

 	Dim isSpecial,returnStr,curLabel
 	isSpecial = false 
 	returnStr = ""
	if left(labelJs,1)="{" and right(labelJs,1) = "}" then 
 		if  ucase(labelJs) = "{!@TEAM}" then 
 			isSpecial = true
 			returnStr = OPP_CUR_TEAM
 		end if 
 		
 		if  ucase(labelJs) = "{!SCOPE}" then 
 			isSpecial = true
 			returnStr = "_SCOPE"
 		end if 
 		
 		
 		if   ucase(labelJs) = "{^^TEAM}" then 
 			isSpecial = true
 			returnStr = session("team")
 		end if
 		
 		if  (labelJs) = "{!@OBJECTID}" then 
 			isSpecial = true
 			returnStr = OPP_CUR_OBJECT_ID
 		end if 
 		
 		if  (labelJs) = "{~@OBJECTID}" then 
 			isSpecial = true
 			returnStr = OPP_CUR_JOIN_OBJECT_ID
 		end if
 		
 		if not isSpecial then
			if left(labelJs,3)="{~@" then 
				 '{~@字段编码}   引用关联模型该字段的值
				 curLabel = right(labelJS,len(labelJS)-3)
				 curLabel = left(curLabel,len(curLabel)-1)
				 'response.write "**" &curLabel & "***" & getIndex_mastTableFieldArray(curLabel,1) & "**" & "<BR>"
				 returnStr = mastTableFieldArray(getIndex_mastTableFieldArray(curLabel,1),3)
			else
				if left(labelJs,3)="{!@" then
					'{!@字段编码}   引用当前模型该字段的值
					curLabel = right(labelJS,len(labelJS)-3)
				 	curLabel = left(curLabel,len(curLabel)-1)
				 	returnStr = ObjectFieldArray(getIndex_ObjectFieldArray(curLabel,1),curIndex_Property_value)
				else
					if left(labelJs,2)="{~" then
						'{~字段编码}   引用关联模型该字段的表单名，相应的编码请参照模型字段列表第一列
						curLabel = right(labelJS,len(labelJS)-2)
				 		curLabel = left(curLabel,len(curLabel)-1)
				 		returnStr  ="__" & mastTableFieldArray(getIndex_mastTableFieldArray(curLabel,1),1)
					else
						'{!字段编码}   引用当前模型该字段的表单名，相应的编码请参照模型字段列表第一列
						curLabel = right(labelJS,len(labelJS)-2)
				 		curLabel = left(curLabel,len(curLabel)-1)
				 		'curIndex_Property_readOnly
				 		returnStr = "_" & ObjectFieldArray(getIndex_ObjectFieldArray(curLabel,1),1)
					end if
				end if 
			end if 
		end if
	end if  
	LABLE2JS=ucase(returnStr)
end function

'获取当前模型字段属性集，某属性所在的位置_通过 pPropertyIndex, 字段的属性index
function getIndex_ObjectFieldArray(pParam,pPropertyIndex)
	Dim returnIndex,pforI
	returnIndex = 0
	pforI = 1 
	for pforI=1 to ObjectFieldArray_X
		if ObjectFieldArray(pforI,1)="" then exit for
		if ucase(ObjectFieldArray(pforI,pPropertyIndex)) = ucase(pParam) then 
			returnIndex = pForI
			Exit for
		end if 
	Next 
	getIndex_ObjectFieldArray = pForI
end Function  

'获取当前关联模型字段属性集，某属性所在的位置_通过 pPropertyIndex, 字段的属性index
function getIndex_mastTableFieldArray(pParam,pPropertyIndex)
	Dim returnIndex,pforI
	returnIndex = 0
	pforI = 1 
	for pforI=1 to mastTableFieldArray_X
		if mastTableFieldArray(pforI,1)="" then exit for
		if ucase(mastTableFieldArray(pforI,pPropertyIndex)) = ucase(pParam) then 
			returnIndex = pForI
			Exit for
		end if 
	Next 
	getIndex_mastTableFieldArray = pForI
end Function  
  
  
Dim curRuleOperate(10,3)	'当前规则可允许的操作  操作名/操作设置值/当前字段名称 ，如果操作状态为 ^ 则表示仅为正常的编辑
Dim curRuleAllowEditField	'当前规则可编辑的字段清单，如果为 *  则为全部，否则是部分字段 取字段名格式： ,字段,
curRuleAllowEditField = ",*," '默认所有字段都可以编辑
function isReadOnlyByRule(pFieldCode)		'根据规则判断是否为只读字段
	if curRuleAllowEditField="*" then 
		isReadOnlyByRule = false
	else
		inStrField = inStr(ucase(curRuleAllowEditField),"," & ucase(pFieldCode) & ",") 
		if inStrField=null or  inStrField=0 then 
			isReadOnlyByRule = false
		else
			isReadOnlyByRule = true
		end if 
	end if
	
end Function

sub parseFieldRule(pCode,pValue,pRule)	'解析当前字段的值规则, pCode:字段代码，pValue:当前字段的值,pRule，规则清单
		Dim allowOperate_i
	 
		for i=0 to 10
			curRuleOperate(i,1)=""
			curRuleOperate(i,2)=""
			curRuleOperate(i,3)=""
		Next
		allowOperate_i = 0
		
		curRuleAllowEditField="*"
		Dim ruleArrary,pi,itemArray,curRuleStatus,operationArray,pj,curRuleOperation
		ruleArrary=split(replaceEnter( pRule) ,"|") 
		for pi=0 to ubound(ruleArrary)
			itemArray = split(ruleArrary(pi),"->") 
			curRuleStatus= split(trim(itemArray(0)),"(")
			if trim(curRuleStatus(0))=pValue then 
				if trim(curRuleStatus(1))=")" then 
					curRuleAllowEditField=""
				else
					curRuleAllowEditField = "," & left(curRuleStatus(1),len(curRuleStatus(1))-1) & ","
				end if
				
				
				Dim itemArrayVar
				if inStr(itemArray(1),",")<=0 then    '如果只能是一个操作，那么需要补齐一个逗号。
					itemArrayVar = itemArray(1) & ","
				else
					itemArrayVar = itemArray(1)  
				end if 
				operationArray = split(trim(itemArrayVar),",")
				
				for pj=0 to ubound(operationArray)
					curRuleOperation= split(operationArray(pj),"(")
					if ubound(curRuleOperation)>0 then 
						  
						curRuleOperate(pj,1) = curRuleOperation(0)
						curRuleOperate(pj,2) = left(curRuleOperation(1),len(curRuleOperation(1))-1)
						curRuleOperate(pj,3) = pCode
						allowOperate_i = allowOperate_i +1
					end if 
				Next
				exit For 
			end if 
		Next
		if allowOperate_i=0 then 
			'如果状态匹配不上，则允许所有字段编辑
			curRuleAllowEditField=",*,"
		end if	
end Sub 

function getPickValue( pickSql,id )
	 if id<>"" then
	 	 getPickValue= getOnefield(replace(pickSql,"^id","'" & id & "'"))
		else
			getPickValue = ""
	end if 
	 
end Function 	 

function appendPickUrl(url,idKey,valueKey)
	if instr(url,"?")>0 then 
		appendPickUrl = url &"&pickId=" & idKey & "&pickValue=" & valueKey
	else
		appendPickUrl = url &"?pickId=" & idKey & "&pickValue=" & valueKey
	end if 
end function


function copyObject_field()
'insert into mu_object_field (object_id,owner,table_name,field_code,field_name,field_type,width,high,is_forbidden,is_new,is_list,
'is_edit,is_seat,is_required,search_type,def_value,col_span,sort_edit,sort_list,archive,createdate,createuser,
'modifydate,modifyuser,is_rule,allow_batch,allow_recall,clone_by,allow_clone,is_num,new_onChange,edit_onChange,new_read_only,
'edit_read_only,status_rule,is_richtext,is_attachment,hidden_by,new_ext_html,edit_ext_html,plugin_no,
'fk_select,fk_window,hidden_by_field) 
'select  object_id,owner,table_name,field_code,field_name,field_type,width,high,is_forbidden,is_new,is_list,
'is_edit,is_seat,is_required,search_type,def_value,col_span,sort_edit,sort_list,archive,createdate,createuser,
'modifydate,modifyuser,is_rule,allow_batch,allow_recall,clone_by,allow_clone,is_num,new_onChange,edit_onChange,new_read_only,
'edit_read_only,status_rule,is_richtext,is_attachment,hidden_by,new_ext_html,edit_ext_html,plugin_no,
'fk_select,fk_window,hidden_by_field from mu_object_field 

end function 




Function  checkTC_sec( opp_table,action)
	returnCheck = true
	if ucase(opp_table)="MU_OPP20" then '任务
		if ucase(action)="EDIT" and  session("isSLR") then
			returnCheck = not session("locked")
		end if 
		if ucase(action)="DEL" and  session("isSLR") then
			returnCheck = not session("locked")
		end if
	end if 
	
	if ucase(opp_table)="MU_OPP15" then '联系客户
		if ucase(action)="EDIT" and  session("isSLR") then
			returnCheck = not session("locked")
		end if 
		if ucase(action)="DEL" and  session("isSLR") then
			returnCheck = not session("locked")
		end if
	end if 
	
	
	if ucase(opp_table)="MU_OPP13" and session("isRW") then '汇报进展  //任务
		if ucase(action)="EDIT" and  session("isZRR")  then
			returnCheck = not session("locked")
		else
			returnCheck = false
		end if 
		if ucase(action)="DEL" and  session("isZRR") then
			returnCheck = not session("locked")
		end if
		
		 
	end if 
checkTC_sec = returnCheck
		
end Function 

%> 
