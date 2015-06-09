if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GetNumber]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[GetNumber]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LPAD]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[LPAD]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SetDate]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[SetDate]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SetInt]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[SetInt]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SetNumber]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[SetNumber]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[htmlExtHref]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[htmlExtHref]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[htmlExtMpl]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[htmlExtMpl]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[htmlExtProc]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[htmlExtProc]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[isEmpty]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[isEmpty]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[toLike]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[toLike]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_function]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_function]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_log]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_log]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_picklist]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_picklist]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_plugin]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_plugin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_plugin_object]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_plugin_object]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_role]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_role]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_role_reuse]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_role_reuse]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_rolefunction]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_rolefunction]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_serialno]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_serialno]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_team]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_team]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_test]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_test]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_user]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mova_user_team]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mova_user_team]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_config]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_config]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_customer]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_customer]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_ext_menu]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_ext_menu]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_field_set]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_field_set]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_item]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_item]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_item_list]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_item_list]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_knowledge]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_knowledge]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_log]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_log]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_mpl_condition]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_mpl_condition]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_mpl_group]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_mpl_group]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_mpl_order]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_mpl_order]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_mpl_pre_condition]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_mpl_pre_condition]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_mpl_search]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_mpl_search]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_mpl_select]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_mpl_select]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_object]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_object]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_object_field]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_object_field]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_object_master_field]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_object_master_field]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_object_rule]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_object_rule]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp1]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp10]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp10]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp11]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp11]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp12]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp12]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp13]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp13]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp14]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp14]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp15]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp15]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp16]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp16]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp17]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp17]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp18]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp18]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp19]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp19]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp2]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp20]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp20]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp3]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp3]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp4]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp4]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp5]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp5]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp6]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp6]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp7]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp7]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp8]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp8]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_opp9]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_opp9]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mu_phone]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mu_phone]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[test]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[test]
GO

