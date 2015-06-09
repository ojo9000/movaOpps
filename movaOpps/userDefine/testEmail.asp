<%
Set objMail = Server.CreateObject("CDO.Message") 
Set objConfig = Server.CreateObject ("CDO.Configuration") 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = true
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.vip.163.com" 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusername") = "925@vip.163.com" 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "kmuser" 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/languagecode") = "0x0804" 
objConfig.Fields.Update() 
Set objMail.Configuration = objConfig
objMail.Subject = "Mail Subject" 
objMail.From = chr(34) & "姓名" & chr(34) & "925@vip.163.com" 
objMail.To = "134418@QQ.com" 
objMail.HTMLBody = "Mail Body" 
'objMail.AddAttachment(http://xxxxxx/xxxx.xxx) '或者其他任何正确的url,包括http,ftp,file等等。
objMail.Send 
Response.Write "邮件发送成功！"
%>