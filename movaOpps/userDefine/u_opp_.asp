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
		if ucase(left(req("_v4"),2))="RW" then 
			'处理任务
			sqlString = "update MU_OPP20 set v1='"&req("_V0")&"'  where opp_no='"&req("_V4") &"' " 
			executeUpdate conn,sqlString
		else 
			'处理模验
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
end if 

'联系客户
if FLD_object_code="M00_K1000003847" then 
	'处理修改
		if req("_V4")<>"" then 
			sqlString = "update MU_OPP15   set  v5=(select v1 from mu_opp20 where opp_no='"& REQ("_v3")&"') where  opp_no='" & FLD_opp_no & "'" 
		'	response.write sqlString 
			executeUpdate conn,sqlString
			sqlString = "update MU_OPP20 set v1='"&req("_V4")&"'  where opp_no='"&req("OLD__V3") &"' " 
			executeUpdate conn,sqlString
		else
				sqlString = "update MU_OPP20 set v1=(select top 1 v5 from mu_opp15 where v5 <>'' and v3='"& req("_V3") & "' order by modifydate desc)  where opp_no='"&req("OLD__V3") &"' " 
				executeUpdate conn,sqlString
			 
		end if 
end if 

if FLD_object_code="M00_K1000003850"  and isNew and req("allowMutiValue")="T" then 

	old_FLD_opp_no = FLD_opp_no
	
	za=split(req("_ZA") ,chr(13)) 
		for pi=0 to ubound(za)
		    FLD_opp_no = getSerial(ucase(FLD_table))
				sqlString= "insert into mu_opp20 "
				sqlString = sqlString & "(VR	,"
				sqlString = sqlString & " ZA		,"
				sqlString = sqlString & " V5	,VH	,V4	,V8	,VG	,VA	,VS	,D1	,V7	,D2	,V0,V1	,V3	,VB	,VD	,VF	,VE ,VN , "
				sqlString = sqlString & " opp_no,"
				sqlString = sqlString & " object_code,customer_id,owner,archive,createdate,createuser,modifyuser,modifydate,hierarchy_id,team,search_scope) "
				sqlString = sqlString & " select "
				sqlString = sqlString & "'["& old_FLD_opp_no &"批]"	& za(pi) &"',"
				sqlString = sqlString & "'"&za(pi)&"',"
				sqlString = sqlString & " V5	,VH	,V4	,V8	,VG	,VA	,VS	,D1	,V7	,D2	,	V0,V1	,V3	,VB	,VD	,VF	,VE ,VN , "
				sqlString = sqlString & " '"&FLD_opp_no &"',"
				sqlString = sqlString & " object_code,customer_id,owner,archive,createdate,createuser,modifyuser,modifydate,hierarchy_id,team,search_scope  "
				
				sqlString = sqlString & " from mu_opp20 where opp_no='"&old_FLD_opp_no&"' "
			'	response.write sqlString &"<BR>"
				executeUpdate conn,sqlString
				
			
				
			
	
	

			
				
'V5	房　　产			
'VH	请求来源			
'V4	受理时间			
'V8	客户姓名			
'VG	服务请求人		
'VA	答复期限			
'VS	联系电话			
'D1	受 理 人			
'V7	处理期限	
'D2	责 任 人			
'VR	任务主题			
'V0	任务类型			
'ZA	任务内容	
'V1	处理状态	
'V3	*房产	
'VB	*业务（客户）	
'VD	*受理人	VARCHAR
'VF	*责任人	VARCHAR
'
'
'VJ	承 建 商			
'VO	处 理 方	
'VL	关联任务编码	
'VM	关联类型	
'V9	*投诉对象			
'VI	*承建商	VARCHAR
'VC	*任务类别	VARCHAR
'VP	进展状态	VARCHAR
'V2	投诉对象			
'VK	任务类别	
'				
				
				
				
				
		Next
			sqlString = "delete from mu_opp20 where opp_no='"&old_FLD_opp_no&"' "
			'response.write sqlString &"<BR>"
			executeUpdate conn,sqlString 
			
			FLD_opp_id = getOnefield("select opp_id from mu_opp20 where opp_no='"&FLD_opp_no&"'")
	'	 response.end
end if 



%>