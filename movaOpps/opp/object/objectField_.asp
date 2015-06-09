<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
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
Dim FLD_field_id,FLD_object_id,FLD_field_code,FLD_field_name,FLD_is_new,FLD_is_list,FLD_field_type,FLD_is_edit,FLD_is_seat,FLD_is_search,FLD_is_required,FLD_search_type,FLD_def_value,FLD_col_span,FLD_sort_edit,FLD_sort_list,FLD_width,FLD_high,FLD_table_name,FLD_actionType 
FLD_field_id=req("field_id") 
FLD_object_id = req("object_id")
FLD_field_code  = req("field_code")
FLD_field_name = req("field_name")
FLD_is_new = req("is_new")
FLD_is_list = req("is_list")
FLD_field_type = req("field_type")
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
FLD_table_name = req("table_name")
FLD_actionType = req("actionType")

 
Dim allowUpdate,isNew,FLD_is_num,array_field_id,array_field_name
isNew = false
allowUpdate = true 

FLD_is_num = "F"
Dim array_is_new ,array_is_list ,array_is_edit ,array_is_seat ,array_is_search ,array_is_required ,array_search_type ,array_def_value ,array_col_span ,array_sort_edit ,array_sort_list ,array_width ,array_high 
if FLD_actionType="modify" then 
			array_field_id = split(FLD_field_id,",")
			array_field_name = split(FLD_field_name,",")
			array_is_new = split(FLD_is_new,",")
			array_is_list = split(FLD_is_list,",")
			array_is_edit = split(FLD_is_edit,",")
			array_is_seat = split(FLD_is_seat,",")
			array_is_search = split(FLD_is_search,",")
			array_is_required = split(FLD_is_required,",")
			array_search_type = split(FLD_search_type,",")
			array_def_value = split(FLD_def_value,",")
			array_col_span = split(FLD_col_span,",")
			array_sort_edit = split(FLD_sort_edit,",")
			array_sort_list = split(FLD_sort_list,",")
			array_width = split(FLD_width,",")
			array_high = split(FLD_high,",")
			'response.write FLD_field_id & "<BR>"
			'response.write FLD_field_name & "<BR>"
			'response.write FLD_is_list & "<BR>"
			'response.write FLD_is_new & "<BR>"
			'response.write FLD_is_edit & "<br>"
			'response.write FLD_is_search		& "<BR>"
			'response.write FLD_is_required  & "<BR>"
			'response.write FLD_search_type  & "<BR>"
			'response.write FLD_def_value    & "<BR>"
			'response.write FLD_col_span     & "<BR>"
			'response.write FLD_sort_edit    & "<BR>"
			'response.write FLD_sort_list    & "<BR>"
			'response.write FLD_width        & "<BR>"
			'response.write FLD_high         & "<BR>"
	Dim i,sqlString				
			for i=0 to ubound(array_field_id) 
				sqlString = "Select * From mu_object_field Where owner='" &  session("customerNo") &"' and field_id=" & trim(array_field_id(i))
				executeQuery conn,movaRS,sqlString,1,3
				movaRS("field_name") = trim(array_field_name(i))
 				movaRS("is_new")     = shi2T(trim(array_is_new(i)))
				movaRS("is_list")    = shi2T(trim(array_is_list(i)))
				movaRS("is_edit")    = shi2T(trim(array_is_edit(i)))
				movaRS("is_search")  = shi2T(trim(array_is_search(i)))
				movaRS("is_required")= shi2T(trim(array_is_required(i)))
				movaRS("search_type")= trim(array_search_type(i))
				movaRS("def_value")  = trim(array_def_value(i))
				movaRS("col_span")   = trim(array_col_span(i))
				movaRS("sort_edit")  = trim(array_sort_edit(i))
				movaRS("sort_list")  = trim(array_sort_list(i))
				movaRS("width")      = trim(array_width(i))
				movaRS("high")       = trim(array_high(i))
				movaRS("modifyDate") = Now
				movaRS("modifyUser") = cint(session("userid"))
			
				movaRS.Update
				movaRS.close
			Next
else
 
	if FLD_actionType="create" then 
		'尝试获取一个可以使用的字段
		FLD_field_code = getFieldStack(FLD_object_id,getFieldDataType(FLD_field_type))
		if FLD_field_code = "" then 
			MessageBox "没有字段可以使用了！！","" 
			allowUpdate = false
		end if 
	end if 
	Dim FieldDataType
	FieldDataType = getFieldDataType(FLD_field_type)
	if ucase(FieldDataType)="D" then FLD_is_num = "T" 	'设定为数值的类型
	
	if allowUpdate then 
		sqlString = "Select * From mu_object_field Where owner='" &  session("customerNo") &"' and field_id=-1"
		executeQuery conn,movaRS,sqlString,1,3
		 FieldDataType = getFieldDataType(FLD_field_type)
		if ucase(FieldDataType)="D" then FLD_is_num = "T" 	'设定为数值的类型
		'DataBase Coding....:
		response.write FLD_field_code & "!!!"
		if movaRS.eof or movaRS.bof  then
				movaRS.addnew
				movaRS("object_id") =  FLD_object_id
				movaRS("field_code") = FLD_field_code
				movaRS("owner") = session("customerNo")
				movaRS("table_name") = FLD_table_name
				movaRS("createdate") = Now
				movaRS("createuser") = cint(session("userid"))
				isNew = true
		end if 
		movaRS("is_num") = FLD_is_num  
		movaRS("field_name") = FLD_field_name
		movaRS("field_type") = FLD_field_type
		movaRS("is_new") = shi2T(FLD_is_new)
		movaRS("is_list") = shi2T(FLD_is_list)
		movaRS("is_edit") = shi2T(FLD_is_edit)
		movaRS("is_seat") = shi2T(FLD_is_seat)
		movaRS("is_search") = shi2T(FLD_is_search)
		movaRS("is_required") = shi2T(FLD_is_required)
		movaRS("search_type") = FLD_search_type
		movaRS("def_value") = FLD_def_value
		movaRS("col_span") = FLD_col_span
		movaRS("sort_edit") = FLD_sort_edit
		movaRS("sort_list") = FLD_sort_list
		movaRS("width") = FLD_width
		movaRS("high") = FLD_high
		movaRS("hidden_by") = ""
		movaRS("is_richText")="F"
		movaRS("is_attachment")="F"
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
  	
		movaRS.Update
		movaRS.close
	end if 	
	
	
	
end if 


 
		gotourl "objectField.asp?object_id="& FLD_object_id
 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