CREATE TABLE [dbo].[mova_function] (
	[mova_functionid] [int] IDENTITY (1, 1) NOT NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[parent_id] [int] NULL ,
	[category] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[categoryName] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[code] [varchar] (100) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[functionname] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_super] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[description] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[sortno] [int] NULL ,
	[function_type] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[url] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[status] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[is_pub] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_log] (
	[log_id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[object_name] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[entity_id] [bigint] NULL ,
	[operation] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[operation_date] [datetime] NULL ,
	[Notes] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[operation_by] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_picklist] (
	[mova_picklistid] [int] IDENTITY (1, 1) NOT NULL ,
	[picklistname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[code] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[selectvalue] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[txt] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[description] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[moduleid] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[sortno] [int] NULL ,
	[is_memory] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [smalldatetime] NULL ,
	[createuser] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[modifydate] [smalldatetime] NULL ,
	[modifyuser] [int] NULL ,
	[is_super] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_plugin] (
	[plugin_id] [int] IDENTITY (1, 1) NOT NULL ,
	[plugin_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[author] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[version] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_plugin_object] (
	[plugin_object_id] [int] IDENTITY (1, 1) NOT NULL ,
	[plugin_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_role] (
	[mova_roleid] [int] IDENTITY (1, 1) NOT NULL ,
	[rolename] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[rolecode] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[description] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[firstpage] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[scope] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyUser] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_role_reuse] (
	[mova_role_reuse_id] [int] IDENTITY (1, 1) NOT NULL ,
	[mova_roleid] [int] NULL ,
	[reuse_Role_id] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_rolefunction] (
	[mova_rolefunctionid] [int] IDENTITY (1, 1) NOT NULL ,
	[mova_roleid] [int] NOT NULL ,
	[mova_functionid] [int] NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_serialno] (
	[object_name] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[pre_fix] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[seed] [int] NULL ,
	[last_date] [datetime] NULL ,
	[Step] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_team] (
	[team_id] [int] IDENTITY (1, 1) NOT NULL ,
	[team_name] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[parent_id] [int] NULL ,
	[status] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_test] (
	[a] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[b] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_user] (
	[mova_userid] [int] IDENTITY (1, 1) NOT NULL ,
	[mova_roleid] [int] NOT NULL ,
	[username] [varchar] (25) COLLATE Chinese_PRC_CI_AS NULL ,
	[login] [varchar] (25) COLLATE Chinese_PRC_CI_AS NULL ,
	[password] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[department] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[phone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[mobile] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[mail] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[sex] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[status] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[lastactive] [datetime] NULL ,
	[isdel] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[team_id] [int] NULL ,
	[customer_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[mac_addr] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[opp_type] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[param1] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[param2] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[param3] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[qq] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mova_user_team] (
	[mova_userid] [int] NOT NULL ,
	[team_id] [int] NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_config] (
	[config_id] [int] IDENTITY (1, 1) NOT NULL ,
	[customer_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[logo_pic] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[company] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[sync_Remote] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[ext_domain] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ext_menu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[popup_url] [varchar] (300) COLLATE Chinese_PRC_CI_AS NULL ,
	[security_code] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[session_timeout] [int] NULL ,
	[remote_http] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[system_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[out_call] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[monitor_type] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[outCall_type] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[default_object_id] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_customer] (
	[customer_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[customer_no] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[main_phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_ext_menu] (
	[mu_ext_menu_id] [int] IDENTITY (1, 1) NOT NULL ,
	[customer_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[menu_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[menu_URL] [varchar] (300) COLLATE Chinese_PRC_CI_AS NULL ,
	[sort_no] [int] NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_field_set] (
	[field_id] [int] IDENTITY (1, 1) NOT NULL ,
	[field_code] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[table_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_item] (
	[item_id] [int] IDENTITY (1, 1) NOT NULL ,
	[owner] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[item_code] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[item_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[field_type] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_public] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_pub] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_item_list] (
	[item_list_id] [int] IDENTITY (1, 1) NOT NULL ,
	[item_id] [int] NOT NULL ,
	[item_code] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[txt] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[sort_no] [int] NOT NULL ,
	[owner] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[value] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_knowledge] (
	[knowledge_id] [int] IDENTITY (1, 1) NOT NULL ,
	[category] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[owner] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[title] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[content] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[is_top] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[title_div] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_log] (
	[log_id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[object_id] [int] NULL ,
	[object_Code] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[object_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[operation] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[description] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[createuser] [int] NULL ,
	[createdate] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_mpl_condition] (
	[mu_mpl_condition_id] [int] IDENTITY (1, 1) NOT NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[mu_mpl_search_id] [int] NULL ,
	[left_bracket] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[field_code] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[field_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[condition] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[matching_value] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[right_bracket] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[and_or] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_numeric] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[sort_no] [int] NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_mpl_group] (
	[mu_mpl_group_id] [int] IDENTITY (1, 1) NOT NULL ,
	[mu_mpl_search_id] [int] NULL ,
	[field_code] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[field_name] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[sort_no] [int] NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_mpl_order] (
	[mu_mpl_order_id] [int] IDENTITY (1, 1) NOT NULL ,
	[mu_mpl_search_id] [int] NULL ,
	[field_code] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[field_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[asc_desc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[sort_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_mpl_pre_condition] (
	[mu_mpl_pre_condition_id] [int] IDENTITY (1, 1) NOT NULL ,
	[mu_mpl_search_id] [int] NULL ,
	[field_code] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[field_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[search_type] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_numeric] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[sort_no] [int] NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_mpl_search] (
	[mu_mpl_search_id] [int] IDENTITY (1, 1) NOT NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[search_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[abbr] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[owner] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[team] [int] NULL ,
	[is_function] [varchar] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[select_sql] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[where_sql] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[order_sql] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[count_sql] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[allow_download] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[archive] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[auto_search] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_mpl_select] (
	[mu_mpl_select_id] [int] IDENTITY (1, 1) NOT NULL ,
	[mu_mpl_search_id] [int] NOT NULL ,
	[field_code] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[field_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[sort_no] [int] NULL ,
	[allow_count] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_object] (
	[object_id] [int] IDENTITY (1, 1) NOT NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[table_name] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[object_name] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[is_seat] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[is_locked] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[is_discard] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[is_system] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[is_publish] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[view_col] [int] NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[print_template] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_rule] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_private] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_hierarchy] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[chk_repeat] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[allow_batch] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[add_continue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[sort_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_single] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[pre_new_js] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[pre_edit_js] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[end_new_js] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[end_edit_js] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[all_show_master] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[new_submit_js] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[edit_submit_js] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[pub_js] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[supper_manager] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_owner] [char](1) NULL,
	[depend_master] [varchar](200) NULL,
	[template_field] [varchar](30) NULL,
	[template_define] [text] NULL,
	[show_no] [varchar](1) NULL DEFAULT ('T')
	
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_object_field] (
	[field_id] [int] IDENTITY (1, 1) NOT NULL ,
	[object_id] [int] NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[table_name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[field_code] [varchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[field_name] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[field_type] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[width] [int] NULL ,
	[high] [int] NULL ,
	[is_forbidden] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_new] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[is_list] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[is_edit] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[is_seat] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[is_search] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[is_required] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[search_type] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[def_value] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[col_span] [int] NOT NULL ,
	[sort_edit] [int] NULL ,
	[sort_list] [int] NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[is_rule] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[allow_batch] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[allow_recall] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[clone_by] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[allow_clone] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_num] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[new_onChange] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[edit_onChange] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[new_read_only] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[edit_read_only] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[status_rule] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_richText] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[is_attachment] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[hidden_by] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[new_ext_html] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[edit_ext_html] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[plugin_no] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[fk_select] [varchar](300) NULL,
	[fk_window] [varchar](300) NULL,
	[hidden_by_field] [varchar](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_object_master_field] (
	[mu_object_master_field_id] [int] IDENTITY (1, 1) NOT NULL ,
	[owner] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[object_id] [int] NULL ,
	[field_id] [int] NULL ,
	[sort_no] [int] NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_object_rule] (
	[object_rule_id] [int] IDENTITY (1, 1) NOT NULL ,
	[type] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[object_id] [int] NULL ,
	[con_role] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[con_field] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[con_condition] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[con_value] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[con_edit] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[con_delete] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[con_hierarchy] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp1] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp10] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp11] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp12] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp13] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp14] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp15] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp16] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp17] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp18] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp19] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp2] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp20] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp3] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp4] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp5] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp6] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp7] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp8] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_opp9] (
	[opp_id] [int] IDENTITY (1, 1) NOT NULL ,
	[va] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vb] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ve] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vf] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vg] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vh] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vi] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vj] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vk] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vl] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vn] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vp] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vq] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vr] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vs] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vt] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vu] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vv] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vx] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vy] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[vz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[za] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zb] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zc] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zd] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ze] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zf] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zg] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[zh] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[object_code] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[opp_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL ,
	[hierarchy_id] [int] NULL ,
	[v0] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v1] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v2] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v3] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v4] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v5] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v6] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v7] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v8] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[v9] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[d0] [numeric](18, 2) NULL ,
	[d1] [numeric](18, 2) NULL ,
	[d2] [numeric](18, 2) NULL ,
	[d3] [numeric](18, 2) NULL ,
	[d4] [numeric](18, 2) NULL ,
	[d5] [numeric](18, 2) NULL ,
	[d6] [numeric](18, 2) NULL ,
	[d7] [numeric](18, 2) NULL ,
	[d8] [numeric](18, 2) NULL ,
	[d9] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[db] [numeric](18, 2) NULL ,
	[dc] [numeric](18, 2) NULL ,
	[dd] [numeric](18, 2) NULL ,
	[de] [numeric](18, 2) NULL ,
	[df] [numeric](18, 2) NULL ,
	[dg] [numeric](18, 2) NULL ,
	[dh] [numeric](18, 2) NULL ,
	[di] [numeric](18, 2) NULL ,
	[dj] [numeric](18, 2) NULL ,
	[dk] [numeric](18, 2) NULL ,
	[dl] [numeric](18, 2) NULL ,
	[dm] [numeric](18, 2) NULL ,
	[dn] [numeric](18, 2) NULL ,
	[do] [numeric](18, 2) NULL ,
	[dp] [numeric](18, 2) NULL ,
	[dq] [numeric](18, 2) NULL ,
	[dr] [numeric](18, 2) NULL ,
	[ds] [numeric](18, 2) NULL ,
	[dt] [numeric](18, 2) NULL ,
	[du] [numeric](18, 2) NULL ,
	[dv] [numeric](18, 2) NULL ,
	[dw] [numeric](18, 2) NULL ,
	[dx] [numeric](18, 2) NULL ,
	[dy] [numeric](18, 2) NULL ,
	[dz] [numeric](18, 2) NULL ,
	[team] [int] NULL ,
	[search_scope] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Import_batch_no] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mu_phone] (
	[phone_id] [int] IDENTITY (1, 1) NOT NULL ,
	[owner] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[customer_id] [int] NOT NULL ,
	[phone] [varchar] (25) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[category] [varchar] (25) COLLATE Chinese_PRC_CI_AS NULL ,
	[description] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[archive] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[createdate] [datetime] NULL ,
	[createuser] [int] NULL ,
	[modifydate] [datetime] NULL ,
	[modifyuser] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[test] (
	[tid] [int] IDENTITY (1, 1) NOT NULL ,
	[pnr] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Passenger_Name] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Card_No] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Depart_Code] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Depart_Time] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Arrive_Code] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Arrive_Time] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Flight_No] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Seat_Class] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Airline_Code] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[mova_function] WITH NOCHECK ADD 
	CONSTRAINT [PK_mova_function] PRIMARY KEY  CLUSTERED 
	(
		[mova_functionid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mova_log] WITH NOCHECK ADD 
	CONSTRAINT [PK_mova_log] PRIMARY KEY  CLUSTERED 
	(
		[log_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mova_picklist] WITH NOCHECK ADD 
	CONSTRAINT [PK_mova_picklist] PRIMARY KEY  CLUSTERED 
	(
		[mova_picklistid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mova_plugin] WITH NOCHECK ADD 
	CONSTRAINT [PK_mova_plugin] PRIMARY KEY  CLUSTERED 
	(
		[plugin_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mova_plugin_object] WITH NOCHECK ADD 
	CONSTRAINT [PK_mova_plugin_object] PRIMARY KEY  CLUSTERED 
	(
		[plugin_object_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mova_role] WITH NOCHECK ADD 
	CONSTRAINT [PK_mova_role] PRIMARY KEY  CLUSTERED 
	(
		[mova_roleid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mova_role_reuse] WITH NOCHECK ADD 
	CONSTRAINT [PK_mova_role_reuse] PRIMARY KEY  CLUSTERED 
	(
		[mova_role_reuse_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mova_rolefunction] WITH NOCHECK ADD 
	CONSTRAINT [PK_mova_rolefunction] PRIMARY KEY  CLUSTERED 
	(
		[mova_rolefunctionid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_config] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_config] PRIMARY KEY  CLUSTERED 
	(
		[config_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_customer] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_customer] PRIMARY KEY  CLUSTERED 
	(
		[customer_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_ext_menu] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_ext_menu] PRIMARY KEY  CLUSTERED 
	(
		[mu_ext_menu_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_field_set] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_field_set] PRIMARY KEY  CLUSTERED 
	(
		[field_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_item] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_item] PRIMARY KEY  CLUSTERED 
	(
		[item_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_item_list] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_item_list] PRIMARY KEY  CLUSTERED 
	(
		[item_list_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_knowledge] WITH NOCHECK ADD 
	CONSTRAINT [PK_mova_knowledge] PRIMARY KEY  CLUSTERED 
	(
		[knowledge_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_log] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_log] PRIMARY KEY  CLUSTERED 
	(
		[log_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_mpl_condition] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_mpl_condition] PRIMARY KEY  CLUSTERED 
	(
		[mu_mpl_condition_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_mpl_group] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_mpl_group] PRIMARY KEY  CLUSTERED 
	(
		[mu_mpl_group_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_mpl_order] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_mpl_order] PRIMARY KEY  CLUSTERED 
	(
		[mu_mpl_order_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_mpl_pre_condition] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_mpl_pre_condition] PRIMARY KEY  CLUSTERED 
	(
		[mu_mpl_pre_condition_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_mpl_search] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_mpl_search] PRIMARY KEY  CLUSTERED 
	(
		[mu_mpl_search_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_mpl_select] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_mpl_select] PRIMARY KEY  CLUSTERED 
	(
		[mu_mpl_select_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_object] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_object] PRIMARY KEY  CLUSTERED 
	(
		[object_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_object_field] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_object_field] PRIMARY KEY  CLUSTERED 
	(
		[field_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_object_master_field] WITH NOCHECK ADD 
	CONSTRAINT [PK_opp_master_field] PRIMARY KEY  CLUSTERED 
	(
		[mu_object_master_field_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_object_rule] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_table_rule] PRIMARY KEY  CLUSTERED 
	(
		[object_rule_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_opp] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_opp] PRIMARY KEY  CLUSTERED 
	(
		[opp_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[mu_phone] WITH NOCHECK ADD 
	CONSTRAINT [PK_mu_phone] PRIMARY KEY  CLUSTERED 
	(
		[phone_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[test] WITH NOCHECK ADD 
	CONSTRAINT [PK_test] PRIMARY KEY  CLUSTERED 
	(
		[tid]
	)  ON [PRIMARY] 
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp1.opp_id] ON [dbo].[mu_opp1]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp10.opp_id] ON [dbo].[mu_opp10]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp11.opp_id] ON [dbo].[mu_opp11]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp12.opp_id] ON [dbo].[mu_opp12]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp13.opp_id] ON [dbo].[mu_opp13]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp14.opp_id] ON [dbo].[mu_opp14]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp15.opp_id] ON [dbo].[mu_opp15]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp16.opp_id] ON [dbo].[mu_opp16]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp17.opp_id] ON [dbo].[mu_opp17]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp18.opp_id] ON [dbo].[mu_opp18]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp19.opp_id] ON [dbo].[mu_opp19]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp2.opp_id] ON [dbo].[mu_opp2]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp20.opp_id] ON [dbo].[mu_opp20]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp3.opp_id] ON [dbo].[mu_opp3]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp4.opp_id] ON [dbo].[mu_opp4]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp5.opp_id] ON [dbo].[mu_opp5]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp6.opp_id] ON [dbo].[mu_opp6]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp7.opp_id] ON [dbo].[mu_opp7]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp8.opp_id] ON [dbo].[mu_opp8]([opp_id]) ON [PRIMARY]
GO

 CREATE  UNIQUE  CLUSTERED  INDEX [mu_opp9.opp_id] ON [dbo].[mu_opp9]([opp_id]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[mova_function] WITH NOCHECK ADD 
	CONSTRAINT [DF_mova_function_status] DEFAULT ('T') FOR [status]
GO

ALTER TABLE [dbo].[mova_picklist] WITH NOCHECK ADD 
	CONSTRAINT [DF_mova_picklist_archive] DEFAULT ('F') FOR [archive]
GO

ALTER TABLE [dbo].[mova_serialno] WITH NOCHECK ADD 
	CONSTRAINT [DF__mova_seria__Step__27F8EE98] DEFAULT (10) FOR [Step]
GO

ALTER TABLE [dbo].[mu_config] WITH NOCHECK ADD 
	CONSTRAINT [DF__mu_config__sync___1E3A7A34] DEFAULT ('T') FOR [sync_Remote],
	CONSTRAINT [DF__mu_config__ext_d__2116E6DF] DEFAULT ('') FOR [ext_domain],
	CONSTRAINT [DF__mu_config__ext_m__220B0B18] DEFAULT ('') FOR [ext_menu],
	CONSTRAINT [DF__mu_config__popup__22FF2F51] DEFAULT ('') FOR [popup_url],
	CONSTRAINT [DF_mu_config_session_timeout] DEFAULT (60) FOR [session_timeout]
GO

ALTER TABLE [dbo].[mu_customer] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_customer_archive] DEFAULT ('F') FOR [archive],
	CONSTRAINT [DF__mu_custom__hiera__178D7CA5] DEFAULT ('0') FOR [hierarchy_id],
	CONSTRAINT [DF__mu_custom__searc__7FEAFD3E] DEFAULT ('GROUP') FOR [search_scope]
