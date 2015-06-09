<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<style type="text/css">
<!--
li {
	float: left;
	width: 180px;
}
-->
</style>
<% chkAccountStr "roleSys" %>
<%
Dim sqlString,FRM_mova_roleid,FRM_scope,categoryName,category,code,functionName,is_super,functionTxtcolor,i,functionChecked,function_type,mova_functionid,have_reuseRole
opendatabase

'modi code:
Dim mova_roleid
'Dim Form_Frm
Dim FRM_object,FRM_rolename,FRM_rolecode,FRM_description,FRM_firstPage,FRM_submit

mova_roleid = req("mova_roleid")

sqlString = "select * from mova_role where mova_roleId="&mova_roleid 
set movaRS=conn.execute(sqlString)
if movaRS.bof or movaRS.eof then
movaRS.close
closedatabase
msgbox "记录不存在，或者您打开了一个错误的页面",1
end if 

'Dim Form_Frm
FRM_mova_roleid = movaRS("mova_roleid")
FRM_rolename = movaRS("rolename")
FRM_rolecode = movaRS("rolecode")
FRM_description = movaRS("description")
FRM_firstPage = movaRS("firstPage")
FRM_scope = movaRS("scope") 
%>
<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.rolename.value==""){
			str=str +  "角色名必须输入" + "\n";
		}
		if (document.mainform.rolecode.value==""){
			str=str +  "角色代码必须输入" + "\n";
		}
		if (str!=""){
			str="对不起，您的输入不正确!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			return true;
		}
	}
</script>
 <div class="cn_list_title">角色管理</div> 
<div class="cn_list_title_right"><a href="addRole.asp">添加角色</a> | <a href="listRole.asp">角色列表</a></div>
<DIV class=cn_col01>
<table width="100%" border="0" cellspacing="1" cellpadding="1">
                                                                               
                                                                               
                       <form name="mainform" method="post" action="modiRole_.asp">
				<input type="hidden" name="object" value="mova_role">
				<input type="hidden" name="mova_roleid" value="<%=FRM_mova_roleid%>">
               
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>角色名称:</td>
                            <td><input class=cn_input03  name="rolename" type="text"  size="30" maxlength="20" value="<%=FRM_rolename%>"> 
                            </td>
                          </tr>
                          <tr height="20">
                            <td  class="cn_td09" ><font color=red>*</font>角色代码:</td>
                            <td><input  class=cn_input03 name="rolecode" type="text"  size="30" maxlength="20" value="<%=FRM_rolecode%>"> <font class="remTxt"></font>
                            </td>
                          </tr>
                          
<tr height="20">
                            <td  class="cn_td09" ><font color=red>*</font>数据操作范围:</td>
                            <td><select name="scope" >
                            	<option value=""></option>
                            <%=picklist("#roleScope",FRM_scope)%>
                            </select> 
                            </td>
                          </tr>
                           
                          <tr height="20"> 
                            <td  class="cn_td09" >角色说明:</td>
                            <td> 
                                <input  class=cn_input03 name="description" type="text"  size="50" maxlength="20" value="<%=FRM_description%>">
                              </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >起始导航:</td>
                            <td>
                            	<input type="text" class=cn_input03  size=70 name="firstPage" value="<%=FRM_firstPage%>">
                            	 <button class="cn_button01" type="button" onClick="defaultFirst_URL(this.form)">还原为默认网址</button>
    	 		<script>
    	 			function defaultFirst_URL(form) {
    	 				form.firstPage.value="/movaOpps/opp/knowledge/searchKnowledge.asp?isStart=2&def=Last";
    	 			}
    	 		</script>
                       
                          <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
                            <td width="100" align="right"   valign="top" ></td>
                            <td colspan=4> <input name="submit" type="submit" class="cn_button01" onClick="return chk()" value="修改">
                            	<a href="/movaOpps/core/system/user/listUser.asp?1=1&role=<%=FRM_mova_roleid%>&isStart=0">相关用户</a>
 
                            	</td>
                          </tr>
                           </form>
                        </table> 
                        
                        
</div>
  
<%
	dim bufferSec(200),m
	m=0
	sql = "select rf.* from mova_roleFunction rf,mova_function f where f.mova_functionid=rf.mova_functionid and rf.mova_roleid=" & FRM_mova_roleid  & " and f.status='T'"    
	set movaRs=conn.execute(sql)
	do 
		if movaRs.eof or movaRs.bof then exit do 
			m=m+1 
			bufferSec(m)=movaRs("mova_functionid")   
			movaRs.moveNext
	loop
	movaRs.close
	
	sql = "select distinct categoryName,category,is_super,sortno from mova_function where parent_id=0 and status='T'"    
		if not isSuperAdministrator() then 
			sql = sql &  " and  (is_super<>'T'  or is_super is null ) "
		end if 
	sql = sql & " order by is_super,sortno,category"
	set movaRs= conn.execute(sql)
%>
 <div class="cn_list_title">角色权限点分配</div> 
