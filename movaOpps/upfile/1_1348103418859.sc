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
~~##~~##P10021##M00_K000000040##��УԤԼҵ��##
SET IDENTITY_INSERT mu_object OFF 
GO
insert into mu_object(PLUGIN_NO,TABLE_NAME,OBJECT_CODE,OBJECT_NAME,OWNER,IS_SEAT,IS_LOCKED,IS_DISCARD,IS_SYSTEM,IS_PUBLISH,VIEW_COL,ARCHIVE,PRINT_TEMPLATE,IS_RULE,IS_PRIVATE,IS_HIERARCHY,CHK_REPEAT,ALLOW_BATCH,ADD_CONTINUE,SORT_NO,IS_SINGLE,PRE_NEW_JS,PRE_EDIT_JS,END_NEW_JS,END_EDIT_JS,ALL_SHOW_MASTER,SEARCH_SCOPE,NEW_SUBMIT_JS,EDIT_SUBMIT_JS,PUB_JS,SUPPER_MANAGER) values ('P10021','MU_OPP','M00_K000000040','��УԤԼҵ��','M00','F',' ','F','F','T',2,'F','','F','F','F','','T','F',null,'T','','','','','F','ALL','','','',null)
GO

~~##!!GET_PARAM:OBJECT_ID

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',0,'M00_K000000040','��УԤԼҵ��','M00_K000000040','��УԤԼҵ��',null,null,50,'URL','#','T')
GO

~~##!!GET_PARAM:PARENT_ID

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','��УԤԼҵ��','Dy_[~OBJECT_ID~]_New','�½���УԤԼҵ��',null,null,14,'URL','/movaOpps/opp/opp.asp?objectId=[~OBJECT_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','��УԤԼҵ��','Dy_[~OBJECT_ID~]_Search','��УԤԼҵ���ѯ',null,null,14,'URL','/movaOpps/opp/searchOpp.asp?objectId=[~OBJECT_ID~]&isStart=2&def=Last','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','��УԤԼҵ��','Dy_[~OBJECT_ID~]_Print','��УԤԼҵ���ӡ',null,null,14,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','��УԤԼҵ��','Dy_[~OBJECT_ID~]_Edit','��УԤԼҵ��༭',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','��УԤԼҵ��','Dy_[~OBJECT_ID~]_Del','��УԤԼҵ��ɾ��',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','��УԤԼҵ��','Dy_[~OBJECT_ID~]_LOG','��УԤԼҵ����־',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','��УԤԼҵ��','Dy_[~OBJECT_ID~]_Batch','��УԤԼҵ����������',null,null,14,'','','F')
GO


SET IDENTITY_INSERT mu_object_field OFF 
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v1','ԤԼ����','M00_I0022',20,1,'F','T','T','T','F','T','T','=','',0,999,999,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v2','���������','VARCHAR',7,1,'F','T','T','T','F','T','T','like','',0,999,999,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v3','ԤԼ�����֤','VARCHAR',18,1,'F','T','T','T','F','T','T','like','',0,999,999,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v4','ԤԼ����ϵ�绰','VARCHAR',12,1,'F','T','T','T','F','T','T','like','',0,999,999,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v5','ԤԼʱ��','M00_I0024',20,1,'F','T','T','T',' ','T','T','dateRange','',0,999,999,'F','F','T','F','F','F','F','','','','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v6','�Ƿ��������','M00_I0016',20,1,'F','T','T','T',' ','F','T','','��',0,999,999,'F','F','F','F','F','F','F','','','W_JX','W_JX','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v7','�Ƿ������֤','M00_I0016',20,1,'F','T','T','T',' ','F','T','','��',0,999,999,'F','F','F','F','F','F','F','','','W_JX','W_JX','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP','v8','�Ƿ�������','M00_I0016',20,1,'F','T','T','T',' ','F','T','','��',0,999,999,'F','F','F','F','F','F','F','','','W_JX','W_JX','','F','F','','','','P10021')
GO

SET IDENTITY_INSERT mu_item OFF 
GO
insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0016','�Ƿ�','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0016','��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0016','��',0,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0022','�������','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','����ɳͷ�������',11,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','��������',30,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','����ɳͷ��������',13,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','����÷�ֳ�������',3,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','�޺������ﱴ����',1,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','�޺�������������',27,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','��ɽ��������·��',19,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','���ڲ�����������',25,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','���ں���Ű�·��',7,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','����������������',9,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','������������Χ��',17,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','����������������',15,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','�����������·��',23,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','���������콾����',5,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0022','����������������',21,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0024','ԤԼʱ��','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0024','��������ʱ��(���-����)',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0024','����������ʱ��(����-���)',0,'M00','F','P10021',null)
GO


SET IDENTITY_INSERT mu_mpl_search OFF 
GO
insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','ԤԼ��ѯ���֤','ԤԼ��ѯ���֤','M00_K000000040','M00',0,'F',null,null,null,null,'F','F','T')
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
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','ԤԼ�����֤','=',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','ԤԼ����','=',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','ԤԼ����',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','ԤԼ������',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','ԤԼ�����֤',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V5','ԤԼʱ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V4','ԤԼ����ϵ�绰',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��������',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','ԤԼ','Dy_[~OBJECT_ID~]_Mpl17','ԤԼ��ѯ���֤',null,null,17,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','ԤԼ','Dy[~OBJECT_ID~]_Mpl17_D','ԤԼ��ѯ���֤.����',null,null,17,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','��УԤԼ��ѯ','��УԤԼ��ѯ','M00_K000000040','M00',0,'F',null,null,null,null,'F','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','T.TEAM_NAME','��','=','{^CURRENTGROUP}',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'CREATEDATE','����ʱ��','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','ԤԼ�����֤','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','ԤԼ������','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','ԤԼ����',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','ԤԼ������',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','ԤԼ�����֤',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','ԤԼ','Dy_[~OBJECT_ID~]_Mpl27','��УԤԼ��ѯ',null,null,27,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000040','ԤԼ','Dy[~OBJECT_ID~]_Mpl27_D','��УԤԼ��ѯ.����',null,null,27,'','','T')
GO



SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','��УԤԼҵ��','Dy_14_New','�½���УԤԼҵ��',null,null,14,'URL','/movaOppsC/opp/opp.asp?objectId=14','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','��УԤԼҵ��','Dy_14_Search','��УԤԼҵ���ѯ',null,null,14,'URL','/movaOpps/opp/searchOpp.asp?objectId=14&isStart=2&def=Last','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','��УԤԼҵ��','Dy_14_Print','��УԤԼҵ���ӡ',null,null,14,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','��УԤԼҵ��','Dy_14_Edit','��УԤԼҵ��༭',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','��УԤԼҵ��','Dy_14_Del','��УԤԼҵ��ɾ��',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','��УԤԼҵ��','Dy_14_LOG','��УԤԼҵ����־',null,null,14,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','��УԤԼҵ��','Dy_14_Batch','��УԤԼҵ����������',null,null,14,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','ԤԼ','Dy_14_Mpl17','ԤԼ��ѯ���֤',null,null,17,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=14&id=17','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','ԤԼ','Dy_14_Mpl17_D','ԤԼ��ѯ���֤.����',null,null,17,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','ԤԼ','Dy_14_Mpl27','��УԤԼ��ѯ',null,null,27,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=14&id=27','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',214,'M00_K000000040','ԤԼ','Dy_14_Mpl27_D','��УԤԼ��ѯ.����',null,null,27,'','','T')
GO


