/*-------------------
�ͻ��˽ű��ݴ���
*	2001.12.13	��ӿͻ����ݴ���
*-------------------*/
//function NoErr(){
//	return(true);
//} 
//onerror=NoErr;


/*-------------------------------------------------------------
* ��֤�ͻ�����������
*
* �ο����ϣ�
*	CheckInput.vbs
*	������
*	MSDN Regular Expression 
*
*
* �޸ļ�¼��
*	2001.8.20	���� isPostalCode
*	2001.8.16	���� isURL
*	2001.8.15	��Ϊʹ��������ʽ������֤
*				�������� isMoney
*
*	2001.8.1	�޸��� isDate�������� checkLength
*------------------------------------------------------------*/


// Ϊ Array ������һ�� max ����
Array.prototype.max = function()
{
	var i, max = this[0];
	
	for( i = 1; i < this.length; i++ )
	{
		if( max < this[i] )
		max = this[i];
	}
	
	return max;
}

// Ϊ String ������һ�� trim ����
String.prototype.trim = function()
{
    // ��������ʽ��ǰ��ո��ÿ��ַ��������
    return this.replace( /(^\s*)|(\s*$)/g, "" );
}

// ʹ��������ʽ����� s �Ƿ�����ģʽ re
function checkExp( re, s )
{
	return re.test( s );
}

// ��֤�Ƿ� ��ĸ����
function isAlphaNumeric( strValue )
{
	// ֻ���� A-Z a-z 0-9 ֮�����ĸ���� ����Ϊ��
	return checkExp( /^\w*$/gi, strValue );
}

//��֤�Ƿ�������������ʱ�� ʱ���ʽ������ 2004-01-01 23:00
function isFullTime(strValue){
	if( isEmpty( strValue ) ) return true;
	
	if (checkExp(/[1-2][0-9][0-9][0-9]-[0-1][0-9]-[0-3][0-9] [0-2][0-9]:[0-5][0-9]/,strValue)){
		var arr = strValue.split(" ");
		if (isTime(arr[1]) && isDate(arr[0])){
			return true
		}else{
			return false;
		}
		
	}else{
		return false;
	}
}

//��֤�Ƿ���������ʱ�� ʱ���ʽ������ 23:00
function isTime(strValue)
{
	if( isEmpty(strValue)) return true;
	if (checkExp(/[0-2][0-9]:[0-5][0-9]/,strValue)){
		var arr = strValue.split(":");
		if (arr[0]>=24){
			return false
		}
		if (arr[1]>=60){
			return false;
		}
		return true;
	}else{
		return false;
	}
}


// ��֤�Ƿ� ����
function isDate( strValue )
{
	// ���ڸ�ʽ������ 2001-10-1/2001-1-10 ����Ϊ��
	if( isEmpty( strValue ) ) return true;

	if( !checkExp( /^\d{4}-[01]?\d-[0-3]?\d$/g, strValue ) ) return false;
	// ���� /^\d{4}-[1-12]-[1-31]\d$/
	
	var arr = strValue.split( "-" );
	var year = arr[0];
	var month = arr[1];
	var day = arr[2];
	
	// 1 <= �·� <= 12��1 <= ���� <= 31
	if( !( ( 1<= month ) && ( 12 >= month ) && ( 31 >= day ) && ( 1 <= day ) ) )
		return false;
		
	// ������
	if( !( ( year % 4 ) == 0 ) && ( month == 2) && ( day == 29 ) )
		return false;
	
	// 7����ǰ��˫��ÿ�²�����30��
	if( ( month <= 7 ) && ( ( month % 2 ) == 0 ) && ( day >= 31 ) )
		return false;
	
	// 8���Ժ�ĵ���ÿ�²�����30��
	if( ( month >= 8) && ( ( month % 2 ) == 1) && ( day >= 31 ) )
		return false;
	
	// 2�����29��
	if( ( month == 2) && ( day >=30 ) )
		return false;
	
	return true;
}

