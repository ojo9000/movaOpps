<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/core/pub/setup.asp" -->
<%
application("db_server") = "DB_Ip"
application("db_uid")="DB_User"
application("db_pwd")="DB_password"
application("db_database")="DB"
application("VERSION")="1.2.8"
%>
 
<LINK rel=stylesheet type=text/css  href="/movaOpps/css/001/style.css">
<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.db_server.value==""){
			str=str +  "������IP��������" + "\n";
		}
		if (document.mainform.db_uid.value==""){
			str=str +  "�û�����������" + "\n";
		}
		if (document.mainform.db_pwd.value==""){
			str=str +  "�����������" + "\n";
		}
		if (document.mainform.db_database.value==""){
			str=str +  "���ݿ��������" + "\n";
		}
		if (document.mainform.db_schema.value==""){
			str=str +  "SCHEMA��������" + "\n";
		}
		
		if (str!=""){
			str="�Բ����������벻��ȷ!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			return true;
		}
	}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�ޱ����ĵ�</title>
		<script type="text/javascript">
		</script>
	</head>
	<body>
		<div class="cn_header">
			<div class="cn_logo"><img src="/movaOpps/upfile/1_1348249460746.gif" /></div>
<div class="cn_header_right">
				<dl>
					 
				 </dl>
				 <nobr>   </nobr>
			</div> 
		</div>
 
<DIV class=cn_main>
<div class="cn_list_title">��һ������������Դ</div> 
<div class="cn_list_title_right">׿��ħ��ҵ��ϵͳ(<%=application("VERSION")%>)��װ</div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <FORM id=form method=post name=mainform 
  action=step2.asp>
  <TBODY>
  	<tr>
  		<TD class="cn_td09"   align=right >���ݿ������IP<font color=red>*</font>:</TD>
    	<TD align=left><INPUT class=cn_input03 type=text name=db_server value="<%=application("DB_SERVER")%>"></td>
  	</tr>
  	<tr>
  		<TD class="cn_td09"   align=right >�û���<font color=red>*</font>:</TD>
    	<TD align=left><INPUT class=cn_input03 type=text name=db_uid value="<%=application("DB_UID")%>"></td>
  	</tr>
  	<tr>
  		<TD class="cn_td09"   align=right >����<font color=red>*</font>:</TD>
    	<TD align=left><INPUT class=cn_input03 type=text name=db_pwd value="<%=application("DB_PWD")%>"></td>
  	</tr>
  	<tr>
  		<TD class="cn_td09"   align=right >���ݿ���<font color=red>*</font>:</TD>
    	<TD align=left><INPUT class=cn_input03 type=text name=db_database value="<%=application("DB_DATABASE")%>"></td>
  	</tr>
  	<!--tr>
  		<TD class="cn_td09"   align=right >SCHEMA<font color=red>*</font>:</TD>
    	<TD align=left></td>
  	</tr-->
  	<INPUT class=cn_input03 type=hidden name=db_schema value="dbo" value="<%=application("DB_SCHEMA")%>">
  </tr><TD class="cn_td09"   align=right ></TD>
  	<td><BUTTON class=cn_button01 type=submit onClick="return chk()" >��һ��</button>
  		
  		���棺ִ��ħ��ҵ��ϵͳ�İ�װ���򣬻�ɾ�����еı����ݡ�
  		</td></tr>
  </TBODY>
	</FORM>
 </TABLE>
</DIV>
</DIV>
