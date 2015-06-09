<%
Dim reqLabel
reqLabel  = request("label")&""
Dim allowSelect
allowSelect = request("allowSelect")

%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - Async</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=gbk"> 
	<link rel="stylesheet" href="zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="jquery.ztree.core-3.5.js"></script> 
	<SCRIPT type="text/javascript">
	 
		var fullName="";
		function getFullName(treeNode){
			if (treeNode!=null){
				fullName =  treeNode.name+"-" + fullName ;
				getFullName(treeNode.getParentNode());  
			}else{
				return "";
			} 
		}
		function treeOnDblClick1(event, treeId, treeNode) {
			fullName="";
   		getFullName(treeNode);
   		fullName = "产品缺陷类-" +fullName   ;
   		fullName = fullName.substr(0,fullName.length-1); 
   		<%if allowSelect<>"*" then %>
   		if (!treeNode.isParent){
   		<%else%>
   			if (1==1){ 
   		<%end if %>
   			parent.setDialogField(treeNode.id,"<%=request("pickId")%>",fullName,"<%=request("pickValue")%>");
   		} 
		}
		
		function treeOnDblClick2(event, treeId, treeNode) {
			fullName="";
   		getFullName(treeNode);
   		fullName = "服务类-" +fullName   ;
   		fullName = fullName.substr(0,fullName.length-1); 
   		<%if allowSelect<>"*" then %>
   		if (!treeNode.isParent){ 
   		<%else%>
   			if (1==1){ 
   		<%end if %>
   			parent.setDialogField(treeNode.id,"<%=request("pickId")%>",fullName,"<%=request("pickValue")%>");
   		} 
		}
 
		
		var setting1 = {
			async: {
				enable: true,
				url:"getbwbjNode.asp?type=A001",
				autoParam:["id", "name=n", "level=lv"]
			},
			callback: {
				onDblClick: treeOnDblClick1
			}
		}; 
		var setting2 = {
			async: {
				enable: true,
				url:"getbwbjNode.asp?type=A002",
				autoParam:["id", "name=n", "level=lv"]
			},
			callback: {
				onDblClick: treeOnDblClick2
			}
		}; 
		  

		$(document).ready(function(){
			$.fn.zTree.init($("#tree1"), setting1);
			$.fn.zTree.init($("#tree2"), setting2);
		});
		 
	</SCRIPT>
</HEAD>

<BODY> 
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<table width=90%>
		<tr>
			<td width=50% valign=top >产品缺陷类：<ul id="tree1" class="ztree"></ul></td>
			<td width=50% valign=top >服务类：<ul id="tree2" class="ztree"></ul></td>
			</tr>	
		</table> 
	</div>
</body>
</html>