// ��֤�Ƿ� Email
function isEmail( strValue )
{
	// Email ������ x@a.b.c.d �ȸ�ʽ ����Ϊ��
	if( isEmpty( strValue ) ) return true;
	
	//return checkExp( /^\w+@(\w+\.)+\w+$/gi, strValue );	//2001.12.24���Գ��� ��� jxj-xxx@114online.comʱ����ͨ��
	//Modify By Tianjincat 2001.12.24
	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
	return checkExp( pattern, strValue );
	
}

// ��֤�Ƿ� Ϊ��
function isEmpty( strValue )
{
	if( strValue == "" )
		return true;
	else
		return false;
}

// ��֤�Ƿ� ����
function isNumeric( strValue )
{
	// ���ֱ����� 0123456789 ����Ϊ��
	
	return checkExp( /^\d*$/g, strValue );
}

// ��֤�Ƿ� ����
function isMoney( strValue )
{
	// ���ұ����� -12,345,678.9 �ȸ�ʽ ����Ϊ��
	if( isEmpty( strValue ) ) return true;
	
	return checkExp( /^[+-]?\d+(,\d{3})*(\.\d+)?$/g, strValue );
}

// ��֤�Ƿ� С��
function isFloat( strValue )
{
	// ���ұ����� -12,345,678.9 �ȸ�ʽ ����Ϊ��
	if( isEmpty( strValue ) ) return true;
	
	return checkExp( /^[+-]?\d+(\d{3})*(\.\d+)?$/g, strValue );
}

// ��֤�Ƿ� �绰
function isPhone( strValue )
{
	// ��ͨ�绰	(0755)4477377-3301/(86755)6645798-665
	// Call ��	95952-351
	// �ֻ�		130/131/135/136/137/138/13912345678
	// ����Ϊ��
	if( isEmpty( strValue ) ) return true;
	
	return checkExp( /(^\(\d{3,5}\)\d{6,8}(-\d{2,8})?$)|(^\d+-\d+$)|(^(130|131|135|136|137|138|139)\d{8}$)/g, strValue );
}

// ��֤�Ƿ� ��������
function isPostalCode( strValue )
{
	// �������������6λ����
	return checkExp( /(^$)|(^\d{6}$)/gi, strValue )
}

// ��֤�Ƿ� URL
function isURL( strValue )
{
	// http://www.yysoft.com/ssj/default.asp?Type=1&ArticleID=789
	if( isEmpty( strValue ) ) return true;
	
	var pattern = /^(http|https|ftp):\/\/(\w+\.)+[a-z]{2,3}(\/\w+)*(\/\w+\.\w+)*(\?\w+=\w*(&\w+=\w*)*)*/gi;
	// var pattern = /^(http|https|ftp):(\/\/|\\\\)(\w+\.)+(net|com|cn|org|cc|tv|[0-9]{1,3})((\/|\\)[~]?(\w+(\.|\,)?\w\/)*([?]\w+[=])*\w+(\&\w+[=]\w+)*)*$/gi;
	// var pattern = ((http|https|ftp):(\/\/|\\\\)((\w)+[.]){1,}(net|com|cn|org|cc|tv|[0-9]{1,3})(((\/[\~]*|\\[\~]*)(\w)+)|[.](\w)+)*(((([?](\w)+){1}[=]*))*((\w)+){1}([\&](\w)+[\=](\w)+)*)*)/gi;

	return checkExp( pattern, strValue );
	
}

// ����ֶγ���
//
//	strValue	�ַ���
//	strParam	�����������磺L<10, L=5, L>117
//
function checkLength( strValue, strParam )
{
	if( isEmpty( strValue ) )	return true;
	
	// �������磺L<10, L=5, L>117
	if( strParam.charAt( 0 ) != 'L' )	return false;
	
	var l = strValue.length;
	var ml = parseInt( strParam.substr( 2 ) );
	
	switch( strParam.charAt( 1 ) )
	{
		case '<' :
			if( l >= ml )
				return false;
			break;
			
		case '=' :
			if( l != ml )
				return false;
			break;
			
		case '>' :
			if( l <= ml )
				return false;
			break;
			
		default :
			return false
	}
	
	return true;
}

