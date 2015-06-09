<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<%
'modi code:
Dim knowledge_id
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
<div class="cn_list_title"><%=FRM_title%></div> 
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <TBODY>
  
  <TR>
    <TD class=cn_td09 align=right>标题:</TD>
    <TD align=left><%=FRM_title%> </TD> 
 </tr>
 
 </table>
</div>
<div class="cn_kindEdit">
  <%=FRM_content%>
</div>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->