~~##~~##P10021##M00_K000000042##����Υ��ҵ��##
SET IDENTITY_INSERT mu_object OFF 
GO
insert into mu_object(PLUGIN_NO,TABLE_NAME,OBJECT_CODE,OBJECT_NAME,OWNER,IS_SEAT,IS_LOCKED,IS_DISCARD,IS_SYSTEM,IS_PUBLISH,VIEW_COL,ARCHIVE,PRINT_TEMPLATE,IS_RULE,IS_PRIVATE,IS_HIERARCHY,CHK_REPEAT,ALLOW_BATCH,ADD_CONTINUE,SORT_NO,IS_SINGLE,PRE_NEW_JS,PRE_EDIT_JS,END_NEW_JS,END_EDIT_JS,ALL_SHOW_MASTER,SEARCH_SCOPE,NEW_SUBMIT_JS,EDIT_SUBMIT_JS,PUB_JS,SUPPER_MANAGER) values ('P10021','MU_OPP1','M00_K000000042','����Υ��ҵ��','M00','F',' ','F','F','T',2,'F','','F','F','F','','F','T',null,'T','','','','','F','GROUP','return calculate();','hekuan();'+ char(13) +'
heJi();'+ char(13) +'
return limitFive();'+ char(13) +'
','function calculate(){'+ char(13) +'
var returnMark;	          '+ char(13) +'
if (getValue("{!VA}").length>11) {'+ char(13) +'
	          alert("��ϵ�绰Ϊ11λ����");'+ char(13) +'
                     setValue("{!VA}","");             '+ char(13) +'
		returnMark = false;}'+ char(13) +'
                    if (getValue("{!V6}").length>6) {'+ char(13) +'
	          alert("���ܺź�6λΪ6λ����");'+ char(13) +'
                     setValue("{!V6}","");             '+ char(13) +'
		returnMark = false;}'+ char(13) +'
                     if (getValue("{!V7}").length>4) {'+ char(13) +'
	          alert("��������4λΪ4λ����");'+ char(13) +'
                     setValue("{!V7}","");             '+ char(13) +'
		returnMark = false;}'+ char(13) +'
                     if (getValue("{!V8}").length>7) {'+ char(13) +'
	          alert("��ϵ�绰Ϊ7λ����");'+ char(13) +'
                     setValue("{!V8}","");             '+ char(13) +'
		returnMark = false;}'+ char(13) +'
'+ char(13) +'
	             '+ char(13) +'
'+ char(13) +'
	return returnMark;'+ char(13) +'
}'+ char(13) +'
'+ char(13) +'
var policyJson = {"bindings": [  '+ char(13) +'
{''policy'':''A'',''ct'': ''������'', ''v1'': ''3'', ''v2'': ''3'',''v3'':''0'',''v4'':''0'',''v5'':''7''},'+ char(13) +'
{''policy'':''A'',''ct'': ''��ݸ��'', ''v1'': ''9'', ''v2'': ''170'',''v3'':''3'',''v4'':''80'',''v5'':''15''},'+ char(13) +'
{''policy'':''A'',''ct'': ''������'', ''v1'': ''12'', ''v2'': ''110'',''v3'':''6'',''v4'':''90'',''v5'':''25''},'+ char(13) +'
{''policy'':''A'',''ct'': ''������'', ''v1'': ''15'', ''v2'': ''320'',''v3'':''10'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''A'',''ct'': ''��Դ��'', ''v1'': ''15'', ''v2'': ''25'',''v3'':''8'',''v4'':''15'',''v5'':''25''},'+ char(13) +'
{''policy'':''A'',''ct'': ''ï����'', ''v1'': ''15'', ''v2'': ''0'',''v3'':''10'',''v4'':''0'',''v5'':''25''},'+ char(13) +'
{''policy'':''A'',''ct'': ''��Զ��'', ''v1'': ''15'', ''v2'': ''320'',''v3'':''5'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''A'',''ct'': ''��ɽ��'', ''v1'': ''15'', ''v2'': ''320'',''v3'':''9'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''������'', ''v1'': ''15'', ''v2'': ''320'',''v3'':''10'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''�麣��'', ''v1'': ''15'', ''v2'': ''220'',''v3'':''8'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''������'', ''v1'': ''15'', ''v2'': ''0'',''v3'':''7'',''v4'':''0'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''��β��'', ''v1'': ''20'', ''v2'': ''120'',''v3'':''10'',''v4'':''100'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''�ع���'', ''v1'': ''22'', ''v2'': ''170'',''v3'':''18'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''������'', ''v1'': ''22'', ''v2'': ''170'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''տ����'', ''v1'': ''22'', ''v2'': ''220'',''v3'':''15'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''÷����'', ''v1'': ''22'', ''v2'': ''150'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''A'',''ct'': ''������'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''35''},'+ char(13) +'
{''policy'':''A'',''ct'': ''��ͷ��'', ''v1'': ''22'', ''v2'': ''270'',''v3'':''15'',''v4'':''250'',''v5'':''35''},'+ char(13) +'
{''policy'':''A'',''ct'': ''��ɽ��'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''A'',''ct'': ''�Ƹ���'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''A'',''ct'': ''������'', ''v1'': ''22'', ''v2'': ''320'',''v3'':''15'',''v4'':''300'',''v5'':''40''},'+ char(13) +'
{''policy'':''A'',''ct'': ''�Ϻ�'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''���'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''30'', ''v2'': ''220'',''v3'':''15'',''v4'':''220'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''80'', ''v2'': ''320'',''v3'':''60'',''v4'':''320'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''������'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''270'', ''v2'': ''0'',''v3'':''250'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''�ӱ�ʡ'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''ɽ��ʡ'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''�㽭ʡ'', ''v1'': ''100'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''�Ĵ�ʡ'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''420'', ''v2'': ''0'',''v3'':''400'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''���ɹ�'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''ɽ��ʡ'', ''v1'': ''320'', ''v2'': ''0'',''v3'':''300'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''A'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
{''policy'':''B'',''ct'': ''������'', ''v1'': ''5'', ''v2'': ''5'',''v3'':''0'',''v4'':''0'',''v5'':''7''},'+ char(13) +'
{''policy'':''B'',''ct'': ''��ݸ��'', ''v1'': ''13'', ''v2'': ''170'',''v3'':''3'',''v4'':''80'',''v5'':''15''},'+ char(13) +'
{''policy'':''B'',''ct'': ''������'', ''v1'': ''22'', ''v2'': ''120'',''v3'':''6'',''v4'':''90'',''v5'':''25''},'+ char(13) +'
{''policy'':''B'',''ct'': ''������'', ''v1'': ''20'', ''v2'': ''330'',''v3'':''10'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''B'',''ct'': ''��Դ��'', ''v1'': ''22'', ''v2'': ''30'',''v3'':''8'',''v4'':''15'',''v5'':''25''},'+ char(13) +'
{''policy'':''B'',''ct'': ''ï����'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''10'',''v4'':''0'',''v5'':''25''},'+ char(13) +'
{''policy'':''B'',''ct'': ''��Զ��'', ''v1'': ''25'', ''v2'': ''330'',''v3'':''5'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''B'',''ct'': ''��ɽ��'', ''v1'': ''25'', ''v2'': ''330'',''v3'':''9'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''������'', ''v1'': ''25'', ''v2'': ''330'',''v3'':''10'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''�麣��'', ''v1'': ''22'', ''v2'': ''130'',''v3'':''8'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''������'', ''v1'': ''25'', ''v2'': ''0'',''v3'':''7'',''v4'':''0'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''��β��'', ''v1'': ''25'', ''v2'': ''150'',''v3'':''10'',''v4'':''100'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''�ع���'', ''v1'': ''25'', ''v2'': ''180'',''v3'':''18'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''������'', ''v1'': ''25'', ''v2'': ''180'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''տ����'', ''v1'': ''28'', ''v2'': ''230'',''v3'':''15'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''÷����'', ''v1'': ''28'', ''v2'': ''160'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''B'',''ct'': ''������'', ''v1'': ''30'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''35''},'+ char(13) +'
{''policy'':''B'',''ct'': ''��ͷ��'', ''v1'': ''30'', ''v2'': ''280'',''v3'':''15'',''v4'':''250'',''v5'':''35''},'+ char(13) +'
{''policy'':''B'',''ct'': ''��ɽ��'', ''v1'': ''35'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''B'',''ct'': ''�Ƹ���'', ''v1'': ''35'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''B'',''ct'': ''������'', ''v1'': ''35'', ''v2'': ''330'',''v3'':''15'',''v4'':''300'',''v5'':''40''},'+ char(13) +'
{''policy'':''B'',''ct'': ''�Ϻ�'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''���'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''30'', ''v2'': ''220'',''v3'':''15'',''v4'':''220'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''80'', ''v2'': ''320'',''v3'':''60'',''v4'':''320'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''������'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''270'', ''v2'': ''0'',''v3'':''250'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''�ӱ�ʡ'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''ɽ��ʡ'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''�㽭ʡ'', ''v1'': ''100'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''�Ĵ�ʡ'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''420'', ''v2'': ''0'',''v3'':''400'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''���ɹ�'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''ɽ��ʡ'', ''v1'': ''320'', ''v2'': ''0'',''v3'':''300'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''B'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
{''policy'':''C'',''ct'': ''������'', ''v1'': ''2'', ''v2'': ''3'',''v3'':''0'',''v4'':''0'',''v5'':''7''},'+ char(13) +'
{''policy'':''C'',''ct'': ''��ݸ��'', ''v1'': ''6'', ''v2'': ''170'',''v3'':''3'',''v4'':''80'',''v5'':''15''},'+ char(13) +'
{''policy'':''C'',''ct'': ''������'', ''v1'': ''8'', ''v2'': ''110'',''v3'':''6'',''v4'':''90'',''v5'':''25''},'+ char(13) +'
{''policy'':''C'',''ct'': ''������'', ''v1'': ''12'', ''v2'': ''320'',''v3'':''10'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''C'',''ct'': ''��Դ��'', ''v1'': ''12'', ''v2'': ''25'',''v3'':''8'',''v4'':''15'',''v5'':''25''},'+ char(13) +'
{''policy'':''C'',''ct'': ''ï����'', ''v1'': ''12'', ''v2'': ''0'',''v3'':''10'',''v4'':''0'',''v5'':''25''},'+ char(13) +'
{''policy'':''C'',''ct'': ''��Զ��'', ''v1'': ''12'', ''v2'': ''320'',''v3'':''5'',''v4'':''300'',''v5'':''25''},'+ char(13) +'
{''policy'':''C'',''ct'': ''��ɽ��'', ''v1'': ''12'', ''v2'': ''320'',''v3'':''9'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''������'', ''v1'': ''12'', ''v2'': ''320'',''v3'':''10'',''v4'':''300'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''�麣��'', ''v1'': ''12'', ''v2'': ''220'',''v3'':''8'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''������'', ''v1'': ''12'', ''v2'': ''0'',''v3'':''7'',''v4'':''0'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''��β��'', ''v1'': ''15'', ''v2'': ''120'',''v3'':''10'',''v4'':''100'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''�ع���'', ''v1'': ''22'', ''v2'': ''170'',''v3'':''18'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''������'', ''v1'': ''22'', ''v2'': ''170'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''տ����'', ''v1'': ''22'', ''v2'': ''220'',''v3'':''15'',''v4'':''200'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''÷����'', ''v1'': ''22'', ''v2'': ''150'',''v3'':''15'',''v4'':''150'',''v5'':''30''},'+ char(13) +'
{''policy'':''C'',''ct'': ''������'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''35''},'+ char(13) +'
{''policy'':''C'',''ct'': ''��ͷ��'', ''v1'': ''22'', ''v2'': ''270'',''v3'':''15'',''v4'':''250'',''v5'':''35''},'+ char(13) +'
{''policy'':''C'',''ct'': ''��ɽ��'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''C'',''ct'': ''�Ƹ���'', ''v1'': ''22'', ''v2'': ''0'',''v3'':''15'',''v4'':''0'',''v5'':''40''},'+ char(13) +'
{''policy'':''C'',''ct'': ''������'', ''v1'': ''22'', ''v2'': ''320'',''v3'':''15'',''v4'':''300'',''v5'':''40''},'+ char(13) +'
{''policy'':''C'',''ct'': ''�Ϻ�'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''���'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''30'', ''v2'': ''220'',''v3'':''15'',''v4'':''220'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''80'', ''v2'': ''320'',''v3'':''60'',''v4'':''320'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''������'', ''v1'': ''80'', ''v2'': ''0'',''v3'':''60'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''270'', ''v2'': ''0'',''v3'':''250'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''�ӱ�ʡ'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''ɽ��ʡ'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''200'', ''v2'': ''0'',''v3'':''180'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''�㽭ʡ'', ''v1'': ''100'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''�Ĵ�ʡ'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''420'', ''v2'': ''0'',''v3'':''400'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''120'', ''v2'': ''0'',''v3'':''100'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''���ɹ�'', ''v1'': ''220'', ''v2'': ''0'',''v3'':''200'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''170'', ''v2'': ''0'',''v3'':''150'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''ɽ��ʡ'', ''v1'': ''320'', ''v2'': ''0'',''v3'':''300'',''v4'':''0'',''v5'':''0''},'+ char(13) +'
{''policy'':''C'',''ct'': ''����ʡ'', ''v1'': ''70'', ''v2'': ''0'',''v3'':''50'',''v4'':''0'',''v5'':''0''} '+ char(13) +'
'+ char(13) +'
 ]  '+ char(13) +'
 }; '+ char(13) +'
'+ char(13) +'
//D8 ������'+ char(13) +'
//D2 ���ӷ�'+ char(13) +'
//D5 �����'+ char(13) +'
function getPolicyBy(){'+ char(13) +'
	'+ char(13) +'
	var returnI = -1;'+ char(13) +'
	var returnValue="0";'+ char(13) +'
	var  policyType="A";'+ char(13) +'
	'+ char(13) +'
	if (getValue("{!VB}") == "ƽ����Ա"){'+ char(13) +'
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
 		if (getValue("{!D2}")=="0"){alert("������!");} '+ char(13) +'
		if (getValue("{!VB}") == "ƽ����Ա"){'+ char(13) +'
			setValue("{!D5}",policyJson.bindings[returnI].v5);'+ char(13) +'
		}'+ char(13) +'
	}'+ char(13) +'
           return 	returnI;'+ char(13) +'
}'+ char(13) +'
function showAllPolicy(){'+ char(13) +'
	var tmpHtml = "<table width=100% border=1>";'+ char(13) +'
	 tmpHtml = tmpHtml + "<tr><th>����</th><th>���ӷ�</th><th>���ӷ�(>1000)</th></tr>";'+ char(13) +'
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
  if (statusMark=="δ�����Ѵ���"){'+ char(13) +'
      if (getCurrentDatetime("hh:mm")>"16:59" ){ '+ char(13) +'
	 alert("ֻ����17��ǰ���д���!");'+ char(13) +'
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
  if ((statusMark=="�Ѵ���������")||(statusMark=="�Ѵ�����ȡ��")){ '+ char(13) +'
  	setValue("{!VI}",getCurrentDatetime("YYYY-MM-DD hh:mm")) '+ char(13) +'
  }'+ char(13) +'
}'+ char(13) +'
'+ char(13) +'
'+ char(13) +'
function heJi(){'+ char(13) +'
//D4  =��D6 ����(ʵ��) ����D7���ɽ�(ʵ��) ��-  D0������(Ԥ��) -  D1���ɽ�(Ԥ��)+D3 �������'+ char(13) +'
//D4  =��D6 ����(ʵ��) ����D7���ɽ�(ʵ��) ��-  D0������(Ԥ��) -  D1���ɽ�(Ԥ��) + D2 ���ӷ� +D3 �������'+ char(13) +'
'+ char(13) +'
//����ɹ�'+ char(13) +'
//D4  =��D6 ����(ʵ��) ����D7���ɽ�(ʵ��) ��-  D0������(Ԥ��) -  D1���ɽ�(Ԥ��)+D3 �������'+ char(13) +'
//����ʧ��'+ char(13) +'
//D4  =�� D3 ������� -  D0������(Ԥ��) -  D1���ɽ�(Ԥ��)  '+ char(13) +'
var statusMark = $("#OLD__VG").val()+$("#_VG").val();  '+ char(13) +'
  if (statusMark=="�����а���ɹ�"){ '+ char(13) +'
           if ((getValue("D6")=="0")||(getValue("D7")=="0")){'+ char(13) +'
           	alert("ʵ�ձ�����д!");'+ char(13) +'
           	return false;'+ char(13) +'
           	}'+ char(13) +'
           setValue("{!D4}", getInt("{!D6}")+getInt("{!D7}")-getInt("{!D0}")-getInt("{!D1}")+getInt("{!D3}") );'+ char(13) +'
  	       setValue("{!VJ}",getCurrentDatetime("YYYY-MM-DD hh:mm")) ;'+ char(13) +'
  }'+ char(13) +'
  if (statusMark=="�����а���ʧ��"){ '+ char(13) +'
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
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',0,'M00_K000000042','����Υ��ҵ��','M00_K000000042','����Υ��ҵ��',null,null,10,'URL','#','T')
GO

~~##!!GET_PARAM:PARENT_ID

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_New','�½�����Υ��ҵ��',null,null,1,'URL','/movaOpps/opp/opp.asp?objectId=[~OBJECT_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Search','����Υ��ҵ���ѯ',null,null,5,'URL','/movaOpps/opp/searchOpp.asp?objectId=[~OBJECT_ID~]&isStart=2&def=Last','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Print','����Υ��ҵ���ӡ',null,null,15,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Edit','����Υ��ҵ��༭',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Del','����Υ��ҵ��ɾ��',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_LOG','����Υ��ҵ����־',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Batch','����Υ��ҵ����������',null,null,15,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','��ͨΥ��','RL_[~OBJECT_ID~]_�Ѵ���','����',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','��ͨΥ��','RL_[~OBJECT_ID~]_������','�˿�',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','��ͨΥ��','RL_[~OBJECT_ID~]_��ȡ��','�˿�ȡ��',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','��ͨΥ��','RL_[~OBJECT_ID~]_����ɹ�','����ɹ�',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','��ͨΥ��','RL_[~OBJECT_ID~]_����ʧ��','����ʧ��',null,null,9999,'','','T')
GO


SET IDENTITY_INSERT mu_object_field OFF 
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v0','���ƺ���','VARCHAR',8,1,'F','T','T','T',' ','T','T','like','',0,5,4,'F','F','F','T','T','T','F','','','','','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v1','��������','M00_I0026',5,1,'F','T','T','T',' ','F','T','','',0,15,5,'F','F','F','T','F','T','F','','','','F','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v2','Υ������','M00_I0028',5,1,'F','T','T','T',' ','T','T','=','',0,25,10,'F','F','F','F','F','F','F','getPolicyBy();','getPolicyBy();','','F','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v3','Υ��ʱ��','VARCHAR',20,1,'F','T','T','T',' ','F','T','','',0,35,15,'F','F','F','F','F','F','F','','','','F','','F','F','','��ʽ����: 2000-12-31 12:45','��ʽ����: 2000-12-31 12:45','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d0','����','INT',4,1,'F','T','T','T',' ','F','T','','200',0,55,20,'F','F','F','F','F','F','T','getPolicyBy();','getPolicyBy();','','F','','F','F','','Ԫ','Ԫ','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d1','���ɽ�','INT',4,1,'F','T','T','T',' ','F','T','','0',0,96,25,'F','F','F','F','F','F','T','','','','F','','F','F','','Ԫ   ���ֳ������Ѵ򵥳���δ�ɿ������','Ԫ   ���ֳ������Ѵ򵥳���δ�ɿ������','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d2','����˾����','INT',4,1,'F','T','F','T',' ','F','T','','0',0,65,30,'F','F','F','F','F','F','T','','','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','F','F','WCFJT,WCJT,WCJTZ,WCSJZ','Ԫ<a href="#" onClick="showAllPolicy()">  ��ʾ�۸񷽰�</a>��������鿴���¶�̬��','Ԫ<a href="#" onClick="showAllPolicy()">  ��ʾ�۸񷽰�</a>��������鿴���¶�̬��','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v4','Υ������ص�','VARCHAR',40,1,'F','T','F','T',' ','F','T','','',0,45,13,'F','F','F','F','F','F','F','','','','F','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v5','�Ƿ��ֳ�����','M00_I0016',20,1,'F','T','F','T','F','F','T','','��',0,75,40,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v6','���ܺź�6λ','VARCHAR',6,1,'F','T','F','T',' ','F','T','','',0,30,45,'F','F','F','T','F','T','F','return calculate();','return calculate();','','F','','F','F','','Ϊ�������ҵ�����������¼��','Ϊ�������ҵ�����������¼��','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v7','��������4λ','VARCHAR',6,1,'F','T','F','T',' ','F','T','','',0,40,50,'F','F','F','T','F','T','F','return calculate();','return calculate();','','F','','F','F','','Ϊ�������ҵ�����������¼��','Ϊ�������ҵ�����������¼��','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v8','�Ǽ�֤������7λ','VARCHAR',6,1,'F','T','F','T',' ','F','F','','',0,50,55,'F','F','F','T','F','T','F','return calculate();','return calculate();','','F','','F','F','','Ϊ�������ҵ�����������¼��','Ϊ�������ҵ�����������¼��','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','v9','�ͻ�����','VARCHAR',7,1,'F','T','F','T',' ','F','T','like','',0,10,60,'F','F','F','T','F','T','F','','','','F','','F','F','','��XX����/Ůʿ��','��XX����/Ůʿ��','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','va','��ϵ�绰','VARCHAR',10,1,'F','T','F','T',' ','F','T','like','',0,20,65,'F','F','F','T','F','T','F','return calculate();','return calculate();','','F','','F','F','','������д11λ���ֻ����룩','������д11λ���ֻ����룩','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vb','��Ա����','M00_I0032',20,1,'F','T','F','T',' ','F','F','','��ͨ�ͻ�',0,60,1,'F','F','F','T','F','T','F','getPolicyBy();','getPolicyBy();','','F','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vc','��Ա������','VARCHAR',20,1,'F','T','F','T',' ','F','F','','',0,70,2,'F','F','F','T','F','T','F','','','','F','','F','F','','����Ա����д�����ţ�','����Ա����д�����ţ�','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vd','��ע','VARCHAR',40,1,'F','T','F','T','F','F','F','','',0,105,90,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vg','����״̬','M00_I0030',10,1,'F','T','T','T',' ','T','F','=','δ����',0,90,999,'F','F','T','F','F','F','F','','','*','*','δ����(*)->�Ѵ���(����)|'+ char(13) +'
�Ѵ���(DA,D6,D7,D3,VE,VI,VH,VJ,D4)->������(�˿�),��ȡ��(�˿�ȡ��)|'+ char(13) +'
������(D6,D7,D3,ZA)->����ɹ�(����ɹ�),����ʧ��(����ʧ��)|'+ char(13) +'
��ȡ��()->.()|'+ char(13) +'
����ɹ�()->.()|'+ char(13) +'
����ʧ��()->.()','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d3','�������','INT',4,1,'F','F','F','T',' ','F','T','','0',0,115,999,'F','F','F','F','F','F','T','','','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d6','ʵ��','INT',4,1,'F','F','T','T',' ','F','T','','0',0,95,23,'F','T','F','F','F','F','T','','','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d7','ʵ��','INT',4,1,'F','F','T','T',' ','F','T','','0',0,105,27,'F','F','F','F','F','F','T','','','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vf','�ֳ�������','VARCHAR',20,1,'F','T','F','T','F','F','F','','',0,85,36,'F','F','F','F','F','F','F',null,null,'','F','','F','F','',null,null,'P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','ve','����ʱ��','TIME',10,1,'F','F','T','T',' ','T','F','dateRange','',0,135,999,'F','F','F','F','F','F','F','','','*','*','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vi','�˿�ʱ��','TIME',10,1,'F','F','F','T',' ','T','F','dateRange','',0,140,999,'F','F','F','F','F','F','F','','','*','*','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','vj','�ֵ�ʱ��','TIME',10,1,'F','F','T','T',' ','T','F','dateRange','',0,140,999,'F','F','F','F','F','F','F','','','*','*','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','za','�ֵ���ע','TEXT',20,1,'F','F','F','T',' ','F','F','','',0,125,999,'F','F','F','F','F','F','F','','','W_WCFTZ,G_WZ_HK,G_WZ_CD','W_WCFTZ,G_WZ_HK,G_WZ_CD','','F','F','W_WCF','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d5','��Ա����','INT',4,1,'F','T','F','T',' ','F','F','','0',0,80,999,'F','F','F','F','F','F','T','','','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','F','F','','Ԫ','Ԫ','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d4','�˿�','INT',4,1,'F','F','F','T',' ','F','F','','0',0,130,999,'F','F','F','F','F','F','T','','','*','*','','F','F','','','','P10021')
GO
insert into mu_object_field(OBJECT_ID,OWNER,TABLE_NAME,FIELD_CODE,FIELD_NAME,FIELD_TYPE,WIDTH,HIGH,IS_FORBIDDEN,IS_NEW,IS_LIST,IS_EDIT,IS_SEAT,IS_SEARCH,IS_REQUIRED,SEARCH_TYPE,DEF_VALUE,COL_SPAN,SORT_EDIT,SORT_LIST,ARCHIVE,IS_RULE,ALLOW_BATCH,ALLOW_RECALL,CLONE_BY,ALLOW_CLONE,IS_NUM,NEW_ONCHANGE,EDIT_ONCHANGE,NEW_READ_ONLY,EDIT_READ_ONLY,STATUS_RULE,IS_RICHTEXT,IS_ATTACHMENT,HIDDEN_BY,NEW_EXT_HTML,EDIT_EXT_HTML,PLUGIN_NO) values ([~OBJECT_ID~],'M00','MU_OPP1','d8','��������','INT',4,1,'F','T','F','T',' ','F','F','','0',0,120,999,'F','F','F','F','F','F','T','','','','F','','F','F','WCFJH,HZDW-WZ,HZDW-WZ/JSZ,WCFTZ,WCTZ','','','P10021')
GO

SET IDENTITY_INSERT mu_item OFF 
GO
insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0016','�Ƿ�','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0016','��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0016','��',0,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0026','��������','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','�������������ƣ�',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','С�����������ƣ�',-1,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','�⼮���������ƣ�',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','��������Ħ�г�',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','�ҳ�',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','��۳��뾳��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0026','���ų��뾳��',0,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0028','Υ������','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','��ݸ��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','��Դ��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','ï����',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','�麣��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','��Զ��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','��ɽ��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','��β��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','�ع���',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','տ����',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','÷����',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','��ͷ��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','��ɽ��',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','�Ƹ���',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','������',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','�㽭ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','�Ĵ�ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','�ӱ�ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','ɽ��ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','���ɹ�',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','ɽ��ʡ',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','�Ϻ�',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','���',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0028','����ʡ',0,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0030','Υ��ҵ��״̬','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','δ����',1,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','�Ѵ���',5,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','�Ѻ˿�',10,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','������',20,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','����ɹ�',25,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','����ʧ��',30,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0030','��ȡ��',15,'M00','F','P10021',null)
GO

insert into mu_item(OWNER,ITEM_CODE,ITEM_NAME,ARCHIVE,FIELD_TYPE,PLUGIN_NO,IS_PUBLIC) values ('M00','M00_I0032','Υ�»�Ա����','F','v','P10021','F')
GO
~~##!!GET_PARAM:ITEM_ID
SET IDENTITY_INSERT mu_item_list OFF 
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0032','̫ƽVIP',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0032','ƽ����Ա',0,'M00','F','P10021',null)
GO
insert into mu_item_list(ITEM_ID,ITEM_CODE,TXT,SORT_NO,OWNER,ARCHIVE,PLUGIN_NO,VALUE) values ([~ITEM_ID~],'M00_I0032','��ͨ�ͻ�',0,'M00','F','P10021',null)
GO


SET IDENTITY_INSERT mu_mpl_search OFF 
GO
insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','Υ��ҵ���ձ���','Υ���ձ���','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','����״̬','not like','��ȡ��',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��',999,'F','P10021')
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VI,10)','�˿�ʱ��',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','�˿�ʱ��','dateRange','T',999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','����ʱ��','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��������',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(1)','������',10,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D0)','������(Ԥ��)',15,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D0)+SUM(C.D1)','�������ɽ�ϼ�',25,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D2)','����˾����',30,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D0)+SUM(C.D1)+SUM(C.D2)','�ܽ��',45,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D1)','���ɽ�(Ԥ��)',20,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VI,10)','�˿�ʱ��',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl11','Υ���ձ���',null,null,20,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl11_D','Υ���ձ���.����',null,null,11,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','Υ��ҵ������嵥','�����嵥��','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','{^DATEDIFF(C.VI)}','�˿�ʱ��','<','30',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','�˿�ʱ��','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VG','״̬','=',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','��������',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','Υ��ʱ��',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','����',30,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','���ɽ�',35,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V4','Υ���ص�',25,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VD','��ע',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VF','�ֳ�������',40,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��������',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','�˿�ʱ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VG','״̬',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V6','���ܺź�6λ',50,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V7','��������4λ',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl12','�����嵥��',null,null,15,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl12_D','�����嵥��.����',null,null,12,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','Υ��ҵ��˿�����','Υ�º˿�����','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','״̬','=','�Ѵ���',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��',999,'F','P10021')
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'TEAM','��ID',999,'F','P10021')
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VE,10)','����ʱ��',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','����ʱ��','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','�˿�ʱ��','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��������',1,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D0)','������(Ԥ��)',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'dbo.htmlExtProc(''ȷ��ȫ���˿���'',''�˿�'',''movalogic.confirm_wz '' + ltrim(str(TEAM))+ '',''+ ltrim(str(82))   )','����',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(1)','����',3,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D1)','���ɽ�(Ԥ��)',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D2)','���ӷ���',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'SUM(C.D0)+SUM(C.D1)+SUM(C.D2)','�ܽ��',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VE,10)','����ʱ��',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl16','Υ�º˿�����',null,null,10,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl16_D','Υ�º˿�����.����',null,null,16,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','��쵥Ա������˱��ص���','�ص����˱�','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','״̬','=','����ɹ�',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',999,'F','P10021')
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VJ,10)','�ֵ�����',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D6)','����(�ϼ�)',15,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D7)','���ɽ�(�ϼ�)',20,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(1)','����',10,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D8)','�����(�ϼ�)',999,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D6)+sum(C.D7)+sum(C.D8)','�ܺϼ�',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'left(C.VJ,10)','�ֵ�����',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl18','�ص����˱�',null,null,25,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl18_D','�ص����˱�.����',null,null,18,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','��쵥Ա������˱��ص���','�嵥���˱�','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','״̬','=','����ɹ�',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��','timeRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','Ԥ��',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','Ԥ��',25,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D6','ʵ��',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D7','ʵ��',30,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D8','��������',35,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��������',40,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��',45,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl19','�嵥���˱�',null,null,30,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl19_D','�嵥���˱�.����',null,null,19,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','������ͨ����VIP�ͻ�Υ��ҵ��ͳ�Ʊ�','VIPΥ��ͳ�Ʊ�','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','״̬','=','����ɹ�',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VB','��Ա����','=',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VB','��Ա����',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VC','��Ա������',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V9','�ͻ�����',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','��������',25,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','Υ��ʱ��',30,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',35,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D6','ʵ��',40,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D7','ʵ��',45,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��',50,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��������',55,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V6','���ܺź�6λ',12,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D5','�������',52,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','��ͨΥ��','Dy_[~OBJECT_ID~]_Mpl22','VIPΥ��ͳ�Ʊ�',null,null,40,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','��ͨΥ��','Dy[~OBJECT_ID~]_Mpl22_D','VIPΥ��ͳ�Ʊ�.����',null,null,22,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','Υ��ҵ��ص�����','���ص���','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],'(','C.VG','״̬','=','����ɹ�',' ','or',null,999,'F')
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','״̬','=','����ʧ��',')','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','��������',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','Υ��ʱ��',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','Ԥ��',25,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D6','ʵ��',30,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','Ԥ��',35,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D7','ʵ��',40,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��������',65,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��',75,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.ZA','�ֵ���ע',80,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VD','������ע',85,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D2','���ӷ���',45,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D3','�������',50,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D4','�˿�ϼ�',55,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','����ʱ��',70,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl24','���ص���',null,null,24,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl24_D','���ص���.����',null,null,24,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','Υ��ҵ���±���','Υ���±���','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',999,'F','P10021')
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��','asc','999','F','P10021')
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','����ʱ��','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',999,'T','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��������',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(1)','����',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl26','Υ���±���',null,null,26,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl26_D','Υ���±���.����',null,null,26,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','Υ��ҵ��δ��������','δ��������','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','״̬','=','δ����',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���','like',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','Υ��ʱ��',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','Ԥ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','Ԥ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VG','״̬',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��������',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','��������',7,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl30','δ��������',null,null,30,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl30_D','δ��������.����',null,null,30,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','Υ��ҵ�����������','����������','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','״̬','=','������',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','�˿�ʱ��','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','����ʱ��','dateRange',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','�˿�ʱ��','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','��������',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','Υ��ʱ��',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','Ԥ��',25,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','Ԥ��',30,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VG','״̬',35,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','����ʱ��',40,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��������',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VD','��ע',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','�˿�ʱ��',45,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl31','����������',null,null,31,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl31_D','����������.����',null,null,31,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','Υ��ҵ����������Ӧ�˲��嵥','�˲��嵥��','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],'(','C.VG','����״̬','=','����ɹ�',' ','or',null,999,'F')
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.VG','����״̬','=','����ʧ��',')','and',null,999,'F')
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.D4','�˿�','<>','0',' ','and',null,999,'F')
GO
insert into mu_mpl_condition(PLUGIN_NO,MU_MPL_SEARCH_ID,LEFT_BRACKET,FIELD_CODE,FIELD_NAME,CONDITION,MATCHING_VALUE,RIGHT_BRACKET,AND_OR,IS_NUMERIC,SORT_NO,ARCHIVE) values ('P10021',[~MU_MPL_SEARCH_ID~],' ','C.D4','�˿�','is not null','',' ','',null,999,'F')
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','����/������λ',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D6)-sum(C.D0)','Υ�·�����',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D7)-sum(C.D1)','Υ�����ɽ���',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D3)','Υ�·���Ѳ��',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(C.D6)-sum(C.D0)+sum(C.D7)-sum(C.D1)+sum(C.D3)','���ϼƣ�Ӧ�˲���',25,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl37','�˲��嵥��',null,null,37,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl37_D','�˲��嵥��.����',null,null,37,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','�ص���ȡ�ǼǱ�','�ص��ǼǱ�','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','����ʱ��','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���',5,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V9','�ͻ�����',10,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','��������',15,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','Υ��ʱ��',20,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','Ԥ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','Ԥ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D6','ʵ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D7','ʵ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D4','�˿�',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VA','��ϵ�绰',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','����ʱ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',25,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl41','�ص��ǼǱ�',null,null,41,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl41_D','�ص��ǼǱ�.����',null,null,41,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','Υ���ܽ��','Υ���ܽ��','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
insert into mu_mpl_group(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��',999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VE','����ʱ��','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'sum(1)','������',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl45','Υ���ܽ��',null,null,45,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl45_D','Υ���ܽ��.����',null,null,45,'','','T')
GO


insert into mu_mpl_search(PLUGIN_NO,SEARCH_NAME,ABBR,OBJECT_CODE,OWNER,TEAM,IS_FUNCTION,SELECT_SQL,WHERE_SQL,ORDER_SQL,COUNT_SQL,ALLOW_DOWNLOAD,ARCHIVE,AUTO_SEARCH) values ('P10021','�˿���ϸ�嵥','�˿���ϸ�嵥','M00_K000000042','M00',0,'F',null,null,null,null,'T','F','T')
GO

~~##!!GET_PARAM:MU_MPL_SEARCH_ID
SET IDENTITY_INSERT mu_mpl_condition OFF 
GO
SET IDENTITY_INSERT mu_mpl_group OFF 
GO
SET IDENTITY_INSERT mu_mpl_order OFF 
GO
insert into mu_mpl_order(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,ASC_DESC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��','asc','999','F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_pre_condition OFF 
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VG','����״̬','=',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���','like',null,999,'F','P10021')
GO
insert into mu_mpl_pre_condition(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SEARCH_TYPE,IS_NUMERIC,SORT_NO,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��','dateRange',null,999,'F','P10021')
GO
SET IDENTITY_INSERT mu_mpl_select OFF 
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V0','���ƺ���',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V1','��������',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V3','Υ��ʱ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.V2','Υ������',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D0','����',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D6','ʵ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D1','���ɽ�',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D7','ʵ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D3','�������',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.D4','�˿�ϼ�',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'T.TEAM_NAME','��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VI','�˿�ʱ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.VJ','�ֵ�ʱ��',999,'F','F','P10021')
GO
insert into mu_mpl_select(MU_MPL_SEARCH_ID,FIELD_CODE,FIELD_NAME,SORT_NO,ALLOW_COUNT,ARCHIVE,PLUGIN_NO) values ([~MU_MPL_SEARCH_ID~],'C.ZA','�ֵ���ע',999,'F','F','P10021')
GO
SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy_[~OBJECT_ID~]_Mpl46','�˿���ϸ�嵥',null,null,46,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',[~FUNCTION_PARENT_ID~],'M00_K000000042','����Υ��ҵ��','Dy[~OBJECT_ID~]_Mpl46_D','�˿���ϸ�嵥.����',null,null,46,'','','T')
GO



SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_New','�½�����Υ��ҵ��',null,null,1,'URL','/movaOpps/opp/opp.asp?objectId=15','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Search','����Υ��ҵ���ѯ',null,null,5,'URL','/movaOpps/opp/searchOpp.asp?objectId=15&isStart=2&def=Last','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Print','����Υ��ҵ���ӡ',null,null,15,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Edit','����Υ��ҵ��༭',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Del','����Υ��ҵ��ɾ��',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_LOG','����Υ��ҵ����־',null,null,15,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Batch','����Υ��ҵ����������',null,null,15,'','','F')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl11','Υ���ձ���',null,null,20,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=11','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl11_D','Υ���ձ���.����',null,null,11,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl12','�����嵥��',null,null,15,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=12','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl12_D','�����嵥��.����',null,null,12,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl16','Υ�º˿�����',null,null,10,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=16','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl16_D','Υ�º˿�����.����',null,null,16,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl18','�ص����˱�',null,null,25,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=18','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl18_D','�ص����˱�.����',null,null,18,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl19','�嵥���˱�',null,null,30,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=19','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl19_D','�嵥���˱�.����',null,null,19,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','��ͨΥ��','Dy_15_Mpl22','VIPΥ��ͳ�Ʊ�',null,null,40,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=22','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','��ͨΥ��','Dy_15_Mpl22_D','VIPΥ��ͳ�Ʊ�.����',null,null,22,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl24','���ص���',null,null,24,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=24','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl24_D','���ص���.����',null,null,24,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl26','Υ���±���',null,null,26,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=26','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl26_D','Υ���±���.����',null,null,26,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','��ͨΥ��','RL_15_�Ѵ���','����',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','��ͨΥ��','RL_15_������','�˿�',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','��ͨΥ��','RL_15_��ȡ��','�˿�ȡ��',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','��ͨΥ��','RL_15_����ɹ�','����ɹ�',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','��ͨΥ��','RL_15_����ʧ��','����ʧ��',null,null,9999,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl30','δ��������',null,null,30,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=30','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl30_D','δ��������.����',null,null,30,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl31','����������',null,null,31,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=31','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl31_D','����������.����',null,null,31,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl37','�˲��嵥��',null,null,37,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=37','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl37_D','�˲��嵥��.����',null,null,37,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl41','�ص��ǼǱ�',null,null,41,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=41','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl41_D','�ص��ǼǱ�.����',null,null,41,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl45','Υ���ܽ��',null,null,45,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=45','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl45_D','Υ���ܽ��.����',null,null,45,'','','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl46','�˿���ϸ�嵥',null,null,46,'URL','/movaOpps/opp/mpl.asp?isStart=0&object_id=15&id=46','T')
GO

SET IDENTITY_INSERT mova_function OFF 
GO
insert into mova_function(PLUGIN_NO,PARENT_ID,CATEGORY,CATEGORYNAME,CODE,FUNCTIONNAME,IS_SUPER,DESCRIPTION,SORTNO,FUNCTION_TYPE,URL,STATUS) values ('P10021',222,'M00_K000000042','����Υ��ҵ��','Dy_15_Mpl46_D','�˿���ϸ�嵥.����',null,null,46,'','','T')
GO


