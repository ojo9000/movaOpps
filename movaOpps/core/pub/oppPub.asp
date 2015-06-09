<%

'��ȡ������ĵ�������
Function getTeamList(curGroup)
	Dim groupSql 
	groupSql = "select team_id as selectvalue,team_name as txt from mova_team  order by team_name"
	getTeamList = cachePicklist(groupSql,curGroup)
End Function

'��ȡ��ɫID
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

'��ȡ��ɫCODE
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


'�ж��Ƿ��ǹ���Ա
Function isAdministrator()  
	if session("userRole")="ADMIN"  then 
		isAdministrator = true
	else
		isAdministrator=false
	end if 
end Function

'�ж��Ƿ��ǳ�������Ա
Function isSuperAdministrator()
		isSuperAdministrator= session("superadmin")
end Function

'��ȡ��ϲ�ѯ��Ȩ�޴���
Function getMplSec(pObjectID,pMplID,secStr)
 
	Dim tmpSec
	tmpSec = ""
	if Ucase(secStr) = "DY_MPL" then 
		tmpSec = "Dy_"&pObjectID& "_Mpl"& pMplID
	end if 
	if Ucase(secStr) = "DY_MPL_D" then 
		tmpSec = "Dy_"&pObjectID& "_Mpl"& pMplID & "_D"
	end if 
	'����**��ϲ�ѯ			Dy_{objectID}_Mpl_{ID}
	'����**��ϲ�ѯ����	Dy_{objectID}_Mpl_{ID}_D
	getMplSec = tmpSec
end Function 


'��ȡ��ϲ�ѯ��Ȩ�޴���
Function getMplFieldRule(pObjectID,pStatusValue )
	getMplFieldRule =  "RL_" & pObjectID & "_" & pStatusValue
end Function 


'��ȡģ��ҵ�����ݵ�Ȩ�޴���
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
			
'����**��ѯ				Dy_{objectID}_Search
'����**��ӡ				Dy_{objectID}_Print
'����**�༭				Dy_{objectID}_Edit
'����**ɾ��				Dy_{objectID}_Del
'����**����				Dy_{objectID}_New
'����**��������		Dy_{objectID}_Batch
	getObjectOppSec = tmpSec
end Function 

'��ȡ��Ҳ˵�Ȩ�޲˵�
function getExtMenu_sec()
	getExtMenu_sec = "extMenu_" & session("customerNo")
end function 

'��ȡ��Ҳ˵�Ȩ�޵�
function getExtMenu_item_sec(pFunctionID)
	getExtMenu_item_sec = "extMenu_" & session("customerNo") &  "_" & pFunctionID
end function 

 
%>