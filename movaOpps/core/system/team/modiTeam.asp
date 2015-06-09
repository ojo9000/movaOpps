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
Dim team_name,status,team_id,sqlString,FRM_team_id,FRM_team_name,FRM_status

opendatabase

'modi code:
Dim mova_roleid
'Dim Form_Frm
Dim FRM_object,FRM_rolename,FRM_rolecode,FRM_description,FRM_firstPage,FRM_submit

team_id = req("id")

sqlString = "select * from mova_team where team_id="& team_id 
set movaRS=conn.execute(sqlString)
if movaRS.bof or movaRS.eof then
movaRS.close
closedatabase
msgbox "记录不存在，或者您打开了一个错误的页面",1
end if 

'Dim Form_Frm
FRM_team_id = movaRS("team_id")
FRM_team_name = movaRS("team_name")
FRM_status = movaRS("status")
%>
<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.team_name.value==""){
			str=str +  "公司名必须输入" + "\n";
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
<div class="cn_list_title">公司编辑</div> 
<div class="cn_list_title_right"><a href="addTeam.asp">添加公司</a> | <a href="listTeam.asp">公司列表</a></div>

<DIV class=cn_col01>
<table width="100%" border="0" cellspacing="1" cellpadding="1">
                                                                               
                                                                               
                       <form name="mainform" method="post" action="team_.asp">
				<input type="hidden" name="team_id" value="<%=team_id%>">
               
                          <tr height="20"> 
                            <td  class="cn_td09" ><font color=red>*</font>公司名称:</td>
                            <td><input class=cn_input03  name="team_name" type="text"  size="30" maxlength="20" value="<%=FRM_team_name%>"> 
                            </td>
                          </tr>
  
                         
                          <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
                            <td width="100" align="right"   valign="top" ></td>
                            <td colspan=4> <input name="submit" type="submit" class="cn_button01" onClick="return chk()" value="修改"></td>
                          </tr>
                        </table> 
                        
                         </form>
</div>
      
      
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->