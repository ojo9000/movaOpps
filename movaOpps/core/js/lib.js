function onlyNumber()	{
	if((event.keyCode<48)||(event.keyCode>57))
	event.returnValue=false;
}
function showtip(text)  //��ʾ���ӵ�˵��
{
	if (document.all&&document.readyState=="complete")//���IE
	{
		 //��ʾ�����,���ݾ�����ʾ�������
		document.all.tooltip.innerHTML="<div vAlign=center><font SIZE=2>"+text+"</font></div>";
		document.all.tooltip.style.pixelLeft=event.clientX+document.body.scrollLeft+2;
		document.all.tooltip.style.pixelTop=event.clientY+document.body.scrollTop+5;
//		document.all.tooltip.style.pixelLeft=event.clientX+5;
//		document.all.tooltip.style.pixelTop=event.clientY+5;
		 if (event.clientX>800)
		{
			//document.all.tooltip.style.pixelLeft=680;
			//document.all.tooltip.style.pixelTop=event.clientY+document.body.scrollTop+5;
		}
			//document.all.tooltip.style.visibility="visible";
	}
			document.all.tooltip.style.visibility="visible";
}

document.write(
	"<div id=\"tooltip\" style=\"position:absolute;visibility:hidden; padding:2px;border:0px solid #C0C0C0;\
	;background-color:#FFFFFF; height: 19px; left:77;top: 96px;z-index:10;\"></div>");

function hidetip()  //�������ӵ�˵��
{
	if (document.all)
	document.all.tooltip.style.visibility="hidden";
}

function setcolor(fntcolor,bgcolor)
{
	document.all.tooltip.style.bgcolor=bgcolor;
	document.all.tooltip.innerHTML.Color = fntcolor;
}

function showhint(text)
{
	onmousemove=showtip(text);
	onmouseover=showtip(text);
	onmouseout=hidetip();
}

function view(id) {
	var viewurl="/profile1.jsp?user="+id;
	window.open(viewurl,'viewurl','left=70,top=20,width=450,height=320,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no');

}

function Text(){
  var berr=false;
  if (!(event.keyCode==45 || event.keyCode==95 || (event.keyCode>=48 && event.keyCode<=57) || (event.keyCode>=65 && event.keyCode<=90) || (event.keyCode>=97 && event.keyCode<=122))) berr=true;
  return !berr;
}

function Pass(){
  var berr=false;
  if (!((event.keyCode>=35 && event.keyCode<=37) || event.keyCode==40 || event.keyCode==42 || (event.keyCode>=44 && event.keyCode<=60) || event.keyCode==62 || (event.keyCode>=64 && event.keyCode<=95) || (event.keyCode>=97 && event.keyCode<=123) || event.keyCode==125 || event.keyCode==126)) berr=true;
  return !berr;
}

function IsNum(){
  var berr=false;
  if (!(event.keyCode>=48 && event.keyCode<=57)) berr=true;
  return !berr;
}

function TreeBar(){
  if (Point.innerText==3){
    Point.innerText=4
    document.all("frmTitle").style.display="none"
  } else {
    Point.innerText=3
    document.all("frmTitle").style.display=""
  }
}
/*

function openwin(theU,theN,W,H,X,Y){
  if (theU==null) theU="about:blank";
  if (theN==null) var Win = window.open(theU,'_top');
  else {
    if (X==null||X==0) X=Math.ceil( (window.screen.width  - W) / 2 ) ;
    if (Y==null||Y==0) Y=Math.ceil( (window.screen.height - H) / 2 );
    var Win = window.open(theU,theN,'status=0,scrollbars=1,resizable=1,fullscreen=0');
    Win.resizeTo( Math.ceil( W ) , Math.ceil( H ) )
    Win.moveTo  ( Math.ceil( X ) , Math.ceil( Y ) );
   }
  Win.focus();
}
*/

function openwin(theU,theN,W,H,X,Y){
	
	//X=Math.ceil( (window.screen.width  - W) / 2 ) ;
    //Y=Math.ceil( (window.screen.height - H) / 2 );
    //window.open(theU,theN,'status=0,scrollbars=1,resizable=1');
    window.open(theU,theN,'width='+W+',height='+H+',left='+X+',top='+Y);
    //Win.focus();
}

function del(FilePath){
  if (confirm('�����Ҫɾ��������¼��?')){
      window.location.href=FilePath;
  }
}

function chgstyle(idname) {
  if (idname.className == "show") 
     {idname.className = "hide";} // change class    
   else   
	{idname.className="show";}
}


 function openEdit(obj,rn)
 {
	var sc = obj.value;
	var newwin = window.open("about:blank","newwin","top=20,left=100,height=530,width=700");
	//newwin.window.moveTo(-1,-1);
	//newwin.window.resizeTo(window.screen.availWidth-100 ,window.screen.availHeight-100);
	document.editform.SourceContent.value = sc;
	document.editform.returnName.value = rn;
	document.editform.target = "newwin";
	document.editform.submit();	
 }

 function checklen(str,tips)
	{
	var tmp = str;
	if(tmp.length>100000)
		{
			alert(tips + '�ĳ�����:'+tmp.length+ ', ������100000��,�����ύ!');
			return false;			
		}
	else
		{
		//alert(tips + '�ĳ�����:'+tmp.length);
		return true;
		}
}
	
 function submitit()
	{
	var Descr = document.form1.Descr.value ;		
	var Intro = document.form1.Intro.value ;
	var Spec = document.form1.Spec.value;
	if(!checklen(Intro,"��Ʒ���"))return false;
	if(!checklen(Descr,"��Ʒ���"))return false;	
	if(!checklen(Spec,"��Ʒ������"))return false;
	//document.form1.submit();
}

function newItem(combo) {

	S = prompt("��������ֵ:", "");
	if (S != null) {
		if (S.length > 30) {
			alert("������ַ�����30��");
		} else {
			var aOption = new Option(S, S);
			I = combo.length;
			combo.options[I] = aOption;
			combo.options[I].selected = 1;
		}
	}
}