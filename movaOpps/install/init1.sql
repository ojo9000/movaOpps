

SET IDENTITY_INSERT mova_function ON 
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (1,null,36,'system','日志管理','log_search','日志查询',' ',null,900,'URL','/movaOpps/opp/log/searchLog.asp?isStart=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (2,null,0,'info','信息及密码更改','info','信息及密码更改',' ',null,30,'URL','#','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (3,null,2,'info','信息及密码更改','info_User','信息及密码更改',' ',null,0,'URL','/movaOpps/core/user/?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (14,null,0,'muModel','数据模型管理','muModel','数据模型管理',' ',null,10,'URL','#','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (15,null,14,'muModel','数据模型管理','muModel_item','自定义字段类型',' ',null,201,'URL','/movaOpps/opp/item/listItem.asp?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (16,null,14,'muModel','数据模型管理','muModel_opp','模型列表',' ',null,202,'URL','/movaOpps/opp/object/object.asp?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (17,null,0,'knowledge','知识库','knowledge','知识库',' ',null,20,'URL','#','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (18,null,17,'knowledge','知识库','knowledge_list','知识库列表',' ',null,301,'URL','/movaOpps/opp/knowledge/searchKnowledge.asp?isStart=2&def=Last','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (19,null,17,'knowledge','知识库','knowledge_new','添加文章',' ',null,301,'URL','/movaOpps/opp/knowledge/addKnowledge.asp?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (20,null,17,'knowledge','知识库','knowledge_modi','修改文章',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (21,null,17,'knowledge','知识库','knowledge_del','删除文章',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (24,null,36,'system','系统管理','muConfig_edit','基本配置',' ',null,807,'URL','/movaOpps/opp/config/index.asp?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (30,null,36,'system','系统管理','muExtMenu','外挂菜单配置',' ',null,805,'URL','/movaOpps/opp/config/extMenu.asp?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (33,null,36,'system','系统管理','userSys','用户管理',' ',null,800,'URL','/movaOpps/core/system/user/listUser.asp?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (34,null,36,'system','系统管理','roleSys','角色管理',' ',null,803,'URL','/movaOpps/core/system/role/listRole.asp?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (36,null,0,'system','系统管理','system','系统管理',' ',null,15,'URL','#','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (37,null,36,'system','系统管理','teamSys','组管理',' ',null,802,'URL','/movaOpps/core/system/team/listTeam.asp?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (38,null,14,'muModel','数据模型管理','mplSearch','自定义查询',' ',null,300,'URL','/movaOpps/opp/mplSearch/?isStart=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (39,null,14,'muModel','数据模型管理','mplNew','自定义查询新建',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (40,null,14,'muModel','数据模型管理','mplEdit','自定义查询编辑',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (41,null,14,'muModel','数据模型管理','mplDel','自定义查询删除',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (42,null,14,'muModel','数据模型管理','modulRDel','模型规则删除',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (43,null,14,'muModel','数据模型管理','modulREdit','模型规则编辑',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (44,null,14,'muModel','数据模型管理','modulRNew','模型规则新建',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (45,null,14,'muModel','数据模型管理','modulRList','模型规则列表',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (46,null,14,'muModel','数据模型管理','modulFDel','模型字段删除',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (47,null,14,'muModel','数据模型管理','modulFNew','模型字段新建',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (48,null,14,'muModel','数据模型管理','modulFEdit','模型字段编辑',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (49,null,14,'muModel','数据模型管理','modulFList','模型字段列表',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (50,null,14,'muModel','数据模型管理','modulDel','模型删除',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (51,null,14,'muModel','数据模型管理','modulEdit','模型编辑',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (52,null,14,'muModel','数据模型管理','modulNew','模型新建',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (53,null,14,'muModel','数据模型管理','mplRun','自定义查询运行',' ',null,0,'','','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (55,null,36,'system','系统管理','sysFunction','菜单排序',' ',null,806,'URL','/movaOpps/core/system/role/listFunction.asp?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (56,null,0,'M00_K0001','客户','M00_K0001','客户',null,null,5,'URL','#','T',CONVERT(DATETIME,'2012/2/7 13:29:34',120),1,CONVERT(DATETIME,'2012/11/20 10:01:49',120),1,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (57,null,56,'M00_K0001','客户','Dy_1_Search','客户查询',null,null,1,'URL','/movaOpps/opp/searchOpp.asp?objectId=1&isStart=2&def=Last','T',CONVERT(DATETIME,'2012/2/7 13:29:34',120),1,CONVERT(DATETIME,'2012/11/20 10:01:49',120),1,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (58,null,56,'M00_K0001','客户','Dy_1_Print','客户打印',null,null,1,'','','F',CONVERT(DATETIME,'2012/2/7 13:29:34',120),1,CONVERT(DATETIME,'2012/11/20 10:01:49',120),1,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (59,null,56,'M00_K0001','客户','Dy_1_Edit','客户编辑',null,null,1,'','','T',CONVERT(DATETIME,'2012/2/7 13:29:34',120),1,CONVERT(DATETIME,'2012/11/20 10:01:49',120),1,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (60,null,56,'M00_K0001','客户','Dy_1_Del','客户删除',null,null,1,'','','T',CONVERT(DATETIME,'2012/2/7 13:29:34',120),1,CONVERT(DATETIME,'2012/11/20 10:01:49',120),1,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (61,null,56,'M00_K0001','客户','Dy_1_New','新建客户',null,null,0,'URL','/movaOpps/opp/opp.asp?objectId=1','T',CONVERT(DATETIME,'2012/2/7 13:29:34',120),1,CONVERT(DATETIME,'2012/11/20 10:01:49',120),1,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (62,null,56,'M00_K0001','客户','Dy_1_Batch','客户批量操作',null,null,1,'','','F',CONVERT(DATETIME,'2012/2/7 13:29:34',120),1,CONVERT(DATETIME,'2012/11/20 10:01:49',120),1,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (113,null,56,'M00_K0001','客户','Dy_1_LOG','客户日志',null,null,1,'','','T',CONVERT(DATETIME,'2012/3/2 11:05:49',120),1,CONVERT(DATETIME,'2012/11/20 10:01:49',120),1,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (278,null,56,'M00_K0001','客户信息','RL_1_只读','锁定',null,null,9999,'','','T',CONVERT(DATETIME,'2012/6/19 21:34:23',120),1,CONVERT(DATETIME,'2012/6/19 21:34:23',120),1,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (279,null,56,'M00_K0001','客户信息','RL_1_读写','解锁',null,null,9999,'','','T',CONVERT(DATETIME,'2012/6/19 21:34:23',120),1,CONVERT(DATETIME,'2012/6/19 21:34:23',120),1,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (506,null,36,'system','系统管理','dataImport','数据导入',null,null,999,'URL','/movaOpps/opp/import/import.asp?1=1','T',null,null,null,null,'T')
GO
insert into mova_function(mova_functionid,plugin_no,parent_id,category,categoryName,code,functionname,is_super,description,sortno,function_type,url,status,createdate,createuser,modifydate,modifyuser,is_pub) values (523,null,36,'system','系统管理','system_plugin','插件管理',null,null,25,'URL','/movaOpps/plugins/?1=1','T',null,null,null,null,'T')
GO
SET IDENTITY_INSERT mova_function OFF 
GO


SET IDENTITY_INSERT mova_picklist ON 
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (1,'性别','sex','F','女','',null,15,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (2,'性别','sex','M','男','',null,20,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (3,'是否','isNo','T','是','',null,1,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (4,'是否','isNo','F','否','',null,0,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (5,'数字','shuzi','1','1','',null,1,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (6,'数字','shuzi','2','2','',null,2,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (7,'数字','shuzi','3','3','',null,3,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (8,'数字','shuzi','4','4','',null,4,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (9,'用户部门','department','IT','IT','',null,3397,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (21,'电话功能键','phone_menu','0','0','',null,3727,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (22,'电话功能键','phone_menu','1','1','',null,3732,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (23,'电话功能键','phone_menu','2','2','',null,3737,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (24,'电话功能键','phone_menu','3','3','',null,3742,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (25,'电话功能键','phone_menu','4','4','',null,3747,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (26,'电话功能键','phone_menu','5','5','',null,3752,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (27,'电话功能键','phone_menu','6','6','',null,3757,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (28,'电话功能键','phone_menu','7','7','',null,3762,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (29,'电话功能键','phone_menu','8','8','',null,3767,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (30,'电话功能键','phone_menu','9','9','',null,3772,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (34,'数据类型','record_type','VARCHAR','文本','',null,3807,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (35,'数据类型','record_type','INT','数字','',null,3812,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (36,'数据类型','record_type','DATE','日期','',null,3817,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (37,'数据类型','record_type','TIME','日期时间','',null,3822,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (38,'数据类型','record_type','TEXT','大文本','',null,3827,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (39,'数据类型','record_type','PHONE','电话','',null,3832,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (40,'条件类型','condition_type','=','等于','',null,3837,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (41,'条件类型','condition_type','like','包含','',null,3842,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (42,'条件类型','condition_type','dateRange','日期范围','',null,3847,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (43,'条件类型','condition_type','timeRange','时间范围','',null,3852,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (44,'字段列名','field_name','VA','VA','',null,3857,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (45,'字段列名','field_name','VB','VB','',null,3862,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (46,'字段列名','field_name','VC','VC','',null,3867,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (47,'字段列名','field_name','VD','VD','',null,3872,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (48,'字段列名','field_name','VE','VE','',null,3877,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (49,'字段列名','field_name','VF','VF','',null,3882,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (50,'字段列名','field_name','VG','VG','',null,3887,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (51,'字段列名','field_name','VH','VH','',null,3892,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (52,'字段列名','field_name','VI','VI','',null,3897,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (53,'字段列名','field_name','VJ','VJ','',null,3902,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (54,'字段列名','field_name','VK','VK','',null,3907,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (55,'字段列名','field_name','VL','VL','',null,3912,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (56,'字段列名','field_name','VM','VM','',null,3917,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (57,'字段列名','field_name','VN','VN','',null,3922,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (58,'字段列名','field_name','VO','VO','',null,3927,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (59,'字段列名','field_name','VP','VP','',null,3932,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (60,'字段列名','field_name','VQ','VQ','',null,3937,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (61,'字段列名','field_name','VR','VR','',null,3942,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (62,'字段列名','field_name','VS','VS','',null,3947,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (63,'字段列名','field_name','VT','VT','',null,3952,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (64,'字段列名','field_name','VU','VU','',null,3957,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (65,'字段列名','field_name','VV','VV','',null,3962,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (66,'字段列名','field_name','VW','VW','',null,3967,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (67,'字段列名','field_name','VX','VX','',null,3972,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (68,'字段列名','field_name','VY','VY','',null,3977,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (69,'字段列名','field_name','VZ','VZ','',null,3982,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (70,'字段列名','field_name','ZA','ZA','',null,3987,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (71,'字段列名','field_name','ZB','ZB','',null,3992,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (72,'字段列名','field_name','ZC','ZC','',null,3997,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (73,'字段列名','field_name','ZD','ZD','',null,4002,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (74,'字段列名','field_name','ZE','ZE','',null,4007,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (75,'字段列名','field_name','ZF','ZF','',null,4012,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (76,'字段列名','field_name','ZG','ZG','',null,4017,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (77,'字段列名','field_name','ZH','ZH','',null,4022,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (78,'默认值','defValue','{CUR_DATE}','当前日期','',null,4042,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (79,'默认值','defValue','{CUR_TIME}','当前时间','',null,4047,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (80,'默认值','defValue','{CUR_WORKNO}','当前工号','',null,4052,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (81,'默认值','defValue','{CUR_PHONE}','当前来电号码','',null,4057,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (82,'默认值','defValue','{CUR_USERNAME}','当前用户姓名','',null,4062,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (83,'时间范围','dateRange','0','今天','',null,4082,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (84,'时间范围','dateRange','1','昨天','',null,4087,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (85,'时间范围','dateRange','3','最近3天','',null,4092,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (86,'时间范围','dateRange','7','最近7天','',null,4097,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (87,'时间范围','dateRange','30','最近1个月','',null,4102,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (88,'客户角色','user_role','CCADMIN','管理员','',null,4117,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (89,'客户角色','user_role','CCUSER','坐席','',null,4112,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (94,'字段类型','field_type','v','文本、时间','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (95,'字段类型','field_type','d','数值','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (96,'字段类型','field_type','z','大文本','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (97,'左括号','mpl_left_bracket','(','(','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (98,'右括号','mpl_right_bracket',')',')','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (99,'条件','mpl_condition','=','等于','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (100,'条件','mpl_condition','<>','不等于','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (101,'条件','mpl_condition','>','大于','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (102,'条件','mpl_condition','>=','大于等于','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (103,'条件','mpl_condition','<','小于','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (104,'条件','mpl_condition','<=','小于等于','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (105,'条件','mpl_condition','like','包含','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (106,'条件','mpl_condition','not like','不包含','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (107,'条件','mpl_condition','is null','空','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (108,'条件','mpl_condition','is not null','非空','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (109,'并且或','mpl_and_or','and','并且','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (110,'并且或','mpl_and_or','or','或者','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (111,'排序方向','mpl_sort','desc','降序','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (112,'排序方向','mpl_sort','asc','升序','',null,0,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (113,'角色查询范围','roleScope','G','全部','',null,4127,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (114,'角色查询范围','roleScope','T','组','',null,4132,'T','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (115,'操作类型（日志）','system_log_type','新建','新建','',null,4137,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (116,'操作类型（日志）','system_log_type','LOGINOUT','退出系统','',null,4142,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (117,'操作类型（日志）','system_log_type','LOGIN','登入系统','',null,4147,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (118,'操作类型（日志）','system_log_type','修改','修改','',null,4152,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (119,'操作类型（日志）','system_log_type','删除','删除','',null,4157,' ','F',null,null,null,null,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (120,'业务模型表','opp_table','MU_OPP','MU_OPP',null,null,4162,'T','F',CONVERT(DATETIME,'2012/2/14 0:45:00',120),'1',CONVERT(DATETIME,'2012/9/9 21:36:00',120),1,'T')
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (126,'数据查询范围','search_scope','GROUP','分组过滤',null,null,4187,null,'F',CONVERT(DATETIME,'2012/6/18 11:10:00',120),'1',CONVERT(DATETIME,'2012/6/18 11:10:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (127,'数据查询范围','search_scope','ALL','所有的',null,null,4192,null,'F',CONVERT(DATETIME,'2012/6/18 11:10:00',120),'1',CONVERT(DATETIME,'2012/6/18 11:10:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (141,'用户类型','opp_type','A','默认分类',null,null,1,' ','F',CONVERT(DATETIME,'2012/7/3 16:26:00',120),'1',CONVERT(DATETIME,'2012/11/20 10:03:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (148,'业务模型表','opp_table','MU_OPP1','MU_OPP1',null,null,4277,'T','F',CONVERT(DATETIME,'2012/9/9 9:39:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:40:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (149,'业务模型表','opp_table','MU_OPP2','MU_OPP2',null,null,4282,'T','F',CONVERT(DATETIME,'2012/9/9 9:39:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:40:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (150,'业务模型表','opp_table','MU_OPP3','MU_OPP3',null,null,4287,'T','F',CONVERT(DATETIME,'2012/9/9 9:40:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:40:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (151,'业务模型表','opp_table','MU_OPP4','MU_OPP4',null,null,4292,'T','F',CONVERT(DATETIME,'2012/9/9 9:41:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (152,'业务模型表','opp_table','MU_OPP5','MU_OPP5',null,null,4297,'T','F',CONVERT(DATETIME,'2012/9/9 9:41:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (153,'业务模型表','opp_table','MU_OPP6','MU_OPP6',null,null,4302,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (154,'业务模型表','opp_table','MU_OPP7','MU_OPP7',null,null,4307,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (155,'业务模型表','opp_table','MU_OPP8','MU_OPP8',null,null,4312,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (156,'业务模型表','opp_table','MU_OPP9','MU_OPP9',null,null,4317,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (157,'业务模型表','opp_table','MU_OPP10','MU_OPP10',null,null,4322,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (158,'业务模型表','opp_table','MU_OPP11','MU_OPP11',null,null,4327,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (159,'业务模型表','opp_table','MU_OPP12','MU_OPP12',null,null,4332,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (160,'业务模型表','opp_table','MU_OPP13','MU_OPP13',null,null,4337,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (161,'业务模型表','opp_table','MU_OPP14','MU_OPP14',null,null,4342,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (162,'业务模型表','opp_table','MU_OPP15','MU_OPP15',null,null,4347,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (163,'业务模型表','opp_table','MU_OPP16','MU_OPP16',null,null,4352,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (164,'业务模型表','opp_table','MU_OPP17','MU_OPP17',null,null,4357,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:43:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (165,'业务模型表','opp_table','MU_OPP18','MU_OPP18',null,null,4362,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:44:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (166,'业务模型表','opp_table','MU_OPP19','MU_OPP19',null,null,4367,'T','F',CONVERT(DATETIME,'2012/9/9 9:42:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:44:00',120),1,null)
GO
insert into mova_picklist(mova_picklistid,picklistname,code,selectvalue,txt,description,moduleid,sortno,is_memory,archive,createdate,createuser,modifydate,modifyuser,is_super) values (167,'业务模型表','opp_table','MU_OPP20','MU_OPP20',null,null,4372,'T','F',CONVERT(DATETIME,'2012/9/9 9:43:00',120),'1',CONVERT(DATETIME,'2012/9/9 9:44:00',120),1,null)
GO
SET IDENTITY_INSERT mova_picklist OFF 
GO


SET IDENTITY_INSERT mova_role ON 
GO
insert into mova_role(mova_roleid,rolename,rolecode,description,firstpage,scope,createdate,createuser,modifydate,modifyUser) values (1,'Administrator','ADMIN','管理员','/movaOpps/opp/knowledge/searchKnowledge.asp?isStart=2&def=Last','G',null,null,CONVERT(DATETIME,'2012/9/8 23:43:12',120),1)
GO
SET IDENTITY_INSERT mova_role OFF 
GO


insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('Seat','',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('Order','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('Item','I',10102,CONVERT(DATETIME,'2012/9/21 22:36:27',120),10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('Object','K',1000003809,CONVERT(DATETIME,'2012/9/9 9:51:22',120),10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_Customer','C',1000002810,CONVERT(DATETIME,'2012/7/20 17:27:44',120),10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP','M',1000011852,CONVERT(DATETIME,'2012/9/9 0:17:04',120),10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP1','M',1000004344,CONVERT(DATETIME,'2012/9/9 18:31:20',120),10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP2','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP3','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP4','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP5','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP6','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP7','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP8','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP9','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP10','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP11','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP12','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP13','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP14','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP15','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP16','M',1000000010,CONVERT(DATETIME,'2012/9/9 10:05:33',120),10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP17','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP18','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP19','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('MU_OPP20','M',1000000000,null,10)
GO
insert into mova_serialno(object_name,pre_fix,seed,last_date,Step) values ('Plugin','P',10030,CONVERT(DATETIME,'2012/9/21 16:11:44',120),10)
GO


SET IDENTITY_INSERT mova_team ON 
GO
insert into mova_team(team_id,team_name,parent_id,status,createdate,createuser,modifydate,modifyuser) values (3,'本部',null,'',null,null,CONVERT(DATETIME,'2012/8/17 11:03:19',120),1)
GO
SET IDENTITY_INSERT mova_team OFF 
GO


SET IDENTITY_INSERT mova_user ON 
GO
insert into mova_user(mova_userid,mova_roleid,username,login,password,department,phone,mobile,mail,sex,status,lastactive,isdel,team_id,customer_no,mac_addr,createdate,createuser,modifydate,modifyuser,opp_type,param1,param2,param3,qq) values (1,1,'Administrator','admin','965eb72c92a549dd','','',null,'','','T',CONVERT(DATETIME,'2012/11/20 15:00:25',120),'F',3,'M00','',null,null,CONVERT(DATETIME,'2012/11/20 9:52:53',120),1,'','','','','')
GO
SET IDENTITY_INSERT mova_user OFF 
GO


SET IDENTITY_INSERT mu_config ON 
GO
insert into mu_config(config_id,customer_no,logo_pic,company,createdate,createuser,modifydate,modifyuser,sync_Remote,ext_domain,ext_menu,popup_url,security_code,session_timeout,remote_http,system_name,out_call,monitor_type,outCall_type,default_object_id) values (2,'M00','','卓信',null,null,CONVERT(DATETIME,'2012/9/9 13:29:20',120),1,'T','','话费充值业务','',null,100,'http://218.18.106.151:99','魔方式业务管理系统','T','single','movaCall',1)
GO
SET IDENTITY_INSERT mu_config OFF 
GO


SET IDENTITY_INSERT mu_field_set ON 
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1,'va','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (2,'vb','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (3,'vc','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (4,'vd','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (5,'ve','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (6,'vf','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (7,'vg','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (8,'vh','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (9,'vi','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (10,'vj','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (11,'vk','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (12,'vl','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (13,'vm','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (14,'vn','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (15,'vo','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (16,'vp','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (17,'vq','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (18,'vr','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (19,'vs','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (20,'vt','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (21,'vu','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (22,'vv','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (23,'vw','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (24,'vx','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (25,'vy','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (26,'vz','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (27,'za','text','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (28,'zb','text','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (29,'zc','text','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (30,'zd','text','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (31,'ze','text','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (32,'zf','text','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (33,'zg','text','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (34,'zh','text','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (35,'v0','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (36,'v1','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (37,'v2','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (38,'v3','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (39,'v4','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (40,'v5','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (41,'v6','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (42,'v7','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (43,'v8','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (44,'v9','varchar','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (45,'d0','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (46,'d1','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (47,'d2','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (48,'d3','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (49,'d4','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (50,'d5','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (51,'d6','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (52,'d7','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (53,'d8','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (54,'d9','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (55,'da','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (56,'db','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (57,'dc','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (58,'dd','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (59,'de','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (60,'df','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (61,'dg','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (62,'dh','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (63,'di','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (64,'dj','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (65,'dk','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (66,'dl','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (67,'dm','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (68,'dn','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (69,'do','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (70,'dp','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (71,'dq','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (72,'dr','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (73,'ds','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (74,'dt','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (75,'du','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (76,'dv','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (77,'dw','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (78,'dx','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (79,'dy','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (80,'dz','numeric','mu_opp')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (81,'va','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (82,'vb','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (83,'vc','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (84,'vd','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (85,'ve','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (86,'vf','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (87,'vg','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (88,'vh','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (89,'vi','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (90,'vj','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (91,'vk','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (92,'vl','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (93,'vm','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (94,'vn','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (95,'vo','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (96,'vp','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (97,'vq','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (98,'vr','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (99,'vs','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (100,'vt','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (101,'vu','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (102,'vv','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (103,'vw','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (104,'vx','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (105,'vy','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (106,'vz','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (107,'za','text','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (108,'zb','text','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (109,'zc','text','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (110,'zd','text','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (111,'ze','text','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (112,'zf','text','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (113,'zg','text','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (114,'zh','text','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (115,'v0','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (116,'v1','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (117,'v2','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (118,'v3','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (119,'v4','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (120,'v5','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (121,'v6','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (122,'v7','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (123,'v8','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (124,'v9','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (125,'d0','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (126,'d1','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (127,'d2','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (128,'d3','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (129,'d4','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (130,'d5','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (131,'d6','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (132,'d7','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (133,'d8','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (134,'d9','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (135,'da','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (136,'db','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (137,'dc','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (138,'dd','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (139,'de','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (140,'df','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (141,'dg','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (142,'dh','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (143,'di','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (144,'dj','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (145,'dk','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (146,'dl','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (147,'dm','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (148,'dn','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (149,'do','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (150,'dp','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (151,'dq','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (152,'dr','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (153,'ds','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (154,'dt','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (155,'du','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (156,'dv','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (157,'dw','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (158,'dx','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (159,'dy','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (160,'dz','numeric','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (161,'customer','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (162,'main_phone','varchar','mu_customer')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (323,'d0','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (324,'d1','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (325,'d2','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (326,'d3','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (327,'d4','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (328,'d5','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (329,'d6','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (330,'d7','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (331,'d8','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (332,'d9','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (333,'da','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (334,'db','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (335,'dc','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (336,'dd','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (337,'de','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (338,'df','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (339,'dg','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (340,'dh','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (341,'di','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (342,'dj','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (343,'dk','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (344,'dl','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (345,'dm','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (346,'dn','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (347,'do','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (348,'dp','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (349,'dq','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (350,'dr','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (351,'ds','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (352,'dt','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (353,'du','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (354,'dv','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (355,'dw','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (356,'dx','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (357,'dy','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (358,'dz','numeric','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (359,'v0','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (360,'v1','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (361,'v2','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (362,'v3','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (363,'v4','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (364,'v5','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (365,'v6','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (366,'v7','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (367,'v8','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (368,'v9','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (369,'va','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (370,'vb','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (371,'vc','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (372,'vd','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (373,'ve','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (374,'vf','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (375,'vg','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (376,'vh','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (377,'vi','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (378,'vj','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (379,'vk','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (380,'vl','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (381,'vm','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (382,'vn','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (383,'vo','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (384,'vp','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (385,'vq','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (386,'vr','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (387,'vs','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (388,'vt','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (389,'vu','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (390,'vv','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (391,'vw','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (392,'vx','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (393,'vy','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (394,'vz','varchar','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (395,'za','text','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (396,'zb','text','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (397,'zc','text','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (398,'zd','text','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (399,'ze','text','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (400,'zf','text','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (401,'zg','text','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (402,'zh','text','MU_OPP1')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (403,'d0','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (404,'d1','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (405,'d2','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (406,'d3','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (407,'d4','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (408,'d5','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (409,'d6','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (410,'d7','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (411,'d8','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (412,'d9','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (413,'da','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (414,'db','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (415,'dc','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (416,'dd','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (417,'de','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (418,'df','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (419,'dg','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (420,'dh','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (421,'di','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (422,'dj','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (423,'dk','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (424,'dl','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (425,'dm','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (426,'dn','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (427,'do','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (428,'dp','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (429,'dq','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (430,'dr','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (431,'ds','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (432,'dt','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (433,'du','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (434,'dv','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (435,'dw','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (436,'dx','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (437,'dy','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (438,'dz','numeric','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (439,'v0','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (440,'v1','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (441,'v2','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (442,'v3','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (443,'v4','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (444,'v5','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (445,'v6','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (446,'v7','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (447,'v8','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (448,'v9','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (449,'va','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (450,'vb','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (451,'vc','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (452,'vd','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (453,'ve','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (454,'vf','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (455,'vg','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (456,'vh','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (457,'vi','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (458,'vj','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (459,'vk','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (460,'vl','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (461,'vm','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (462,'vn','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (463,'vo','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (464,'vp','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (465,'vq','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (466,'vr','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (467,'vs','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (468,'vt','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (469,'vu','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (470,'vv','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (471,'vw','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (472,'vx','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (473,'vy','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (474,'vz','varchar','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (475,'za','text','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (476,'zb','text','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (477,'zc','text','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (478,'zd','text','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (479,'ze','text','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (480,'zf','text','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (481,'zg','text','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (482,'zh','text','MU_OPP2')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (483,'d0','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (484,'d1','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (485,'d2','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (486,'d3','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (487,'d4','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (488,'d5','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (489,'d6','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (490,'d7','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (491,'d8','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (492,'d9','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (493,'da','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (494,'db','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (495,'dc','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (496,'dd','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (497,'de','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (498,'df','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (499,'dg','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (500,'dh','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (501,'di','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (502,'dj','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (503,'dk','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (504,'dl','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (505,'dm','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (506,'dn','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (507,'do','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (508,'dp','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (509,'dq','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (510,'dr','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (511,'ds','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (512,'dt','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (513,'du','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (514,'dv','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (515,'dw','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (516,'dx','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (517,'dy','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (518,'dz','numeric','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (519,'v0','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (520,'v1','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (521,'v2','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (522,'v3','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (523,'v4','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (524,'v5','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (525,'v6','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (526,'v7','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (527,'v8','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (528,'v9','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (529,'va','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (530,'vb','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (531,'vc','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (532,'vd','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (533,'ve','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (534,'vf','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (535,'vg','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (536,'vh','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (537,'vi','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (538,'vj','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (539,'vk','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (540,'vl','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (541,'vm','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (542,'vn','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (543,'vo','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (544,'vp','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (545,'vq','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (546,'vr','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (547,'vs','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (548,'vt','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (549,'vu','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (550,'vv','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (551,'vw','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (552,'vx','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (553,'vy','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (554,'vz','varchar','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (555,'za','text','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (556,'zb','text','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (557,'zc','text','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (558,'zd','text','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (559,'ze','text','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (560,'zf','text','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (561,'zg','text','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (562,'zh','text','MU_OPP3')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (563,'d0','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (564,'d1','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (565,'d2','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (566,'d3','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (567,'d4','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (568,'d5','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (569,'d6','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (570,'d7','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (571,'d8','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (572,'d9','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (573,'da','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (574,'db','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (575,'dc','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (576,'dd','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (577,'de','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (578,'df','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (579,'dg','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (580,'dh','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (581,'di','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (582,'dj','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (583,'dk','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (584,'dl','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (585,'dm','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (586,'dn','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (587,'do','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (588,'dp','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (589,'dq','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (590,'dr','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (591,'ds','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (592,'dt','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (593,'du','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (594,'dv','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (595,'dw','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (596,'dx','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (597,'dy','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (598,'dz','numeric','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (599,'v0','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (600,'v1','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (601,'v2','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (602,'v3','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (603,'v4','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (604,'v5','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (605,'v6','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (606,'v7','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (607,'v8','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (608,'v9','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (609,'va','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (610,'vb','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (611,'vc','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (612,'vd','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (613,'ve','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (614,'vf','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (615,'vg','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (616,'vh','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (617,'vi','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (618,'vj','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (619,'vk','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (620,'vl','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (621,'vm','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (622,'vn','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (623,'vo','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (624,'vp','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (625,'vq','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (626,'vr','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (627,'vs','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (628,'vt','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (629,'vu','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (630,'vv','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (631,'vw','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (632,'vx','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (633,'vy','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (634,'vz','varchar','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (635,'za','text','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (636,'zb','text','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (637,'zc','text','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (638,'zd','text','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (639,'ze','text','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (640,'zf','text','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (641,'zg','text','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (642,'zh','text','MU_OPP4')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (643,'d0','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (644,'d1','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (645,'d2','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (646,'d3','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (647,'d4','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (648,'d5','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (649,'d6','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (650,'d7','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (651,'d8','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (652,'d9','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (653,'da','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (654,'db','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (655,'dc','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (656,'dd','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (657,'de','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (658,'df','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (659,'dg','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (660,'dh','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (661,'di','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (662,'dj','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (663,'dk','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (664,'dl','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (665,'dm','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (666,'dn','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (667,'do','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (668,'dp','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (669,'dq','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (670,'dr','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (671,'ds','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (672,'dt','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (673,'du','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (674,'dv','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (675,'dw','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (676,'dx','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (677,'dy','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (678,'dz','numeric','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (679,'v0','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (680,'v1','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (681,'v2','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (682,'v3','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (683,'v4','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (684,'v5','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (685,'v6','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (686,'v7','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (687,'v8','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (688,'v9','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (689,'va','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (690,'vb','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (691,'vc','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (692,'vd','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (693,'ve','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (694,'vf','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (695,'vg','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (696,'vh','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (697,'vi','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (698,'vj','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (699,'vk','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (700,'vl','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (701,'vm','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (702,'vn','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (703,'vo','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (704,'vp','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (705,'vq','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (706,'vr','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (707,'vs','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (708,'vt','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (709,'vu','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (710,'vv','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (711,'vw','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (712,'vx','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (713,'vy','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (714,'vz','varchar','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (715,'za','text','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (716,'zb','text','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (717,'zc','text','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (718,'zd','text','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (719,'ze','text','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (720,'zf','text','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (721,'zg','text','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (722,'zh','text','MU_OPP5')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (723,'d0','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (724,'d1','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (725,'d2','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (726,'d3','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (727,'d4','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (728,'d5','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (729,'d6','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (730,'d7','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (731,'d8','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (732,'d9','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (733,'da','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (734,'db','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (735,'dc','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (736,'dd','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (737,'de','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (738,'df','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (739,'dg','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (740,'dh','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (741,'di','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (742,'dj','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (743,'dk','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (744,'dl','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (745,'dm','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (746,'dn','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (747,'do','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (748,'dp','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (749,'dq','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (750,'dr','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (751,'ds','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (752,'dt','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (753,'du','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (754,'dv','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (755,'dw','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (756,'dx','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (757,'dy','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (758,'dz','numeric','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (759,'v0','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (760,'v1','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (761,'v2','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (762,'v3','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (763,'v4','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (764,'v5','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (765,'v6','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (766,'v7','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (767,'v8','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (768,'v9','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (769,'va','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (770,'vb','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (771,'vc','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (772,'vd','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (773,'ve','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (774,'vf','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (775,'vg','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (776,'vh','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (777,'vi','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (778,'vj','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (779,'vk','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (780,'vl','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (781,'vm','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (782,'vn','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (783,'vo','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (784,'vp','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (785,'vq','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (786,'vr','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (787,'vs','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (788,'vt','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (789,'vu','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (790,'vv','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (791,'vw','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (792,'vx','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (793,'vy','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (794,'vz','varchar','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (795,'za','text','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (796,'zb','text','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (797,'zc','text','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (798,'zd','text','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (799,'ze','text','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (800,'zf','text','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (801,'zg','text','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (802,'zh','text','MU_OPP6')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (803,'d0','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (804,'d1','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (805,'d2','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (806,'d3','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (807,'d4','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (808,'d5','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (809,'d6','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (810,'d7','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (811,'d8','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (812,'d9','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (813,'da','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (814,'db','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (815,'dc','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (816,'dd','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (817,'de','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (818,'df','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (819,'dg','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (820,'dh','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (821,'di','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (822,'dj','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (823,'dk','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (824,'dl','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (825,'dm','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (826,'dn','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (827,'do','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (828,'dp','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (829,'dq','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (830,'dr','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (831,'ds','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (832,'dt','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (833,'du','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (834,'dv','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (835,'dw','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (836,'dx','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (837,'dy','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (838,'dz','numeric','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (839,'v0','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (840,'v1','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (841,'v2','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (842,'v3','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (843,'v4','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (844,'v5','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (845,'v6','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (846,'v7','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (847,'v8','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (848,'v9','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (849,'va','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (850,'vb','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (851,'vc','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (852,'vd','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (853,'ve','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (854,'vf','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (855,'vg','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (856,'vh','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (857,'vi','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (858,'vj','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (859,'vk','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (860,'vl','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (861,'vm','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (862,'vn','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (863,'vo','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (864,'vp','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (865,'vq','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (866,'vr','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (867,'vs','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (868,'vt','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (869,'vu','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (870,'vv','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (871,'vw','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (872,'vx','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (873,'vy','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (874,'vz','varchar','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (875,'za','text','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (876,'zb','text','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (877,'zc','text','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (878,'zd','text','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (879,'ze','text','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (880,'zf','text','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (881,'zg','text','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (882,'zh','text','MU_OPP7')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (883,'d0','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (884,'d1','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (885,'d2','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (886,'d3','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (887,'d4','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (888,'d5','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (889,'d6','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (890,'d7','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (891,'d8','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (892,'d9','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (893,'da','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (894,'db','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (895,'dc','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (896,'dd','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (897,'de','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (898,'df','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (899,'dg','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (900,'dh','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (901,'di','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (902,'dj','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (903,'dk','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (904,'dl','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (905,'dm','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (906,'dn','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (907,'do','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (908,'dp','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (909,'dq','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (910,'dr','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (911,'ds','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (912,'dt','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (913,'du','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (914,'dv','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (915,'dw','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (916,'dx','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (917,'dy','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (918,'dz','numeric','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (919,'v0','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (920,'v1','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (921,'v2','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (922,'v3','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (923,'v4','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (924,'v5','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (925,'v6','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (926,'v7','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (927,'v8','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (928,'v9','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (929,'va','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (930,'vb','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (931,'vc','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (932,'vd','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (933,'ve','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (934,'vf','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (935,'vg','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (936,'vh','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (937,'vi','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (938,'vj','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (939,'vk','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (940,'vl','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (941,'vm','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (942,'vn','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (943,'vo','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (944,'vp','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (945,'vq','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (946,'vr','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (947,'vs','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (948,'vt','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (949,'vu','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (950,'vv','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (951,'vw','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (952,'vx','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (953,'vy','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (954,'vz','varchar','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (955,'za','text','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (956,'zb','text','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (957,'zc','text','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (958,'zd','text','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (959,'ze','text','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (960,'zf','text','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (961,'zg','text','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (962,'zh','text','MU_OPP8')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (963,'d0','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (964,'d1','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (965,'d2','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (966,'d3','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (967,'d4','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (968,'d5','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (969,'d6','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (970,'d7','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (971,'d8','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (972,'d9','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (973,'da','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (974,'db','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (975,'dc','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (976,'dd','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (977,'de','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (978,'df','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (979,'dg','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (980,'dh','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (981,'di','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (982,'dj','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (983,'dk','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (984,'dl','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (985,'dm','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (986,'dn','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (987,'do','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (988,'dp','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (989,'dq','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (990,'dr','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (991,'ds','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (992,'dt','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (993,'du','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (994,'dv','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (995,'dw','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (996,'dx','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (997,'dy','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (998,'dz','numeric','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (999,'v0','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1000,'v1','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1001,'v2','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1002,'v3','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1003,'v4','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1004,'v5','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1005,'v6','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1006,'v7','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1007,'v8','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1008,'v9','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1009,'va','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1010,'vb','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1011,'vc','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1012,'vd','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1013,'ve','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1014,'vf','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1015,'vg','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1016,'vh','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1017,'vi','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1018,'vj','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1019,'vk','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1020,'vl','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1021,'vm','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1022,'vn','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1023,'vo','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1024,'vp','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1025,'vq','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1026,'vr','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1027,'vs','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1028,'vt','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1029,'vu','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1030,'vv','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1031,'vw','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1032,'vx','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1033,'vy','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1034,'vz','varchar','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1035,'za','text','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1036,'zb','text','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1037,'zc','text','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1038,'zd','text','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1039,'ze','text','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1040,'zf','text','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1041,'zg','text','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1042,'zh','text','MU_OPP9')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1043,'d0','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1044,'d1','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1045,'d2','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1046,'d3','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1047,'d4','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1048,'d5','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1049,'d6','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1050,'d7','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1051,'d8','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1052,'d9','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1053,'da','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1054,'db','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1055,'dc','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1056,'dd','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1057,'de','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1058,'df','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1059,'dg','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1060,'dh','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1061,'di','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1062,'dj','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1063,'dk','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1064,'dl','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1065,'dm','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1066,'dn','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1067,'do','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1068,'dp','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1069,'dq','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1070,'dr','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1071,'ds','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1072,'dt','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1073,'du','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1074,'dv','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1075,'dw','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1076,'dx','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1077,'dy','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1078,'dz','numeric','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1079,'v0','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1080,'v1','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1081,'v2','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1082,'v3','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1083,'v4','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1084,'v5','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1085,'v6','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1086,'v7','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1087,'v8','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1088,'v9','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1089,'va','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1090,'vb','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1091,'vc','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1092,'vd','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1093,'ve','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1094,'vf','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1095,'vg','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1096,'vh','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1097,'vi','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1098,'vj','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1099,'vk','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1100,'vl','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1101,'vm','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1102,'vn','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1103,'vo','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1104,'vp','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1105,'vq','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1106,'vr','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1107,'vs','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1108,'vt','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1109,'vu','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1110,'vv','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1111,'vw','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1112,'vx','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1113,'vy','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1114,'vz','varchar','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1115,'za','text','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1116,'zb','text','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1117,'zc','text','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1118,'zd','text','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1119,'ze','text','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1120,'zf','text','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1121,'zg','text','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1122,'zh','text','MU_OPP10')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1123,'d0','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1124,'d1','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1125,'d2','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1126,'d3','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1127,'d4','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1128,'d5','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1129,'d6','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1130,'d7','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1131,'d8','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1132,'d9','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1133,'da','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1134,'db','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1135,'dc','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1136,'dd','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1137,'de','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1138,'df','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1139,'dg','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1140,'dh','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1141,'di','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1142,'dj','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1143,'dk','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1144,'dl','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1145,'dm','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1146,'dn','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1147,'do','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1148,'dp','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1149,'dq','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1150,'dr','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1151,'ds','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1152,'dt','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1153,'du','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1154,'dv','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1155,'dw','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1156,'dx','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1157,'dy','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1158,'dz','numeric','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1159,'v0','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1160,'v1','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1161,'v2','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1162,'v3','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1163,'v4','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1164,'v5','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1165,'v6','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1166,'v7','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1167,'v8','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1168,'v9','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1169,'va','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1170,'vb','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1171,'vc','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1172,'vd','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1173,'ve','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1174,'vf','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1175,'vg','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1176,'vh','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1177,'vi','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1178,'vj','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1179,'vk','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1180,'vl','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1181,'vm','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1182,'vn','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1183,'vo','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1184,'vp','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1185,'vq','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1186,'vr','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1187,'vs','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1188,'vt','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1189,'vu','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1190,'vv','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1191,'vw','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1192,'vx','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1193,'vy','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1194,'vz','varchar','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1195,'za','text','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1196,'zb','text','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1197,'zc','text','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1198,'zd','text','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1199,'ze','text','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1200,'zf','text','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1201,'zg','text','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1202,'zh','text','MU_OPP11')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1203,'d0','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1204,'d1','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1205,'d2','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1206,'d3','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1207,'d4','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1208,'d5','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1209,'d6','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1210,'d7','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1211,'d8','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1212,'d9','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1213,'da','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1214,'db','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1215,'dc','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1216,'dd','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1217,'de','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1218,'df','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1219,'dg','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1220,'dh','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1221,'di','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1222,'dj','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1223,'dk','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1224,'dl','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1225,'dm','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1226,'dn','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1227,'do','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1228,'dp','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1229,'dq','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1230,'dr','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1231,'ds','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1232,'dt','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1233,'du','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1234,'dv','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1235,'dw','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1236,'dx','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1237,'dy','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1238,'dz','numeric','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1239,'v0','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1240,'v1','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1241,'v2','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1242,'v3','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1243,'v4','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1244,'v5','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1245,'v6','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1246,'v7','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1247,'v8','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1248,'v9','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1249,'va','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1250,'vb','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1251,'vc','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1252,'vd','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1253,'ve','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1254,'vf','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1255,'vg','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1256,'vh','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1257,'vi','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1258,'vj','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1259,'vk','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1260,'vl','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1261,'vm','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1262,'vn','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1263,'vo','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1264,'vp','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1265,'vq','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1266,'vr','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1267,'vs','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1268,'vt','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1269,'vu','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1270,'vv','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1271,'vw','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1272,'vx','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1273,'vy','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1274,'vz','varchar','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1275,'za','text','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1276,'zb','text','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1277,'zc','text','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1278,'zd','text','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1279,'ze','text','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1280,'zf','text','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1281,'zg','text','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1282,'zh','text','MU_OPP12')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1283,'d0','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1284,'d1','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1285,'d2','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1286,'d3','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1287,'d4','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1288,'d5','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1289,'d6','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1290,'d7','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1291,'d8','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1292,'d9','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1293,'da','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1294,'db','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1295,'dc','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1296,'dd','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1297,'de','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1298,'df','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1299,'dg','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1300,'dh','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1301,'di','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1302,'dj','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1303,'dk','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1304,'dl','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1305,'dm','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1306,'dn','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1307,'do','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1308,'dp','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1309,'dq','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1310,'dr','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1311,'ds','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1312,'dt','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1313,'du','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1314,'dv','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1315,'dw','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1316,'dx','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1317,'dy','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1318,'dz','numeric','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1319,'v0','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1320,'v1','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1321,'v2','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1322,'v3','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1323,'v4','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1324,'v5','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1325,'v6','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1326,'v7','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1327,'v8','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1328,'v9','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1329,'va','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1330,'vb','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1331,'vc','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1332,'vd','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1333,'ve','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1334,'vf','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1335,'vg','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1336,'vh','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1337,'vi','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1338,'vj','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1339,'vk','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1340,'vl','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1341,'vm','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1342,'vn','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1343,'vo','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1344,'vp','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1345,'vq','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1346,'vr','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1347,'vs','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1348,'vt','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1349,'vu','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1350,'vv','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1351,'vw','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1352,'vx','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1353,'vy','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1354,'vz','varchar','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1355,'za','text','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1356,'zb','text','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1357,'zc','text','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1358,'zd','text','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1359,'ze','text','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1360,'zf','text','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1361,'zg','text','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1362,'zh','text','MU_OPP13')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1363,'d0','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1364,'d1','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1365,'d2','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1366,'d3','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1367,'d4','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1368,'d5','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1369,'d6','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1370,'d7','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1371,'d8','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1372,'d9','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1373,'da','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1374,'db','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1375,'dc','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1376,'dd','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1377,'de','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1378,'df','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1379,'dg','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1380,'dh','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1381,'di','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1382,'dj','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1383,'dk','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1384,'dl','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1385,'dm','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1386,'dn','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1387,'do','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1388,'dp','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1389,'dq','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1390,'dr','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1391,'ds','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1392,'dt','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1393,'du','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1394,'dv','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1395,'dw','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1396,'dx','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1397,'dy','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1398,'dz','numeric','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1399,'v0','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1400,'v1','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1401,'v2','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1402,'v3','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1403,'v4','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1404,'v5','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1405,'v6','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1406,'v7','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1407,'v8','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1408,'v9','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1409,'va','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1410,'vb','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1411,'vc','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1412,'vd','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1413,'ve','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1414,'vf','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1415,'vg','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1416,'vh','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1417,'vi','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1418,'vj','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1419,'vk','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1420,'vl','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1421,'vm','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1422,'vn','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1423,'vo','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1424,'vp','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1425,'vq','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1426,'vr','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1427,'vs','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1428,'vt','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1429,'vu','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1430,'vv','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1431,'vw','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1432,'vx','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1433,'vy','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1434,'vz','varchar','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1435,'za','text','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1436,'zb','text','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1437,'zc','text','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1438,'zd','text','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1439,'ze','text','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1440,'zf','text','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1441,'zg','text','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1442,'zh','text','MU_OPP14')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1443,'d0','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1444,'d1','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1445,'d2','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1446,'d3','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1447,'d4','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1448,'d5','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1449,'d6','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1450,'d7','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1451,'d8','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1452,'d9','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1453,'da','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1454,'db','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1455,'dc','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1456,'dd','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1457,'de','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1458,'df','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1459,'dg','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1460,'dh','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1461,'di','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1462,'dj','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1463,'dk','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1464,'dl','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1465,'dm','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1466,'dn','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1467,'do','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1468,'dp','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1469,'dq','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1470,'dr','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1471,'ds','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1472,'dt','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1473,'du','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1474,'dv','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1475,'dw','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1476,'dx','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1477,'dy','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1478,'dz','numeric','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1479,'v0','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1480,'v1','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1481,'v2','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1482,'v3','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1483,'v4','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1484,'v5','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1485,'v6','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1486,'v7','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1487,'v8','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1488,'v9','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1489,'va','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1490,'vb','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1491,'vc','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1492,'vd','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1493,'ve','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1494,'vf','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1495,'vg','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1496,'vh','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1497,'vi','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1498,'vj','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1499,'vk','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1500,'vl','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1501,'vm','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1502,'vn','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1503,'vo','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1504,'vp','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1505,'vq','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1506,'vr','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1507,'vs','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1508,'vt','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1509,'vu','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1510,'vv','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1511,'vw','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1512,'vx','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1513,'vy','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1514,'vz','varchar','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1515,'za','text','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1516,'zb','text','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1517,'zc','text','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1518,'zd','text','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1519,'ze','text','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1520,'zf','text','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1521,'zg','text','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1522,'zh','text','MU_OPP15')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1523,'d0','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1524,'d1','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1525,'d2','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1526,'d3','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1527,'d4','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1528,'d5','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1529,'d6','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1530,'d7','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1531,'d8','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1532,'d9','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1533,'da','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1534,'db','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1535,'dc','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1536,'dd','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1537,'de','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1538,'df','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1539,'dg','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1540,'dh','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1541,'di','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1542,'dj','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1543,'dk','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1544,'dl','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1545,'dm','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1546,'dn','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1547,'do','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1548,'dp','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1549,'dq','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1550,'dr','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1551,'ds','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1552,'dt','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1553,'du','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1554,'dv','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1555,'dw','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1556,'dx','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1557,'dy','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1558,'dz','numeric','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1559,'v0','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1560,'v1','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1561,'v2','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1562,'v3','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1563,'v4','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1564,'v5','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1565,'v6','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1566,'v7','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1567,'v8','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1568,'v9','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1569,'va','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1570,'vb','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1571,'vc','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1572,'vd','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1573,'ve','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1574,'vf','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1575,'vg','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1576,'vh','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1577,'vi','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1578,'vj','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1579,'vk','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1580,'vl','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1581,'vm','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1582,'vn','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1583,'vo','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1584,'vp','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1585,'vq','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1586,'vr','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1587,'vs','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1588,'vt','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1589,'vu','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1590,'vv','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1591,'vw','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1592,'vx','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1593,'vy','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1594,'vz','varchar','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1595,'za','text','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1596,'zb','text','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1597,'zc','text','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1598,'zd','text','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1599,'ze','text','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1600,'zf','text','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1601,'zg','text','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1602,'zh','text','MU_OPP16')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1603,'d0','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1604,'d1','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1605,'d2','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1606,'d3','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1607,'d4','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1608,'d5','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1609,'d6','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1610,'d7','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1611,'d8','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1612,'d9','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1613,'da','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1614,'db','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1615,'dc','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1616,'dd','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1617,'de','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1618,'df','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1619,'dg','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1620,'dh','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1621,'di','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1622,'dj','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1623,'dk','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1624,'dl','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1625,'dm','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1626,'dn','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1627,'do','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1628,'dp','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1629,'dq','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1630,'dr','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1631,'ds','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1632,'dt','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1633,'du','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1634,'dv','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1635,'dw','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1636,'dx','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1637,'dy','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1638,'dz','numeric','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1639,'v0','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1640,'v1','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1641,'v2','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1642,'v3','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1643,'v4','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1644,'v5','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1645,'v6','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1646,'v7','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1647,'v8','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1648,'v9','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1649,'va','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1650,'vb','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1651,'vc','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1652,'vd','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1653,'ve','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1654,'vf','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1655,'vg','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1656,'vh','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1657,'vi','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1658,'vj','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1659,'vk','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1660,'vl','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1661,'vm','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1662,'vn','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1663,'vo','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1664,'vp','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1665,'vq','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1666,'vr','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1667,'vs','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1668,'vt','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1669,'vu','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1670,'vv','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1671,'vw','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1672,'vx','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1673,'vy','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1674,'vz','varchar','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1675,'za','text','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1676,'zb','text','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1677,'zc','text','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1678,'zd','text','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1679,'ze','text','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1680,'zf','text','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1681,'zg','text','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1682,'zh','text','MU_OPP17')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1683,'d0','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1684,'d1','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1685,'d2','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1686,'d3','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1687,'d4','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1688,'d5','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1689,'d6','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1690,'d7','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1691,'d8','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1692,'d9','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1693,'da','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1694,'db','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1695,'dc','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1696,'dd','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1697,'de','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1698,'df','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1699,'dg','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1700,'dh','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1701,'di','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1702,'dj','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1703,'dk','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1704,'dl','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1705,'dm','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1706,'dn','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1707,'do','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1708,'dp','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1709,'dq','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1710,'dr','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1711,'ds','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1712,'dt','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1713,'du','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1714,'dv','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1715,'dw','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1716,'dx','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1717,'dy','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1718,'dz','numeric','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1719,'v0','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1720,'v1','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1721,'v2','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1722,'v3','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1723,'v4','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1724,'v5','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1725,'v6','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1726,'v7','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1727,'v8','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1728,'v9','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1729,'va','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1730,'vb','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1731,'vc','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1732,'vd','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1733,'ve','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1734,'vf','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1735,'vg','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1736,'vh','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1737,'vi','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1738,'vj','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1739,'vk','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1740,'vl','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1741,'vm','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1742,'vn','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1743,'vo','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1744,'vp','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1745,'vq','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1746,'vr','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1747,'vs','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1748,'vt','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1749,'vu','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1750,'vv','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1751,'vw','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1752,'vx','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1753,'vy','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1754,'vz','varchar','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1755,'za','text','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1756,'zb','text','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1757,'zc','text','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1758,'zd','text','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1759,'ze','text','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1760,'zf','text','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1761,'zg','text','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1762,'zh','text','MU_OPP18')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1763,'d0','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1764,'d1','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1765,'d2','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1766,'d3','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1767,'d4','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1768,'d5','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1769,'d6','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1770,'d7','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1771,'d8','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1772,'d9','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1773,'da','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1774,'db','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1775,'dc','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1776,'dd','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1777,'de','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1778,'df','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1779,'dg','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1780,'dh','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1781,'di','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1782,'dj','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1783,'dk','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1784,'dl','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1785,'dm','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1786,'dn','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1787,'do','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1788,'dp','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1789,'dq','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1790,'dr','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1791,'ds','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1792,'dt','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1793,'du','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1794,'dv','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1795,'dw','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1796,'dx','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1797,'dy','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1798,'dz','numeric','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1799,'v0','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1800,'v1','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1801,'v2','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1802,'v3','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1803,'v4','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1804,'v5','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1805,'v6','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1806,'v7','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1807,'v8','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1808,'v9','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1809,'va','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1810,'vb','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1811,'vc','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1812,'vd','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1813,'ve','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1814,'vf','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1815,'vg','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1816,'vh','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1817,'vi','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1818,'vj','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1819,'vk','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1820,'vl','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1821,'vm','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1822,'vn','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1823,'vo','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1824,'vp','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1825,'vq','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1826,'vr','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1827,'vs','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1828,'vt','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1829,'vu','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1830,'vv','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1831,'vw','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1832,'vx','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1833,'vy','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1834,'vz','varchar','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1835,'za','text','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1836,'zb','text','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1837,'zc','text','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1838,'zd','text','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1839,'ze','text','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1840,'zf','text','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1841,'zg','text','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1842,'zh','text','MU_OPP19')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1843,'d0','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1844,'d1','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1845,'d2','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1846,'d3','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1847,'d4','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1848,'d5','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1849,'d6','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1850,'d7','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1851,'d8','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1852,'d9','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1853,'da','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1854,'db','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1855,'dc','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1856,'dd','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1857,'de','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1858,'df','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1859,'dg','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1860,'dh','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1861,'di','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1862,'dj','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1863,'dk','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1864,'dl','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1865,'dm','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1866,'dn','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1867,'do','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1868,'dp','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1869,'dq','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1870,'dr','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1871,'ds','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1872,'dt','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1873,'du','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1874,'dv','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1875,'dw','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1876,'dx','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1877,'dy','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1878,'dz','numeric','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1879,'v0','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1880,'v1','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1881,'v2','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1882,'v3','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1883,'v4','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1884,'v5','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1885,'v6','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1886,'v7','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1887,'v8','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1888,'v9','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1889,'va','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1890,'vb','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1891,'vc','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1892,'vd','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1893,'ve','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1894,'vf','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1895,'vg','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1896,'vh','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1897,'vi','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1898,'vj','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1899,'vk','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1900,'vl','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1901,'vm','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1902,'vn','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1903,'vo','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1904,'vp','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1905,'vq','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1906,'vr','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1907,'vs','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1908,'vt','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1909,'vu','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1910,'vv','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1911,'vw','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1912,'vx','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1913,'vy','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1914,'vz','varchar','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1915,'za','text','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1916,'zb','text','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1917,'zc','text','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1918,'zd','text','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1919,'ze','text','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1920,'zf','text','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1921,'zg','text','MU_OPP20')
GO
insert into mu_field_set(field_id,field_code,f_type,table_name) values (1922,'zh','text','MU_OPP20')
GO
SET IDENTITY_INSERT mu_field_set OFF 
GO


SET IDENTITY_INSERT mu_item ON 
GO
insert into mu_item(item_id,owner,item_code,item_name,archive,createdate,createuser,modifydate,modifyuser,field_type,plugin_no,is_public,is_pub) values (1,'M00','M00_M0000','知识库分类','F',null,null,CONVERT(DATETIME,'2012/9/21 22:48:15',120),1,'v',null,'F','T')
GO
insert into mu_item(item_id,owner,item_code,item_name,archive,createdate,createuser,modifydate,modifyuser,field_type,plugin_no,is_public,is_pub) values (100,'M00','M00_M0001','用户类型','F',CONVERT(DATETIME,'2012/9/21 22:36:27',120),1,CONVERT(DATETIME,'2012/9/21 22:48:19',120),1,'v',null,null,'T')
GO
SET IDENTITY_INSERT mu_item OFF 
GO


SET IDENTITY_INSERT mu_item_list ON 
GO
insert into mu_item_list(item_list_id,item_id,item_code,txt,sort_no,owner,archive,createdate,createuser,modifydate,modifyuser,plugin_no,value) values (38,1,'M00_M0000','公告',0,'M00','F',CONVERT(DATETIME,'2012/2/10 10:39:23',120),'1',CONVERT(DATETIME,'2012/2/10 10:39:23',120),'1',null,null)
GO
insert into mu_item_list(item_list_id,item_id,item_code,txt,sort_no,owner,archive,createdate,createuser,modifydate,modifyuser,plugin_no,value) values (196,100,'M00_I10103','默认',0,'M00','F',CONVERT(DATETIME,'2012/9/21 22:36:40',120),'1',CONVERT(DATETIME,'2012/11/20 10:18:31',120),'1',null,null)
GO
SET IDENTITY_INSERT mu_item_list OFF 
GO


SET IDENTITY_INSERT mu_object ON 
GO
insert into mu_object(object_id,plugin_no,table_name,object_code,object_name,owner,is_seat,is_locked,is_discard,is_system,is_publish,view_col,archive,createdate,createuser,modifydate,modifyuser,print_template,is_rule,is_private,is_hierarchy,chk_repeat,allow_batch,add_continue,sort_no,is_single,pre_new_js,pre_edit_js,end_new_js,end_edit_js,all_show_master,search_scope,new_submit_js,edit_submit_js,pub_js,supper_manager) values (1,null,'MU_CUSTOMER','M00_K0001','客户','M00','F',' ','F','T','T',3,'F',null,null,CONVERT(DATETIME,'2012/11/20 10:01:49',120),1,'','F','F','F','customer','F','F',null,'T','','','','','F','GROUP',null,null,null,null)
GO
SET IDENTITY_INSERT mu_object OFF 
GO


SET IDENTITY_INSERT mu_object_field ON 
GO
insert into mu_object_field(field_id,object_id,owner,table_name,field_code,field_name,field_type,width,high,is_forbidden,is_new,is_list,is_edit,is_seat,is_search,is_required,search_type,def_value,col_span,sort_edit,sort_list,archive,createdate,createuser,modifydate,modifyuser,is_rule,allow_batch,allow_recall,clone_by,allow_clone,is_num,new_onChange,edit_onChange,new_read_only,edit_read_only,status_rule,is_richText,is_attachment,hidden_by,new_ext_html,edit_ext_html,plugin_no) values (1,1,'M00','MU_CUSTOMER','customer','姓名','VARCHAR',20,1,'F','T','T','T','T','T','T','like','',0,1,1,'F',null,null,CONVERT(DATETIME,'2012/11/16 17:13:15',120),1,'F','F','F','F','F','F',null,null,'','F','',null,null,null,null,null,null)
GO
insert into mu_object_field(field_id,object_id,owner,table_name,field_code,field_name,field_type,width,high,is_forbidden,is_new,is_list,is_edit,is_seat,is_search,is_required,search_type,def_value,col_span,sort_edit,sort_list,archive,createdate,createuser,modifydate,modifyuser,is_rule,allow_batch,allow_recall,clone_by,allow_clone,is_num,new_onChange,edit_onChange,new_read_only,edit_read_only,status_rule,is_richText,is_attachment,hidden_by,new_ext_html,edit_ext_html,plugin_no) values (2,1,'M00','MU_CUSTOMER','main_phone','主要电话','PHONE',20,1,'F','T','T','T','T','T','T','like','',0,10,1,'F',null,null,CONVERT(DATETIME,'2012/11/16 17:13:15',120),1,'F','F','F','F','F','F',null,null,'','F','',null,null,null,null,null,null)
GO
insert into mu_object_field(field_id,object_id,owner,table_name,field_code,field_name,field_type,width,high,is_forbidden,is_new,is_list,is_edit,is_seat,is_search,is_required,search_type,def_value,col_span,sort_edit,sort_list,archive,createdate,createuser,modifydate,modifyuser,is_rule,allow_batch,allow_recall,clone_by,allow_clone,is_num,new_onChange,edit_onChange,new_read_only,edit_read_only,status_rule,is_richText,is_attachment,hidden_by,new_ext_html,edit_ext_html,plugin_no) values (3,1,'M00','MU_CUSTOMER','v0','性别','DATE',20,1,'F','F','F','F',' ','F','F','','',0,999,999,'T',CONVERT(DATETIME,'2012/2/7 13:35:04',120),1,CONVERT(DATETIME,'2012/4/28 8:41:24',120),1,'F','F','F','F','F','F','','','','F','',' ',' ','',null,null,null)
GO
insert into mu_object_field(field_id,object_id,owner,table_name,field_code,field_name,field_type,width,high,is_forbidden,is_new,is_list,is_edit,is_seat,is_search,is_required,search_type,def_value,col_span,sort_edit,sort_list,archive,createdate,createuser,modifydate,modifyuser,is_rule,allow_batch,allow_recall,clone_by,allow_clone,is_num,new_onChange,edit_onChange,new_read_only,edit_read_only,status_rule,is_richText,is_attachment,hidden_by,new_ext_html,edit_ext_html,plugin_no) values (4,1,'M00','MU_CUSTOMER','v1','会员类别','M00_I0002',20,1,'F','T','F','T',' ','F','T','','普通客户',0,15,999,'T',CONVERT(DATETIME,'2012/2/7 13:35:42',120),1,CONVERT(DATETIME,'2012/11/20 10:02:14',120),1,'F','F','F','F','F','F','','','','F','',' ',' ','','','',null)
GO
insert into mu_object_field(field_id,object_id,owner,table_name,field_code,field_name,field_type,width,high,is_forbidden,is_new,is_list,is_edit,is_seat,is_search,is_required,search_type,def_value,col_span,sort_edit,sort_list,archive,createdate,createuser,modifydate,modifyuser,is_rule,allow_batch,allow_recall,clone_by,allow_clone,is_num,new_onChange,edit_onChange,new_read_only,edit_read_only,status_rule,is_richText,is_attachment,hidden_by,new_ext_html,edit_ext_html,plugin_no) values (5,1,'M00','MU_CUSTOMER','v2','会员服务期限','DATE',20,1,'F','T','T','T',' ','T','T','dateRange','2099-12-31',0,20,999,'T',CONVERT(DATETIME,'2012/2/7 13:36:45',120),1,CONVERT(DATETIME,'2012/11/20 10:02:07',120),1,'F','F','F','F','F','F','','','','F','',' ',' ','','','',null)
GO
insert into mu_object_field(field_id,object_id,owner,table_name,field_code,field_name,field_type,width,high,is_forbidden,is_new,is_list,is_edit,is_seat,is_search,is_required,search_type,def_value,col_span,sort_edit,sort_list,archive,createdate,createuser,modifydate,modifyuser,is_rule,allow_batch,allow_recall,clone_by,allow_clone,is_num,new_onChange,edit_onChange,new_read_only,edit_read_only,status_rule,is_richText,is_attachment,hidden_by,new_ext_html,edit_ext_html,plugin_no) values (65,1,'M00','MU_CUSTOMER','v3','身份证','VARCHAR',20,1,'F','T','F','T',' ','F','F','','',0,5,999,'T',CONVERT(DATETIME,'2012/3/2 11:25:28',120),1,CONVERT(DATETIME,'2012/11/20 10:02:22',120),1,'F','F','F','F','F','F','','','','F','','F','F','','','',null)
GO
insert into mu_object_field(field_id,object_id,owner,table_name,field_code,field_name,field_type,width,high,is_forbidden,is_new,is_list,is_edit,is_seat,is_search,is_required,search_type,def_value,col_span,sort_edit,sort_list,archive,createdate,createuser,modifydate,modifyuser,is_rule,allow_batch,allow_recall,clone_by,allow_clone,is_num,new_onChange,edit_onChange,new_read_only,edit_read_only,status_rule,is_richText,is_attachment,hidden_by,new_ext_html,edit_ext_html,plugin_no) values (79,1,'M00','MU_CUSTOMER','v4','','VARCHAR',20,1,'F','F','F','F',' ','F','F','','',0,999,999,'T',CONVERT(DATETIME,'2012/4/26 13:01:45',120),1,CONVERT(DATETIME,'2012/4/28 8:41:17',120),1,'F','F','F','F','F','F','','','','F','','F','F','',null,null,null)
GO
insert into mu_object_field(field_id,object_id,owner,table_name,field_code,field_name,field_type,width,high,is_forbidden,is_new,is_list,is_edit,is_seat,is_search,is_required,search_type,def_value,col_span,sort_edit,sort_list,archive,createdate,createuser,modifydate,modifyuser,is_rule,allow_batch,allow_recall,clone_by,allow_clone,is_num,new_onChange,edit_onChange,new_read_only,edit_read_only,status_rule,is_richText,is_attachment,hidden_by,new_ext_html,edit_ext_html,plugin_no) values (176,1,'M00','MU_CUSTOMER','v0','状态','M00_I0053',20,1,'F','T','F','T',' ','F','T','','读写',0,999,999,'T',CONVERT(DATETIME,'2012/6/19 21:28:04',120),1,CONVERT(DATETIME,'2012/11/20 10:02:02',120),1,'F','F','F','F','F','F','','','','T','','F','F','','','',null)
GO
SET IDENTITY_INSERT mu_object_field OFF 
GO
