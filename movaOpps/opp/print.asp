<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<%
	'Response.ContentType="application/msword"

	Dim printTemplate,FRM_object_name,FRM_table_name,keyName,objectNo
	Dim objectId ,pId
	
	FRM_object_name = ""
	FRM_table_name = ""
	keyName = ""
	objectNo = ""
	printTemplate = ""
	
	objectId = req("objectId")
	pId = req("id")
 	
	'获取当前表单的表名
	sqlString = "select * from mu_object where owner='" & session("customerNo") & "'"
	sqlString = sqlString + " and archive='F' and is_publish='T' and is_discard='F' and object_id="& objectId 
	executeQuery conn,movaRS,sqlString,1,1
	if movaRS.bof or movaRS.eof then
		movaRS.close
		response.write  "对不起，不存在这个业务模型"
		response.end 
	else
		'Dim Form_Frm
		FRM_object_name = movaRS("object_name")
		FRM_table_name = movaRS("table_name")
 		printTemplate = movaRS("print_template")
		keyName = getKeyNameByTable(FRM_table_name)
		objectNo = getNoNameByTable(FRM_table_name)
	  FRM_is_single = movaRS("is_single")
 	end if

	if printTemplate="" then 
		response.write "没有模板"
	else
		'获取业务数据
		if FRM_is_single="T" then 
			sqlString = "select * from " & FRM_table_name & " where archive='F' and owner='" & session("customerNo") & "' and "& keyName &"="& pId 
		else
			sqlString = "select c.main_phone as v_main_phone,c.customer as v_customer,"   
			sqlString = sqlString & " c.va as v_va ,"
			sqlString = sqlString & " c.vb as v_vb ,"
			sqlString = sqlString & " c.vc as v_vc ,"
			sqlString = sqlString & " c.vd as v_vd ,"
			sqlString = sqlString & " c.ve as v_ve ,"
			sqlString = sqlString & " c.vf as v_vf ,"
			sqlString = sqlString & " c.vg as v_vg ,"
			sqlString = sqlString & " c.vh as v_vh ,"
			sqlString = sqlString & " c.vi as v_vi ,"
			sqlString = sqlString & " c.vj as v_vj ,"
			sqlString = sqlString & " c.vk as v_vk ,"
			sqlString = sqlString & " c.vl as v_vl ,"
			sqlString = sqlString & " c.vm as v_vm ,"
			sqlString = sqlString & " c.vn as v_vn ,"
			sqlString = sqlString & " c.vo as v_vo ,"
			sqlString = sqlString & " c.vp as v_vp ,"
			sqlString = sqlString & " c.vq as v_vq ,"
			sqlString = sqlString & " c.vr as v_vr ,"
			sqlString = sqlString & " c.vs as v_vs ,"
			sqlString = sqlString & " c.vt as v_vt ,"
			sqlString = sqlString & " c.vu as v_vu ,"
			sqlString = sqlString & " c.vv as v_vv ,"
			sqlString = sqlString & " c.vw as v_vw ,"
			sqlString = sqlString & " c.vx as v_vx ,"
			sqlString = sqlString & " c.vy as v_vy ,"
			sqlString = sqlString & " c.vz as v_vz ,"
			sqlString = sqlString & " c.vz as v_za ,"
			sqlString = sqlString & " c.vz as v_zb ,"
			sqlString = sqlString & " c.vz as v_zc ,"
			sqlString = sqlString & " c.vz as v_zd ,"
			sqlString = sqlString & " c.vz as v_ze ,"
			sqlString = sqlString & " c.vz as v_zf ,"
			sqlString = sqlString & " c.vz as v_zg ,"
			sqlString = sqlString & " c.vz as v_zh ,"
			
			sqlString = sqlString & "o.* from mu_customer c ," & FRM_table_name & " o where c.customer_id=o.customer_id "
			sqlString = sqlString & " and o.archive='F' and o.owner='" & session("customerNo") & "' and o."& keyName &"="& pId
		end if
 		'response.write sqlString & "<br>"
 		
 		
		executeQuery conn,movaRS,sqlString,1,1
		
		if movaRS.bof or movaRS.eof then
			movaRS.close
			response.write "没有这个记录"
			response.end
		end if
		
		Dim fso,htmlwrite
		Dim strTitle,strContent,strOut
 
  	call getFieldArray(cstr(objectId))
  	
		Set fso=Server.CreateObject("Scripting.FileSystemObject")
		
		Set htmlwrite=fso.OpenTextFile(Server.MapPath("/movaOpps/opp/report/template/" & printTemplate))
		strOut=htmlwrite.ReadAll
		htmlwrite.close
		Dim curField
		for k=1 to 60 
			if resultArray(k,2)="" then exit For
			if inStr(resultArray(k,2),"~") then 
				curField = "V_" & resultArray(k,1)
			else
				curField = resultArray(k,1)
			end if 
			'response.write curField & " : " &  resultArray(k,1) & " : " & resultArray(k,2) & "<BR>"
			strOut = replace(strOut,"{" & resultArray(k,2) & "}",movaRS(curField) & "")
		Next
		
		'开始替换固定的标签 
		' {^CURRENTTIME}  代表当前时间
		
		strOut = replace(strOut,"{^CURRENTTIME}",getDate(0,"datetime"))
		
		if cstr(objectId) = cstr(session("defObjectId")) then 
			strOut = replace(strOut,"{^CUSTOMER}",movaRS("customer"))
			strOut = replace(strOut,"{^MAINPHONE}",movaRS("main_phone"))
			strOut = replace(strOut,"{^NO}",movaRS("customer_no"))
		else
			strOut = replace(strOut,"{^CUSTOMER}",movaRS("v_customer"))
			strOut = replace(strOut,"{^MAINPHONE}",movaRS("v_main_phone"))
			strOut = replace(strOut,"{^NO}",movaRS("opp_no"))
		end if 
		strOut = replace(strOut,"{^CREATEDATE}",movaRS("createdate"))
		strOut = replace(strOut,"{^MODIFYDATE}",movaRS("modifydate"))
		response.write strOut
		
	end if
	
 

%>
<OBJECT id=wb height=0 width=0 classid=CLSID:8856F961-340A-11D0-A96B-00C04FD705A2 name=wb></OBJECT> 
<script>　wb.execwb(7,1);  </script>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->