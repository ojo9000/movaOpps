<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<% chkAccountStr "knowledge_list" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE> </TITLE>
<META content="text/html; charset=gb2312" http-equiv=Content-Type> 
<script language="javascript"> history.forward();</script>
 <script language="JavaScript" src="/movaOpps/core/js/include.js"></script>
 
<script type="text/javascript" src="/movaOpps/core/js/jquery-1.2.6.min.js"></script>
 <LINK rel=stylesheet type=text/css  href="<%=movaStyle%>/style.css">
<STYLE>HTML {BORDER-LEFT: #b8bdc0 1px solid; MIN-HEIGHT: 99.6%; HEIGHT: auto} </STYLE>
 
    


<META name=GENERATOR content="MSHTML 8.00.6001.18928"></HEAD>
<BODY style="background:#eef2fb url(<%=movaStyle%>/images/cn_sidebar.gif) repeat-y;" >
	<DIV class=cn_main>




<div class="cn_list_title">知识库查询</div> 
<div class="cn_list_title_right">
	<BUTTON class=cn_button01 type=button onClick='hiddenKnowledge()'>隐藏</button>
 
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
<DIV class=cn_col>
	<ul>
<% if req("isStart") <> "1" then  
'查询结果
 
 
 		dim sqlString,order,condition,securitySQL
 			sqlString="select * from mu_knowledge where 1=1 and archive='F' and owner ='" &  session("customerNo") & "' " 
 			order =  " order by is_top desc,modifydate desc " 
 			
 			if req("isStart") = "0" then 
 				'如果是点击查询按钮则执行以下
 				session("F_category") = req("category")
 				session("F_title") =   req("title")
 				
 				session("defCondition") = ""
 			end if 
 			
 			if req("isStart")="2" and req("def")<>""  then
				session("F_category") = ""
 				session("F_title") = ""
 				session("defCondition") = ""
 			end if
 			'执行特定的查询
 			if req("def") = "Last" then
 				'最近的客户
 				session("defCondition") = " and dateDiff(Day,modifydate,getdate()) <= 7 " 
 				order = " order by modifydate desc"
 			end if


			condition = ""
			if session("F_category")  <>"" then condition= condition & " and category ='" & session("F_category") & "'"
			if session("F_title")  <>"" then condition= condition & " and (upper(title) like upper('%" & session("F_title")& "%') or content like " & "'%" & session("F_title")& "%')"
			
			if session("defCondition") <> "" then 
					condition = condition + session("defCondition")
			end if
			
			
			securitySQL = ""
			
			if condition="" then condition = " and 1=2 "
			sqlString=sqlString & condition & securitySQL &  order 
			'response.write sqlString   
			executeQuery conn,rs,sqlString, 1, 1

			' 初始化页
			Dim i,FRM_knowledge_id,FRM_title,FRM_is_top,FRM_modifydate,FRM_category,knowledgeURL
			InitRS rs, 30	' 默认每页 行数
			For i = 1 to rs.pagesize 
				if rs.eof then exit For
				FRM_knowledge_id = rs("knowledge_id")
				FRM_title = rs("title")
				FRM_is_top = rs("is_top")
				FRM_modifydate = rs("modifydate")
				FRM_category = rs("category")
				FRM_title = replace(FRM_title ,session("F_title"), "<div class=searchKey>" & req("title") & "</DIV>" )
				knowledgeURL="viewKnowledge1.asp"
    	 
    	 if FRM_is_top="T" then %>
    		<li class="mova"><font color=red><b>*</b></font>&nbsp;&nbsp;<div style="DISPLAY: inline;" ><%=FRM_category%></div>&nbsp;&nbsp;&nbsp;<a href="<%=knowledgeURL%>?knowledge_id=<%=FRM_knowledge_id%>"><%=FRM_title%></a>
    	<%else%>
    		<li class="mova">	&nbsp;&nbsp;&nbsp;<div style="DISPLAY: inline;" ><%=FRM_category%></div>&nbsp;&nbsp;&nbsp;<a href="<%=knowledgeURL%>?knowledge_id=<%=FRM_knowledge_id%>"><%=FRM_title%></a> 
    	<%end if %> &nbsp;&nbsp; <i>--<%=FRM_modifydate%></i></li>
 
<%			
		rs.Movenext
		Next
%>

 
<%end if %>		
		
	</ul>
 
 </div>

<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->