<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
	Dim FRM_category,FRM_URL
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="gb2312">
	<head>
		<title>系统菜单</title>
		<!-- 定义语言编码 -->
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<meta http-equiv="Content-Language" content="gb2312" />
		<!--定义链接样式表-->
		<LINK rel=stylesheet type=text/css  href="<%=movaStyle%>/style.css">
		<!--基于jquery-->
		<script src="/movaOpps/core/js/jquery-1.2.6.min.js" type="text/javascript"></script>
	</head>
	<style>
		html{
			height:auto;
			overflow-x:hidden;
		}
	.knowledgeBox {
	width: 150px;
	background-image: url(<%=movaStyle%>/images/knowledgeBox.gif);
	height: 100px;
	background-repeat: no-repeat;
	clear: both;
	padding-top: 17px;
	padding-left: 20px;
}
	</style>
	<script type="text/javascript">
		function setDefault(){
			$("ul").each(function()
			{
				if($(this).css("display")=="block")	
					$(this).parents("li").addClass("on");
			});
		}
		function SwitchMenu(obj){
			var el = document.getElementById(obj);
			var ar = document.getElementById("masterdiv").getElementsByTagName("ul"); 
			if(el.style.display != "block"){ 
				for (var i=0; i<ar.length; i++){
					ar[i].style.display = "none"; 
				}
				el.style.display = "block";
			}
			else{
				el.style.display = "none";
			}
			//设置on样式
			$("li[name^='li_']").removeClass("on");
			$("li[name='li_"+obj+"']").addClass("on");
		}
	</script>
	<body style="background:#eef2fb url(<%=movaStyle%>/images/cn_sidebar.gif) repeat-y;" onload="setDefault();">
		<div class="cn_sidebar" >
			<div class="cn_menu"> 
					<ul id="masterdiv">
			
				<% call menuDIVCSS(0,0,3  ) %>
			</div> 
		</div>
<%if chkAccount("knowledge_list") then  %>	 
	 <br><div class="knowledgeBox">
     <FORM id=form method=post name=mainform target="KnowledgeFrame" action="knowledge/search.asp">
  	<input type="hidden" name="isStart"  value="0">
  	<table>
 	
 		<tr>
 				<td align="right">类别:</td>
 				<td>
 					<select  name="category" id="select">
       			<option value=""></option>
						<%curPicklist "#" & session("customerNo") & "_M0000",FRM_category %>
					</select>	
 				</td>
 		</tr>
 		<tr>
 				<td align="right">关键字:</td>
 				<td><INPUT class=cn_input03 type=text name=title size="10"></td>
 		</tr>
 		<tr>
 				<td colspan="2"> <BUTTON class=cn_button01 type=submit onClick="showKnowledge();">查询</BUTTON>
 				</td>
 		</tr>
	</table>
	</form>
    </div>
    <script>
    	function showKnowledge(){
    		var knowledgeFrame = top.document.getElementsByName("main2")[0];
 <%if not chkAccount("callCenter") then %> 
			knowledgeFrame.rows = "*,1,250";
<%else%>
	knowledgeFrame.rows = "80,*,1,250";
<%end if %>
    	}	
    </script>
 <%end if %>
	</body>
</html>
<%

function menuDIVCSS(id,level,maxLevel)
 Dim paramLevel,treeRs,obj,objidFieldName,ChildCount,liName
	paramLevel = level+1
	if paramLevel<=maxLevel then 
		set treeRs=server.CreateObject("adodb.recordset")
		objidFieldName= obj & "id"
			sql="select * from mova_function where  parent_id="&id& " and function_type='URL'  and status='T' order by sortNo"
		treeRs.open sql,conn,1,1   
		while not treeRs.eof 
			if  chkAccount(treeRs("code")) then 
				
				ChildCount=conn.execute("select count(*) from mova_function where parent_id="& treeRs("mova_functionid")& " and function_type='URL' and status='T' ")(0)
				if ChildCount >0 then 
					response.write "<li name='li_sub" &  treeRs("mova_functionid") & "'>" & chr(13)
					response.write "<a href='"& treeRs("url") &"' onClick='SwitchMenu(" & chr(34) & "sub" & treeRs("mova_functionid") & chr(34) & ")'>" & treeRs("functionName") &"</a>" & chr(13)
					response.write "<ul id='sub"& treeRs("mova_functionid") &"' style='display:none'>" & chr(13)
				else 
					 	if paramLevel>1 then 
							liName=""
						else
							liName = " name='li_sub" & treeRs("mova_functionid") & "' "
						end if 
					
					'if treeRs("mova_functionid")= userObjectMenu then 
					'	getObjectMenu userObjectMenu 
					'else
						'正常的菜单
						FRM_URL = treeRs("url")
						if inStr(FRM_URL,"?")>0 then
							FRM_URL = FRM_URL & "&t="& getTime() 
						else
							FRM_URL = FRM_URL & "?1=1&t="& getTime() 
						end if 
							response.write "<li "& liName &"><a href='" & FRM_URL &"' target='main'>" & treeRs("functionName") & "</a></li>" & chr(13)
					'end if 
							
				end if
  	  	
				if ChildCount>0 then
					call menuDIVCSS(treeRs("mova_functionid"),level,maxLevel)
				end if
			end if 
			
			treeRs.movenext 
		wend
		response.write " </ul></li>" & chr(13)
		treeRs.close
		set treeRs=nothing
	end if
end function 
 

%>

<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->