<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
	setLog -1,"SYSTEM",session("userlogin") ,"LOGINOUT", session("username") &"/" & session("userlogin") & "  ÍË³öÏµÍ³"
 
	
	Session.Contents.RemoveAll()
	Session.Abandon
%>
<script>
	window.location.href="<%=application("FAILD_LOGIN")%>";
</script>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->