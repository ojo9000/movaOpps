<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "roleSys" %>

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
 <div class="cn_list_title">添加角色</div> 
<div class="cn_list_title_right"><a href="addRole.asp">添加角色</a> | <a href="listRole.asp">角色列表</a></div>
<DIV class=cn_col01>
<table width="100%" border="0" cellspacing="0" cellpadding="5">
 <form name="mainform" method="post" action="addRole_.asp">
    		<input type="hidden" name="object" value="mova_role">
     
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>角色名称:</td>
                            <td class="" ><input  class=cn_input03  name="rolename" type="text"  size="30" maxlength="20"> 
                            </td>
                          </tr>
                          <tr height="20">
                            <td  class="cn_td09" ><font color=red>*</font>角色代码:</td>
                            <td class="" ><input  class=cn_input03 name="rolecode" type="text"  size="30" maxlength="20"> <font class="remTxt"></font>
                            </td>
                          </tr>
                          <tr height="20"> 
                            <td  class="cn_td09" >角色说明:</td>
                            <td class="" >  <input  class=cn_input03 name="description" type="text"  size="50" maxlength="20"> </td>
                          </tr>
                          <input type="hidden" name="firstPage" value="ddd">
                          <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
                            <td width="100" align="right"   valign="top" ></td>
                            <td colspan=4> <input class="cn_button01"  name="submit" type="submit"  onClick="return chk()" value="添加"></td>
                          </tr>
                        </table> 
      </form>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->