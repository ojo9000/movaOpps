<%

'获取所有组的的下拉框
Function getTeamList(curGroup)
	Dim groupSql 
	groupSql = "select team_id as selectvalue,team_name as txt from mova_team  order by team_name"
	getTeamList = cachePicklist(groupSql,curGroup)
End Function

'获取角色ID
Function getRolePicklist(curRole)
	Dim tmpSQL
	
	if  isAdministrator() then 
		tmpSQL="select mova_roleid as selectvalue,rolename as txt from mova_Role order by rolename"
	else
		tmpSQL = "select  re.reuse_Role_id as selectValue,r.rolename as txt "
		tmpSQL = tmpSQL & " from mova_role r,mova_role_reuse re "
		tmpSQL = tmpSQL & " where r.mova_roleid=re.reuse_role_id "
		tmpSQL = tmpSQL & " and re.mova_roleid=" & session("userRoleid")
		tmpSQL = tmpSQL & " order by r.rolename"
	end if
 
	getRolePicklist = picklist (tmpSQL,curRole) 
	
End Function 

'获取角色CODE
Function getRoleCodePicklist(curRole)
	Dim tmpSQL
	
	if  isAdministrator() then 
		tmpSQL="select rolecode as selectvalue,rolename as txt from mova_Role order by rolename"
	else
		tmpSQL = "select  r.rolecode as selectValue,r.rolename as txt "
		tmpSQL = tmpSQL & " from mova_role r,mova_role_reuse re "
		tmpSQL = tmpSQL & " where r.mova_roleid=re.reuse_role_id "
		tmpSQL = tmpSQL & " and re.mova_roleid=" & session("userRoleid")
		tmpSQL = tmpSQL & " order by r.rolename"
	end if
 
	getRolePicklist = picklist (tmpSQL,curRole) 
	
End Function 

Function getRoleCodePicklist(curRole)
	Dim tmpSQL
	
	if  isAdministrator() then 
		tmpSQL="select rolecode as selectvalue,rolename as txt from mova_Role order by rolename"
	else
		tmpSQL ="select r.mova_roleid as selectvalue,r.rolename as txt from mova_Role r,mova_role_reuse re "
		tmpSQL = tmpSQL & " where r.mova_roleid=re.mova_roleid "
		tmpSQL = tmpSQL & " where r.mova_roleid=re.mova_roleid and r.mova_roleid=" & session("userRoleid")
		tmpSQL = tmpSQL & " rolecode<>'ADMIN' order by rolename"
	end if
	getRoleCodePicklist = picklist (tmpSQL,curRole) 
	
End Function 


'判断是否是管理员
Function isAdministrator()  
	if session("userRole")="ADMIN"  then 
		isAdministrator = true
	else
		isAdministrator=false
	end if 
end Function

'判断是否是超级管理员
Function isSuperAdministrator()
		isSuperAdministrator= session("superadmin")
end Function

'获取组合查询的权限代码
Function getMplSec(pObjectID,pMplID,secStr)
 
	Dim tmpSec
	tmpSec = ""
	if Ucase(secStr) = "DY_MPL" then 
		tmpSec = "Dy_"&pObjectID& "_Mpl"& pMplID
	end if 
	if Ucase(secStr) = "DY_MPL_D" then 
		tmpSec = "Dy_"&pObjectID& "_Mpl"& pMplID & "_D"
	end if 
	'数据**组合查询			Dy_{objectID}_Mpl_{ID}
	'数据**组合查询下载	Dy_{objectID}_Mpl_{ID}_D
	getMplSec = tmpSec
end Function 


'获取组合查询的权限代码
Function getMplFieldRule(pObjectID,pStatusValue )
	getMplFieldRule =  "RL_" & pObjectID & "_" & pStatusValue
end Function 


'获取模型业务数据的权限代码
Function getObjectOppSec( pObjectID,secStr)
	dim tmpSec 
	tmpSec = ""
	if Ucase(secStr) = "DY_SEARCH" then 
		tmpSec = "Dy_"&pObjectID& "_Search"
	end if 
	if Ucase(secStr) = "DY_PRINT" then 
		tmpSec = "Dy_" & pObjectID & "_Print"
	end if
	
	if Ucase(secStr) = "DY_EDIT" then 
		tmpSec = "Dy_" & pObjectID & "_Edit"
	end if
	
	if Ucase(secStr) = "DY_DEL" then 
		tmpSec = "Dy_" & pObjectID & "_Del"
	end if	

	if Ucase(secStr) = "DY_NEW" then 
		tmpSec = "Dy_" & pObjectID & "_New"
	end if	

	if Ucase(secStr) = "DY_BATCH" then 
		tmpSec = "Dy_" & pObjectID & "_Batch"
	end if
	
	if Ucase(secStr) = "DY_LOG" then 
		tmpSec = "Dy_" & pObjectID & "_LOG"
	end if
			
'数据**查询				Dy_{objectID}_Search
'数据**打印				Dy_{objectID}_Print
'数据**编辑				Dy_{objectID}_Edit
'数据**删除				Dy_{objectID}_Del
'数据**新增				Dy_{objectID}_New
'数据**批量操作		Dy_{objectID}_Batch
	getObjectOppSec = tmpSec
end Function 

'获取外挂菜单权限菜单
function getExtMenu_sec()
	getExtMenu_sec = "extMenu_" & session("customerNo")
end function 

'获取外挂菜单权限点
function getExtMenu_item_sec(pFunctionID)
	getExtMenu_item_sec = "extMenu_" & session("customerNo") &  "_" & pFunctionID
end function 

 
%>