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
 

topic = "���ã�����һ��Ͷ��������Ҫ����"
mailBody = "�밴�������ӽ��봦��<a href='http://114.215.130.58:8888/movaOpps'>http://114.215.130.58:8888/movaOpps</a> <BR>"
mailBody =mailBody & "�����ʻ�Ϊ��˾��������ǰ׺��<br>�����Ĺ�˾����ΪWangWei@topchain.com.cn��ϵͳ�˻���Ϊ��WangWei <br> ��¼����Ĭ��Ϊ 111111����¼ϵͳ����������롣"
response.write "���ͳɹ�"
cdoMail email,Topic,Mailbody 
sqlString = "update MU_OPP20 set v1='�ѷ���'  where opp_no='"&req("no") &"' and v1='δ����' " 
executeUpdate conn,sqlString
 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->




