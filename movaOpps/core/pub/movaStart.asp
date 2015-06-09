<%
	if application("IGNORE_ERROR") then 
		On Error Resume Next 
	end if
	Dim Domain_Name,Page_Name,Quary_Name
	'Domain_Name = LCase(Request.ServerVariables("Server_Name"))
   Page_Name= LCase(Request.ServerVariables("Script_Name"))
  'Quary_Name = LCase(Request.ServerVariables("Quary_String"))
  
  Dim pubDir
  pubDir = "/movaopps/install"
	
  if inStr(Page_Name,LCase(pubDir))<1 then 
		chkLogin
	end if 
	opendatabase 
%>