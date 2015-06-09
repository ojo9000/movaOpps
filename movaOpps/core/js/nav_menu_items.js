/*
  --- menu items --- 
  note that this structure has changed its format since previous version.
  additional third parameter is added for item scope settings.
  Now this structure is compatible with Tigra Menu GOLD.
  Format description can be found in product documentation.
*/

var MENU_ITEMS = [
	['网站功能', null, '_blank',
		['新闻/文章', '/movaopp/article/', null],
		['照片管理', '/movaopp/photo/', null],
		['友情链接', '/movaopp/friendLink/', null],
		['网站留言', '/movaopp/guestbook/', null],
	],
	['线索管理', null, null,
		['网上线索', '/movaopp/lead/listLead.asp', null],
	],
	['快速放款', '/movaopp/quickloan/listLoan.asp', null,],
	['系统管理', null, null,
		['用户管理', '/movaopp/system/user/listUser.asp', null, ],
		['角色管理', '/movaopp/system/role/listRole.asp', null,],
		['PICKLIST类别管理', '/movaopp/system/picklist/listPicklist.asp', null,],
	],

	['退出系统', "/movaopp/logout_.asp", null,	],

];

