<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/getNodes.asp" --> 
<%
	Dim  treeId
	if  request("id")="" then 
		treeId = "0"
		if request("type")="A001"  then treeId = "A001"
		if request("type")="A002"  then treeId = "A002"
	else
		treeId = request("id")
	end if 
	
	treeSql = "select a.v1 as id,a.v0 as [name],"
	treeSql = treeSql & "(select count(*) from mu_opp8 b where b.v2=a.v1) as isParent "
	treeSql = treeSql & " from mu_opp8 a where a.v2='"&treeId&"' and a.archive='F' "
	treeSql = treeSql & " order by V4 "
	'response.write treeSql
	getNodes  treeSql 
%>