<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<%
opendatabase

 
executeUpdate conn,"SET IDENTITY_INSERT mova_system.dbo.mova_role ON" 
executeUpdate conn,"INSERT INTO mova_role  (mova_roleid,rolename,rolecode) VALUES(34333,'aaa','bbb')" 
executeUpdate conn,"SET IDENTITY_INSERT mova_system.dbo.mova_role OFF" 
 
closeDatabase 
%>