// ����������ݳ��ȵĺϷ��ԣ��ַ����Ȳ��ܴ���**���ַ���
//
//	�������
//		strName		�ֶζ���
//		strDescription	�ֶ�����
//		strLength	�ֶγ���
//
function ValidateMaxLength( strName, strDescription, strLength) {
	var strMsg = "";
	var strValue = document.all( strName ).value.trim();
	var strMaxLength = "L<" + strLength;
	if( !checkLength( strValue, strMaxLength ))
	strMsg = '"' + strDescription + '" ����С��'+ strLength + '���ַ�\n';
	return strMsg;
}

// ����������ݳ��ȵĺϷ��ԣ��ַ����Ȳ���С��**���ַ���
//
//	�������
//		strName		�ֶζ���
//		strDescription	�ֶ�����
//		strLength	�ֶγ���
//
function ValidateMinLength( strName, strDescription, strLength) {
	var strMsg = "";
	var strValue = document.all( strName ).value.trim();
	var strMaxLength = "L>" + strLength;
	if( !checkLength( strValue, strMaxLength ))
	strMsg = '"' + strDescription + '" �������'+ strLength + '���ַ�\n';
	return strMsg;
}

// ����������ݳ��ȵĺϷ��ԣ��ַ����ȵ���**���ַ���
//
//	�������
//		strName		�ֶζ���
//		strDescription	�ֶ�����
//		strLength	�ֶγ���
//
function ValidateEquLength( strName, strDescription, strLength) {
	var strMsg = "";
	var strValue = document.all( strName ).value.trim();
	var strMaxLength = "L=" + strLength;
	if( !checkLength( strValue, strMaxLength ))
	strMsg = '"' + strDescription + '" �������'+ strLength + '���ַ�\n';
	return strMsg;
}

// ����������ݵĺϷ��ԣ�Ӧ�����뿪�ֶ�ʱ��
//
//	�������
//		obj		�ֶζ���
//		strDescription	�ֶ�����
//		strType	�ֶ�����
//
//CheckValid(this,'','Date/Email/Money','')
function CheckValid( obj, strDescription, strType,isEmpty)
{
	var strMsg   = "";
	var strValue = obj.value.trim();
	var strEmpty = isEmpty;
	if ((isEmpty=="F")&&(strValue=="")){
		strMsg = '"' + strDescription + '" ����Ϊ�գ�\n';   
	}else{
		switch( strType )
		{
			case "AlphaNumeric" :	// ��ĸ����
				if( !isAlphaNumeric( strValue ) )
					strMsg = '"' + strDescription + '" ��������ĸ�����֣�\n';
				break;
				
			case "Date" :	// ����
				if( !isDate( strValue ) ) 
					strMsg = '"' + strDescription + '" ���������ȷ�����ڸ�ʽ���� 2001-10-01\n';
				break;
			case "FullTime" :	// ʱ���ʽ
				if( !isFullTime( strValue ) )
					strMsg = '"' + strDescription + '" ���������ȷ��ʱ���ʽ���� 2004-03-10 09:10\n';
				break;
			case "Time" :	// ʱ��
				if( !isTime( strValue ) )
					strMsg = '"' + strDescription + '" ���������ȷ��ʱ���ʽ���� 23:01\n';
				break;
			case "Email" :	// �����ʼ�
				if( !isEmail( strValue ) )
					strMsg = '"' + strDescription + '" ���������ȷ���ʼ���ʽ���� xx@yy.com\n';
				break;
					
			case "NotEmpty" :	// �����ֵ
				if( isEmpty( strValue ) )
					strMsg = '"' + strDescription + '" ����Ϊ�գ�\n';
				break;
					
			case "Numeric" :	//����
				if( !isNumeric( strValue )  )
					strMsg = '"' + strDescription + '" ���������֣�\n';
				break;
			
			case "Float" :	//����
				if( !isFloat( strValue )  )
					strMsg = '"' + strDescription + '" ���������ȷ�����ָ�ʽ���� -123.456\n';
				break;
				
			case "Money" :	//����
				if( !isMoney( strValue )  )
					strMsg = '"' + strDescription + '" ���������ȷ�����ָ�ʽ���� -123,456.789\n';
				break;
						
			case "Phone" :	// �绰
				if( !isPhone( strValue ) )
					strMsg = '"' + strDescription + '" ���������ȷ�ĵ绰��ʽ���� (0755)1234567-999\n';
				break;
				
			case "PostalCode" :	// ��������
				if( !isPostalCode( strValue ) )
					strMsg = '"' + strDescription + '" ������6λ���֣�\n';
				break;
				
			case "URL" :	// URL
				if( !isURL( strValue ) )
					strMsg = '"' + strDescription + '" ��������ȷ��URL��ʽ��\n';
				break;
					
			default :	// ����
				if( arrType[i].charAt( 0 ) == 'L' )
				{
					if( !checkLength( strValue, arrType[i] ) )
						strMsg = '"' + strDescription + '" �ĳ��ȱ��� ' + arrType[i].substr(1) + '\n';
				}
				else
					strMsg = '����"' + strDescription + '" ������ "' + strType + '" ����ʶ��\n';
		}
	}
	return strMsg;
}

