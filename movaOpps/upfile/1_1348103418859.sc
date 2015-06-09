delete  mu_object where plugin_no='P10021'
GO
delete  mu_object_field where plugin_no='P10021'
GO
delete  mu_mpl_search where plugin_no='P10021'
GO
delete  mu_mpl_condition where plugin_no='P10021'
GO
delete  mu_mpl_group where plugin_no='P10021'
GO
delete  mu_mpl_order where plugin_no='P10021'
GO
delete  mu_mpl_pre_condition where plugin_no='P10021'
GO
delete  mu_mpl_select where plugin_no='P10021'
GO
delete  mu_item where plugin_no='P10021'
GO
delete  mu_item_list where plugin_no='P10021'
GO
delete  mova_function where plugin_no='P10021'
GO
~~##~~##P10021##M00_K000000040##驾校预约业务##
SET IDENTITY_INSERT mu_object OFF 
GO
insert into mu_object(PLUGIN_NO,TABLE_NAME,OBJECT_CODE,OBJECT_NAME,OWNER,IS_SEAT,IS_LOCKED,IS_DISCARD,IS_SYSTEM,IS_PUBLISH,VIEW_COL,ARCHIVE,PRINT_TEMPLATE,IS_RULE,IS_PRIVATE,IS_HIERARCHY,CHK_REPEAT,ALLOW_BATCH,ADD_CONTINUE,SORT_NO,IS_SINGLE,PRE_NEW_JS,PRE_EDIT_JS,END_NEW_JS,END_EDIT_JS,ALL_SHOW_MASTER,SEARCH_SCOPE,NEW_SUBMIT_JS,EDIT_SUBMIT_JS,PUB_JS,SUPPER_MANAGER) values ('P10021','MU_OPP','M00_K000000040','驾校预约业务','M00','F',' ','F','F','T',2,'F','','F','F','F','','T','F',null,'T','','','','','F','ALL','','','',null)
GO

~~##!!GET_PARAM:OBJECT_ID

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',0,'M00_K000000040','驾校预约业务','M00_K000000040','驾校预约业务',null,null,50,'URL','#','T')
GO

