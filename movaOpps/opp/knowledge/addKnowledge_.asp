<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->

<%
'Dim Form£º
Dim FLD_object,FLD_category,FLD_title,FLD_content,FLD_is_top
Dim sqlString,keyid
'Get Post Param:
FLD_category = req("category")
FLD_title = req("title")
FLD_content = req("content")
FLD_is_top = req("is_top")
response.write FLD_title

'Get Get Param:


'DataBase Coding....:
sqlString = "Select * From mu_knowledge Where knowledge_id is null"
executeQuery conn,movaRS,sqlString,1,3
movaRS.addnew
'RS seting...:
movaRS("category")= FLD_category
movaRS("title")= FLD_title
movaRS("content")= FLD_content
movaRS("is_top")= FLD_is_top
movaRS("owner") = session("customerNo")
movaRS("archive")="F"

movaRS("createdate") = Now
movaRS("createUser") = cint(session("userid"))
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid = movaRS("knowledge_id")
movaRS.close

gotoURL "knowledge.asp?knowledge_id=" & keyid

%>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->