GO

ALTER TABLE [dbo].[mu_ext_menu] WITH NOCHECK ADD 
	CONSTRAINT [DF__mu_ext_me__sort___25DB9BFC] DEFAULT (90) FOR [sort_no],
	CONSTRAINT [DF__mu_ext_me__archi__26CFC035] DEFAULT ('F') FOR [archive]
GO

ALTER TABLE [dbo].[mu_item] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_item_archive] DEFAULT ('F') FOR [archive]
GO

ALTER TABLE [dbo].[mu_item_list] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_item_list_sort_no] DEFAULT (0) FOR [sort_no],
	CONSTRAINT [DF_mu_item_list_archive] DEFAULT ('F') FOR [archive]
GO

ALTER TABLE [dbo].[mu_mpl_pre_condition] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_mpl_pre_condition_archive] DEFAULT ('F') FOR [archive]
GO

ALTER TABLE [dbo].[mu_mpl_search] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_mpl_search_all_download] DEFAULT ('F') FOR [allow_download],
	CONSTRAINT [DF__mu_mpl_se__auto___3BFFE745] DEFAULT ('T') FOR [auto_search]
GO

ALTER TABLE [dbo].[mu_mpl_select] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_mpl_select_archive] DEFAULT ('F') FOR [archive]
GO

