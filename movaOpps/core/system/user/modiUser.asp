<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "userSys" %>
<%opendatabase%>
<%
Dim mova_userid
'Dim Form_Frm
Dim FRM_object,FRM_password,FRM_repassword,FRM_sex,FRM_login,FRM_department,FRM_submit,FRM_username,FRM_phone,FRM_mail,FRM_mova_roleid
Dim sqlString,FRM_param1,FRM_param2,FRM_param3,FRM_qq,FRM_opp_type,FRM_mac_addr,FRM_team_id,FRM_status,FRM_mova_userid
mova_userid = req("mova_userid")

sqlString = "select * from mova_user where mova_userId=" &  mova_userid 
executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
movaRS.close
closedatabase
msgbox "记录不存在，或者您打开了一个错误的页面",1
end if 

'Dim Form_Frm
FRM_mova_userid = movaRS("mova_userid")
FRM_sex = movaRS("sex")
FRM_login = movaRS("login")
FRM_department = movaRS("department")
FRM_username = movaRS("username")
FRM_phone = movaRS("phone")
FRM_mail = movaRS("mail")
FRM_mova_roleid = cStr(movaRS("mova_roleid"))
FRM_status = movaRS("status")
FRM_team_id = movaRS("team_id")
FRM_mac_addr=movaRS("mac_addr")
FRM_opp_type= movaRS("opp_type")
FRM_param1 = movaRS("param1")
FRM_param2 = movaRS("param2")
FRM_param3 = movaRS("param3")
FRM_qq = movaRS("qq")

%>

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
		if (!isEmptyObj(document.mainform.password)){
			if (document.mainform.password.value!=document.mainform.repassword.value){
				str=str +  "密码必须输入或者密码输入错误" + "\n";
			}
		}
		
		return showInputError(str);
	}
</script> 
 <div class="cn_list_title">修改用户</div> 
  <div class="cn_list_title_right"><a href="addUser.asp">添加用户</a> | <a href="listUser.asp">用户查询</a></div>
<DIV class=cn_col01>
 
    <form name="mainform" method="post" action="modiUser_.asp">
    	<input type="hidden" name="object" value="mova_user">
    	<input type="hidden" name="mova_userid" value="<%=FRM_mova_userid%>">
   <table width="100%" border="0" cellspacing="1" cellpadding="1">
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>登陆帐号:</td>
                            <td class="" ><input name="login" type="text"  class=cn_input03  size="30" maxlength="20" value="<%=FRM_login%>"> 
                            </td>
                          </tr>
                          <tr height="20">
                            <td  class="cn_td09" ><font color=red>*</font>密码:</td>
                            <td class="" ><input name="password" type="password"  class=cn_input03  size="30" maxlength="20"> 不更改密码就不需要填写
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color="red">(再输一次)</font>密码:</td>
                            <td class="" > 
                                <input name="repassword" type="password"  class=cn_input03  size="30" maxlength="20">
                               </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>姓名:</td>
                            <td class="" > <input name="username" class=cn_input03  type="text" size="30" maxlength="20" value="<%=FRM_username%>"> 
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >性别:</td>
                            <td class="" > <select name="sex" class=cn_input03  id="select7">
                            <option value=""></option>
                            <%=picklist( "#sex",FRM_sex)	%>
                              </select> </td>
                          </tr>
                          
                        
                          <tr height="20"> 
                            <td  class="cn_td09" >电话:</td>
                            <td class="" ><input name="phone"  class=cn_input03  type="text"   size="30" maxlength="40" value="<%=FRM_phone%>"> 
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >邮件:</td>
                            <td class="" ><input name="mail" class=cn_input03  type="text" size="30" value="<%=FRM_mail%>"> 
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >QQ:</td>
                            <td class="" ><input name="qq" class=cn_input03  type="text" size="30" value="<%=FRM_qq%>"> 
                            </td>
                          </tr>
                          
                          <tr height="20"> 
                            <td  class="cn_td09" >类型:</td>
                            <td class="" > <select name="opp_type" class=cn_input03  id="select7">
                            <option value=""></option>
                            <%=picklist( "select txt as selectvalue,txt from mu_item_list where owner='" & session("customerNo") &"' and item_code='M00_I10103' and archive='F' order by sort_no" ,FRM_opp_type)	%>
                              </select> </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >属性1:</td>
                            <td class="" ><input name="param1" class=cn_input03  type="text" size="30" value="<%=FRM_param1%>"> 
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >属性2:</td>
                            <td class="" ><input name="param2" class=cn_input03  type="text" size="30" value="<%=FRM_param2%>"> 
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >属性3:</td>
                            <td class="" ><input name="param3" class=cn_input03  type="text" size="30" value="<%=FRM_param3%>"> 
                            </td>
                          </tr>
                          
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>角色:</td>
                            <td class="" >
                            <select name="mova_roleid" >
                            <option value=""></option>
                            	<%=getRolePicklist(FRM_mova_roleid)%>
                            </select>
                            </td>
                          </tr>
                           <% if isAdministrator() then %>
                          <tr height="20">
                            <td  class="cn_td09" ><font color=red>*</font>默认组:</td>
                            <td class="" >
                            <select name="team_id" >
                             <option value=""></option>
                            	<%=getTeamList(FRM_team_id) %>
                            </select>
                            </td>
                          </tr>
                          <%end if %>
                          <% if chkAccount("muCCConfig") then %>
                          <tr height="20"> 
                            <td  class="cn_td09" >绑定网卡:</td>
                            <td class="" ><input name="mac_addr"  class=cn_input03  type="text"   size="30" maxlength="40" value="<%=FRM_mac_addr%>">
                            </td>
                          </tr> 
                          <%else%>
                          	<input name="mac_addr"  class=cn_input03  type="hidden"   size="30" maxlength="40" value="<%=FRM_mac_addr%>">
                          <%end if %>
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>账户启用:</td>
                            <td class="" >
                            <select name="status" >
                            <option value=""></option>
                            	<%=picklist ("#isNo", FRM_status)	%>
                            </select>
                            </td>
                          </tr> 
                          <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
                            <td width="100" align="right"   valign="top" ></td>
                            <td colspan=4> <input name="submit" type="submit" class="cn_button01"  onClick="this.form.action='modiUser_.asp';return chk()" value="修改">
                            <input name="submit" type="submit"   class="cn_button01" onClick="this.form.action='delUser_.asp';return confirm('删除用户？\n建议仅在错误添加时使用')" value="删除">
                            </td>
                          </tr>
                        </table> 
      </form>
      
   
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->