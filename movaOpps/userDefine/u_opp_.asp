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

'��չ�㱨
 
if FLD_object_code="M00_K1000003845" then 
	'�����޸�
		if ucase(left(req("_v4"),2))="RW" then 
			'��������
			sqlString = "update MU_OPP20 set v1='"&req("_V0")&"'  where opp_no='"&req("_V4") &"' " 
			executeUpdate conn,sqlString
		else 
			'����ģ��
			if req("_V0")="�����" then 
				sqlString = "update mu_customer set v1='�����' where customer_id=" & FLD_customer_id
				'response.write sqlString
				executeUpdate conn,sqlString 
			else
				sqlString = "update mu_customer set v1='ʵʩ��',vp='"& req("_V0") &"' where customer_id=" & FLD_customer_id
				'response.write sqlString
				executeUpdate conn,sqlString
			end if 
		end if 
end if 

'��ϵ�ͻ�
if FLD_object_code="M00_K1000003847" then 
	'�����޸�
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
				sqlString = sqlString & "'["& old_FLD_opp_no &"��]"	& za(pi) &"',"
				sqlString = sqlString & "'"&za(pi)&"',"
				sqlString = sqlString & " V5	,VH	,V4	,V8	,VG	,VA	,VS	,D1	,V7	,D2	,	V0,V1	,V3	,VB	,VD	,VF	,VE ,VN , "
				sqlString = sqlString & " '"&FLD_opp_no &"',"
				sqlString = sqlString & " object_code,customer_id,owner,archive,createdate,createuser,modifyuser,modifydate,hierarchy_id,team,search_scope  "
				
				sqlString = sqlString & " from mu_opp20 where opp_no='"&old_FLD_opp_no&"' "
			'	response.write sqlString &"<BR>"
				executeUpdate conn,sqlString
				
			
				
			
	
	

			
				
'V5	��������			
'VH	������Դ			
'V4	����ʱ��			
'V8	�ͻ�����			
'VG	����������		
'VA	������			
'VS	��ϵ�绰			
'D1	�� �� ��			
'V7	��������	
'D2	�� �� ��			
'VR	��������			
'V0	��������			
'ZA	��������	
'V1	����״̬	
'V3	*����	
'VB	*ҵ�񣨿ͻ���	
'VD	*������	VARCHAR
'VF	*������	VARCHAR
'
'
'VJ	�� �� ��			
'VO	�� �� ��	
'VL	�����������	
'VM	��������	
'V9	*Ͷ�߶���			
'VI	*�н���	VARCHAR
'VC	*�������	VARCHAR
'VP	��չ״̬	VARCHAR
'V2	Ͷ�߶���			
'VK	�������	
'				
				
				
				
				
		Next
			sqlString = "delete from mu_opp20 where opp_no='"&old_FLD_opp_no&"' "
			'response.write sqlString &"<BR>"
			executeUpdate conn,sqlString 
			
			FLD_opp_id = getOnefield("select opp_id from mu_opp20 where opp_no='"&FLD_opp_no&"'")
	'	 response.end
end if 



%>