//�ж������ַ����͵��ж�
function isCheckValid( obj, strDescription, strType,isEmpty){
	var errorMsg = CheckValid( obj, strDescription, strType,isEmpty);
	if (errorMsg!=""){
		alert(errorMsg);
		obj.value="";	
	}
}

function isNumber(numStr){ 
	var strValue=numStr; 
	if(!isNaN(strValue)){ 
		return true;
	}else{ 
		return false
	} 
} 


// ��֤�������ݵĺϷ���
//
//	�������
//		strName	�ֶ���
//		strDescription	�ֶ�����
//		strType	�ֶ�����
//
//	�������
//		�մ�	ͨ����֤
//		�ǿ�	δͨ����֤
//
function Validate( strName, strDescription, strType)
{
	var strMsg = "";
	var strValue = document.all( strName ).value.trim();
	var arrType = strType.split( " " );
	
	for( var i = 0; i < arrType.length; i++ )
		switch( arrType[i] )
		{
			case "AlphaNumeric" :	// ��ĸ����
				if( !isAlphaNumeric( strValue ) )
					strMsg = '"' + strDescription + '" ��������ĸ�����֣�\n';
				break;
			
			case "Date" :	// ����
				if( !isDate( strValue ) ) 
					strMsg = '"' + strDescription + '" ���������ȷ�����ڸ�ʽ���� 2001-10-1\n';
				break;
				
			case "Email" :	// �����ʼ�
				if( !isEmail( strValue ) )
					strMsg = '"' + strDescription + '" ���������ȷ���ʼ���ʽ���� webmaster@yysoft.com\n';
				break;
				
			case "NotEmpty" :	// �����ֵ
				if( isEmpty( strValue ) )
					strMsg = '"' + strDescription + '" ����Ϊ�գ�\n';
				break;
				
			case "Numeric" :	//����
				if( !isNumber( strValue )  )
					strMsg = '"' + strDescription + '" ���������֣�\n';
				break;
				
			case "Money" :	//����
				if( !isMoney( strValue )  )
					strMsg = '"' + strDescription + '" ���������ȷ�Ļ��Ҹ�ʽ���� -123,456.789\n';
				break;
					
			case "Phone" :	// �绰
				if( !isPhone( strValue ) )
					strMsg = '"' + strDescription + '" ���������ȷ�ĵ绰��ʽ���� (0755)1234567-999\n';
				break;
			
			case "PostalCode" :	// ��������
				if( !isPostalCode( strValue ) )
					strMsg = '"' + strDescription + '" ������6λ���֣�\n';
				break;
				
			case "URL" :	// URL
				if( !isURL( strValue ) )
					strMsg = '"' + strDescription + '" ��������ȷ��URL��ʽ��\n';
				break;
				
			default :	// ����
				if( arrType[i].charAt( 0 ) == 'L' )
				{
					if( !checkLength( strValue, arrType[i] ) )
						strMsg = '"' + strDescription + '" �ĳ��ȱ��� ' + arrType[i].substr(1) + '\n';
				}
				else
					strMsg = '����"' + strDescription + '" ������ "' + strType + '" ����ʶ��\n';
		}
	
	return strMsg;
}


