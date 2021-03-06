USE [movaJob]
GO
/****** 对象:  Table [dbo].[mova_function]    脚本日期: 06/12/2015 02:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mova_function](
	[mova_functionid] [int] IDENTITY(1,1) NOT NULL,
	[plugin_no] [varchar](50) NULL,
	[parent_id] [int] NULL,
	[category] [varchar](100) NULL,
	[categoryName] [varchar](100) NULL,
	[code] [varchar](100) NOT NULL,
	[functionname] [varchar](100) NULL,
	[is_super] [char](1) NULL,
	[description] [varchar](100) NULL,
	[sortno] [int] NULL,
	[function_type] [varchar](10) NULL,
	[url] [varchar](100) NULL,
	[status] [char](1) NULL CONSTRAINT [DF_mova_function_status]  DEFAULT ('T'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[is_pub] [varchar](1) NULL,
 CONSTRAINT [PK_mova_function] PRIMARY KEY CLUSTERED 
(
	[mova_functionid] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mova_log]    脚本日期: 06/12/2015 02:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mova_log](
	[log_id] [bigint] IDENTITY(1,1) NOT NULL,
	[object_name] [varchar](20) NULL,
	[entity_id] [bigint] NULL,
	[operation] [varchar](15) NULL,
	[operation_date] [datetime] NULL,
	[Notes] [text] NULL,
	[operation_by] [int] NULL,
 CONSTRAINT [PK_mova_log] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mova_picklist]    脚本日期: 06/12/2015 02:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mova_picklist](
	[mova_picklistid] [int] IDENTITY(1,1) NOT NULL,
	[picklistname] [nvarchar](50) NULL,
	[code] [nvarchar](50) NULL,
	[selectvalue] [nvarchar](100) NULL,
	[txt] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[moduleid] [nvarchar](50) NULL,
	[sortno] [int] NULL,
	[is_memory] [char](1) NULL,
	[archive] [char](1) NULL CONSTRAINT [DF_mova_picklist_archive]  DEFAULT ('F'),
	[createdate] [smalldatetime] NULL,
	[createuser] [nvarchar](50) NULL,
	[modifydate] [smalldatetime] NULL,
	[modifyuser] [int] NULL,
	[is_super] [varchar](1) NULL,
 CONSTRAINT [PK_mova_picklist] PRIMARY KEY CLUSTERED 
(
	[mova_picklistid] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mova_plugin]    脚本日期: 06/12/2015 02:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mova_plugin](
	[plugin_id] [int] IDENTITY(1,1) NOT NULL,
	[plugin_name] [varchar](50) NULL,
	[plugin_no] [varchar](50) NOT NULL,
	[author] [varchar](50) NULL,
	[version] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
 CONSTRAINT [PK_mova_plugin] PRIMARY KEY CLUSTERED 
(
	[plugin_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mova_plugin_object]    脚本日期: 06/12/2015 02:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mova_plugin_object](
	[plugin_object_id] [int] IDENTITY(1,1) NOT NULL,
	[plugin_no] [varchar](20) NULL,
	[object_code] [varchar](20) NULL,
 CONSTRAINT [PK_mova_plugin_object] PRIMARY KEY CLUSTERED 
(
	[plugin_object_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mova_role]    脚本日期: 06/12/2015 02:46:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mova_role](
	[mova_roleid] [int] IDENTITY(1,1) NOT NULL,
	[rolename] [varchar](100) NULL,
	[rolecode] [varchar](15) NULL,
	[description] [varchar](50) NULL,
	[firstpage] [varchar](200) NULL,
	[scope] [varchar](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_mova_role] PRIMARY KEY CLUSTERED 
(
	[mova_roleid] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mova_role_reuse]    脚本日期: 06/12/2015 02:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mova_role_reuse](
	[mova_role_reuse_id] [int] IDENTITY(1,1) NOT NULL,
	[mova_roleid] [int] NULL,
	[reuse_Role_id] [int] NULL,
 CONSTRAINT [PK_mova_role_reuse] PRIMARY KEY CLUSTERED 
(
	[mova_role_reuse_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[mova_rolefunction]    脚本日期: 06/12/2015 02:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mova_rolefunction](
	[mova_rolefunctionid] [int] IDENTITY(1,1) NOT NULL,
	[mova_roleid] [int] NOT NULL,
	[mova_functionid] [int] NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
 CONSTRAINT [PK_mova_rolefunction] PRIMARY KEY CLUSTERED 
(
	[mova_rolefunctionid] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[mova_serialno]    脚本日期: 06/12/2015 02:46:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mova_serialno](
	[object_name] [varchar](20) NOT NULL,
	[pre_fix] [varchar](20) NULL,
	[seed] [int] NULL,
	[last_date] [datetime] NULL,
	[Step] [int] NULL CONSTRAINT [DF__mova_seria__Step__27F8EE98]  DEFAULT ((10))
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mova_team]    脚本日期: 06/12/2015 02:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mova_team](
	[team_id] [int] IDENTITY(1,1) NOT NULL,
	[team_name] [varchar](20) NULL,
	[parent_id] [int] NULL,
	[status] [varchar](10) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mova_test]    脚本日期: 06/12/2015 02:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mova_test](
	[a] [varchar](10) NULL,
	[b] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mova_user]    脚本日期: 06/12/2015 02:46:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mova_user](
	[mova_userid] [int] IDENTITY(1,1) NOT NULL,
	[mova_roleid] [int] NOT NULL,
	[username] [varchar](25) NULL,
	[login] [varchar](25) NULL,
	[password] [varchar](100) NULL,
	[department] [varchar](20) NULL,
	[phone] [varchar](20) NULL,
	[mobile] [varchar](15) NULL,
	[mail] [varchar](100) NULL,
	[sex] [varchar](10) NULL,
	[status] [varchar](10) NULL,
	[lastactive] [datetime] NULL,
	[isdel] [varchar](10) NULL,
	[team_id] [int] NULL,
	[customer_no] [varchar](20) NULL,
	[mac_addr] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[opp_type] [varchar](20) NULL,
	[param1] [varchar](20) NULL,
	[param2] [varchar](20) NULL,
	[param3] [varchar](20) NULL,
	[qq] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mova_user_team]    脚本日期: 06/12/2015 02:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mova_user_team](
	[mova_userid] [int] NOT NULL,
	[team_id] [int] NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL
) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[mu_config]    脚本日期: 06/12/2015 02:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_config](
	[config_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_no] [varchar](20) NOT NULL,
	[logo_pic] [varchar](200) NULL,
	[company] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[sync_Remote] [varchar](1) NULL CONSTRAINT [DF__mu_config__sync___1E3A7A34]  DEFAULT ('T'),
	[ext_domain] [varchar](100) NULL CONSTRAINT [DF__mu_config__ext_d__2116E6DF]  DEFAULT (''),
	[ext_menu] [varchar](100) NULL CONSTRAINT [DF__mu_config__ext_m__220B0B18]  DEFAULT (''),
	[popup_url] [varchar](300) NULL CONSTRAINT [DF__mu_config__popup__22FF2F51]  DEFAULT (''),
	[security_code] [varchar](50) NULL,
	[session_timeout] [int] NULL CONSTRAINT [DF_mu_config_session_timeout]  DEFAULT ((60)),
	[remote_http] [varchar](50) NULL,
	[system_name] [varchar](50) NULL,
	[out_call] [varchar](10) NULL,
	[monitor_type] [varchar](20) NULL,
	[outCall_type] [varchar](20) NULL,
	[default_object_id] [int] NULL,
 CONSTRAINT [PK_mu_config] PRIMARY KEY CLUSTERED 
(
	[config_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_customer]    脚本日期: 06/12/2015 02:46:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](50) NULL,
	[vb] [varchar](50) NULL,
	[vc] [varchar](50) NULL,
	[vd] [varchar](50) NULL,
	[ve] [varchar](50) NULL,
	[vf] [varchar](50) NULL,
	[vg] [varchar](50) NULL,
	[vh] [varchar](50) NULL,
	[vi] [varchar](50) NULL,
	[vj] [varchar](50) NULL,
	[vk] [varchar](50) NULL,
	[vl] [varchar](50) NULL,
	[vm] [varchar](50) NULL,
	[vn] [varchar](50) NULL,
	[vo] [varchar](50) NULL,
	[vp] [varchar](50) NULL,
	[vq] [varchar](50) NULL,
	[vr] [varchar](50) NULL,
	[vs] [varchar](50) NULL,
	[vt] [varchar](50) NULL,
	[vu] [varchar](50) NULL,
	[vv] [varchar](50) NULL,
	[vw] [varchar](50) NULL,
	[vx] [varchar](50) NULL,
	[vy] [varchar](50) NULL,
	[vz] [varchar](50) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[customer_no] [varchar](30) NOT NULL,
	[customer] [varchar](50) NULL,
	[main_phone] [varchar](50) NULL,
	[object_code] [varchar](30) NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NULL CONSTRAINT [DF_mu_customer_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [varchar](50) NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [varchar](50) NULL,
	[hierarchy_id] [int] NULL CONSTRAINT [DF__mu_custom__hiera__178D7CA5]  DEFAULT ('0'),
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL CONSTRAINT [DF__mu_custom__searc__7FEAFD3E]  DEFAULT ('GROUP'),
	[Import_batch_no] [varchar](20) NULL,
 CONSTRAINT [PK_mu_customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_ext_menu]    脚本日期: 06/12/2015 02:46:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_ext_menu](
	[mu_ext_menu_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_no] [varchar](20) NOT NULL,
	[menu_name] [varchar](50) NULL,
	[menu_URL] [varchar](300) NULL,
	[sort_no] [int] NULL CONSTRAINT [DF__mu_ext_me__sort___25DB9BFC]  DEFAULT ((90)),
	[archive] [char](1) NULL CONSTRAINT [DF__mu_ext_me__archi__26CFC035]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
 CONSTRAINT [PK_mu_ext_menu] PRIMARY KEY CLUSTERED 
(
	[mu_ext_menu_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_field_set]    脚本日期: 06/12/2015 02:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_field_set](
	[field_id] [int] IDENTITY(1,1) NOT NULL,
	[field_code] [varchar](50) NULL,
	[f_type] [varchar](50) NULL,
	[table_name] [varchar](50) NULL,
 CONSTRAINT [PK_mu_field_set] PRIMARY KEY CLUSTERED 
(
	[field_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_item]    脚本日期: 06/12/2015 02:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_item](
	[item_id] [int] IDENTITY(1,1) NOT NULL,
	[owner] [varchar](20) NOT NULL,
	[item_code] [varchar](30) NOT NULL,
	[item_name] [varchar](50) NOT NULL,
	[archive] [char](1) NOT NULL CONSTRAINT [DF_mu_item_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[field_type] [varchar](2) NULL,
	[plugin_no] [varchar](50) NULL,
	[is_public] [char](1) NULL,
	[is_pub] [varchar](1) NULL,
 CONSTRAINT [PK_mu_item] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_item_list]    脚本日期: 06/12/2015 02:46:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_item_list](
	[item_list_id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NOT NULL,
	[item_code] [varchar](30) NULL,
	[txt] [varchar](30) NOT NULL,
	[sort_no] [int] NOT NULL CONSTRAINT [DF_mu_item_list_sort_no]  DEFAULT ((0)),
	[owner] [varchar](20) NOT NULL,
	[archive] [char](1) NOT NULL CONSTRAINT [DF_mu_item_list_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [varchar](50) NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [varchar](50) NULL,
	[plugin_no] [varchar](50) NULL,
	[value] [varchar](50) NULL,
 CONSTRAINT [PK_mu_item_list] PRIMARY KEY CLUSTERED 
(
	[item_list_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_knowledge]    脚本日期: 06/12/2015 02:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_knowledge](
	[knowledge_id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](50) NULL,
	[owner] [varchar](20) NULL,
	[title] [varchar](30) NULL,
	[content] [text] NULL,
	[is_top] [varchar](1) NULL,
	[title_div] [varchar](20) NULL,
	[archive] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
 CONSTRAINT [PK_mova_knowledge] PRIMARY KEY CLUSTERED 
(
	[knowledge_id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_log]    脚本日期: 06/12/2015 02:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_log](
	[log_id] [bigint] IDENTITY(1,1) NOT NULL,
	[object_id] [int] NULL,
	[object_Code] [varchar](50) NULL,
	[object_no] [varchar](50) NULL,
	[operation] [varchar](50) NOT NULL,
	[description] [text] NULL,
	[createuser] [int] NULL,
	[createdate] [datetime] NULL,
 CONSTRAINT [PK_mu_log] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_mpl_condition]    脚本日期: 06/12/2015 02:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_mpl_condition](
	[mu_mpl_condition_id] [int] IDENTITY(1,1) NOT NULL,
	[plugin_no] [varchar](50) NULL,
	[mu_mpl_search_id] [int] NULL,
	[left_bracket] [char](1) NULL,
	[field_code] [varchar](100) NULL,
	[field_name] [varchar](50) NULL,
	[condition] [varchar](50) NULL,
	[matching_value] [varchar](50) NULL,
	[right_bracket] [char](1) NULL,
	[and_or] [varchar](50) NULL,
	[is_numeric] [char](1) NULL,
	[sort_no] [int] NULL,
	[archive] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
 CONSTRAINT [PK_mu_mpl_condition] PRIMARY KEY CLUSTERED 
(
	[mu_mpl_condition_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_mpl_group]    脚本日期: 06/12/2015 02:47:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_mpl_group](
	[mu_mpl_group_id] [int] IDENTITY(1,1) NOT NULL,
	[mu_mpl_search_id] [int] NULL,
	[field_code] [varchar](100) NULL,
	[field_name] [varchar](100) NULL,
	[sort_no] [int] NULL,
	[archive] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[plugin_no] [varchar](50) NULL,
 CONSTRAINT [PK_mu_mpl_group] PRIMARY KEY CLUSTERED 
(
	[mu_mpl_group_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_mpl_order]    脚本日期: 06/12/2015 02:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_mpl_order](
	[mu_mpl_order_id] [int] IDENTITY(1,1) NOT NULL,
	[mu_mpl_search_id] [int] NULL,
	[field_code] [varchar](50) NULL,
	[field_name] [varchar](50) NULL,
	[asc_desc] [varchar](50) NULL,
	[sort_no] [varchar](50) NULL,
	[archive] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[plugin_no] [varchar](50) NULL,
 CONSTRAINT [PK_mu_mpl_order] PRIMARY KEY CLUSTERED 
(
	[mu_mpl_order_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_mpl_pre_condition]    脚本日期: 06/12/2015 02:47:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_mpl_pre_condition](
	[mu_mpl_pre_condition_id] [int] IDENTITY(1,1) NOT NULL,
	[mu_mpl_search_id] [int] NULL,
	[field_code] [varchar](200) NULL,
	[field_name] [varchar](50) NULL,
	[search_type] [varchar](50) NULL,
	[is_numeric] [char](1) NULL,
	[sort_no] [int] NULL,
	[archive] [char](1) NULL CONSTRAINT [DF_mu_mpl_pre_condition_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[plugin_no] [varchar](50) NULL,
 CONSTRAINT [PK_mu_mpl_pre_condition] PRIMARY KEY CLUSTERED 
(
	[mu_mpl_pre_condition_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_mpl_search]    脚本日期: 06/12/2015 02:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_mpl_search](
	[mu_mpl_search_id] [int] IDENTITY(1,1) NOT NULL,
	[plugin_no] [varchar](50) NULL,
	[search_name] [varchar](50) NULL,
	[abbr] [varchar](50) NULL,
	[object_code] [varchar](50) NULL,
	[owner] [varchar](50) NULL,
	[team] [int] NULL,
	[is_function] [varchar](1) NOT NULL,
	[select_sql] [text] NULL,
	[where_sql] [text] NULL,
	[order_sql] [varchar](50) NULL,
	[count_sql] [text] NULL,
	[allow_download] [char](1) NULL CONSTRAINT [DF_mu_mpl_search_all_download]  DEFAULT ('F'),
	[archive] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[auto_search] [varchar](1) NULL CONSTRAINT [DF__mu_mpl_se__auto___3BFFE745]  DEFAULT ('T'),
	[search_no] [varchar](50) NULL,
 CONSTRAINT [PK_mu_mpl_search] PRIMARY KEY CLUSTERED 
(
	[mu_mpl_search_id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_mpl_select]    脚本日期: 06/12/2015 02:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_mpl_select](
	[mu_mpl_select_id] [int] IDENTITY(1,1) NOT NULL,
	[mu_mpl_search_id] [int] NOT NULL,
	[field_code] [varchar](200) NULL,
	[field_name] [varchar](50) NULL,
	[sort_no] [int] NULL,
	[allow_count] [varchar](1) NULL,
	[archive] [char](1) NULL CONSTRAINT [DF_mu_mpl_select_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[plugin_no] [varchar](50) NULL,
 CONSTRAINT [PK_mu_mpl_select] PRIMARY KEY CLUSTERED 
(
	[mu_mpl_select_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_object_field]    脚本日期: 06/12/2015 02:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_object_field](
	[field_id] [int] IDENTITY(1,1) NOT NULL,
	[object_id] [int] NOT NULL,
	[owner] [varchar](30) NULL,
	[table_name] [varchar](50) NULL,
	[field_code] [varchar](10) NOT NULL,
	[field_name] [varchar](20) NULL,
	[field_type] [varchar](20) NOT NULL,
	[width] [varchar](10) NULL CONSTRAINT [DF_mu_object_field_width]  DEFAULT ((20)),
	[high] [int] NULL CONSTRAINT [DF_mu_object_field_height]  DEFAULT ((1)),
	[is_forbidden] [char](1) NULL CONSTRAINT [DF_mu_object_field_is_forbidden]  DEFAULT ('F'),
	[is_new] [char](1) NOT NULL CONSTRAINT [DF_mu_object_field_is_new]  DEFAULT ('T'),
	[is_list] [char](1) NOT NULL CONSTRAINT [DF_mu_object_field_is_list]  DEFAULT ('T'),
	[is_edit] [char](1) NOT NULL CONSTRAINT [DF_mu_object_field_is_edit]  DEFAULT ('T'),
	[is_seat] [char](1) NOT NULL CONSTRAINT [DF_mu_object_field_is_seat]  DEFAULT ('T'),
	[is_search] [char](1) NOT NULL CONSTRAINT [DF_mu_object_field_is_search]  DEFAULT ('F'),
	[is_required] [char](1) NOT NULL CONSTRAINT [DF_mu_object_field_is_required]  DEFAULT ('F'),
	[search_type] [varchar](20) NULL,
	[def_value] [varchar](50) NULL,
	[col_span] [int] NOT NULL CONSTRAINT [DF_mu_object_field_col_span]  DEFAULT ((0)),
	[sort_edit] [int] NULL,
	[sort_list] [int] NULL,
	[archive] [char](1) NOT NULL CONSTRAINT [DF_mu_object_field_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[is_rule] [varchar](1) NULL CONSTRAINT [DF__mu_object__is_ru__5F492382]  DEFAULT ('F'),
	[allow_batch] [varchar](20) NULL CONSTRAINT [DF__mu_object__allow__1B5E0D89]  DEFAULT ('F'),
	[allow_recall] [varchar](20) NULL CONSTRAINT [DF__mu_object__allow__1D4655FB]  DEFAULT ('F'),
	[clone_by] [char](1) NULL CONSTRAINT [DF__mu_object__clone__1F2E9E6D]  DEFAULT ('F'),
	[allow_clone] [char](1) NULL CONSTRAINT [DF__mu_object__allow__2022C2A6]  DEFAULT ('F'),
	[is_num] [varchar](1) NULL CONSTRAINT [DF__mu_object__is_nu__436BFEE3]  DEFAULT ('F'),
	[new_onChange] [text] NULL,
	[edit_onChange] [text] NULL,
	[new_read_only] [varchar](200) NULL,
	[edit_read_only] [varchar](200) NULL,
	[status_rule] [varchar](500) NULL,
	[is_richText] [char](1) NULL CONSTRAINT [DF_mu_object_field_is_richText]  DEFAULT ('F'),
	[is_attachment] [char](1) NULL CONSTRAINT [DF_mu_object_field_is_attachment]  DEFAULT ('F'),
	[hidden_by] [varchar](200) NULL,
	[new_ext_html] [text] NULL,
	[edit_ext_html] [text] NULL,
	[plugin_no] [varchar](50) NULL,
	[fk_select] [varchar](300) NULL,
	[fk_window] [varchar](300) NULL,
	[hidden_by_field] [varchar](200) NULL,
	[multiple_size] [int] NULL CONSTRAINT [DF_mu_object_field_multiple_size]  DEFAULT ((0)),
	[allow_suggestion] [char](1) NULL,
	[picklist_sql] [varchar](1000) NULL,
 CONSTRAINT [PK_mu_object_field] PRIMARY KEY CLUSTERED 
(
	[field_id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_object]    脚本日期: 06/12/2015 02:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_object](
	[object_id] [int] IDENTITY(1,1) NOT NULL,
	[plugin_no] [varchar](50) NULL,
	[table_name] [varchar](20) NULL,
	[object_code] [varchar](20) NOT NULL,
	[object_name] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[is_seat] [char](1) NOT NULL CONSTRAINT [DF_mu_object_is_seat]  DEFAULT ('T'),
	[is_locked] [char](1) NOT NULL CONSTRAINT [DF_mu_object_is_locked]  DEFAULT ('F'),
	[is_discard] [char](1) NOT NULL CONSTRAINT [DF_mu_object_is_discard]  DEFAULT ('F'),
	[is_system] [char](1) NOT NULL CONSTRAINT [DF_mu_object_is_system]  DEFAULT ('F'),
	[is_publish] [char](1) NOT NULL CONSTRAINT [DF_mu_object_is_publish]  DEFAULT ('F'),
	[view_col] [int] NULL,
	[archive] [char](1) NOT NULL CONSTRAINT [DF_mu_object_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[print_template] [varchar](50) NULL,
	[is_rule] [varchar](1) NULL CONSTRAINT [DF__mu_object__is_ru__5006DFF2]  DEFAULT ('F'),
	[is_private] [varchar](1) NULL CONSTRAINT [DF__mu_object__is_pr__79FD19BE]  DEFAULT ('F'),
	[is_hierarchy] [varchar](1) NULL CONSTRAINT [DF__mu_object__is_hi__15A53433]  DEFAULT ('F'),
	[chk_repeat] [varchar](20) NULL CONSTRAINT [DF__mu_object__chk_r__1975C517]  DEFAULT (''),
	[allow_batch] [varchar](20) NULL CONSTRAINT [DF__mu_object__allow__1A69E950]  DEFAULT ('F'),
	[add_continue] [varchar](20) NULL CONSTRAINT [DF__mu_object__add_c__1C5231C2]  DEFAULT ('F'),
	[sort_no] [varchar](50) NULL,
	[is_single] [char](1) NULL CONSTRAINT [DF_mu_object_is_single]  DEFAULT ('F'),
	[pre_new_js] [text] NULL,
	[pre_edit_js] [text] NULL,
	[end_new_js] [text] NULL,
	[end_edit_js] [text] NULL,
	[all_show_master] [char](1) NULL CONSTRAINT [DF_mu_object_all_show_master]  DEFAULT ('F'),
	[search_scope] [varchar](10) NULL CONSTRAINT [DF__mu_object__searc__7E02B4CC]  DEFAULT ('GROUP'),
	[new_submit_js] [text] NULL,
	[edit_submit_js] [text] NULL,
	[pub_js] [text] NULL,
	[supper_manager] [varchar](100) NULL,
	[is_owner] [char](1) NULL,
	[depend_master] [varchar](200) NULL,
	[template_field] [varchar](30) NULL,
	[template_define] [text] NULL,
	[show_no] [varchar](1) NULL DEFAULT ('T'),
 CONSTRAINT [PK_mu_object] PRIMARY KEY CLUSTERED 
(
	[object_id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_object_master_field]    脚本日期: 06/12/2015 02:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_object_master_field](
	[mu_object_master_field_id] [int] IDENTITY(1,1) NOT NULL,
	[owner] [varchar](50) NULL,
	[object_id] [int] NULL,
	[field_id] [int] NULL,
	[sort_no] [int] NULL,
	[archive] [char](1) NULL CONSTRAINT [DF_mu_object_master_field_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
 CONSTRAINT [PK_opp_master_field] PRIMARY KEY CLUSTERED 
(
	[mu_object_master_field_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_object_rule]    脚本日期: 06/12/2015 02:47:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_object_rule](
	[object_rule_id] [int] IDENTITY(1,1) NOT NULL,
	[type] [char](1) NULL CONSTRAINT [DF_mu_object_rule_type]  DEFAULT ('O'),
	[object_id] [int] NULL,
	[con_role] [varchar](15) NULL CONSTRAINT [DF_mu_object_rule_con_role]  DEFAULT ('CCUSER'),
	[con_field] [varchar](20) NULL,
	[con_condition] [varchar](10) NULL CONSTRAINT [DF_mu_object_rule_con_condition]  DEFAULT ('='),
	[con_value] [varchar](50) NULL,
	[con_edit] [varchar](1) NULL CONSTRAINT [DF_mu_object_rule_con_edit]  DEFAULT ('T'),
	[con_delete] [varchar](1) NULL CONSTRAINT [DF_mu_object_rule_con_delete]  DEFAULT ('T'),
	[archive] [char](1) NULL CONSTRAINT [DF_mu_object_rule_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[con_hierarchy] [varchar](1) NULL CONSTRAINT [DF__mu_object__con_h__1699586C]  DEFAULT ('T'),
 CONSTRAINT [PK_mu_table_rule] PRIMARY KEY CLUSTERED 
(
	[object_rule_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp]    脚本日期: 06/12/2015 02:48:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL CONSTRAINT [DF_mu_opp_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL CONSTRAINT [DF__mu_opp__hierarch__1881A0DE]  DEFAULT ('0'),
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL CONSTRAINT [DF__mu_opp__search_s__7EF6D905]  DEFAULT ('GROUP'),
	[Import_batch_no] [varchar](20) NULL,
 CONSTRAINT [PK_mu_opp] PRIMARY KEY CLUSTERED 
(
	[opp_id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp1]    脚本日期: 06/12/2015 02:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp1](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp10]    脚本日期: 06/12/2015 02:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp10](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp11]    脚本日期: 06/12/2015 02:48:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp11](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp12]    脚本日期: 06/12/2015 02:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp12](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp13]    脚本日期: 06/12/2015 02:49:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp13](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp14]    脚本日期: 06/12/2015 02:49:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp14](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp15]    脚本日期: 06/12/2015 02:50:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp15](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp16]    脚本日期: 06/12/2015 02:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp16](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp17]    脚本日期: 06/12/2015 02:50:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp17](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp18]    脚本日期: 06/12/2015 02:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp18](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp19]    脚本日期: 06/12/2015 02:51:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp19](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp2]    脚本日期: 06/12/2015 02:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp2](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp20]    脚本日期: 06/12/2015 02:51:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp20](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp3]    脚本日期: 06/12/2015 02:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp3](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp4]    脚本日期: 06/12/2015 02:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp4](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp5]    脚本日期: 06/12/2015 02:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp5](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp6]    脚本日期: 06/12/2015 02:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp6](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp7]    脚本日期: 06/12/2015 02:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp7](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp8]    脚本日期: 06/12/2015 02:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp8](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_opp9]    脚本日期: 06/12/2015 02:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_opp9](
	[opp_id] [int] IDENTITY(1,1) NOT NULL,
	[va] [varchar](100) NULL,
	[vb] [varchar](100) NULL,
	[vc] [varchar](100) NULL,
	[vd] [varchar](100) NULL,
	[ve] [varchar](100) NULL,
	[vf] [varchar](100) NULL,
	[vg] [varchar](100) NULL,
	[vh] [varchar](100) NULL,
	[vi] [varchar](100) NULL,
	[vj] [varchar](100) NULL,
	[vk] [varchar](100) NULL,
	[vl] [varchar](100) NULL,
	[vm] [varchar](100) NULL,
	[vn] [varchar](100) NULL,
	[vo] [varchar](100) NULL,
	[vp] [varchar](100) NULL,
	[vq] [varchar](100) NULL,
	[vr] [varchar](100) NULL,
	[vs] [varchar](100) NULL,
	[vt] [varchar](100) NULL,
	[vu] [varchar](100) NULL,
	[vv] [varchar](100) NULL,
	[vw] [varchar](100) NULL,
	[vx] [varchar](100) NULL,
	[vy] [varchar](100) NULL,
	[vz] [varchar](100) NULL,
	[za] [text] NULL,
	[zb] [text] NULL,
	[zc] [text] NULL,
	[zd] [text] NULL,
	[ze] [text] NULL,
	[zf] [text] NULL,
	[zg] [text] NULL,
	[zh] [text] NULL,
	[object_code] [varchar](20) NOT NULL,
	[customer_id] [int] NOT NULL,
	[opp_no] [varchar](20) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[hierarchy_id] [int] NULL,
	[v0] [varchar](100) NULL,
	[v1] [varchar](100) NULL,
	[v2] [varchar](100) NULL,
	[v3] [varchar](100) NULL,
	[v4] [varchar](100) NULL,
	[v5] [varchar](100) NULL,
	[v6] [varchar](100) NULL,
	[v7] [varchar](100) NULL,
	[v8] [varchar](100) NULL,
	[v9] [varchar](100) NULL,
	[d0] [numeric](18, 2) NULL,
	[d1] [numeric](18, 2) NULL,
	[d2] [numeric](18, 2) NULL,
	[d3] [numeric](18, 2) NULL,
	[d4] [numeric](18, 2) NULL,
	[d5] [numeric](18, 2) NULL,
	[d6] [numeric](18, 2) NULL,
	[d7] [numeric](18, 2) NULL,
	[d8] [numeric](18, 2) NULL,
	[d9] [numeric](18, 2) NULL,
	[da] [numeric](18, 2) NULL,
	[db] [numeric](18, 2) NULL,
	[dc] [numeric](18, 2) NULL,
	[dd] [numeric](18, 2) NULL,
	[de] [numeric](18, 2) NULL,
	[df] [numeric](18, 2) NULL,
	[dg] [numeric](18, 2) NULL,
	[dh] [numeric](18, 2) NULL,
	[di] [numeric](18, 2) NULL,
	[dj] [numeric](18, 2) NULL,
	[dk] [numeric](18, 2) NULL,
	[dl] [numeric](18, 2) NULL,
	[dm] [numeric](18, 2) NULL,
	[dn] [numeric](18, 2) NULL,
	[do] [numeric](18, 2) NULL,
	[dp] [numeric](18, 2) NULL,
	[dq] [numeric](18, 2) NULL,
	[dr] [numeric](18, 2) NULL,
	[ds] [numeric](18, 2) NULL,
	[dt] [numeric](18, 2) NULL,
	[du] [numeric](18, 2) NULL,
	[dv] [numeric](18, 2) NULL,
	[dw] [numeric](18, 2) NULL,
	[dx] [numeric](18, 2) NULL,
	[dy] [numeric](18, 2) NULL,
	[dz] [numeric](18, 2) NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[mu_phone]    脚本日期: 06/12/2015 02:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_phone](
	[phone_id] [int] IDENTITY(1,1) NOT NULL,
	[owner] [varchar](30) NOT NULL,
	[customer_id] [int] NOT NULL,
	[phone] [varchar](25) NOT NULL,
	[category] [varchar](25) NULL,
	[description] [varchar](50) NULL,
	[archive] [char](1) NOT NULL CONSTRAINT [DF_mu_phone_archive]  DEFAULT ('F'),
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
 CONSTRAINT [PK_mu_phone] PRIMARY KEY CLUSTERED 
(
	[phone_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[test]    脚本日期: 06/12/2015 02:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[pnr] [nvarchar](255) NULL,
	[Passenger_Name] [nvarchar](255) NULL,
	[Card_No] [nvarchar](255) NULL,
	[Depart_Code] [nvarchar](255) NULL,
	[Depart_Time] [nvarchar](255) NULL,
	[Arrive_Code] [nvarchar](255) NULL,
	[Arrive_Time] [nvarchar](255) NULL,
	[Flight_No] [nvarchar](255) NULL,
	[Seat_Class] [nvarchar](255) NULL,
	[Airline_Code] [nvarchar](255) NULL,
 CONSTRAINT [PK_test] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
