//选择用户
function move(fbox) 
{
		var arrFbox = new Array();
		var arrTbox = new Array();
		var arrLookup = new Array();
		var i;
		for (i = 0; i < tbox.options.length; i++) {
		arrLookup[tbox.options[i].text] = tbox.options[i].value;
		arrTbox[i] = tbox.options[i].text;
		}
		var fLength = 0;
		var tLength = arrTbox.length;
		for(i = 0; i < fbox.options.length; i++) {
		arrLookup[fbox.options[i].text] = fbox.options[i].value;
		if (fbox.options[i].selected && fbox.options[i].value != "") {
		arrTbox[tLength] = fbox.options[i].text;
		tLength++;
		}
		else {
		arrFbox[fLength] = fbox.options[i].text;
		fLength++;
		}
		}
		arrFbox.sort();
		arrTbox.sort();
		fbox.length = 0;
		tbox.length = 0;
		var c;
		for(c = 0; c < arrFbox.length; c++) {
		var no = new Option();
		no.value = arrLookup[arrFbox[c]];
		no.text = arrFbox[c];
		fbox[c] = no;
		}
		for(c = 0; c < arrTbox.length; c++) {
		var no = new Option();
		no.value = arrLookup[arrTbox[c]];
		no.text = arrTbox[c];
		tbox[c] = no;
	}
	selAll(tbox)
}
//选择用户
function movenew(fbox, tbox) 
{
	var arrFbox = new Array();
	var arrTbox = new Array();
	var arrLookup = new Array();
	var i;
	for (i = 0; i < tbox.options.length; i++) {
		arrLookup[tbox.options[i].text] = tbox.options[i].value;
		arrTbox[i] = tbox.options[i].text;
	}
		var fLength = 0;
		var tLength = arrTbox.length;
	for(i = 0; i < fbox.options.length; i++) {
		arrLookup[fbox.options[i].text] = fbox.options[i].value;
		if (fbox.options[i].selected && fbox.options[i].value != "") {
		arrTbox[tLength] = fbox.options[i].text;
		tLength++;
		}
		else {
		arrFbox[fLength] = fbox.options[i].text;
		fLength++;
		}
	}
		//arrFbox.sort();
		arrTbox.sort();
		//fbox.length = 0;
		tbox.length = 0;
		//var c;
		//for(c = 0; c < arrFbox.length; c++) {
		//var no = new Option();
		//no.value = arrLookup[arrFbox[c]];
		//no.text = arrFbox[c];
		//fbox[c] = no;
		//}
	for(c = 0; c < arrTbox.length; c++) {
		var no = new Option();
		no.value = arrLookup[arrTbox[c]];
		no.text = arrTbox[c];
		tbox[c] = no;
	}
	selAll(tbox)
}
function movenewMax(fbox, tbox,num) 
{
	var arrFbox = new Array();
	var arrTbox = new Array();
	var arrLookup = new Array();
	var maxNum = 1;
	var i;
	for (i = 0; i < tbox.options.length; i++) {
		arrLookup[tbox.options[i].text] = tbox.options[i].value;
		arrTbox[i] = tbox.options[i].text;
	}
		var fLength = 0;
		var tLength = arrTbox.length;
	for(i = 0; i < fbox.options.length; i++) {
		arrLookup[fbox.options[i].text] = fbox.options[i].value;
		if (maxNum<=num){
			if (fbox.options[i].selected && fbox.options[i].value != "") {
				arrTbox[tLength] = fbox.options[i].text;
				tLength++;
				maxNum=maxNum+1;
			}
		
		}
		else {
		arrFbox[fLength] = fbox.options[i].text;
		fLength++;
		}
	}
		//arrFbox.sort();
		arrTbox.sort();
		//fbox.length = 0;
		tbox.length = 0;
		//var c;
		//for(c = 0; c < arrFbox.length; c++) {
		//var no = new Option();
		//no.value = arrLookup[arrFbox[c]];
		//no.text = arrFbox[c];
		//fbox[c] = no;
		//}
	for(c = 0; c < num; c++) {
		var no = new Option();
		no.value = arrLookup[arrTbox[c]];
		no.text = arrTbox[c];
		tbox[c] = no;
	}
	selAll(tbox)
}

//选择用户
function del(fbox) 
{
		var arrFbox = new Array();
		var arrLookup = new Array();
		var i;

		var fLength = 0;

		for(i = 0; i < fbox.options.length; i++) {
		arrLookup[fbox.options[i].text] = fbox.options[i].value;
		if (fbox.options[i].selected && fbox.options[i].value != "") {
		
		}
		else {
		arrFbox[fLength] = fbox.options[i].text;
		fLength++;
		}
		}
		arrFbox.sort();
		fbox.length = 0;

		var c;
		for(c = 0; c < arrFbox.length; c++) {
		var no = new Option();
		no.value = arrLookup[arrFbox[c]];
		no.text = arrFbox[c];
		fbox[c] = no;
		}
		selAll(fbox)
}

function selAll(flist){
	for (i = 0; i < flist.options.length; i++) {
		flist.options[i].selected = true;
	}
	

}


function openUserWindow(param1)
{
	var str;
	str=window.open("<%=CONST_defPath%>/member/qsearchuser.asp?param1=" + param1 + "&param2=" + param2,"OwnerWindow","status=yes,scrollbars=no,width=370, height=180");  
	str.opener = self;
	if (str.focus) str.focus();
}
