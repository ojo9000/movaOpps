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
	
	treeSql = "select a.leaf_id as id,a.leaf_name as [name],a.leaf_label as label,a.room,a.customer,a.phone,"
	treeSql = treeSql & "(select count(*) from [tree_room_customer] b where b.parent_id=a.leaf_id) as isParent, "
	treeSql = treeSql & "case ISNULL(a.customer,'')"
	treeSql = treeSql & "when '' then ''"
	treeSql = treeSql & "else"
	treeSql = treeSql & "	'1_open.png' "
	treeSql = treeSql & "end as icon"

	treeSql = treeSql & " from [tree_room_customer] a where a.parent_id='"&treeId&"'"
	treeSql = treeSql & " order by leaf_label,leaf_name "
	'response.write treeSQl
	getNodes  treeSql 
%>