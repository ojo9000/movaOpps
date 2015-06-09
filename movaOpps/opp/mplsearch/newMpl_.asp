<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
'debug 1

'Dim Form：
Dim FLD_del,FLD_object,FLD_object_name,FLD_search_name,FLD_abbr,FLD_object_code,FLD_mu_mpl_search_id
Dim FLD_archive,FLD_allow_download,FLD_auto_search
'Get Post Param:
FLD_object_code = req("object_code")
FLD_search_name = req("search_name")
FLD_abbr = req("abbr")
FLD_mu_mpl_search_id= req("mu_mpl_search_id")
FLD_archive=req("archive")
FLD_allow_download = req("allow_download")
FLD_auto_search = req("auto_search")

FLD_search_no = cStr(getTime())
if req("searchNo")<>"" then 
FLD_search_no = req("searchNo")
end if 
response.write FLD_search_no
'Get Get Param:

Dim sqlString
'DataBase Coding....:
sqlString = "Select * From mu_mpl_search Where mu_mpl_search_id = " & FLD_mu_mpl_search_id
executeQuery conn,movaRS,sqlString,1,3
if movaRs.eof or movaRS.bof then
	movaRS.addnew
	FLD_allow_download = "F"
	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))    
	  
  
end if 

'RS seting...:
movaRS("archive")=FLD_archive
movaRS("object_code")= FLD_object_code
movaRS("search_name")= FLD_search_name
movaRS("abbr")= FLD_abbr
movaRS("owner")= session("customerNo")
movaRS("auto_search")= FLD_auto_search
movaRS("team") = 0
movaRS("is_function")="F"
movaRS("allow_download") = FLD_allow_download
movaRS("search_no") = FLD_search_no


Dim keyid
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid = movaRS("mu_mpl_search_id")
movaRS.close

Dim object_id,object_name,Object_rootFunction,updateMPLSQL
'同步权限点
object_id = getObjectPropertyByCode(FLD_object_code,"object_id")
object_name = getObjectPropertyByCode(FLD_object_code,"object_name")
Object_rootFunction = getOnefield("select mova_functionid from mova_function where parent_id=0 and  code='" & FLD_object_code & "'")

'如果是删除
if FLD_archive="T" then 
	updateMPLSQL = "delete mova_function where code='" & getMplSec(object_id,keyid,"dy_mpl") & "' or code='" & getMplSec(object_id,keyid,"dy_mpl_d") & "'"
	executeUpdate conn,updateMPLSQL
	'response.write updateMPLSQL
else
	if Object_rootFunction<>"" then 
		updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getMplSec(object_id,keyid,"dy_mpl") & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		'response.write updateMPLSQL
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =keyid
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if 
		movaRS("parent_Id") = cint(Object_rootFunction)
		movaRS("category") = FLD_object_code
		movaRS("categoryName") = object_name
		movaRS("code") = getMplSec(object_id,keyid,"dy_mpl")
		movaRS("functionName") = FLD_abbr
		
		movaRS("function_type") = "URL"
		movaRS("url") = "/movaOpps/opp/mpl.asp?isStart=0&object_id="& object_id &"&id=" & keyid
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		movaRS.close
		
		updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getMplSec(object_id,keyid,"dy_mpl_d") & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =keyid
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if
		movaRS("status") = FLD_allow_download
		'response.write FLD_allow_download & "<BR>"
		movaRS("parent_Id") = cint(Object_rootFunction)
		movaRS("category") = FLD_object_code
		movaRS("categoryName") = object_name
		movaRS("code") = getMplSec(object_id,keyid,"dy_mpl_d")
		movaRS("functionName") = FLD_abbr & ".下载"
		
		movaRS("function_type") = ""
		movaRS("url") = ""
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		movaRS.close
		
	end if 
end if
'getMplSec
'数据**组合查询			Dy_{objectID}_Mpl_{ID}
'数据**组合查询下载	Dy_{objectID}_Mpl_{ID}_D

'如果是新增或修改

'response.end
  
if FLD_archive= "T" then 
	gotourl "./?isStart=1"
else
	gotourl "modifyMpl.asp?id=" & keyid
end if 


%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
