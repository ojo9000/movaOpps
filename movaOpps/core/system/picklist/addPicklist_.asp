<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "pickSys" %>

<%
'	debug(1)
		'Dim Form£º
Dim FLD_object,FLD_selectvalue,FLD_picklistname,FLD_code,FLD_txt,FLD_submit
Dim sortno,keyid
'Get Post Param:
FLD_selectvalue = req("selectvalue")
FLD_picklistname = req("picklistname")
FLD_code = req("code")
FLD_txt = req("txt")


'Get Get Param:


'DataBase Coding....:
 openDATABASE

		sortno = getOneField("select max(sortno)+5 from mova_picklist")
		if sortno=" " or sortno="" or isNull(sortno) then
			sortno = 0
		end if 

Sql = "Select * From mova_picklist Where mova_picklistid is null"
movaRS.open Sql,conn,1,3
movaRS.addnew
'RS seting...:
movaRS("selectvalue")= FLD_selectvalue
movaRS("picklistname")= FLD_picklistname
movaRS("code")= FLD_code
movaRS("txt")= FLD_txt
movaRS("sortno") =cInt(sortno)


movaRS("createdate") = Now
movaRS("createUser") = cint(session("userid"))
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid = movaRS("mova_picklistid")
movaRS.close

closeDatabase
	
gotoUrl "listPicklist.asp?picklistcode=" & FLD_code
%>