<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE> </TITLE>
<META content="text/html; charset=gb2312" http-equiv=Content-Type> 
 <script language="JavaScript" src="/movaOpps/core/js/include.js"></script>
 
<script type="text/javascript" src="/movaOpps/core/js/jquery-1.2.6.min.js"></script>
 <LINK rel=stylesheet type=text/css  href="<%=movaStyle%>/style.css">
<STYLE>HTML {BORDER-LEFT: #b8bdc0 1px solid; MIN-HEIGHT: 99.6%; HEIGHT: auto} </STYLE>
 
    


<META name=GENERATOR content="MSHTML 8.00.6001.18928"></HEAD>
<BODY style="background:#eef2fb url(<%=movaStyle%>/images/cn_sidebar.gif) repeat-y;" >
	<DIV class=cn_main>

<%
'modi code:
Dim knowledge_id
'Dim Form_Frm
Dim FRM_object,FRM_category,FRM_title,FRM_content,FRM_is_top

knowledge_id = req("knowledge_id")
Dim sqlString
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
FRM_content = replace(FRM_content ,session("F_title"), "<div class=searchKey>" & session("F_title") & "</DIV>"  )

%>
 
<div class="cn_list_title"><%=FRM_title%></div> 
<div class="cn_list_title_right">
	<BUTTON class=cn_button01 type=button onClick='hiddenKnowledge()'>隐藏窗口</button>
 
		<script>
    	function hiddenKnowledge(){
    		var knowledgeFrame = top.document.getElementsByName("main2")[0];
			 <%if not chkAccount("callCenter") then %> 
			knowledgeFrame.rows = "*,1,0";
<%else%>
	knowledgeFrame.rows = "80,*,1,0";
<%end if %>
				
    	}	
	</script>
</div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
	<tr><td>
<div class="cn_kindEdit">
  <%=FRM_content%>
</div>
</td></tr>
</table>
</div>
</div>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->