ALTER TABLE [dbo].[mu_object] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_object_is_seat] DEFAULT ('T') FOR [is_seat],
	CONSTRAINT [DF_mu_object_is_locked] DEFAULT ('F') FOR [is_locked],
	CONSTRAINT [DF_mu_object_is_discard] DEFAULT ('F') FOR [is_discard],
	CONSTRAINT [DF_mu_object_is_system] DEFAULT ('F') FOR [is_system],
	CONSTRAINT [DF_mu_object_is_publish] DEFAULT ('F') FOR [is_publish],
	CONSTRAINT [DF_mu_object_archive] DEFAULT ('F') FOR [archive],
	CONSTRAINT [DF__mu_object__is_ru__5006DFF2] DEFAULT ('F') FOR [is_rule],
	CONSTRAINT [DF__mu_object__is_pr__79FD19BE] DEFAULT ('F') FOR [is_private],
	CONSTRAINT [DF__mu_object__is_hi__15A53433] DEFAULT ('F') FOR [is_hierarchy],
	CONSTRAINT [DF__mu_object__chk_r__1975C517] DEFAULT ('') FOR [chk_repeat],
	CONSTRAINT [DF__mu_object__allow__1A69E950] DEFAULT ('F') FOR [allow_batch],
	CONSTRAINT [DF__mu_object__add_c__1C5231C2] DEFAULT ('F') FOR [add_continue],
	CONSTRAINT [DF_mu_object_is_single] DEFAULT ('F') FOR [is_single],
	CONSTRAINT [DF_mu_object_all_show_master] DEFAULT ('F') FOR [all_show_master],
	CONSTRAINT [DF__mu_object__searc__7E02B4CC] DEFAULT ('GROUP') FOR [search_scope]
