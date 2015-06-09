<% 
'标准URL参数  id   ，不传值则为 0 
'标准输出json 列: 
'id		:		节点key
'name	:		节点名称
'isParent : 是否有子节点   采用count  >0 则有节点 
'
'其他列可自行输出

sub getNodes (tSql) 
	opendatabase	
	Dim JsonResult
	
	executeQuery conn,movaRs1,tSql, 1, 1 
	'记住原来的 CodePage（默认为 936）
	Session.CodePage = 65001 ' 设置新的 CodePage（UTF-8）
	Response.CharSet = "UTF-8"
	Response.ContentType = "text/html"
	response.write "["
	JsonResult=""
	do 
		dim itemJson
		itemJson = ""
		if movaRs1.eof or movaRs1.bof then exit do
		JsonResult = JsonResult & "{"
		for   pi=0 to movaRS1.fields.Count-1
			itemJson = itemJson & movaRS1.fields(pi).name &  ":'" & movaRs1(movaRS1.fields(pi).name) & "',"
		Next 
		if movaRS1("isParent")>0 then 
			itemJson = itemJson & "isParent:true,"
		else
			itemJson = itemJson & "isParent:false,"
		end if 
		itemJson = left(itemJson,len(itemJson)-1)
		
		JsonResult = JsonResult & itemJson 
		JsonResult = JsonResult & "},"
		movaRS1.moveNext
		
	loop
	if len(JsonResult)>1 then JsonResult = left(JsonResult,len(JsonResult)-1)
	response.write JsonResult
	response.write "]"
	closedatabase
		Session.CodePage = 936
end sub
%> 