<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" --> 
<% Dim sqlString,orderbyStr,i,mova_userid,username,login,phone,email,role
Dim team_name,appVar,z,itemArray,opp_type,picklistArray,param1,status
%> 
  
<DIV class=cn_col01>
    <form name="mainform" method="post" action="listUser.asp">
  <table width="100%" border="0" cellspacing="1" cellpadding="1">
  	<input type="hidden" name="isStart" value="0">
                <tr height="20"> 
                  <td  class="cn_td09" >姓名、登陆名:</td>
                  <td class="2" ><input name="serchStr"  class=cn_input03  type="text" size="30"><font class="remTxt" >　按姓名、登陆账号模糊查询</font>
                  </td>
                </tr> 
                
                <tr class="mainbuttomline"> 
                  <td align="right" width="100"   valign="top" ></td>
                  <td colspan=4> <input name="submit22" class="cn_button01"  type="submit" class="bf" onClick="return chk()" value="查询"></td>
                </tr>
              </table> 
</form>
</div>
<DIV class=cn_col01> 
	<table width="100%" border="0" cellspacing="1" cellpadding="1">
                          <thead>
                          <tr height="20"> 
                            <th width="100"  class="formlistTitle" >姓名</th>
                            <th class="formlistTitle" >账户</th>
                            <th class="formlistTitle" >电话</th>
                            <th class="formlistTitle" >邮件</th>
                         </tr>
                       </thead>
                     <tbody>

<%
			sqlString = "select a.*,b.rolename as role ,t.team_name "
			sqlString = sqlString & " from mova_user a ,mova_role b,mova_team t "
			sqlString = sqlString & " where a.mova_roleid=b.mova_roleid and a.team_id=t.team_id " 
			if req("isStart")="0" then
				session("cTeam")=req("team")
				session("cRole")=req("role")
				session("serchStr") = req("serchStr")
			end if
			
			if session("cTeam")<> "" then sqlString = sqlString & " and a.team_id=" & session("cTeam") 
			if session("cRole")<> "" then sqlString = sqlString & " and a.mova_roleid=" & session("cRole") 
			if session("serchStr") <> "" then sqlString = sqlString & "  and (username like '%"  & session("serchStr") & "%' or login like '%" &   session("serchStr")  & "%')"
			
			if not isAdministrator() then 
				sqlString = sqlString & " and a.team_id=" & session("team") 
			end if 
			orderbyStr  = " order by username "
 
			
			sqlString=sqlString  & orderbyStr   
			'response.write sqlString
			executeQuery conn,movaRs1, sqlString,1,1

			' 初始化页
			InitRS movaRs1, 5	' 默认每页 行数
			For i = 1 to movaRs1.pagesize 
				if movaRs1.eof then exit For
					mova_userid = movaRs1("mova_userid")
					username =movaRs1("username")
					login	=movaRs1("login")
					phone =movaRs1("phone")
					email =movaRs1("mail")
					role =movaRs1("role")
					team_name = movaRs1("team_name")
					opp_type = getPicklistItem("opp_type",movaRs1("opp_type"))
					param1 = movaRs1("param1")
					status =movaRs1("status")
					if status="F" then 
						status="<font color=red>禁用</font>"
					else
						status="正常"
					end if 
%>
                          <tr height="20">
                           <%if req("submit")="true"  then%>
                           <td  class="formlistText" ><a href="javascript:parent.setDialogField_submit('<%=mova_userid%>',pickIdKey,'<%=username%>',pickValueKey)"><%=username%></a></td>
                          
                           <%else%>
                           <td  class="formlistText" ><a href="javascript:parent.setDialogField('<%=mova_userid%>',pickIdKey,'<%=username%>',pickValueKey)"><%=username%></a></td>
                          
                           <%end if %>
                           
                            
                            <td class="formlistText" ><%=login%></td> 
                            <td class="formlistText" ><%=phone%></td> 
                            <td class="formlistText" ><%=email%></td> 
                            
                            </tr>
<%			
		
			 	movaRs1.Movenext
			Next
%>		
 
                          <tr  > 
                            <td colspan="9" align="right"   valign="top" > <form action=<%=Request.ServerVariables("SCRIPT_NAME") %>"> 
		<% Call ShowPageNavigator( Request.ServerVariables("SCRIPT_NAME") & "?strCondition=" & Trim(req("strCondition"))  , 1 ) %>
	</form></td>
                          </tr>
                        </tbody>
                        </table> 
<script>
	function setParentWindowValue(id,value){
		
	}
</script>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