GO

ALTER TABLE [dbo].[mu_object_field] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_object_field_width] DEFAULT (20) FOR [width],
	CONSTRAINT [DF_mu_object_field_height] DEFAULT (1) FOR [high],
	CONSTRAINT [DF_mu_object_field_is_forbidden] DEFAULT ('F') FOR [is_forbidden],
	CONSTRAINT [DF_mu_object_field_is_new] DEFAULT ('T') FOR [is_new],
	CONSTRAINT [DF_mu_object_field_is_list] DEFAULT ('T') FOR [is_list],
	CONSTRAINT [DF_mu_object_field_is_edit] DEFAULT ('T') FOR [is_edit],
	CONSTRAINT [DF_mu_object_field_is_seat] DEFAULT ('T') FOR [is_seat],
	CONSTRAINT [DF_mu_object_field_is_search] DEFAULT ('F') FOR [is_search],
	CONSTRAINT [DF_mu_object_field_is_required] DEFAULT ('F') FOR [is_required],
	CONSTRAINT [DF_mu_object_field_col_span] DEFAULT (0) FOR [col_span],
	CONSTRAINT [DF_mu_object_field_archive] DEFAULT ('F') FOR [archive],
	CONSTRAINT [DF__mu_object__is_ru__5F492382] DEFAULT ('F') FOR [is_rule],
	CONSTRAINT [DF__mu_object__allow__1B5E0D89] DEFAULT ('F') FOR [allow_batch],
	CONSTRAINT [DF__mu_object__allow__1D4655FB] DEFAULT ('F') FOR [allow_recall],
	CONSTRAINT [DF__mu_object__clone__1F2E9E6D] DEFAULT ('F') FOR [clone_by],
	CONSTRAINT [DF__mu_object__allow__2022C2A6] DEFAULT ('F') FOR [allow_clone],
	CONSTRAINT [DF__mu_object__is_nu__436BFEE3] DEFAULT ('F') FOR [is_num],
	CONSTRAINT [DF_mu_object_field_is_richText] DEFAULT ('F') FOR [is_richText],
	CONSTRAINT [DF_mu_object_field_is_attachment] DEFAULT ('F') FOR [is_attachment]
