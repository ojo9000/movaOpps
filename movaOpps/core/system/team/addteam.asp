<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "teamSys" %>
 
<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.team_name.value==""){
			str=str +  "������������" + "\n";
		}
		if (str!=""){
			str="�Բ����������벻��ȷ!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			return true;
		}
	}
</script>
 <div class="cn_list_title">�����</div> 
<div class="cn_list_title_right"><a href="addTeam.asp">��ӹ�˾</a> | <a href="listTeam.asp">���б�</a></div>

<DIV class=cn_col01>
<table width="100%" border="0" cellspacing="0" cellpadding="5">
 <form name="mainform" method="post" action="team_.asp">
 		<input type="hidden" name="team_id" value="-1">
    		<input type="hidden" name="object" value="mova_role">
     
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>������:</td>
                            <td class="" ><input  class=cn_input03  name="team_name" type="text"  size="30" maxlength="20"> 
                            </td>
                          </tr>
                         
                          <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
                            <td width="100" align="right"   valign="top" ></td>
                            <td colspan=4> <input class="cn_button01"  name="submit" type="submit"  onClick="return chk()" value="���"></td>
                          </tr>
                        </table> 
      </form>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->