
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - Async</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=GBK">
	<link rel="stylesheet" href="demo.css" type="text/css">
	<link rel="stylesheet" href="zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="jquery.ztree.core-3.5.js"></script> 
	<SCRIPT type="text/javascript">
		<!--
		var setting = {
			async: {
				enable: true,
				url:"testGetNodes.asp",
				autoParam:["id", "name=n", "level=lv"],
				otherParam:{"otherParam":"zTreeAsyncTest"},
				dataFilter: filter
			}
		};

		function filter(treeId, parentNode, childNodes) {
			if (!childNodes) return null;
			for (var i=0, l=childNodes.length; i<l; i++) {
				childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
			}
			return childNodes;
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>异步加载节点数据的树</h1>
<h6>[ 文件路径: core/async.html ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
</body>
</html>