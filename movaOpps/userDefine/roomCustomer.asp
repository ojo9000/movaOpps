<%
Dim reqLabel
reqLabel  = request("label")&""

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
		function treeOnDblClick(event, treeId, treeNode) {
			fullName="";
   		getFullName(treeNode);
   		fullName = fullName.substr(0,fullName.length-1); 
   		if ("<%=reqLabel%>"==""){ 
   			parent.setDialogField(treeNode.id,"<%=request("pickId")%>",fullName,"<%=request("pickValue")%>");
   		}else{
   			if ("<%=reqLabel%>"==treeNode.label){
   				try{ 
   					parent.syncPick(treeNode.customer , treeNode.phone,fullName);
					}catch(error){
						
					}finally{ 
						parent.setDialogField(treeNode.id,"<%=request("pickId")%>",fullName,"<%=request("pickValue")%>");
					} 


   				
   				
   				
   				
   				
   			}
   		}
		}
 
		
		var setting = {
			async: {
				enable: true,
				url:"getRoomCustomerNode.asp",
				autoParam:["id", "name=n", "level=lv"]
			},
			callback: {
				onDblClick: treeOnDblClick
			}
		}; 
		  

		$(document).ready(function(){
			$.fn.zTree.init($("#tree"), setting);
		});
		 
	</SCRIPT>
</HEAD>

<BODY> 
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="tree" class="ztree"></ul>
	</div>
</body>
</html>


