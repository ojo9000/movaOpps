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
		response.write  "�Բ��𣬸����ݲ�����"
	else
		'SELECT  field_code + ' = movaRS("' + field_code +'")   ''' + field_name   FROM MU_OBJECT_FIELD WHERE OBJECT_ID=21 and  archive='F' 

v0 = movaRS("v0")   '��������
v1 = movaRS("v1")   '����״̬
v2 = movaRS("v2")   'Ͷ�߶���     //��Ŀ����
v4 = movaRS("v4")   '����ʱ��
v5 = movaRS("v5")   '����2
v6 = movaRS("v6")   '���񼶱�
v7 = movaRS("v7")   '��������
v8 = movaRS("v8")   'ҵ��(�ͻ�)
d1 = movaRS("d1")   '������
va = movaRS("va")   '������
za = movaRS("za")   '��������
ve = movaRS("ve")   '�ͻ���Ӧ
vg = movaRS("vg")   '����������
vh = movaRS("vh")   '������Դ
d2 = movaRS("d2")   '������
vj = movaRS("vj")   '�н���
vk = movaRS("vk")   '�������
vl = movaRS("vl")   '�����������
vm = movaRS("vm")   '��������
v3 = movaRS("v3")   '*����
v9 = movaRS("v9")   '*Ͷ�߶���
vb = movaRS("vb")   '*ҵ�񣨿ͻ���
vc = movaRS("vc")   '*�������
vd = movaRS("vd")   '*������
vf = "" 'movaRS("vf")   '*������
vi = movaRS("vi")   '*�н���
vn = movaRS("vn")   '�鷿�ƻ�
vo = movaRS("vo")   '����
vp = movaRS("vp")   '��չ״̬
vr = movaRS("vr")   '��������
vs = movaRS("vs")   '��ϵ�绰
no=movaRS("opp_no") '���


if  vh="����" then 
	vh_1=" "
	vh_2="V"
else
	vh_1="V"
	vh_2=" "
end if 



v4 = movaRS("v4")   '����ʱ��
v7 = movaRS("v7")   '��������


	end if 
		
		



%><!DOCTYPE html>
<head></head> 
<BODY>  
<object id="LODOP" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=0 height=0> 
	<embed id="LODOP_EM" type="application/x-print-lodop" width=0 height=0 pluginspage="install_lodop32.exe"></embed>
</object> 

 
<script>
 
		<%
		'����ʱ��  �����1 �� 
		 YYYY_1 = getDateYYYY(v4)
		 MM_1 = getDateMM(v4)
		 DD_1 = getDateDD(v4)
		 HH_1 = getDateHH(v4)
		 SS_1 = getDateSS(v4)
		 
		
		'�ɵ�ʱ�� �����2 ��
		
		YYYY_2 = getDateYYYY(formatdate(Now,1))
		 MM_2 = getDateMM(formatdate(Now,1))
		 DD_2 = getDateDD(formatdate(Now,1))
		 HH_2 = getDateHH(formatdate(Now,1))
		 SS_2 = getDateSS(formatdate(Now,1))
		 
		'�涨���ʱ��  �����3 ��
		YYYY_3 = getDateYYYY(v7)
		 MM_3 = getDateMM(v7)
		 DD_3 = getDateDD(v7)
		 HH_3 = getDateHH(v7)
		 SS_3 = getDateSS(v7)
		
		printJS =	ReadText_CharSet(	application("PRINT_TEMPLATE"),"UTF-16" )
		
		printJS = replace(printJS,"��Ŀ����",v2 )
		printJS = replace(printJS,"��Ŀ���",no )
		printJS = replace(printJS,"�ص㷿��",v3 )
		printJS = replace(printJS,"���ĵ�λ",vo )
		printJS = replace(printJS,"���ε�λ",vi )
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




		printJS = replace(printJS,"ά������",za )
		printJS = replace(printJS,"�ɵ���",vd )
		printJS = replace(printJS,"�ӵ���",vf )
		
		printJS = replace(printJS,"VH2",vh_2 )  '�Ƿ񽻸�
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