
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


Call DoSave()		' ���ļ�


 
Sub DoSave()
	Dim oUpload, oFile, sFileExt, sFileName
	' �����ϴ�����
	Set oUpload = New upfile_class
	
	' ȡ���ϴ�����,��������ϴ�
	oUpload.GetData(nAllowSize*1024)
	session("file_object_id")  =  oUpload.form("object_id")
	If oUpload.Err > 0 Then
		Select Case oUpload.Err
		Case 1
			Call OutScript("alert('��ѡ����Ч���ϴ��ļ���')")
		Case 2
			Call OutScript("alert('���ϴ����ļ��ܴ�С������������ƣ�" & nAllowSize & "KB����')")
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
	call HtmEnd("�ļ��ϴ��ɹ�!",session("file_object_id"),sFileName)
 
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
		OutScript("alert('��ʾ��\n\n��ѡ��һ����Ч���ļ���\n֧�ֵĸ�ʽ�У�"+sAllowExt+"����')")
		Response.End
	End If
End Sub

'�ϴ��ļ��ɹ�
sub HtmEnd(Msg,jsObj,uploadFilename)
 set upload=nothing
 updateSQl = "update mu_object set print_template = '" & uploadFilename & "' where object_id = " & jsObj  & " and owner='" & session("customerNo") & "'"
 executeUpdate conn,updateSql
 gotoURL "/movaOpps/opp/object/objectAdv.asp?id=" & jsObj
end sub
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->