~~##!!GET_PARAM:PARENT_ID

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','驾校预约业务','Dy_[~OBJECT_ID~]_New','新建驾校预约业务',null,null,14,'URL','/movaOpps/opp/opp.asp?objectId=[~OBJECT_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','驾校预约业务','Dy_[~OBJECT_ID~]_Search','驾校预约业务查询',null,null,14,'URL','/movaOpps/opp/searchOpp.asp?objectId=[~OBJECT_ID~]&isStart=2&def=Last','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','驾校预约业务','Dy_[~OBJECT_ID~]_Print','驾校预约业务打印',null,null,14,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','驾校预约业务','Dy_[~OBJECT_ID~]_Edit','驾校预约业务编辑',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','驾校预约业务','Dy_[~OBJECT_ID~]_Del','驾校预约业务删除',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','驾校预约业务','Dy_[~OBJECT_ID~]_LOG','驾校预约业务日志',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','驾校预约业务','Dy_[~OBJECT_ID~]_Batch','驾校预约业务批量操作',null,null,14,'','','F')
GO


SET IDENTITY_INSERT mu_object_field OFF 
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v1','预约网点','M00_I0022',20,1,'F','T','T','T','F','T','T','=','',0,999,999,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v2','体检人姓名','VARCHAR',7,1,'F','T','T','T','F','T','T','like','',0,999,999,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v3','预约人身份证','VARCHAR',18,1,'F','T','T','T','F','T','T','like','',0,999,999,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v4','预约人联系电话','VARCHAR',12,1,'F','T','T','T','F','T','T','like','',0,999,999,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v5','预约时段','M00_I0024',20,1,'F','T','T','T',' ','T','T','dateRange','',0,999,999,'F','F','T','F','F','F','F','','','','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v6','是否包含照相','M00_I0016',20,1,'F','T','T','T',' ','F','T','','否',0,999,999,'F','F','F','F','F','F','F','','','W_JX','W_JX','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v7','是否包含换证','M00_I0016',20,1,'F','T','T','T',' ','F','T','','否',0,999,999,'F','F','F','F','F','F','F','','','W_JX','W_JX','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v8','是否完成体检','M00_I0016',20,1,'F','T','T','T',' ','F','T','','否',0,999,999,'F','F','F','F','F','F','F','','','W_JX','W_JX','','F','F','','','','P10021')
GO

SET IDENTITY_INSERT mu_item OFF 
GO
insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0016','是否','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0016','是',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0016','否',0,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0022','体检网点','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','福田沙头车公庙点',11,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','其它网点',30,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','福田沙头新洲网点',13,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','福田梅林车管所点',3,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','罗湖翠竹田贝网点',1,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','罗湖莲塘鹏兴网点',27,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','南山西丽龙井路点',19,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','龙岗布吉西环网点',25,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','龙岗横岗排榜路点',7,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','龙岗龙城龙河网点',9,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','龙岗坂田中心围点',17,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','龙华龙发服务网点',15,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','龙华观澜大和路点',23,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','宝安西乡天骄网点',5,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','光明公常服务网点',21,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0024','预约时段','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0024','正常工作时间(早九-晚六)',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0024','非正常工作时间(晚六-晚八)',0,'M00','F','P10021',null)
GO


SET IDENTITY_INSERT mu_mpl_search OFF 
GO
insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','预约查询身份证','预约查询身份证','M00_K000000040','M00',0,'F',null,null,null,null,'F','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','预约人身份证','=',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','预约网点','=',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','预约网点',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','预约人姓名',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','预约人身份证',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V5','预约时段',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V4','预约人联系电话',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点名称',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','预约','Dy_[~OBJECT_ID~]_Mpl17','预约查询身份证',null,null,17,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','预约','Dy[~OBJECT_ID~]_Mpl17_D','预约查询身份证.下载',null,null,17,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','驾校预约查询','驾校预约查询','M00_K000000040','M00',0,'F',null,null,null,null,'F','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','T.TEAM_NAME','组','=','{^CURRENTGROUP}',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'CREATEDATE','创建时间','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','预约人身份证','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','预约人姓名','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','预约网点',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','预约人姓名',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','预约人身份证',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','预约','Dy_[~OBJECT_ID~]_Mpl27','驾校预约查询',null,null,27,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','预约','Dy[~OBJECT_ID~]_Mpl27_D','驾校预约查询.下载',null,null,27,'','','T')
GO



SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','驾校预约业务','Dy_14_New','新建驾校预约业务',null,null,14,'URL','/movaOppsC/opp/opp.asp?objectId=14','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','驾校预约业务','Dy_14_Search','驾校预约业务查询',null,null,14,'URL','/movaOpps/opp/searchOpp.asp?objectId=14&isStart=2&def=Last','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','驾校预约业务','Dy_14_Print','驾校预约业务打印',null,null,14,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','驾校预约业务','Dy_14_Edit','驾校预约业务编辑',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','驾校预约业务','Dy_14_Del','驾校预约业务删除',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','驾校预约业务','Dy_14_LOG','驾校预约业务日志',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','驾校预约业务','Dy_14_Batch','驾校预约业务批量操作',null,null,14,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','预约','Dy_14_Mpl17','预约查询身份证',null,null,17,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=14&id=17','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','预约','Dy_14_Mpl17_D','预约查询身份证.下载',null,null,17,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','预约','Dy_14_Mpl27','驾校预约查询',null,null,27,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=14&id=27','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','预约','Dy_14_Mpl27_D','驾校预约查询.下载',null,null,27,'','','T')
GO


~~##~~##P10021##M00_K000000042##车辆违章业务##
SET IDENTITY_INSERT mu_object OFF 
GO
insert into mu_object(PLUGIN_NO,TABLE_NAME,OBJECT_CODE,OBJECT_NAME,OWNER,IS_SEAT,IS_LOCKED,IS_DISCARD,IS_SYSTEM,IS_PUBLISH,VIEW_COL,ARCHIVE,PRINT_TEMPLATE,IS_RULE,IS_PRIVATE,IS_HIERARCHY,CHK_REPEAT,ALLOW_BATCH,ADD_CONTINUE,SORT_NO,IS_SINGLE,PRE_NEW_JS,PRE_EDIT_JS,END_NEW_JS,END_EDIT_JS,ALL_SHOW_MASTER,SEARCH_SCOPE,NEW_SUBMIT_JS,EDIT_SUBMIT_JS,PUB_JS,SUPPER_MANAGER) values ('P10021','MU_OPP1','M00_K000000042','车辆违章业务','M00','F',' ','F','F','T',2,'F','','F','F','F','','F','T',null,'T','','','','','F','GROUP','return calculate();','hekuan();'+ char(13) +'
heJi();'+ char(13) +'
return limitFive();'+ char(13) +'
','function calculate(){'+ char(13) +'
var returnMark;	          '+ char(13) +'
if (getValue("{!VA}").length>11) {'+ char(13) +'
	          alert("联系电话为11位数字");'+ char(13) +'
                     setValue("{!VA}","");             '+ char(13) +'
		returnMark = false;}'+ char(13) +'
                    if (getValue("{!V6}").length>6) {'+ char(13) +'
	          alert("车架号后6位为6位数字");'+ char(13) +'
                     setValue("{!V6}","");             '+ char(13) +'
		returnMark = false;}'+ char(13) +'
                     if (getValue("{!V7}").length>4) {'+ char(13) +'
	          alert("发动机后4位为4位数字");'+ char(13) +'
                     setValue("{!V7}","");             '+ char(13) +'
		returnMark = false;}'+ char(13) +'
                     if (getValue("{!V8}").length>7) {'+ char(13) +'
	          alert("联系电话为7位数字");'+ char(13) +'
                     setValue("{!V8}","");             '+ char(13) +'
		returnMark = false;}'+ char(13) +'
'+ char(13) +'
	             '+ char(13) +'
'+ char(13) +'
	return returnMark;'+ char(13) +'
}'+ char(13) +'
'+ char(13) +'
var policyJson = {"bindings": [  '+ char(13) +'
{''policy'':''A'',''ct'': ''深圳市'', ''v1'': ''3'', ''v2'': ''3'',''v3'':''0'',''v4'':''0'',''v5'':''7''},'+ char(13) +'
{''policy'':''A'',''ct'': ''东莞市'', ''v1'': ''9'', ''v2'': ''170'',''v3'':''3'',''v4'':''80'',''v5'':''15''},'+ char(13) +'
{''policy'':''A'',''ct'': ''惠州市'', ''v1'': ''12'', ''v2'': ''110'',''v3'':''6'',''v4'':''90'',''v5'':''25''},'+ char(13) +'
{''policy'':''A'',''ct'': ''揭阳市'', ''v1'': ''15'', ''v2'': ''320'',''v3'':''10'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''A'',''ct'': ''河源市'', ''v1'': ''15'', ''v2'': ''25'',''v3'':''8'',''v4'':''15'',''v5'':''25''},'+ char(13) +'
{''policy'':''A'',''ct'': ''茂名市'', ''v1'': ''15'', ''v2'': ''0'',''v3'':''10'',''v4'':''0'',''v5'':''25''},'+ char(13) +'
{''policy'':''A'',''ct'': ''清远市'', ''v1'': ''15'', ''v2'': ''320'',''v3'':''5'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''A'',''ct'': ''中山市'', ''v1'': ''15'', ''v2'': ''320'',''v3'':''9'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''阳江市'', ''v1'': ''15'', ''v2'': ''320'',''v3'':''10'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''珠海市'', ''v1'': ''15'', ''v2'': ''220'',''v3'':''8'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''广州市'', ''v1'': ''15'', ''v2'': ''0'',''v3'':''7'',''v4'':''0'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''汕尾市'', ''v1'': ''20'', ''v2'': ''120'',''v3'':''10'',''v4'':''100'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''韶关市'', ''v1'': ''22'', ''v2'': ''170'',''v3'':''18'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''肇庆市'', ''v1'': ''22'', ''v2'': ''170'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''湛江市'', ''v1'': ''22'', ''v2'': ''220'',''v3'':''15'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''梅州市'', ''v1'': ''22'', ''v2'': ''150'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''江门市'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''35''},'+ char(13) +'
{''policy'':''A'',''ct'': ''汕头市'', ''v1'': ''22'', ''v2'': ''270'',''v3'':''15'',''v4'':''250'',''v5'':''35''},'+ char(13) +'
{''policy'':''A'',''ct'': ''佛山市'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''A'',''ct'': ''云浮市'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''A'',''ct'': ''潮州市'', ''v1'': ''22'', ''v2'': ''320'',''v3'':''15'',''v4'':''300'',''v5'':''40''},'+ char(13) +'
{''policy'':''A'',''ct'': ''上海'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''北京'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''天津'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''宁夏'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''江西省'', ''v1'': ''30'', ''v2'': ''220'',''v3'':''15'',''v4'':''220'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''广西省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''福建省'', ''v1'': ''80'', ''v2'': ''320'',''v3'':''60'',''v4'':''320'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''海南省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''黑龙江'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''贵州省'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''重庆省'', ''v1'': ''270'', ''v2'': ''0'',''v3'':''250'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''河北省'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''山西省'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''吉林省'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''甘肃省'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''浙江省'', ''v1'': ''100'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''四川省'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''江苏省'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''湖北省'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''湖南省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''安徽省'', ''v1'': ''420'', ''v2'': ''0'',''v3'':''400'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''河南省'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''内蒙古'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''辽宁省'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''山东省'', ''v1'': ''320'', ''v2'': ''0'',''v3'':''300'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''云南省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
{''policy'':''B'',''ct'': ''深圳市'', ''v1'': ''5'', ''v2'': ''5'',''v3'':''0'',''v4'':''0'',''v5'':''7''},'+ char(13) +'
{''policy'':''B'',''ct'': ''东莞市'', ''v1'': ''13'', ''v2'': ''170'',''v3'':''3'',''v4'':''80'',''v5'':''15''},'+ char(13) +'
{''policy'':''B'',''ct'': ''惠州市'', ''v1'': ''22'', ''v2'': ''120'',''v3'':''6'',''v4'':''90'',''v5'':''25''},'+ char(13) +'
{''policy'':''B'',''ct'': ''揭阳市'', ''v1'': ''20'', ''v2'': ''330'',''v3'':''10'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''B'',''ct'': ''河源市'', ''v1'': ''22'', ''v2'': ''30'',''v3'':''8'',''v4'':''15'',''v5'':''25''},'+ char(13) +'
{''policy'':''B'',''ct'': ''茂名市'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''10'',''v4'':''0'',''v5'':''25''},'+ char(13) +'
{''policy'':''B'',''ct'': ''清远市'', ''v1'': ''25'', ''v2'': ''330'',''v3'':''5'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''B'',''ct'': ''中山市'', ''v1'': ''25'', ''v2'': ''330'',''v3'':''9'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''阳江市'', ''v1'': ''25'', ''v2'': ''330'',''v3'':''10'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''珠海市'', ''v1'': ''22'', ''v2'': ''130'',''v3'':''8'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''广州市'', ''v1'': ''25'', ''v2'': ''0'',''v3'':''7'',''v4'':''0'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''汕尾市'', ''v1'': ''25'', ''v2'': ''150'',''v3'':''10'',''v4'':''100'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''韶关市'', ''v1'': ''25'', ''v2'': ''180'',''v3'':''18'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''肇庆市'', ''v1'': ''25'', ''v2'': ''180'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''湛江市'', ''v1'': ''28'', ''v2'': ''230'',''v3'':''15'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''梅州市'', ''v1'': ''28'', ''v2'': ''160'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''江门市'', ''v1'': ''30'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''35''},'+ char(13) +'
{''policy'':''B'',''ct'': ''汕头市'', ''v1'': ''30'', ''v2'': ''280'',''v3'':''15'',''v4'':''250'',''v5'':''35''},'+ char(13) +'
{''policy'':''B'',''ct'': ''佛山市'', ''v1'': ''35'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''B'',''ct'': ''云浮市'', ''v1'': ''35'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''B'',''ct'': ''潮州市'', ''v1'': ''35'', ''v2'': ''330'',''v3'':''15'',''v4'':''300'',''v5'':''40''},'+ char(13) +'
{''policy'':''B'',''ct'': ''上海'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''北京'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''天津'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''宁夏'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''江西省'', ''v1'': ''30'', ''v2'': ''220'',''v3'':''15'',''v4'':''220'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''广西省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''福建省'', ''v1'': ''80'', ''v2'': ''320'',''v3'':''60'',''v4'':''320'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''海南省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''黑龙江'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''贵州省'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''重庆省'', ''v1'': ''270'', ''v2'': ''0'',''v3'':''250'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''河北省'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''山西省'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''吉林省'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''甘肃省'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''浙江省'', ''v1'': ''100'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''四川省'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''江苏省'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''湖北省'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''湖南省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''安徽省'', ''v1'': ''420'', ''v2'': ''0'',''v3'':''400'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''河南省'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''内蒙古'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''辽宁省'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''山东省'', ''v1'': ''320'', ''v2'': ''0'',''v3'':''300'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''云南省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
{''policy'':''C'',''ct'': ''深圳市'', ''v1'': ''2'', ''v2'': ''3'',''v3'':''0'',''v4'':''0'',''v5'':''7''},'+ char(13) +'
{''policy'':''C'',''ct'': ''东莞市'', ''v1'': ''6'', ''v2'': ''170'',''v3'':''3'',''v4'':''80'',''v5'':''15''},'+ char(13) +'
{''policy'':''C'',''ct'': ''惠州市'', ''v1'': ''8'', ''v2'': ''110'',''v3'':''6'',''v4'':''90'',''v5'':''25''},'+ char(13) +'
{''policy'':''C'',''ct'': ''揭阳市'', ''v1'': ''12'', ''v2'': ''320'',''v3'':''10'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''C'',''ct'': ''河源市'', ''v1'': ''12'', ''v2'': ''25'',''v3'':''8'',''v4'':''15'',''v5'':''25''},'+ char(13) +'
{''policy'':''C'',''ct'': ''茂名市'', ''v1'': ''12'', ''v2'': ''0'',''v3'':''10'',''v4'':''0'',''v5'':''25''},'+ char(13) +'
{''policy'':''C'',''ct'': ''清远市'', ''v1'': ''12'', ''v2'': ''320'',''v3'':''5'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''C'',''ct'': ''中山市'', ''v1'': ''12'', ''v2'': ''320'',''v3'':''9'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''阳江市'', ''v1'': ''12'', ''v2'': ''320'',''v3'':''10'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''珠海市'', ''v1'': ''12'', ''v2'': ''220'',''v3'':''8'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''广州市'', ''v1'': ''12'', ''v2'': ''0'',''v3'':''7'',''v4'':''0'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''汕尾市'', ''v1'': ''15'', ''v2'': ''120'',''v3'':''10'',''v4'':''100'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''韶关市'', ''v1'': ''22'', ''v2'': ''170'',''v3'':''18'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''肇庆市'', ''v1'': ''22'', ''v2'': ''170'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''湛江市'', ''v1'': ''22'', ''v2'': ''220'',''v3'':''15'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''梅州市'', ''v1'': ''22'', ''v2'': ''150'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''江门市'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''35''},'+ char(13) +'
{''policy'':''C'',''ct'': ''汕头市'', ''v1'': ''22'', ''v2'': ''270'',''v3'':''15'',''v4'':''250'',''v5'':''35''},'+ char(13) +'
{''policy'':''C'',''ct'': ''佛山市'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''C'',''ct'': ''云浮市'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''C'',''ct'': ''潮州市'', ''v1'': ''22'', ''v2'': ''320'',''v3'':''15'',''v4'':''300'',''v5'':''40''},'+ char(13) +'
{''policy'':''C'',''ct'': ''上海'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''北京'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''天津'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''宁夏'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''江西省'', ''v1'': ''30'', ''v2'': ''220'',''v3'':''15'',''v4'':''220'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''广西省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''福建省'', ''v1'': ''80'', ''v2'': ''320'',''v3'':''60'',''v4'':''320'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''海南省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''黑龙江'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''贵州省'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''重庆省'', ''v1'': ''270'', ''v2'': ''0'',''v3'':''250'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''河北省'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''山西省'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''吉林省'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''甘肃省'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''浙江省'', ''v1'': ''100'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''四川省'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''江苏省'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''湖北省'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''湖南省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''安徽省'', ''v1'': ''420'', ''v2'': ''0'',''v3'':''400'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''河南省'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''内蒙古'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''辽宁省'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''山东省'', ''v1'': ''320'', ''v2'': ''0'',''v3'':''300'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''云南省'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''} '+ char(13) +'
'+ char(13) +'
 ]  '+ char(13) +'
 }; '+ char(13) +'
'+ char(13) +'
//D8 交出费'+ char(13) +'
//D2 交接费'+ char(13) +'
//D5 受理费'+ char(13) +'
function getPolicyBy(){'+ char(13) +'
	'+ char(13) +'
	var returnI = -1;'+ char(13) +'
	var returnValue="0";'+ char(13) +'
	var  policyType="A";'+ char(13) +'
	'+ char(13) +'
	if (getValue("{!VB}") == "平安会员"){'+ char(13) +'
		policyType = "Z";'+ char(13) +'
	}else{'+ char(13) +'
		'+ char(13) +'
	}'+ char(13) +'
	policyType = getStringIndex(getValue("ot"),2);'+ char(13) +'
	'+ char(13) +'
	for (i=0;i<policyJson.bindings.length;i++){'+ char(13) +'
		if (policyJson.bindings[i].policy==policyType&&policyJson.bindings[i].ct==getValue("{!V2}")){'+ char(13) +'
			 returnI = i;'+ char(13) +'
			 break;'+ char(13) +'
		}'+ char(13) +'
	} '+ char(13) +'
	setValue("{!D8}","0"); '+ char(13) +'
	setValue("{!D2}","0");'+ char(13) +'
	setValue("{!D5}","0");'+ char(13) +'
	 '+ char(13) +'
	if (returnI>-1) {'+ char(13) +'
 		if (getInt("{!D0}")<1000){'+ char(13) +'
 			setValue("{!D8}",policyJson.bindings[returnI].v3); '+ char(13) +'
 			setValue("{!D2}",policyJson.bindings[returnI].v1); '+ char(13) +'
 		}else{'+ char(13) +'
 			setValue("{!D8}",policyJson.bindings[returnI].v4); '+ char(13) +'
 			setValue("{!D2}",policyJson.bindings[returnI].v2); '+ char(13) +'
 		} '+ char(13) +'
 		if (getValue("{!D2}")=="0"){alert("不代办!");} '+ char(13) +'
		if (getValue("{!VB}") == "平安会员"){'+ char(13) +'
			setValue("{!D5}",policyJson.bindings[returnI].v5);'+ char(13) +'
		}'+ char(13) +'
	}'+ char(13) +'
           return 	returnI;'+ char(13) +'
}'+ char(13) +'
function showAllPolicy(){'+ char(13) +'
	var tmpHtml = "<table width=100% border=1>";'+ char(13) +'
	 tmpHtml = tmpHtml + "<tr><th>城市</th><th>交接费</th><th>交接费(>1000)</th></tr>";'+ char(13) +'
	var returnI = -1;'+ char(13) +'
	var returnValue="0";'+ char(13) +'
	var  policyType="A";'+ char(13) +'
	policyType = getStringIndex(getValue("ot"),2);'+ char(13) +'
	'+ char(13) +'
	for (i=0;i<policyJson.bindings.length;i++){'+ char(13) +'
		if (policyJson.bindings[i].policy==policyType){'+ char(13) +'
			 '+ char(13) +'
			 tmpHtml = tmpHtml + "<tr>";'+ char(13) +'
			 tmpHtml = tmpHtml + "<td>"+ policyJson.bindings[i].ct +"</td>";'+ char(13) +'
			 tmpHtml = tmpHtml + "<td>"+ policyJson.bindings[i].v1 +"</td>";'+ char(13) +'
			 tmpHtml = tmpHtml + "<td>"+ policyJson.bindings[i].v2 +"</td>";  '+ char(13) +'
			 tmpHtml = tmpHtml + "<tr>";'+ char(13) +'
			 '+ char(13) +'
		}'+ char(13) +'
	} '+ char(13) +'
	 tmpHtml = tmpHtml + "</table>";'+ char(13) +'
	 $("#info_dailog").html(tmpHtml);'+ char(13) +'
            $(''#info_dailog'').dialog(''open'');'+ char(13) +'
'+ char(13) +'
}'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
function limitFive(){'+ char(13) +'
  var statusMark = $("#OLD__VG").val()+$("#_VG").val();   '+ char(13) +'
  if (statusMark=="未传单已传单"){'+ char(13) +'
      if (getCurrentDatetime("hh:mm")>"16:59" ){ '+ char(13) +'
	 alert("只能在17点前进行传单!");'+ char(13) +'
  	 return false;'+ char(13) +'
      }else{'+ char(13) +'
  	setValue("{!VE}",getCurrentDatetime("YYYY-MM-DD hh:mm"))'+ char(13) +'
      }'+ char(13) +'
  }'+ char(13) +'
}'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
function hekuan(){'+ char(13) +'
  var statusMark = $("#OLD__VG").val()+$("#_VG").val(); '+ char(13) +'
  if ((statusMark=="已传单办理中")||(statusMark=="已传单已取消")){ '+ char(13) +'
  	setValue("{!VI}",getCurrentDatetime("YYYY-MM-DD hh:mm")) '+ char(13) +'
  }'+ char(13) +'
}'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
function heJi(){'+ char(13) +'
//D4  =　D6 罚金(实收) 　＋D7滞纳金(实收) 　-  D0罚款金额(预收) -  D1滞纳金(预收)+D3 补服务费'+ char(13) +'
//D4  =　D6 罚金(实收) 　＋D7滞纳金(实收) 　-  D0罚款金额(预收) -  D1滞纳金(预收) + D2 交接费 +D3 补服务费'+ char(13) +'
'+ char(13) +'
//办理成功'+ char(13) +'
//D4  =　D6 罚金(实收) 　＋D7滞纳金(实收) 　-  D0罚款金额(预收) -  D1滞纳金(预收)+D3 补服务费'+ char(13) +'
//办理失败'+ char(13) +'
//D4  =　 D3 补服务费 -  D0罚款金额(预收) -  D1滞纳金(预收)  '+ char(13) +'
var statusMark = $("#OLD__VG").val()+$("#_VG").val();  '+ char(13) +'
  if (statusMark=="办理中办理成功"){ '+ char(13) +'
           if ((getValue("D6")=="0")||(getValue("D7")=="0")){'+ char(13) +'
           	alert("实收必须填写!");'+ char(13) +'
           	return false;'+ char(13) +'
           	}'+ char(13) +'
           setValue("{!D4}", getInt("{!D6}")+getInt("{!D7}")-getInt("{!D0}")-getInt("{!D1}")+getInt("{!D3}") );'+ char(13) +'
  	       setValue("{!VJ}",getCurrentDatetime("YYYY-MM-DD hh:mm")) ;'+ char(13) +'
  }'+ char(13) +'
  if (statusMark=="办理中办理失败"){ '+ char(13) +'
            '+ char(13) +'
  	setValue("{!D4}",getInt("{!D3}") -getInt("{!D0}")-getInt("{!D1}") ) ;'+ char(13) +'
  	setValue("{!VJ}",getCurrentDatetime("YYYY-MM-DD hh:mm")) ;'+ char(13) +'
  }'+ char(13) +'
   '+ char(13) +'
  '+ char(13) +'
}','G_WZ_JL')
GO

~~##!!GET_PARAM:OBJECT_ID

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',0,'M00_K000000042','车辆违章业务','M00_K000000042','车辆违章业务',null,null,10,'URL','#','T')
GO

~~##!!GET_PARAM:PARENT_ID

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_New','新建车辆违章业务',null,null,1,'URL','/movaOpps/opp/opp.asp?objectId=[~OBJECT_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Search','车辆违章业务查询',null,null,5,'URL','/movaOpps/opp/searchOpp.asp?objectId=[~OBJECT_ID~]&isStart=2&def=Last','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Print','车辆违章业务打印',null,null,15,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Edit','车辆违章业务编辑',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Del','车辆违章业务删除',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_LOG','车辆违章业务日志',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Batch','车辆违章业务批量操作',null,null,15,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','交通违章','RL_[~OBJECT_ID~]_已传单','传单',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','交通违章','RL_[~OBJECT_ID~]_办理中','核款',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','交通违章','RL_[~OBJECT_ID~]_已取消','核款取消',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','交通违章','RL_[~OBJECT_ID~]_办理成功','办理成功',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','交通违章','RL_[~OBJECT_ID~]_办理失败','办理失败',null,null,9999,'','','T')
GO


SET IDENTITY_INSERT mu_object_field OFF 
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v0','车牌号码','VARCHAR',8,1,'F','T','T','T',' ','T','T','like','',0,5,4,'F','F','F','T','T','T','F','','','','','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v1','车辆类型','M00_I0026',5,1,'F','T','T','T',' ','F','T','','',0,15,5,'F','F','F','T','F','T','F','','','','F','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v2','违法城市','M00_I0028',5,1,'F','T','T','T',' ','T','T','=','',0,25,10,'F','F','F','F','F','F','F','getPolicyBy();','getPolicyBy();','','F','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v3','违法时间','VARCHAR',20,1,'F','T','T','T',' ','F','T','','',0,35,15,'F','F','F','F','F','F','F','','','','F','','F','F','','格式举例: 2000-12-31 12:45','格式举例: 2000-12-31 12:45','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d0','罚金','INT',4,1,'F','T','T','T',' ','F','T','','200',0,55,20,'F','F','F','F','F','F','T','getPolicyBy();','getPolicyBy();','','F','','F','F','','元','元','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d1','滞纳金','INT',4,1,'F','T','T','T',' ','F','T','','0',0,96,25,'F','F','F','F','F','F','T','','','','F','','F','F','','元   （现场单或已打单超期未缴款产生）','元   （现场单或已打单超期未缴款产生）','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d2','交公司费用','INT',4,1,'F','T','F','T',' ','F','T','','0',0,65,30,'F','F','F','F','F','F','T','','','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','F','F','WCFJT,WCJT,WCJTZ,WCSJZ','元<a href="#" onClick="showAllPolicy()">  显示价格方案</a>（低速请查看最新动态）','元<a href="#" onClick="showAllPolicy()">  显示价格方案</a>（低速请查看最新动态）','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v4','违法具体地点','VARCHAR',40,1,'F','T','F','T',' ','F','T','','',0,45,13,'F','F','F','F','F','F','F','','','','F','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v5','是否现场罚单','M00_I0016',20,1,'F','T','F','T','F','F','T','','否',0,75,40,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v6','车架号后6位','VARCHAR',6,1,'F','T','F','T',' ','F','T','','',0,30,45,'F','F','F','T','F','T','F','return calculate();','return calculate();','','F','','F','F','','为方便办理业务，请网点务必录入','为方便办理业务，请网点务必录入','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v7','发动机后4位','VARCHAR',6,1,'F','T','F','T',' ','F','T','','',0,40,50,'F','F','F','T','F','T','F','return calculate();','return calculate();','','F','','F','F','','为方便办理业务，请网点务必录入','为方便办理业务，请网点务必录入','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v8','登记证书编码后7位','VARCHAR',6,1,'F','T','F','T',' ','F','F','','',0,50,55,'F','F','F','T','F','T','F','return calculate();','return calculate();','','F','','F','F','','为方便办理业务，请网点务必录入','为方便办理业务，请网点务必录入','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v9','客户姓名','VARCHAR',7,1,'F','T','F','T',' ','F','T','like','',0,10,60,'F','F','F','T','F','T','F','','','','F','','F','F','','（XX先生/女士）','（XX先生/女士）','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','va','联系电话','VARCHAR',10,1,'F','T','F','T',' ','F','T','like','',0,20,65,'F','F','F','T','F','T','F','return calculate();','return calculate();','','F','','F','F','','（须填写11位的手机号码）','（须填写11位的手机号码）','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vb','会员类型','M00_I0032',20,1,'F','T','F','T',' ','F','F','','普通客户',0,60,1,'F','F','F','T','F','T','F','getPolicyBy();','getPolicyBy();','','F','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vc','会员保单号','VARCHAR',20,1,'F','T','F','T',' ','F','F','','',0,70,2,'F','F','F','T','F','T','F','','','','F','','F','F','','（会员请填写保单号）','（会员请填写保单号）','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vd','备注','VARCHAR',40,1,'F','T','F','T','F','F','F','','',0,105,90,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vg','办理状态','M00_I0030',10,1,'F','T','T','T',' ','T','F','=','未传单',0,90,999,'F','F','T','F','F','F','F','','','*','*','未传单(*)->已传单(传单)|'+ char(13) +'
已传单(DA,D6,D7,D3,VE,VI,VH,VJ,D4)->办理中(核款),已取消(核款取消)|'+ char(13) +'
办理中(D6,D7,D3,ZA)->办理成功(办理成功),办理失败(办理失败)|'+ char(13) +'
已取消()->.()|'+ char(13) +'
办理成功()->.()|'+ char(13) +'
办理失败()->.()','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d3','补服务费','INT',4,1,'F','F','F','T',' ','F','T','','0',0,115,999,'F','F','F','F','F','F','T','','','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d6','实罚','INT',4,1,'F','F','T','T',' ','F','T','','0',0,95,23,'F','T','F','F','F','F','T','','','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d7','实滞','INT',4,1,'F','F','T','T',' ','F','T','','0',0,105,27,'F','F','F','F','F','F','T','','','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vf','现场罚单号','VARCHAR',20,1,'F','T','F','T','F','F','F','','',0,85,36,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','ve','传单时间','TIME',10,1,'F','F','T','T',' ','T','F','dateRange','',0,135,999,'F','F','F','F','F','F','F','','','*','*','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vi','核款时间','TIME',10,1,'F','F','F','T',' ','T','F','dateRange','',0,140,999,'F','F','F','F','F','F','F','','','*','*','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vj','分单时间','TIME',10,1,'F','F','T','T',' ','T','F','dateRange','',0,140,999,'F','F','F','F','F','F','F','','','*','*','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','za','分单备注','TEXT',20,1,'F','F','F','T',' ','F','F','','',0,125,999,'F','F','F','F','F','F','F','','','W_WCFTZ,G_WZ_HK,G_WZ_CD','W_WCFTZ,G_WZ_HK,G_WZ_CD','','F','F','W_WCF','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d5','会员费用','INT',4,1,'F','T','F','T',' ','F','F','','0',0,80,999,'F','F','F','F','F','F','T','','','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','F','F','','元','元','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d4','退款','INT',4,1,'F','F','F','T',' ','F','F','','0',0,130,999,'F','F','F','F','F','F','T','','','*','*','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d8','交出费用','INT',4,1,'F','T','F','T',' ','F','F','','0',0,120,999,'F','F','F','F','F','F','T','','','','F','','F','F','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','','P10021')
GO

SET IDENTITY_INSERT mu_item OFF 
GO
insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0016','是否','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0016','是',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0016','否',0,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0026','车辆类型','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','大型汽车（黄牌）',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','小型汽车（蓝牌）',-1,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','外籍汽车（黑牌）',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','两、三轮摩托车',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','挂车',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','教练车',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','香港出入境车',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','澳门出入境车',0,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0028','违法城市','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','深圳市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','东莞市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','揭阳市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','惠州市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','河源市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','茂名市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','珠海市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','清远市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','中山市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','阳江市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','广州市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','汕尾市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','韶关市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','肇庆市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','湛江市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','梅州市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','江门市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','汕头市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','佛山市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','云浮市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','潮州市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','江西省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','广西省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','北京',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','福建省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','海南省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','黑龙江',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','贵州省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','重庆市',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','浙江省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','四川省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','江苏省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','湖南省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','湖北省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','河北省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','山西省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','吉林省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','甘肃省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','安徽省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','河南省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','内蒙古',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','辽宁省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','山东省',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','上海',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','天津',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','宁夏',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','云南省',0,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0030','违章业务状态','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','未传单',1,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','已传单',5,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','已核款',10,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','办理中',20,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','办理成功',25,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','办理失败',30,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','已取消',15,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0032','违章会员类型','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0032','太平VIP',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0032','平安会员',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0032','普通客户',0,'M00','F','P10021',null)
GO


SET IDENTITY_INSERT mu_mpl_search OFF 
GO
insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','违章业务日报表','违章日报表','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','办理状态','not like','已取消',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组',999,'F','P10021')
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VI,10)','核款时间',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','核款时间','dateRange','T',999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','传单时间','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点名称',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(1)','总宗数',10,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D0)','罚款金额(预收)',15,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D0)+SUM(C.D1)','罚金滞纳金合计',25,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D2)','交公司费用',30,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D0)+SUM(C.D1)+SUM(C.D2)','总金额',45,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D1)','滞纳金(预收)',20,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VI,10)','核款时间',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl11','违章日报表',null,null,20,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl11_D','违章日报表.下载',null,null,11,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','违章业务办理清单','办理清单表','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','{^DATEDIFF(C.VI)}','核款时间','<','30',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','核款时间','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VG','状态','=',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','车辆类型',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','违法时间',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','罚金',30,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','滞纳金',35,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V4','违法地点',25,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VD','备注',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VF','现场罚单号',40,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点名称',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','核款时间',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VG','状态',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V6','车架号后6位',50,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V7','发动机后4位',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl12','办理清单表',null,null,15,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl12_D','办理清单表.下载',null,null,12,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','违章业务核款数据','违章核款数据','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','状态','=','已传单',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组',999,'F','P10021')
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'TEAM','组ID',999,'F','P10021')
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VE,10)','传单时间',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','传单时间','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','核款时间','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点名称',1,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D0)','罚款金额(预收)',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'dbo.htmlExtProc(''确认全部核款吗'',''核款'',''movalogic.confirm_wz '' + ltrim(str(TEAM))+ '',''+ ltrim(str(82))   )','操作',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(1)','宗数',3,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D1)','滞纳金(预收)',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D2)','交接费用',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D0)+SUM(C.D1)+SUM(C.D2)','总金额',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VE,10)','传单时间',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl16','违章核款数据',null,null,10,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl16_D','违章核款数据.下载',null,null,16,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','与办单员款项对账表（回单）','回单对账表','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','状态','=','办理成功',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',999,'F','P10021')
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VJ,10)','分单日期',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D6)','罚金(合计)',15,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D7)','滞纳金(合计)',20,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(1)','宗数',10,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D8)','服务费(合计)',999,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D6)+sum(C.D7)+sum(C.D8)','总合计',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VJ,10)','分单日期',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl18','回单对账表',null,null,25,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl18_D','回单对账表.下载',null,null,18,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','与办单员款项对账表（回单）','清单对账表','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','状态','=','办理成功',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间','timeRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','预罚',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','预滞',25,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D6','实罚',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D7','实滞',30,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D8','交出费用',35,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点名称',40,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间',45,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl19','清单对账表',null,null,30,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl19_D','清单对账表.下载',null,null,19,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','保安交通代办VIP客户违章业务统计表','VIP违章统计表','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','状态','=','办理成功',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VB','会员类型','=',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VB','会员类型',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VC','会员保单号',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V9','客户姓名',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','车辆类型',25,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','违法时间',30,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',35,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D6','实罚',40,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D7','实滞',45,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间',50,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点名称',55,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V6','车架号后6位',12,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D5','受理费用',52,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','交通违章','Dy_[~OBJECT_ID~]_Mpl22','VIP违章统计表',null,null,40,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','交通违章','Dy[~OBJECT_ID~]_Mpl22_D','VIP违章统计表.下载',null,null,22,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','违章业务回单结算','办结回单表','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],'(','C.VG','状态','=','办理成功',' ','or',null,999,'F')
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','状态','=','办理失败',')','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','车辆类型',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','违法时间',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','预罚',25,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D6','实罚',30,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','预滞',35,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D7','实滞',40,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点名称',65,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间',75,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.ZA','分单备注',80,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VD','传单备注',85,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D2','交接费用',45,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D3','补服务费',50,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D4','退款合计',55,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','传单时间',70,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl24','办结回单表',null,null,24,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl24_D','办结回单表.下载',null,null,24,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','违章业务月报表','违章月报表','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',999,'F','P10021')
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组','asc','999','F','P10021')
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','传单时间','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',999,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点名称',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(1)','宗数',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl26','违章月报表',null,null,26,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl26_D','违章月报表.下载',null,null,26,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','违章业务未传单数据','未传单数据','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','状态','=','未传单',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','违法时间',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','预罚',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','预滞',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VG','状态',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点名称',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','车辆类型',7,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl30','未传单数据',null,null,30,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl30_D','未传单数据.下载',null,null,30,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','违章业务办理中数据','办理中数据','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','状态','=','办理中',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','核款时间','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','传单时间','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','核款时间','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','车辆类型',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','违法时间',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','预罚',25,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','预滞',30,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VG','状态',35,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','传单时间',40,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点名称',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VD','备注',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','核款时间',45,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl31','办理中数据',null,null,31,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl31_D','办理中数据.下载',null,null,31,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','违章业务往来结算应退补清单','退补清单表','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],'(','C.VG','办理状态','=','办理成功',' ','or',null,999,'F')
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','办理状态','=','办理失败',')','and',null,999,'F')
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.D4','退款','<>','0',' ','and',null,999,'F')
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.D4','退款','is not null','',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','网点/合作单位',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D6)-sum(C.D0)','违章罚款差额',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D7)-sum(C.D1)','违章滞纳金差额',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D3)','违章服务费差额',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D6)-sum(C.D0)+sum(C.D7)-sum(C.D1)+sum(C.D3)','差额合计（应退补）',25,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl37','退补清单表',null,null,37,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl37_D','退补清单表.下载',null,null,37,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','回单领取登记表','回单登记表','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','传单时间','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V9','客户姓名',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','车辆类型',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','违法时间',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','预罚',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','预滞',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D6','实罚',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D7','实滞',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D4','退款',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VA','联系电话',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','传单时间',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',25,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl41','回单登记表',null,null,41,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl41_D','回单登记表.下载',null,null,41,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','违章总结表','违章总结表','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','传单时间','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(1)','总宗数',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl45','违章总结表',null,null,45,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl45_D','违章总结表.下载',null,null,45,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','退款明细清单','退款明细清单','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VG','办理状态','=',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','车牌号码',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','车辆类型',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','违法时间',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','违法城市',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','罚金',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D6','实罚',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','滞纳金',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D7','实滞',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D3','补服务费',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D4','退款合计',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','组',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','核款时间',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','分单时间',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.ZA','分单备注',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy_[~OBJECT_ID~]_Mpl46','退款明细清单',null,null,46,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','车辆违章业务','Dy[~OBJECT_ID~]_Mpl46_D','退款明细清单.下载',null,null,46,'','','T')
GO



SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_New','新建车辆违章业务',null,null,1,'URL','/movaOpps/opp/opp.asp?objectId=15','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Search','车辆违章业务查询',null,null,5,'URL','/movaOpps/opp/searchOpp.asp?objectId=15&isStart=2&def=Last','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Print','车辆违章业务打印',null,null,15,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Edit','车辆违章业务编辑',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Del','车辆违章业务删除',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_LOG','车辆违章业务日志',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Batch','车辆违章业务批量操作',null,null,15,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl11','违章日报表',null,null,20,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=11','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl11_D','违章日报表.下载',null,null,11,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl12','办理清单表',null,null,15,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=12','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl12_D','办理清单表.下载',null,null,12,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl16','违章核款数据',null,null,10,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=16','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl16_D','违章核款数据.下载',null,null,16,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl18','回单对账表',null,null,25,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=18','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl18_D','回单对账表.下载',null,null,18,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl19','清单对账表',null,null,30,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=19','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl19_D','清单对账表.下载',null,null,19,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','交通违章','Dy_15_Mpl22','VIP违章统计表',null,null,40,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=22','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','交通违章','Dy_15_Mpl22_D','VIP违章统计表.下载',null,null,22,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl24','办结回单表',null,null,24,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=24','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl24_D','办结回单表.下载',null,null,24,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl26','违章月报表',null,null,26,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=26','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl26_D','违章月报表.下载',null,null,26,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','交通违章','RL_15_已传单','传单',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','交通违章','RL_15_办理中','核款',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','交通违章','RL_15_已取消','核款取消',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','交通违章','RL_15_办理成功','办理成功',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','交通违章','RL_15_办理失败','办理失败',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl30','未传单数据',null,null,30,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=30','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl30_D','未传单数据.下载',null,null,30,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl31','办理中数据',null,null,31,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=31','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl31_D','办理中数据.下载',null,null,31,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl37','退补清单表',null,null,37,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=37','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl37_D','退补清单表.下载',null,null,37,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl41','回单登记表',null,null,41,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=41','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl41_D','回单登记表.下载',null,null,41,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl45','违章总结表',null,null,45,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=45','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl45_D','违章总结表.下载',null,null,45,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl46','退款明细清单',null,null,46,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=46','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','车辆违章业务','Dy_15_Mpl46_D','退款明细清单.下载',null,null,46,'','','T')
GO


