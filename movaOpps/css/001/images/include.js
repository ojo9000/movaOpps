
function SetLanCookies(lanStr){ //设置语言版本
    var Then = new Date()        
    Then.setTime(Then.getTime() + 60*60*60*1000 )   //一个小时
    document.cookie = "lanStr=" + lanStr  + "\;expires="+ Then.toGMTString() + "\;Path=/"
}

function  focusIt(form){
	form.focus();
}

function openowner(param)
{
var str;
str=window.open("searchuser.asp?param=" + param,"OwnerWindow","scrollbars=no,width=270,height=180");  
str.opener = self;
if (str.focus) str.focus();
}

function openTypewindow(param1,param2)
{
var str;
str=window.open("/movaopp/member/type/getType.asp?superid=0&param1=" + param1 + "&param2=" + param2,"typeWindow","scrollbars=yes,width=300,height=400");  
str.opener = self;
if (str.focus) str.focus();
}

function isEmptyObj(obj){
		var objType = "";
		if (obj.type==undefined){
			objType = obj[0].type;
		}else{
			objType = obj.type;
		}
		var result=true;
		switch( objType )
				{
					case "radio" :	 
						for (var i = 0; i < obj.length; i++) {
							if (obj[i].checked){
								result = false;
							}
						}	
						return result;
					
					case "checkbox" :	
						for (var i = 0; i < obj.length; i++) {
							if (obj[i].checked){
								result = false;
							}
						}	
						return result;
					case "text" :	
						if (obj.value!=""){
							result = false;
						}
						return result;
					case "textarea" :	
						if (obj.value!=""){
							result = false;
						}
						return result;	
					case "select-multiple" :
						for (var i = 0; i < obj.length; i++) {
							if ((obj.options[i].selected==true)&&(obj.options[i].value!="")){
								result=false;
							}
						}
						return result;
					case "select-one" :
						if (obj.options[obj.selectedIndex].value!=""){
									result=false;
						}
						return result;
				}
}

function showInputError(str){
if (str!=""){
			str="对不起，您的输入不正确!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			return true;
		}
}

function showCalendar(form){
	if (navigator.appName!="Microsoft Internet Explorer")                                 
	   alert("此功能 Netscape 用户不能使用！")                                            
	else {
		document.mainform.calendar.value=form.name;
		newwin=window.open('calendar.htm','test','width=150,height=170');  
		newwin.focus(); 
	}
}

function getCurDateTime(){
	d = new Date(); 
	alert(d.getFullYear()+"年"+(d.getMonth()+1)+"月"+d.getDate()+"日"); 

}

function chkdate(str){	//判断时间的有效性 YYYY-MM-DD
	var key=0;
	if ((str.indexOf('-')<1)||(str.substr(str.length-1,1)=="-")){
		return false;
	}else{
		var s=str.split('-');
		for (key in s){
			for(var i=0;i<s[key].length;i++){
				if (isNaN(parseInt(s[key].substr(i,1)))){
					return false;
				}
				if (key==0){
					if (parseInt(s[key])>2050||parseInt(s[key])<1900){
						return false;
					}
				}
				if (key==1){
					if (parseInt(s[key])>12||parseInt(s[key])<1){
						return false;
					}				
				}
				if (key==2){
					if (parseInt(s[key])>31||parseInt(s[key])<1){
						return false;
					}				
				}
			}
		}
		if (key!=2){
			return false;
		}
	}
	return true;	
}

function newItem(combo) {  //添加新的picklist的值
	contname=combo.name;
	var theleft;
	var strleng;
	var newcont;
	strleng=contname.length;
	
	S = prompt("输入新的文本:", "");
	if (S != null) {
		if (S.length > 20) {
			alert("文本长度限制在15个字符,你最后输入的字符长度为" + S.length );
		} else {
			if (S.length!=0){       
				var aOption = new Option(S, S);
				I = combo.length;
				combo.options[I] = aOption;
				combo.options[I].selected = 1;
			}
		}
	}
}


function checkpicklist(picklist){
	var test=false;
	for (var i = 0; i < picklist.length; i++) {
		if (picklist.options[i].selected==true){
			if (picklist.options[i].value!=""){
				test=true;
			};
	var resultstr="";
	var form=eval("document.mainform");
	var formname=eval("document.mainform." + varname)
		}
	}
	if (test){
		return true;
	}else{
		return false;
	}	
}

function CheckboxList(varname){
	for (var i=0;i<form.elements.length;i++){
		if (form.elements[i].type=="checkbox"){
			if (form.elements[i].name.indexOf(varname)==0){
				if (form.elements[i].checked){
					resultstr=resultstr + form.elements[i].value + ",";
				}
			}
		}
		
	
	}
	formname.value=resultstr;
}

function goUrl(str){	//导航，跳转页面
	window.location.href=str;
}

function Confirm(str)
{
	if(confirm(str)){
		return true;
	}else{
		return false;
	}
}


function daysDiff(day1,day2) //判断时间的间隔天数 YYYY-MM-DD
 { 
	var y1,m1,d1,y2,m2,d2;
	var s1=day1.split('-');
	var day1,day2;
	
	var s1=day1.split('-');
	for (key in s1){
		for(var i=0;i<s1[key].length;i++){
			if (key==0){
				y1=parseInt(s1[key])
			}
			if (key==1){
				m1=parseInt(s1[key])			
			}
			if (key==2){
				d1=parseInt(s1[key])			
			}
		}
	}
	
	var s2=day2.split('-');
	for (key in s2){
		for(var i=0;i<s2[key].length;i++){
			if (key==0){
				y2=parseInt(s2[key])
			}
			if (key==1){
				m2=parseInt(s2[key])			
			}
			if (key==2){
				d2=parseInt(s2[key])			
			}
		}
	}

  var check_in=new Date(y1,m1-1,d1); 
  var check_out=new Date(y2,m2-1,d2); 
  return (check_in.valueOf()-check_out.valueOf())/86400000; 
  } 
  
  
  //选择跳转到某一页
function MM_jumpMenu(targ,selObj,restore){ //v3.0
eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
if (restore) selObj.selectedIndex=0;
}

function MM_findObj(n, d) { //v4.0
var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
	d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
if(!x && document.getElementById) x=document.getElementById(n); return x;
}

function MM_jumpMenuGo(selName,targ,restore){ //v3.0
var selObj = MM_findObj(selName); if (selObj) MM_jumpMenu(targ,selObj,restore);
}


function html2js(obj){
		var jsStr="";
		if (obj.value!=""){
			obj.value=obj.value.replace(/\;/gi,"\\;");
			obj.value=obj.value.replace(/\"/gi,'\\"');
			obj.value=obj.value.replace(/\'/gi,"\\'");
			obj.value=obj.value.replace(/\r\n/gi,"^");
			arrayOfStrings = obj.value.split("^");
			for (var i=0; i < arrayOfStrings.length; i++) {
				tmpStr ='document.write(\"'+ arrayOfStrings[i] + '\")\;' + "\r\n";
				jsStr = jsStr + tmpStr;
			}
			obj.value=jsStr;
		}
}