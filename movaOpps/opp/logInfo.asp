<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHeadTab.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" --> 
<DIV class=cn_col01>

<%
Dim FRM_object_code,FRM_opp_id
FRM_object_code = req("objectCode")
FRM_opp_id = req("oppId")
  showsetLog FRM_object_code,FRM_opp_id 
  
   %>
</div>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
