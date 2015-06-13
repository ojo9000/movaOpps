<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "userSys" %>
<%opendatabase%>
<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.username.value==""){
			str=str +  "姓名必须输入" + "\n";
		}
		if (document.mainform.login.value==""){
			str=str +  "登陆账号必须输入" + "\n";
		}
		if ((document.mainform.password.value=="")||(document.mainform.password.value!=document.mainform.repassword.value)){
			str=str +  "密码必须输入或者密码输入错误" + "\n";
		}
		if (document.mainform.mova_roleid.value==""){
			str=str + "必须选择一个角色" + "\n";
		}
		if (document.mainform.team_id.value==""){
			str=str + "必须选择一个组" + "\n";
		}
		
		return showInputError(str);
	}
</script>
 <div class="cn_list_title">添加用户</div> 
  <div class="cn_list_title_right"><a href="addUser.asp">添加用户</a> | <a href="listUser.asp">用户查询</a></div>
<DIV class=cn_col01>
 <table width=99%  border="0" cellspacing="0" cellpadding="0" height="0">
 	<form name="mainform" method="post" action="addUser_.asp">
                   <table width="100%" border="0" cellspacing="1" cellpadding="1">
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>登陆帐号:</td>
                            <td class="" ><input name="login"  class=cn_input03 type="text"  size="20" maxlength="20"> 
                            </td>
                          </tr>
                          <tr height="20">
                            <td  class="cn_td09" ><font color=red>*</font>密码:</td>
                            <td class="" ><input class=cn_input03  name="password" type="password"  size="20" maxlength="20"> 
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color="red">(再输一次)</font>密码:</td>
                            <td class="" > 
                                <input name="repassword" class=cn_input03  type="password"  size="20" maxlength="20">
                               </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>姓名:</td>
                            <td class="" > <input class=cn_input03  name="username" type="text" size="20" maxlength="20"> 
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >性别:</td>
                            <td class="" > <select name="sex" id="select7">
                            <option value=""></option>
                            <%=picklist ("#sex","")	%>
                              </select> </td>
                          </tr>
                          
                          
                          <tr height="20"> 
                            <td  class="cn_td09" >电话:</td>
                            <td class="" ><input name="phone" type="text"  class=cn_input03   size="20" maxlength="40"> 
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >邮件:</td>
                            <td class="" ><input name="mail" class=cn_input03  type="text" size="20"> 
                            </td>
                          </tr>
                           <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>角色:</td>
                            <td class="" >
                            <select name="mova_roleid" >
                            <option value=""></option>
                            	<%=getRolePicklist("") %>
                            </select>
                            </td>
                          </tr>
                          <% if isAdministrator() then %>
                          <tr height="20"> 
                            <td  class="cn_td09" > 默认组:</td>
                            <td class="" >
                            <select name="team_id" >
                             <option value=""></option>
                            	<%=getTeamList("") %>
                            </select>
                            </td>
                          </tr>
                            <input name="customerNo" type="hidden"  value="M019"> 
                          <%end if %>
                         
                          <tr > 
                            <td width="100" align="right"   valign="top" ></td>
                            <td colspan=4> <input name="submit" type="submit"  class="cn_button01"  onClick="return chk()" value="添加"></td>
                          </tr>
                        </table> 
      </form>
</div> 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->