<DIV class=cn_col01>
             <form name="mainform1" method="post" action="modiRoleSec_.asp">
          		<input type=hidden name="mova_roleid" value="<%=FRM_mova_roleid%>">
              <table width="100%" border="0" cellspacing="1" cellpadding="1">
                          
                          <%
                          	have_reuseRole= false
                          	do 
                          		if movaRs.eof or movaRs.bof then
                          			exit do 
                          		end if 
                          		categoryName = movaRs("categoryName")
                          		category = movaRs("category")
                          %>
                          		<tr height="20"> 
                          		  <td  class="cn_td09"    ><%=categoryName%></td>
                          		  <td  >
                          		  	 <ul>
                          		  	<%
                          		  		sql = "select * from mova_function where category='" & category & "'  and status='T' "    
                          		  		if not isSuperAdministrator() then 
                          		  			sql = sql &  " and (is_super<>'T'  or is_super is null ) "
                          		  		end if 
                          		  		sql = sql & " order by parent_id,categoryName"
                          		  		'	response.write sql & "<BR>"
                          		  		set movaRs1 = conn.execute(sql)
                          		  		dim j 
                          		  		j=0
                          		  		do 
                          		  			if movaRs1.eof or movaRs1.bof then
                          		  				exit do
                          		  			end if 
                          		  			code=movaRs1("code")
                          		  			functionName = movaRs1("functionName")
                          		  			mova_functionid = movaRs1("mova_functionid")
                          		  			is_super = movaRs1("is_super")
                          		  			function_type = movaRs1("function_type")
                          		  			if function_type="URL" then
                          		  				function_type="*"
                          		  			end if 
                          		  		  if is_super="T" then 
                          		  		  	is_super = "<font color=red>*</font>"
																			else
																				is_super = "<font color=red>&nbsp;&nbsp;</font>" 	
                          		  		  end if 
																			functionChecked=""
																			functionTxtcolor="#AFAFAF"
                          		  			for i=1 to m 
                          		  				if bufferSec(i)=mova_functionid then
                          		  					functionChecked = "checked"
                          		  					functionTxtcolor="#000000"
                          		  					if code="userSys" then 
                          		  						have_reuseRole=true
                          		  					end if 
                          		  				end if 
                          		  				
                          		  			next 
                          		  			
                          		  	%>
                          		  		<li  ondblClick="clipboard('<%=code%>')"  ><%=is_super%><input type=checkbox name=mova_functionid value="<%=mova_functionid%>" <%=functionChecked%>>&nbsp;</font><font color="<%=functionTxtcolor%>" title="引用代码:<%=code%>"><%=functionName%></font></li>
																	<%
																				movaRs1.moveNext
																		loop 
                          		  	%>
                          		  	 
                          <%
                          		movaRs.moveNext
                          	loop 
                          	movaRS.close
                          %>
                          
 												</td></tr>
                          <tr class="mainbuttomline"> 
                          <td  align="right"   valign="top" > </td>
                           <td  align="left"   valign="top" >
                                <input type="submit"  class="cn_button01" name="Submit" value="修改">
														</td>
                          </tr>
                        </table>
                        </td></form>
                    </tr>
                  </table> 
</div>
<%if have_reuseRole then %>
<% dim bufferReuse(100)
	m=0
	sql = "select r.*,re.reuse_Role_id from mova_role r,mova_role_reuse re where r.mova_roleid=re.mova_roleid and r.mova_roleid=" & FRM_mova_roleid   
	set movaRs=conn.execute(sql)
	do 
		if movaRs.eof or movaRs.bof then exit do 
			m=m+1 
			bufferReuse(m)=movaRs("reuse_Role_id")   
			movaRs.moveNext
	loop
	movaRs.close
%>
  <div class="cn_list_title"> 可分配的角色</div>
  <DIV class=cn_col01>
             <form name="mainform2" method="post" action="modiRoleReuse_.asp">
          		<input type=hidden name="mova_roleid" value="<%=FRM_mova_roleid%>">
              <table width="100%" border="0" cellspacing="1" cellpadding="1">
              	<tr> <td  class="cn_td09"    >可分配的角色</td>
                          		  <td  >
                          		  	 <ul>
<%  
  sql = "select mova_roleid,'[' + scope + ']' + roleName  as reRoleName,description from mova_role "
	sql = sql & " order by scope desc,roleName "
	
	Dim reUse_roleid,reUse_roleName,reUse_description,roleChecked,roleTxtcolor
	set movaRs=conn.execute(sql)
	do 
		if movaRs.eof or movaRs.bof then exit do 
		 	reUse_roleid= movaRS("mova_roleid")
		 	reUse_roleName = movaRS("reRoleName")
		 	reUse_description = movaRS("description")
		 	
		 	roleChecked=""
			roleTxtcolor="#AFAFAF"
      for i=1 to m 
      	if bufferReuse(i)=reUse_roleid then
      		roleChecked = "checked"
      		roleTxtcolor="#000000"
      	end if 
      	if code="userSys" then 
      		have_reuseRole=true
      	end if 
      next 
                          		  			
                          		  			
		 %>
		 <li><input type=checkbox name=reuse_Roleid value="<%=reUse_roleid%>" <%=roleChecked%>>&nbsp;</font><font color="<%=roleTxtcolor%>" title="引用代码:<%=reUse_description%>"><%=reUse_roleName%></font></li>
		 <%
			movaRs.moveNext
	loop
	movaRs.close
	
%>
</ul>
</td></tr>
<tr>
	 <td  class="cn_td09"    >可分配的角色</td>
		<td  >
			 <input type="submit"  class="cn_button01" name="Submit" value="修改">
			</td>
</tr>
</table>
</form>
</div>
<br>
<br>
<br>
<% end if %>     
      
    
     
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->