
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


Call DoSave()		' ���ļ�


 
Sub DoSave()
	Dim oUpload, oFile, sFileExt, sFileName
	' �����ϴ�����
	Set oUpload = New upfile_class
	
	' ȡ���ϴ�����,��������ϴ�
	oUpload.GetData(nAllowSize*1024)
	If oUpload.Err > 0 Then
		Select Case oUpload.Err
		Case 1
			Call OutScript("alert('��ѡ����Ч���ϴ��ļ���')")
		Case 2
			Call OutScript("alert('���ϴ����ļ��ܴ�С������������ƣ�" & nAllowSize & "KB����')")
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
	response.write "<script>alert('�ϴ��ɹ�');setFile('"& updateFileName & "')</script>"
 
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
		OutScript("alert('��ʾ��\n\n��ѡ��һ����Ч���ļ���\n֧�ֵĸ�ʽ�У�"+sAllowExt+"����')")
		Response.End
	End If
End Sub

 
%>

<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->