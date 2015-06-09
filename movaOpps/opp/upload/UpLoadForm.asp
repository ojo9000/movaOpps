
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
 <!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!--#include file="upfile_class.asp"-->
<%
Server.ScriptTimeOut = 1800
Dim sType, sStyleName
Dim sAllowExt, nAllowSize
nAllowSize = 1000
sAllowExt = "HTM"
Dim yearXls,monthXls

 yearXls=""
 monthXls=""


Dim sAction
sAction = UCase(Trim(Request.QueryString("action")))


Call DoSave()		' 存文件


 
Sub DoSave()
	Dim oUpload, oFile, sFileExt, sFileName
	' 建立上传对象
	Set oUpload = New upfile_class
	
	' 取得上传数据,限制最大上传
	oUpload.GetData(nAllowSize*1024)
	session("file_object_id")  =  oUpload.form("object_id")
	If oUpload.Err > 0 Then
		Select Case oUpload.Err
		Case 1
			Call OutScript("alert('请选择有效的上传文件！')")
		Case 2
			Call OutScript("alert('你上传的文件总大小超出了最大限制（" & nAllowSize & "KB）！')")
		End Select
		Response.End
	End If

	Set oFile = oUpload.File("uploadfile")
	sFileExt = UCase(oFile.FileExt)
	Call CheckValidExt(sFileExt)
	
	Dim sRnd
	Randomize
	sRnd = Int(900 * Rnd) + 100
	sFileName = year(date) & right(("0"&month(date)),2) & right(("0"&day(date)),2) & session("customerNo") & "_" & session("file_object_id")& "." & sFileExt
	updateFileName = "/movaOpps/opp/report/template/"& sFileName
	oFile.SaveToFile Server.Mappath(updateFileName)

 
	Set oFile = Nothing
	Set oUpload = Nothing
	call HtmEnd("文件上传成功!",session("file_object_id"),sFileName)
 
End Sub

Sub OutScript(str)
	Response.Write "<script language=javascript>" & str & ";window.location.href='/movaOpps/opp/object/objectAdv.asp?id=" & session("file_object_id") & "'</script>"
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

'上传文件成功
sub HtmEnd(Msg,jsObj,uploadFilename)
 set upload=nothing
 updateSQl = "update mu_object set print_template = '" & uploadFilename & "' where object_id = " & jsObj  & " and owner='" & session("customerNo") & "'"
 executeUpdate conn,updateSql
 gotoURL "/movaOpps/opp/object/objectAdv.asp?id=" & jsObj
end sub
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->