// ȷ��ɾ��
function confirm_delete( url )
{
	if( confirm( "��ȷʵҪɾ����" ) )
	{
		window.location = ( url )
	}
}

// ����ת��
function goToURL( url )
{
	window.location = url;
}

// ���´���
function openNewWin( url, width, height )
{
	var newwin = window.open( url, "NewWin", "toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=no,scrollbars=yes,width=" + width + ",height=" + height +"" );
	newwin.focus();
	return false;
}

// �Ի��򴰿�
function openDialog( url, width, height)
{	
	showModalDialog( url, "NewWin","dialogWidth:"+ width +";dialogHeight:"+ height +";dialogTop:100;dialogLeft:200;status:no;");
}

//���ܣ�checkBox��ȫѡ��ȫ��ѡ
var checkboxflag = "false";
function check(field) 
{
	if (checkboxflag == "false") 
	{
		if(field.length == null)	//�������ֻ��һ����¼��Bug
		{
			if (field.disabled != true)
			{
				field.checked = true;
			}
		}
		else
		{
			for (i = 0; i < field.length; i++) 
			{
				if (field[i].disabled != true)	//�����disabled���޸�ݽ״̬ Modify By tianjincat 2002-03-26
				{
					field[i].checked = true;
				}
			}
		}
		checkboxflag = "true";
		return "ȫ��ѡ"; 
	}
	else 
	{
		if(field.length == null)	//�������ֻ��һ����¼��Bug
		{
			if (field.disabled != true)
			{
				field.checked = false;
			}
		}
		else
		{
			for (i = 0; i < field.length; i++) 
			{
				if (field[i].disabled != true)	//�����disabled���޸�ݽ״̬ Modify By tianjincat 2002-03-26
				{
					field[i].checked = false; 
				}	
			}
		}
		checkboxflag = "false";
		return "ȫѡ"; 
	}
}

//���ܣ�checkBox�ķ�ѡ��
//Added By tianjincat 2002-04-01
function chkinverse(field)
{
	if(field.length == null)	//�������ֻ��һ����¼��Bug
	{
		if (field.disabled != true)
		{
			if(field.checked == true)
			{
				field.checked = false;
			}
			else
			{
				field.checked = true;
			}
		}	
	}
	else
	{
		
		for(i = 0; i < field.length; i++)
		{
			if (field[i].disabled != true)
			{
				if(field[i].checked == true)
				{
					field[i].checked = false;
				}
				else
				{
					field[i].checked = true;
				}	
			}
		}
	}	
	return "��ѡ"
}

//ѡ���¼��ʾ
//form �ύ��FORM����	msg  ��ʾ��Ϣ	field CheckBox������
//
function ActionConfirm(form,msg,field) 
{
	var flag=0;
	var truthBeTold;
	for(i = 0; i < field.length; i++)
		{
			if (field[i].disabled != true)
			{
				if(field[i].checked == true)
				{
					flag=1;
				}
			}
		}

	if(field.length == null)	//�������ֻ��һ����¼��Bug
	{
		if(field.checked == true)
		{
			flag=1;
		}		
	}

	if (flag==0)
	{alert("��ѡ���¼!");}
	else
	{
		truthBeTold =window.confirm("��ȷ��Ҫ["+msg+"]��?");
		if (truthBeTold) {
			form.DoType.value=msg;
			form.submit();
		} 
	}
}

//���select ������Ƿ�ǿ�
function checkpicklist(picklist){
	var test=false;
	for (var i = 0; i < picklist.length; i++) {
		if (picklist.options[i].selected==true){
			if (picklist.options[i].value!=""){
				test=true;
			};
		}
	}
	if (test){
		return true;
	}else{
		return false;
	}	
}

function outPutError(str){
	alert("�Բ����������벻��ȷ!\n--------------------------\n" + str);	
}