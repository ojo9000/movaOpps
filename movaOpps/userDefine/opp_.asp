<%
'response.write FLD_object_id& ":" 
'response.write FLD_opp_id & ":" 
'response.write FLD_object_code & ":" 
'response.write FLD_Object_value_no & ":" 
'response.write FLD_table & ":" 
'response.write FLD_customer_id & ":" 
'response.write FLD_hierarchy_id & ":" 
'response.write FLD_chk_repeat & ":" 
'response.write FLD_add_continue & ":" 
'response.write isNew &":"  

'进展汇报
if FLD_object_code="M00_K1000003845" then 
	'处理修改
	 
		if req("_V0")="已完成" then 
			sqlString = "update mu_customer set v1='已完成' where customer_id=" & FLD_customer_id
			'response.write sqlString
			executeUpdate conn,sqlString 
		else
			sqlString = "update mu_customer set v1='实施中',vp='"& req("_V0") &"' where customer_id=" & FLD_customer_id
			'response.write sqlString
			executeUpdate conn,sqlString
		end if 
	 
end if 



%>