GO

ALTER TABLE [dbo].[mu_object_master_field] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_object_master_field_archive] DEFAULT ('F') FOR [archive]
GO

ALTER TABLE [dbo].[mu_object_rule] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_object_rule_type] DEFAULT ('O') FOR [type],
	CONSTRAINT [DF_mu_object_rule_con_role] DEFAULT ('CCUSER') FOR [con_role],
	CONSTRAINT [DF_mu_object_rule_con_condition] DEFAULT ('=') FOR [con_condition],
	CONSTRAINT [DF_mu_object_rule_con_edit] DEFAULT ('T') FOR [con_edit],
	CONSTRAINT [DF_mu_object_rule_con_delete] DEFAULT ('T') FOR [con_delete],
	CONSTRAINT [DF_mu_object_rule_archive] DEFAULT ('F') FOR [archive],
	CONSTRAINT [DF__mu_object__con_h__1699586C] DEFAULT ('T') FOR [con_hierarchy]
GO

ALTER TABLE [dbo].[mu_opp] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_opp_archive] DEFAULT ('F') FOR [archive],
	CONSTRAINT [DF__mu_opp__hierarch__1881A0DE] DEFAULT ('0') FOR [hierarchy_id],
	CONSTRAINT [DF__mu_opp__search_s__7EF6D905] DEFAULT ('GROUP') FOR [search_scope]
