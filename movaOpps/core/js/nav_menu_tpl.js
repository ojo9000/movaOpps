/*
  --- menu level scope settins structure --- 
  note that this structure has changed its format since previous version.
  Now this structure has the same layout as Tigra Menu GOLD.
  Format description can be found in product documentation.
*/

var MENU_POS1 = [
{
	// item sizes
	'height': 16, //子菜单大小规格
	'width': 70,
	// menu block offset from the origin:
	//	for root level origin is upper left corner of the page
	//	for other levels origin is upper left corner of parent item
	'block_top': 0,
	'block_left': 61,
	// offsets between items of the same level
	'top':  0,
	'left': 70,
	// time in milliseconds before menu is hidden after cursor has gone out
	// of any items
	'hide_delay': 50,
	'expd_delay': 50,
	'css' : {
		'outer': ['m0l0oout', 'm0l0oover'],
		'inner': ['m0l0iout', 'm0l0iover']
	}
},
{
	'height': 21,
	'width': 200,
	'block_top': 23,
	'block_left': 0,
	'top': 21,
	'left': 0,
	'css': {
		'outer' : ['m0l1oout', 'm0l1oover'],
		'inner' : ['m0l1iout', 'm0l1iover']
	}
},
{
	'block_top': 5,
	'block_left': 180,
	'css': {
		'outer': ['m0l2oout', 'm0l2oover'],
		'inner': ['m0l1iout', 'm0l2iover']
	}
}
]


var MENU_POS2 = [
{
	// item sizes
	'height': 20, //总菜单高
	'width': 75,  //总菜单宽
	// menu block offset from the origin:
	//	for root level origin is upper left corner of the page
	//	for other levels origin is upper left corner of parent item
	'block_top': 4,  //位置顶端
	'block_left':155,   //位置左
	// offsets between items of the same level
	'top':  0,
	'left': 75,
	// time in milliseconds before menu is hidden after cursor has gone out
	// of any items
	'hide_delay': 100,  //隐藏的时间
	'expd_delay': 100,   //弹出的时间
	'css' : {
		'outer': ['m0l0oout', 'm0l0oover'],
		'inner': ['m0l0iout', 'm0l0iover']
	}
},
{
	'height': 25,
	'width': 150,
	'block_top': 23,
	'block_left': 0,
	'top': 21,
	'left': 0,
	'css': {
		'outer' : ['m0l1oout', 'm0l1oover'],
		'inner' : ['m0l1iout', 'm0l1iover']
	}
},
{
	'block_top': 5,
	'block_left': 150,
	'css': {
		'outer': ['m0l2oout', 'm0l2oover'],
		'inner': ['m0l1iout', 'm0l2iover']
	}
}
]


