/*
   ˵����
   class��ֵ����Ϊ��ÿҳ��������ǰҳ�룬������
   ��̨ec����Ҫ����query_pageno������Ϊ��ǰҳ�룬����ǹ̶�д����
 */
var PAGE_URL="";
function turnpage(){
	//��ȡҳ��ĵ�һ��form�����ɴ���ҳ��Ĳ���
	var queryform = $("form").get(0);
	//��ȡ��ѯ�������в�������onloadִ����ģ�
	PAGE_URL=$(queryform).serialize();
	//����ѯ����һ��query_pageno����֤submit�ύ����1���Ų����Ĭ�ϵ�query_pageno=0��ͻ
	$(queryform).prepend('<input type="hidden" id="query_pageno" name="query_pageno" value="1">');
	//��ȡ��ҳ��������
	var pageclass = jQuery.trim($("#pageclass").attr("class"));
	//���޼�¼,����ÿҳ��������ǰҳ�룬����������
	if(checkclassvalue(pageclass)==false)
		return false;
	//��ȡ3��ֵ��ÿҳ��������ǰҳ�룬������
	var pagevalues = pageclass.split(/\s+/);
	var query_pernum = $(pagevalues).get(0);//ÿҳ����
	var query_pageno = $(pagevalues).get(1);//��ǰҳ��
	var query_count = $(pagevalues).get(2);//������
	//�����ݲ���ʾ��ҳ��ť
	if(query_count==0)
		return false;
	//��ȡ������
	var totalpage = Math.ceil(query_count/query_pernum);
	//��֯������ҳ��ť
	var page_str = '<form id="turnpageform" name="turnpageform" method="post" onSubmit="jumppage('+query_pageno+','+totalpage+');return false;">';
	page_str += '<div style="text-align:right;">һ��'+totalpage+'ҳ ��ǰ��ʾ��'+query_pageno+'ҳ ';
	if(query_pageno>1){
		page_str += '<a href="javascript:goto(1);">��ҳ</a> ';
		page_str += '<a href="javascript:goto('+(parseInt(query_pageno,10)-1)+');">��һҳ</a> ';
	}
	if(query_pageno<totalpage){
		page_str += '<a href="javascript:goto('+(parseInt(query_pageno,10)+1)+');">��һҳ</a> ';
		page_str += '<a href="javascript:goto('+totalpage+');">βҳ</a> ';
	}
	if(totalpage != 1)
	{
		page_str += '��ת���� <input id="topage" name="topage" size="4" class="zz_input01"> ҳ';
		page_str += '<button class="cn_button01" type="submit">��ת</button></form></div>';
	}
	//��ʾ��ҳ��ť
	$("#pageclass").after(page_str);
}
//��ҳ
function goto(page){
	//��ȡҳ��ĵ�һ��form
	var queryform = $("form").get(0);
	//�������ӷ�ҳ
	location.href=$(queryform).attr("action")+"?query_pageno="+page+"&"+PAGE_URL;
}
//������
function getreport(){
	//��ȡҳ��ĵ�һ��form
	var queryform = $("form").get(0);
	//�������ӷ�ҳ��querytypeΪ1��ʾ������
	location.href=$(queryform).attr("action")+"?querytype=1&"+PAGE_URL;
}
//��ת
function jumppage(query_pageno,totalpage){
	var topage = jQuery.trim($("#topage").val());
	if(topage.length==0){
		$("#topage").select();
		alert("������ҳ�룡");
		return false;
	}
	var format = /^\d+$/;
	if(format.test(topage)==false){
		$("#topage").select();
		alert("ҳ�����Ϊ��������");
		return false;
	}
	var page=parseInt(topage,10);
	if(page == 0){
		$("#topage").select();
		alert("ҳ�벻��Ϊ0��");
		return false;
	}
	if(query_pageno == page){
		$("#topage").select();
		alert("��������ǵ�ǰҳ��");
		return false;
	}
	if(page > totalpage){
		$("#topage").select();
		alert("û�д�ҳ����������ȷ��ҳ�룡");
		return false;
	}
	goto(page);
}
function checkclassvalue(classvalue){
	//��̨���봫ÿҳ��������ǰҳ�룬��������ҳ��
	if(classvalue.length==0)
		return false;
	var format = /^\d+ \d+ \d+$/;//��ʽΪ������+�ո�+����+�ո�+���֡�
	//����ÿҳ��������ǰҳ�룬��������ʽ����
	if(format.test(classvalue)==false)
		return false;
	return true;
}