GO

ALTER TABLE [dbo].[mu_phone] WITH NOCHECK ADD 
	CONSTRAINT [DF_mu_phone_archive] DEFAULT ('F') FOR [archive]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE Function  dbo.GetNumber(@p1 varchar(100))
Returns numeric(18,2)
Begin
   	Declare @val numeric(18,2)
   	if (IsNumeric(@p1)=1)
		Set @val=Convert(numeric(18,2),@p1)
	else
		Set @val=null
    	return (@val)

End 




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
 



CREATE  Function dbo.LPAD(@p1 numeric(18,0),@p2 numeric(18,0))
returns varchar(20)
Begin
	Declare @val varchar(20)
	if(IsNumeric(@p1)=1)
		Set @val= right(str(power(10,@p2+1)+@p1),@p2) 
	else
		set @val=''
	return (@val)
End 





GO 

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
 



CREATE   Function dbo.SetDate(@p1 Varchar(30))
returns datetime
Begin
	Declare @val Datetime
	if(IsDate(@p1)=1)
		Set @val=Convert(datetime,@p1)
	else
		set @val=Convert(datetime,'1990-01-01')
	return (@val)
End 


 




GO 

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
 




CREATE  Function  dbo.SetInt(@p1 varchar(10))
Returns int
Begin
   	Declare @val int
   	if (IsNumeric(@p1)=1)
		Set @val=Convert(int,@p1)
	else
		Set @val=null
    	return (@val)

End 
 
 
 




GO 

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE   Function  dbo.SetNumber(@p1 varchar(100))
Returns numeric(19,2)
Begin
   	Declare @val numeric(19,2)
   	if (IsNumeric(@p1)=1)
		Set @val=Convert(numeric(18,2),@p1)
	else
		Set @val=null
    	return (@val)

End  
GO 
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE function dbo.htmlExtHref (@procButton varchar(40),@ProcName VARCHAR(40))
returns varchar(300)
Begin
	Declare @val varchar(300)
	set @val = '<a href="'+ @ProcName +'">' + @procButton + '</a>'
	  
	return @val
End 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE Function dbo.htmlExtMpl(@procDesc varchar(40),@procButton varchar(40),@ProcName VARCHAR(40))
returns varchar(300)
Begin
	Declare @val varchar(300)
	set @val = '<a href="#" onClick="extExecuteMpl('+ char(39) +  @procDesc  + char(39) + ','+ char(39)  + @ProcName +CHAR(39) + ')">' + @procButton + '</a>'
	 
	return @val
End 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE     Function dbo.htmlExtProc(@procDesc varchar(40),@procButton varchar(40),@ProcName VARCHAR(40))
returns varchar(300)
Begin
	Declare @val varchar(300)
	set @val = '<a href="#" onClick="extExecuteProc('+ char(39) +  @procDesc  + char(39) + ','+ char(39)  + @ProcName +CHAR(39) + ')">' + @procButton + '</a>'
	 
	return @val
End 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
 



CREATE     Function dbo.isEmpty(@p1 Varchar(100))
returns varchar(100)
Begin
	Declare @val varchar(100)
	set @val = isNull(@p1,'-') 
	if (len(@p1)=0)
		Set @val='-'
 	 
	return (@val)
End 




GO 

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
 




create Function dbo.toLike(@p1 varchar(40))
returns varchar(50)
Begin
	Declare @val varchar(50)
	set @val = isNull(@p1,'') 
	set @val = '%' + @val + '%'
	return @val
End 

 

 




GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

