/*
  --- menu items --- 
  note that this structure has changed its format since previous version.
  additional third parameter is added for item scope settings.
  Now this structure is compatible with Tigra Menu GOLD.
  Format description can be found in product documentation.
*/

var MENU_ITEMS = [
	['��վ����', null, '_blank',
		['����/����', '/movaopp/article/', null],
		['��Ƭ����', '/movaopp/photo/', null],
		['��������', '/movaopp/friendLink/', null],
		['��վ����', '/movaopp/guestbook/', null],
	],
	['��������', null, null,
		['��������', '/movaopp/lead/listLead.asp', null],
	],
	['���ٷſ�', '/movaopp/quickloan/listLoan.asp', null,],
	['ϵͳ����', null, null,
		['�û�����', '/movaopp/system/user/listUser.asp', null, ],
		['��ɫ����', '/movaopp/system/role/listRole.asp', null,],
		['PICKLIST������', '/movaopp/system/picklist/listPicklist.asp', null,],
	],

	['�˳�ϵͳ', "/movaopp/logout_.asp", null,	],

];

