<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "info_User" %>
<%opendatabase%>
<%
Dim mova_userid,sqlString

'Dim Form_Frm
Dim FRM_team_id,FRM_status,FRM_mova_userid,FRM_object,FRM_password,FRM_repassword,FRM_sex,FRM_login,FRM_department,FRM_submit,FRM_username,FRM_phone,FRM_mail,FRM_mova_roleid

mova_userid = session("userid")

sqlString = "select * from mova_user where mova_userId=" &  mova_userid 
executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
movaRS.close
closedatabase
msgbox "��¼�����ڣ�����������һ�������ҳ��",1
end if 

'Dim Form_Frm
FRM_mova_userid = movaRS("mova_userid")
FRM_sex = movaRS("sex")
FRM_login = movaRS("login")
FRM_username = movaRS("username")
FRM_phone = movaRS("phone")
FRM_mail = movaRS("mail")
FRM_mova_roleid = cStr(movaRS("mova_roleid"))
FRM_status = movaRS("status")
FRM_team_id = movaRS("team_id")
%>

<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.username.value==""){
			str=str +  "������������" + "\n";
		}
		if (!isEmptyObj(document.mainform.password)){
			if (document.mainform.password.value!=document.mainform.repassword.value){
				str=str +  "�������������������������" + "\n";
			}
		}
		
		return showInputError(str);
	}
</script> 
 <div class="cn_list_title">�û���Ϣ���������</div> 
<DIV class=cn_col01>
 
    <form name="mainform" method="post" action="modiUser_.asp">
    	<input type="hidden" name="object" value="mova_user">
   <table width="100%" border="0" cellspacing="1" cellpadding="1">
   	<input type="hidden" name="login" value="<%=FRM_login%>">
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>��½�ʺ�:</td>
                            <td class="" ><%=FRM_login%> 
                            </td>
                          </tr>
                          <tr height="20">
                            <td  class="cn_td09" ><font color=red>*</font>����:</td>
                            <td class="" ><input name="password" type="password"  class=cn_input03  size="30" maxlength="20"> ����������Ͳ���Ҫ��д
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color="red">(����һ��)</font>����:</td>
                            <td class="" > 
                                <input name="repassword" type="password"  class=cn_input03  size="30" maxlength="20">
                               </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>����:</td>
                            <td class="" > <input name="username" class=cn_input03  type="text" size="30" maxlength="20" value="<%=FRM_username%>"> 
                            </td>
                          </tr>
                          
                          
                        
                          <tr height="20"> 
                            <td  class="cn_td09" >�绰:</td>
                            <td class="" ><input name="phone"  class=cn_input03  type="text"   size="30" maxlength="40" value="<%=FRM_phone%>"> 
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >�ʼ�:</td>
                            <td class="" ><input name="mail" class=cn_input03  type="text" size="30" value="<%=FRM_mail%>"> 
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>��ɫ:</td>
                            <td class="" ><%=session("roleName")%> 
                            </td>
                          </tr>
                          <tr height="20">
                            <td  class="cn_td09" ><font color=red>*</font>Ĭ�Ϲ�˾:</td>
                            <td class="" ><%=getOnefield("select team_name from mova_team where team_id=" &FRM_team_id) %>
                          
                          </tr>
                          
                          <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
                            <td width="100" align="right"   valign="top" ></td>
                            <td colspan=4> <input name="submit" type="submit" class="cn_button01"  onClick="this.form.action='modiUser_.asp';return chk()" value="�޸�">
                            </td>
                          </tr>
                        </table> 
      </form>
      
   
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->