<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "knowledge_list" %>
<%
'modi code:
Dim knowledge_id,sqlString
'Dim Form_Frm
Dim FRM_object,FRM_category,FRM_title,FRM_content,FRM_is_top

knowledge_id = req("knowledge_id")

sqlString = "select * from mu_knowledge where knowledge_id="&knowledge_id & " and owner ='" &  session("customerNo") & "' " 
executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
movaRS.close
msgbox "记录不存在，或者您打开了一个错误的页面",1
end if 

'Dim Form_Frm
FRM_category = movaRS("category")
FRM_title = movaRS("title")
FRM_content = movaRS("content")
FRM_is_top = movaRS("is_top")
%>
 
<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.title.value==""){
			str=str +  "标题必须输入" + "\n";
		}
		if (document.mainform.content.value==""){
			str=str +  "内容必须输入" + "\n";
		}
		return showInputError(str);
	}
	
		 
	</script>

<div class="cn_list_title">编辑文章</div> 
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
 <form action="modiKnowledge_.asp" method="post" name="mainform" id="mainform" onSubmit="return chk()"> 
	<input type="Hidden" name="object" value="mova_knowledge">
	<input type="hidden" name="keyid" value="<%=knowledge_id%>">
	<input type="hidden" name="archive" value="F">
  <TBODY>
  
  <TR>
    <TD class=cn_td09 align=right><span class="cn_font02">*</span>分类:</TD>
    <TD align=left><select name="category" id="select">
       <option value=""></option>
				<%curPicklist "#" & session("customerNo") & "_M0000",FRM_category %>
				</select></TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right><span class="cn_font02">*</span>标题:</TD>
    <TD align=left><INPUT name="title" type=text  class=cn_input03  size="45" value="<%=FRM_title%>">
		</TD></TR>
  <TR>
 <tr>
 	<td class=cn_td09 align=right>内容:
 	</td>
 	<td>
 	<div class="noneStyle"> 
									<textarea  name="content" id="content"  cols="100" rows="8" 
										 style="width:100%;height:400px;visibility:hidden;"
										><%=htmlspecialchars(FRM_content)%></textarea>
								<% kindEdit "mainform","content"%>
								
	</div>
 	</td>
 </tr>
	<tr>
    <TD class=cn_td09 align=right>是否置顶:</TD>
    <TD align=left><select name="is_top" id="select">
       <option value=""></option>
				<%=picklist("#isNo",FRM_is_top)%>
				</select>
   
 		</TD></TR>
  <TR>
  	<tr>
    <TD class=cn_td09 align=right> </TD>
    <TD align=left>
   <%if chkAccount("knowledge_modi") then %><BUTTON class=cn_button01 type=submit onClick="">保存</BUTTON><%end if %>
   <%if chkAccount("knowledge_del") then %><BUTTON class=cn_button01 type=submit onClick="return del(this.form)">删除</BUTTON><%end if %>
 		</TD></TR>
  <TR>
  </TBODY></FORM></TABLE>
</div>
 <script>
 	function del(obj){
 		if (confirm("您确定需要删除记录吗")){
 			obj.archive.value="T";
 		}else{
 			return false;	
 		}
 	}
 </script>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->