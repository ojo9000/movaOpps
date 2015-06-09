<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
sqlString = "select * from MU_OPP20 where opp_no='"&req("no")&"'"
executeQuery conn,movaRS,sqlString,1,1
	if movaRS.bof or movaRS.eof then
		movaRS.close
		response.write  "对不起，该数据不存在"
	else
		'SELECT  field_code + ' = movaRS("' + field_code +'")   ''' + field_name   FROM MU_OBJECT_FIELD WHERE OBJECT_ID=21 and  archive='F' 

v0 = movaRS("v0")   '任务类型
v1 = movaRS("v1")   '处理状态
v2 = movaRS("v2")   '投诉对象     //项目名称
v4 = movaRS("v4")   '受理时间
v5 = movaRS("v5")   '房产2
v6 = movaRS("v6")   '任务级别
v7 = movaRS("v7")   '处理期限
v8 = movaRS("v8")   '业主(客户)
d1 = movaRS("d1")   '受理人
va = movaRS("va")   '答复期限
za = movaRS("za")   '问题描述
ve = movaRS("ve")   '客户反应
vg = movaRS("vg")   '服务请求人
vh = movaRS("vh")   '请求来源
d2 = movaRS("d2")   '责任人
vj = movaRS("vj")   '承建商
vk = movaRS("vk")   '问题分类
vl = movaRS("vl")   '关联任务编码
vm = movaRS("vm")   '关联类型
v3 = movaRS("v3")   '*房产
v9 = movaRS("v9")   '*投诉对象
vb = movaRS("vb")   '*业务（客户）
vc = movaRS("vc")   '*问题分类
vd = movaRS("vd")   '*受理人
vf = "" 'movaRS("vf")   '*责任人
vi = movaRS("vi")   '*承建商
vn = movaRS("vn")   '验房计划
vo = movaRS("vo")   '处理方
vp = movaRS("vp")   '进展状态
vr = movaRS("vr")   '任务主题
vs = movaRS("vs")   '联系电话
no=movaRS("opp_no") '编号


if  vh="交付" then 
	vh_1=" "
	vh_2="V"
else
	vh_1="V"
	vh_2=" "
end if 



v4 = movaRS("v4")   '受理时间
v7 = movaRS("v7")   '处理期限


	end if 
		
		



%><!DOCTYPE html>
<head></head> 
<BODY>  
<object id="LODOP" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=0 height=0> 
	<embed id="LODOP_EM" type="application/x-print-lodop" width=0 height=0 pluginspage="install_lodop32.exe"></embed>
</object> 

 
<script>
 
		<%
		'受理时间  带标号1 的 
		 YYYY_1 = getDateYYYY(v4)
		 MM_1 = getDateMM(v4)
		 DD_1 = getDateDD(v4)
		 HH_1 = getDateHH(v4)
		 SS_1 = getDateSS(v4)
		 
		
		'派单时间 带标号2 的
		
		YYYY_2 = getDateYYYY(formatdate(Now,1))
		 MM_2 = getDateMM(formatdate(Now,1))
		 DD_2 = getDateDD(formatdate(Now,1))
		 HH_2 = getDateHH(formatdate(Now,1))
		 SS_2 = getDateSS(formatdate(Now,1))
		 
		'规定完成时间  带标号3 的
		YYYY_3 = getDateYYYY(v7)
		 MM_3 = getDateMM(v7)
		 DD_3 = getDateDD(v7)
		 HH_3 = getDateHH(v7)
		 SS_3 = getDateSS(v7)
		
		printJS =	ReadText_CharSet(	application("PRINT_TEMPLATE"),"UTF-16" )
		
		printJS = replace(printJS,"项目名称",v2 )
		printJS = replace(printJS,"项目编号",no )
		printJS = replace(printJS,"地点房号",v3 )
		printJS = replace(printJS,"收文单位",vo )
		printJS = replace(printJS,"责任单位",vi )
		printJS = replace(printJS,"YYYY_3",YYYY_3 )
		printJS = replace(printJS,"MM_3",MM_3 )
		printJS = replace(printJS,"DD_3",DD_3 )
		printJS = replace(printJS,"HH_3",HH_3 )
		printJS = replace(printJS,"SS_3",SS_3 )
		
		
		
		printJS = replace(printJS,"YYYY_1",YYYY_1 )
		printJS = replace(printJS,"MM_1",MM_1 )
		printJS = replace(printJS,"DD_1",DD_1 )
		printJS = replace(printJS,"HH_1",HH_1 )
		printJS = replace(printJS,"SS_1",SS_1 )
		
		
		
		printJS = replace(printJS,"YYYY_2",YYYY_2 )
		printJS = replace(printJS,"MM_2",MM_2 )
		printJS = replace(printJS,"DD_2",DD_2 )
		printJS = replace(printJS,"HH_2",HH_2 )
		printJS = replace(printJS,"SS_2",SS_2 )




		printJS = replace(printJS,"维修内容",za )
		printJS = replace(printJS,"派单人",vd )
		printJS = replace(printJS,"接单人",vf )
		
		printJS = replace(printJS,"VH2",vh_2 )  '是否交付
		printJS = replace(printJS,"VH1",vh_1 )
		
		
		
		response.write printJS
		%> 
		LODOP.PREVIEWB();
 
</script> 
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
 


 <%
 
 function getDateYYYY(dateString)
	getDateYYYY = Mid(   dateString,1,4)
end function 


function getDateMM(dateString)
 getDateMM = Mid(   dateString,6,2)
end function 


function getDateDD(dateString)
 getDateDD = Mid(   dateString,9,2)
end function 


function getDateHH(dateString)
 getDateHH = Mid(   dateString,12,2)
end function 
 
function getDateSS(dateString)
 getDateSS = Mid(   dateString,15,2)
end function 


%>