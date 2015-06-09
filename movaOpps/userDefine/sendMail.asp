<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/mail.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
dim email,topic,mailbody
email= getOnefield("select mail from mova_user where mova_userid=" & req("user"))
username= getOnefield("select username from mova_user where mova_userid=" & req("user"))
 

topic = "您好！您有一条投诉任务需要处理"
mailBody = "请按以下链接进入处理：<a href='http://114.215.130.58:8888/movaOpps'>http://114.215.130.58:8888/movaOpps</a> <BR>"
mailBody =mailBody & "您的帐户为公司邮箱名称前缀。<br>如您的公司邮箱为WangWei@topchain.com.cn，系统账户即为：WangWei <br> 登录密码默认为 111111，登录系统后建议更改密码。"
response.write "发送成功"
cdoMail email,Topic,Mailbody 
sqlString = "update MU_OPP20 set v1='已发送'  where opp_no='"&req("no") &"' and v1='未发送' " 
executeUpdate conn,sqlString
 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->




