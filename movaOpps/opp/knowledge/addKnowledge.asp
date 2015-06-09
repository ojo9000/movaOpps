<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "knowledge_new" %>
<% 
Dim FRM_category
%>
<script type="text/javascript" charset="utf-8" src="/movaOpps/core/kindEdit/kindeditor.js"></script>
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

<div class="cn_list_title">添加文章</div> 
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
 <form action="addKnowledge_.asp" method="post" name="mainform" id="mainform" onSubmit="return chk()"> 
	<input type="Hidden" name="object" value="mova_knowledge">
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
    <TD align=left><INPUT name="title" type=text  class=cn_input03  size="45" value="">
		</TD></TR>
  <TR>
  	<tr>
    <TD class=cn_td09 align=right><span class="cn_font02">*</span>内容:</TD>
    <TD align=left>
    	
    	<div class="noneStyle"> 
									<textarea  name="content" id="content"  cols="100" rows="8" 
										 style="width:100%;height:400px;"
										><%=htmlspecialchars("")%></textarea>
								<% kindEdit "mainform","content"%>
								
	</div>
		</TD></TR>
  <TR>
 
	
	
	<tr>
    <TD class=cn_td09 align=right>是否置顶:</TD>
    <TD align=left><select name="is_top" id="select">
       <option value=""></option>
				<%=picklist( "#isNo","F") %>
				</select>
   
 		</TD></TR>
  <TR>
  	<tr>
    <TD class=cn_td09 align=right> </TD>
    <TD align=left>
   <BUTTON class=cn_button01 type=submit onClick="">保存</BUTTON>
 		</TD></TR>
  <TR>
  </TBODY></FORM></TABLE>
</div>
  
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->