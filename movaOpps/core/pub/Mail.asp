<%
Dim SendMail
Dim MailServerUserName,MailServerPassword,smtpServer,FromEmail,FromName 


'***************************************** 
'邮件发送服务器设置：
MailServerUserName	= application("MAIL_USER")
MailServerPassword 	= application("MAIL_USER_PASS")
smtpServer			=application("MAIL_SMTP") 
FromEmail			=application("MAIL_SENDER") ' 必须与MailServerUserName保持一致
FromName			=application("MAIL_SENDER_NAME")

Sub Jmail(Email,Topic,Mailbody)
 	'On Error Resume Next
 	Dim JMail
 	Set JMail = Server.CreateObject("JMail.Message")
 	JMail.silent=true
 	JMail.Logging = True
 	JMail.Charset = "gb2312"
 	JMail.MailServerUserName = MailServerUserName '您的邮件服务器登录名
 	JMail.MailServerPassword = MailServerPassword '登录密码
 	JMail.ContentType = "text/html"
 	JMail.Priority = 1
 	JMail.From = FromEmail
 	JMail.FromName = FromName
 	JMail.AddRecipient Email
 	JMail.Subject = Topic
 	JMail.Body = Mailbody
 	JMail.Send (smtpServer)
 	Set JMail = Nothing
	SendMail = "OK"
	'If Err Then SendMail = "False"
End Sub
	
Sub Cdonts(Email,Topic,Mailbody)
	'On Error Resume Next
	Dim ObjCDOMail
	Set ObjCDOMail = Server.CreateObject("CDONTS.NewMail")
	ObjCDOMail.From = FromEmail
	ObjCDOMail.To = Email
	ObjCDOMail.Subject = Topic
	ObjCDOMail.BodyFormat = 0 
	ObjCDOMail.MailFormat = 0 
	ObjCDOMail.Body = Mailbody
	ObjCDOMail.Send
	Set ObjCDOMail = Nothing
	SendMail = "OK"
	'If Err Then SendMail = "False"
End Sub

Sub Aspemail(Email,Topic,Mailbody)
	On Error Resume Next
	Dim Mailer
	Set Mailer = Server.CreateObject("Persits.MailSender")
	Mailer.Charset = "gb2312"
	Mailer.IsHTML = True
	Mailer.username = MailServerUserName	'服务器上有效的用户名
	Mailer.password = MailServerPassword	'服务器上有效的密码
	Mailer.Priority = 1
	Mailer.Host = smtpServer
	Mailer.Port = 25 ' 该项可选.端口25是默认值
	Mailer.From = FromEmail
	Mailer.FromName = FromName' 该项可选
	Mailer.AddAddress Email,Email
	Mailer.Subject = Topic
	Mailer.Body = Mailbody
	Mailer.Send
	SendMail = "OK"
	If Err Then SendMail = "False"
End Sub


 

sub cdoMail(Email,topic,mailBody)
'On Error Resume Next
Set objMail = Server.CreateObject("CDO.Message") 
Set objConfig = Server.CreateObject ("CDO.Configuration") 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = true
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = smtpServer
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusername") = MailServerUserName
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendpassword") = MailServerPassword
objConfig.Fields("http://schemas.microsoft.com/cdo/configuration/languagecode")  = &H0804
objConfig.Fields.Update() 


Set objMail.Configuration = objConfig


objMail.Subject =topic
objMail.From =   MailServerUserName
objMail.To = Email
objMail.HTMLBody = "<meta http-equiv='Content-Type' content='text/html; charset=uft-8' />" &  mailBody
objMail.Send 
SendMail = "OK"
	If Err Then SendMail = "False" 
end Sub 
'MailServerUserName:smtp.vip.163.com
'MailServerPassword:925@vip.163.com
'smtpServer:kmuser
'FromEmail:925@vip.163.com
'FromName:ojo

%>