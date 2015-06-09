<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/getNodes.asp" --> 
<%
	Dim  treeId
	if  request("id")="" then 
		treeId = "0"
	else
		treeId = request("id")
	end if 
	
	treeSql = "select a.leaf_id as id,a.leaf_name as [name],a.leaf_label as label,"
	treeSql = treeSql & "(select count(*) from view_v0 b where b.parent_id=a.leaf_id) as isParent "
	treeSql = treeSql & " from view_v0 a where a.parent_id='"&treeId&"'"
	treeSql = treeSql & " order by leaf_label,leaf_name "
	getNodes  treeSql 
%>