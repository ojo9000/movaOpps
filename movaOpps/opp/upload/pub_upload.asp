
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
 <!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!--#include file="upfile_class.asp"-->
<%
Server.ScriptTimeOut = 1800
Dim sType, sStyleName
Dim sAllowExt, nAllowSize
nAllowSize = clng(req("allowSize"))
sAllowExt = "HTM"
Dim FRM_jsObject,FRM_allowExt,FRM_filePath,FRM_fileName

Dim sAction
sAction = UCase(Trim(Request.QueryString("action")))


Call DoSave()		' 存文件


 
Sub DoSave()
	Dim oUpload, oFile, sFileExt, sFileName
	' 建立上传对象
	Set oUpload = New upfile_class
	
	' 取得上传数据,限制最大上传
	oUpload.GetData(nAllowSize*1024)
	If oUpload.Err > 0 Then
		Select Case oUpload.Err
		Case 1
			Call OutScript("alert('请选择有效的上传文件！')")
		Case 2
			Call OutScript("alert('你上传的文件总大小超出了最大限制（" & nAllowSize & "KB）！')")
		End Select
		Response.End
	End If
	
	FRM_jsObject  =  oUpload.form("jsObject")
	FRM_allowExt = oUpload.form("allowExt")
	FRM_filePath = oUpload.form("filePath")
	FRM_fileName = oUpload.form("fileName")
	sAllowExt = FRM_allowExt
	Set oFile = oUpload.File("uploadfile")
	sFileExt = UCase(oFile.FileExt)
	Call CheckValidExt(sFileExt)
	
	Dim sRnd
	Randomize
	sRnd = Int(900 * Rnd) + 100
	
	sFileName =  session("userid") & "_" & getTime() & "." & oFile.FileExt 
	updateFileName = application("UPLOAD_PATH") & sFileName
	
	oFile.SaveToFile Server.Mappath(updateFileName)

 
	Set oFile = Nothing
	Set oUpload = Nothing
	
	response.write "<script>" & chr(13)
	response.write "function setFile(fileName){"  & chr(13)
	response.write "opener." & FRM_jsObject & ".value=fileName;" & chr(13)
	response.write "window.close();" & chr(13)
	response.write "}" & chr(13)
	response.write "</script>"& chr(13)
	response.write "<script>alert('上传成功');setFile('"& updateFileName & "')</script>"
 
End Sub

Sub OutScript(str)
	Response.Write "<script language=javascript>" & str & ";history.back(-1);</script>"
End Sub

Sub CheckValidExt(sExt)
	Dim b, i, aExt
	b = False
	aExt = Split(sAllowExt, "|")
	For i = 0 To UBound(aExt)
		If UCase(aExt(i)) = UCase(sExt) Then
			b = True
			Exit For
		End If
	Next
	If b = False Then
		OutScript("alert('提示：\n\n请选择一个有效的文件，\n支持的格式有（"+sAllowExt+"）！')")
		Response.End
	End If
End Sub

 
%>

<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->