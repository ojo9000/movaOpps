USE [movaopps]
GO
/****** Object:  Table [dbo].[test]    Script Date: 01/14/2015 18:01:36 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mu_phone]    Script Date: 01/14/2015 18:01:36 ******/
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
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
 CONSTRAINT [PK_mu_phone] PRIMARY KEY CLUSTERED 
(
	[phone_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_opp9]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp8]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp7]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp6]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp5]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp4]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp3]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp20]    Script Date: 01/14/2015 18:01:36 ******/
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
	[object_code] [varchar](20) NULL,
	[customer_id] [int] NULL,
	[opp_no] [varchar](20) NULL,
	[owner] [varchar](30) NULL,
	[archive] [char](1) NULL,
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
/****** Object:  Table [dbo].[mu_opp2]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp19]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp18]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp17]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp16]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp15]    Script Date: 01/14/2015 18:01:36 ******/
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
/****** Object:  Table [dbo].[mu_opp14]    Script Date: 01/14/2015 18:01:35 ******/
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
/****** Object:  Table [dbo].[mu_opp13]    Script Date: 01/14/2015 18:01:35 ******/
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
/****** Object:  Table [dbo].[mu_opp12]    Script Date: 01/14/2015 18:01:35 ******/
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
/****** Object:  Table [dbo].[mu_opp11]    Script Date: 01/14/2015 18:01:35 ******/
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
/****** Object:  Table [dbo].[mu_opp10]    Script Date: 01/14/2015 18:01:35 ******/
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
/****** Object:  Table [dbo].[mu_opp1]    Script Date: 01/14/2015 18:01:35 ******/
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
/****** Object:  Table [dbo].[mu_opp]    Script Date: 01/14/2015 18:01:35 ******/
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
	[Import_batch_no] [varchar](20) NULL,
 CONSTRAINT [PK_mu_opp] PRIMARY KEY CLUSTERED 
(
	[opp_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_object_rule]    Script Date: 01/14/2015 18:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_object_rule](
	[object_rule_id] [int] IDENTITY(1,1) NOT NULL,
	[type] [char](1) NULL,
	[object_id] [int] NULL,
	[con_role] [varchar](15) NULL,
	[con_field] [varchar](20) NULL,
	[con_condition] [varchar](10) NULL,
	[con_value] [varchar](50) NULL,
	[con_edit] [varchar](1) NULL,
	[con_delete] [varchar](1) NULL,
	[archive] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[con_hierarchy] [varchar](1) NULL,
 CONSTRAINT [PK_mu_table_rule] PRIMARY KEY CLUSTERED 
(
	[object_rule_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_object_master_field]    Script Date: 01/14/2015 18:01:35 ******/
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
	[archive] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
 CONSTRAINT [PK_opp_master_field] PRIMARY KEY CLUSTERED 
(
	[mu_object_master_field_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_object_field]    Script Date: 01/14/2015 18:01:35 ******/
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
	[width] [varchar](20) NULL,
	[high] [int] NULL,
	[is_forbidden] [char](1) NULL,
	[is_new] [char](1) NOT NULL,
	[is_list] [char](1) NOT NULL,
	[is_edit] [char](1) NOT NULL,
	[is_seat] [char](1) NOT NULL,
	[is_search] [char](1) NOT NULL,
	[is_required] [char](1) NOT NULL,
	[search_type] [varchar](20) NULL,
	[def_value] [varchar](50) NULL,
	[col_span] [int] NOT NULL,
	[sort_edit] [int] NULL,
	[sort_list] [int] NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[is_rule] [varchar](1) NULL,
	[allow_batch] [varchar](20) NULL,
	[allow_recall] [varchar](20) NULL,
	[clone_by] [char](1) NULL,
	[allow_clone] [char](1) NULL,
	[is_num] [varchar](1) NULL,
	[new_onChange] [text] NULL,
	[edit_onChange] [text] NULL,
	[new_read_only] [varchar](200) NULL,
	[edit_read_only] [varchar](200) NULL,
	[status_rule] [varchar](500) NULL,
	[is_richText] [char](1) NULL,
	[is_attachment] [char](1) NULL,
	[hidden_by] [varchar](200) NULL,
	[new_ext_html] [text] NULL,
	[edit_ext_html] [text] NULL,
	[plugin_no] [varchar](50) NULL,
	[fk_select] [varchar](300) NULL,
	[fk_window] [varchar](300) NULL,
	[hidden_by_field] [varchar](200) NULL,
 CONSTRAINT [PK_mu_object_field] PRIMARY KEY CLUSTERED 
(
	[field_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_object]    Script Date: 01/14/2015 18:01:35 ******/
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
	[is_seat] [char](1) NOT NULL,
	[is_locked] [char](1) NOT NULL,
	[is_discard] [char](1) NOT NULL,
	[is_system] [char](1) NOT NULL,
	[is_publish] [char](1) NOT NULL,
	[view_col] [int] NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[print_template] [varchar](50) NULL,
	[is_rule] [varchar](1) NULL,
	[is_private] [varchar](1) NULL,
	[is_hierarchy] [varchar](1) NULL,
	[chk_repeat] [varchar](20) NULL,
	[allow_batch] [varchar](20) NULL,
	[add_continue] [varchar](20) NULL,
	[sort_no] [int] NULL,
	[is_single] [char](1) NULL,
	[pre_new_js] [text] NULL,
	[pre_edit_js] [text] NULL,
	[end_new_js] [text] NULL,
	[end_edit_js] [text] NULL,
	[all_show_master] [char](1) NULL,
	[search_scope] [varchar](10) NULL,
	[new_submit_js] [text] NULL,
	[edit_submit_js] [text] NULL,
	[pub_js] [text] NULL,
	[supper_manager] [varchar](100) NULL,
	[is_owner] [char](1) NULL,
	[depend_master] [varchar](200) NULL,
	[template_field] [varchar](30) NULL,
	[template_define] [text] NULL,
	[show_no] [varchar](1) NULL,
 CONSTRAINT [PK_mu_object] PRIMARY KEY CLUSTERED 
(
	[object_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_mpl_select]    Script Date: 01/14/2015 18:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mu_mpl_select](
	[mu_mpl_select_id] [int] IDENTITY(1,1) NOT NULL,
	[mu_mpl_search_id] [int] NOT NULL,
	[field_code] [varchar](400) NULL,
	[field_name] [varchar](50) NULL,
	[sort_no] [int] NULL,
	[allow_count] [varchar](1) NULL,
	[archive] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[plugin_no] [varchar](50) NULL,
 CONSTRAINT [PK_mu_mpl_select] PRIMARY KEY CLUSTERED 
(
	[mu_mpl_select_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_mpl_search]    Script Date: 01/14/2015 18:01:35 ******/
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
	[allow_download] [char](1) NULL,
	[archive] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[auto_search] [varchar](1) NULL,
	[def_count_sql] [varchar](2000) NULL,
	[search_no] [varchar](20) NULL,
 CONSTRAINT [PK_mu_mpl_search] PRIMARY KEY CLUSTERED 
(
	[mu_mpl_search_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_mpl_pre_condition]    Script Date: 01/14/2015 18:01:35 ******/
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
	[archive] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[plugin_no] [varchar](50) NULL,
 CONSTRAINT [PK_mu_mpl_pre_condition] PRIMARY KEY CLUSTERED 
(
	[mu_mpl_pre_condition_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_mpl_order]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_mpl_group]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_mpl_condition]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_log]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_knowledge]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_item_list]    Script Date: 01/14/2015 18:01:35 ******/
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
	[sort_no] [int] NOT NULL,
	[owner] [varchar](20) NOT NULL,
	[archive] [char](1) NOT NULL,
	[createdate] [datetime] NULL,
	[createuser] [varchar](50) NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [varchar](50) NULL,
	[plugin_no] [varchar](50) NULL,
	[value] [varchar](50) NULL,
 CONSTRAINT [PK_mu_item_list] PRIMARY KEY CLUSTERED 
(
	[item_list_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_item]    Script Date: 01/14/2015 18:01:35 ******/
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
	[archive] [char](1) NOT NULL,
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_field_set]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_ext_menu]    Script Date: 01/14/2015 18:01:35 ******/
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
	[sort_no] [int] NULL,
	[archive] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[parent_id] [int] NULL,
 CONSTRAINT [PK_mu_ext_menu] PRIMARY KEY CLUSTERED 
(
	[mu_ext_menu_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_customer]    Script Date: 01/14/2015 18:01:35 ******/
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
	[vc] [varchar](100) NULL,
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
	[customer] [varchar](100) NULL,
	[main_phone] [varchar](50) NULL,
	[object_code] [varchar](30) NULL,
	[owner] [varchar](30) NOT NULL,
	[archive] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [varchar](50) NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [varchar](50) NULL,
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
	[d0] [int] NULL,
	[d1] [int] NULL,
	[d2] [int] NULL,
	[d3] [int] NULL,
	[d4] [int] NULL,
	[d5] [int] NULL,
	[d6] [int] NULL,
	[d7] [int] NULL,
	[d8] [int] NULL,
	[d9] [int] NULL,
	[da] [int] NULL,
	[db] [int] NULL,
	[dc] [int] NULL,
	[dd] [int] NULL,
	[de] [int] NULL,
	[df] [int] NULL,
	[dg] [int] NULL,
	[dh] [int] NULL,
	[di] [int] NULL,
	[dj] [int] NULL,
	[dk] [int] NULL,
	[dl] [int] NULL,
	[dm] [int] NULL,
	[dn] [int] NULL,
	[do] [int] NULL,
	[dp] [int] NULL,
	[dq] [int] NULL,
	[dr] [int] NULL,
	[ds] [int] NULL,
	[dt] [int] NULL,
	[du] [int] NULL,
	[dv] [int] NULL,
	[dw] [int] NULL,
	[dx] [int] NULL,
	[dy] [int] NULL,
	[dz] [int] NULL,
	[team] [int] NULL,
	[search_scope] [varchar](10) NULL,
	[Import_batch_no] [varchar](20) NULL,
 CONSTRAINT [PK_mu_customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mu_config]    Script Date: 01/14/2015 18:01:35 ******/
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
	[sync_Remote] [varchar](1) NULL,
	[ext_domain] [varchar](100) NULL,
	[ext_menu] [varchar](100) NULL,
	[popup_url] [varchar](300) NULL,
	[security_code] [varchar](50) NULL,
	[session_timeout] [int] NULL,
	[remote_http] [varchar](50) NULL,
	[system_name] [varchar](50) NULL,
	[out_call] [varchar](10) NULL,
	[monitor_type] [varchar](20) NULL,
	[outCall_type] [varchar](20) NULL,
	[default_object_id] [int] NULL,
 CONSTRAINT [PK_mu_config] PRIMARY KEY CLUSTERED 
(
	[config_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mova_user_team]    Script Date: 01/14/2015 18:01:35 ******/
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
/****** Object:  Table [dbo].[mova_user]    Script Date: 01/14/2015 18:01:35 ******/
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
/****** Object:  Table [dbo].[mova_test]    Script Date: 01/14/2015 18:01:35 ******/
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
/****** Object:  Table [dbo].[mova_team]    Script Date: 01/14/2015 18:01:35 ******/
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
/****** Object:  Table [dbo].[mova_serialno]    Script Date: 01/14/2015 18:01:35 ******/
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
	[Step] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mova_rolefunction]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mova_role_reuse]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mova_role]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mova_plugin_object]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mova_plugin]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mova_picklist]    Script Date: 01/14/2015 18:01:35 ******/
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
	[archive] [char](1) NULL,
	[createdate] [smalldatetime] NULL,
	[createuser] [nvarchar](50) NULL,
	[modifydate] [smalldatetime] NULL,
	[modifyuser] [int] NULL,
	[is_super] [varchar](1) NULL,
 CONSTRAINT [PK_mova_picklist] PRIMARY KEY CLUSTERED 
(
	[mova_picklistid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mova_log]    Script Date: 01/14/2015 18:01:35 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mova_function]    Script Date: 01/14/2015 18:01:35 ******/
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
	[url] [varchar](300) NULL,
	[status] [char](1) NULL,
	[createdate] [datetime] NULL,
	[createuser] [int] NULL,
	[modifydate] [datetime] NULL,
	[modifyuser] [int] NULL,
	[is_pub] [varchar](1) NULL,
 CONSTRAINT [PK_mova_function] PRIMARY KEY CLUSTERED 
(
	[mova_functionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[view_v0]    Script Date: 01/14/2015 18:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_v0]
AS
SELECT     leaf_name, leaf_id, parent_id, leaf_label
FROM         (SELECT     v0 AS leaf_name, v2 AS leaf_id, '0' AS parent_id, '0_project' AS leaf_label
                       FROM          dbo.mu_opp1
                       UNION
                       SELECT     v0 AS leaf_name, v2 AS leaf_id, v3 AS parent_id, '1_builder' AS leaf_label
                       FROM         dbo.mu_opp2
                       UNION
                       SELECT     v0 AS leaf_name, v2 AS leaf_id, v3 AS parent_id, '2_room' AS leaf_label
                       FROM         dbo.mu_opp3) AS derivedtbl_1
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "derivedtbl_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 171
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_v0'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_v0'
GO
/****** Object:  View [dbo].[view_room_customer]    Script Date: 01/14/2015 18:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_room_customer] AS  SELECT     ISNULL(dbo.mu_opp1.v0, '*') + '-' + ISNULL(dbo.mu_opp2.v0, '*') + '-' +  dbo.mu_opp3.v0 AS room, dbo.mu_opp5.v0 AS customer, dbo.mu_opp5.v1 AS phone,  dbo.mu_opp3.v2 AS id FROM         dbo.mu_opp3 LEFT OUTER JOIN                      dbo.mu_opp2 ON dbo.mu_opp3.v3 = dbo.mu_opp2.v2 LEFT OUTER JOIN                      dbo.mu_opp1 ON dbo.mu_opp2.v3 = dbo.mu_opp1.v2 RIGHT OUTER JOIN                      dbo.mu_opp5 ON dbo.mu_opp3.v2 = dbo.mu_opp5.v3
GO
/****** Object:  View [dbo].[view_room]    Script Date: 01/14/2015 18:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_room] AS SELECT     ISNULL(dbo.mu_opp1.v0, '*') + '-' + ISNULL(dbo.mu_opp2.v0, '*') + '-' + dbo.mu_opp3.v0 AS value, dbo.mu_opp3.v2 AS id FROM         dbo.mu_opp3 LEFT OUTER JOIN                        dbo.mu_opp2 ON dbo.mu_opp3.v3 = dbo.mu_opp2.v2 LEFT OUTER JOIN                       dbo.mu_opp1 ON dbo.mu_opp2.v3 = dbo.mu_opp1.v2
GO
/****** Object:  View [dbo].[tree_room_customer]    Script Date: 01/14/2015 18:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[tree_room_customer] AS SELECT     dbo.view_v0.leaf_id, dbo.view_v0.leaf_label, dbo.view_v0.parent_id, dbo.view_v0.leaf_name, dbo.view_room_customer.room, dbo.view_room_customer.customer,                       dbo.view_room_customer.phone FROM         dbo.view_room_customer FULL OUTER JOIN                       dbo.view_v0 ON dbo.view_room_customer.id = dbo.view_v0.leaf_id
GO
/****** Object:  Default [DF_mova_function_status]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mova_function] ADD  CONSTRAINT [DF_mova_function_status]  DEFAULT ('T') FOR [status]
GO
/****** Object:  Default [DF_mova_picklist_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mova_picklist] ADD  CONSTRAINT [DF_mova_picklist_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF__mova_seria__Step__27F8EE98]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mova_serialno] ADD  CONSTRAINT [DF__mova_seria__Step__27F8EE98]  DEFAULT ((10)) FOR [Step]
GO
/****** Object:  Default [DF__mu_config__sync___1E3A7A34]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_config] ADD  CONSTRAINT [DF__mu_config__sync___1E3A7A34]  DEFAULT ('T') FOR [sync_Remote]
GO
/****** Object:  Default [DF__mu_config__ext_d__2116E6DF]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_config] ADD  CONSTRAINT [DF__mu_config__ext_d__2116E6DF]  DEFAULT ('') FOR [ext_domain]
GO
/****** Object:  Default [DF__mu_config__ext_m__220B0B18]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_config] ADD  CONSTRAINT [DF__mu_config__ext_m__220B0B18]  DEFAULT ('') FOR [ext_menu]
GO
/****** Object:  Default [DF__mu_config__popup__22FF2F51]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_config] ADD  CONSTRAINT [DF__mu_config__popup__22FF2F51]  DEFAULT ('') FOR [popup_url]
GO
/****** Object:  Default [DF_mu_config_session_timeout]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_config] ADD  CONSTRAINT [DF_mu_config_session_timeout]  DEFAULT ((60)) FOR [session_timeout]
GO
/****** Object:  Default [DF_mu_customer_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_customer] ADD  CONSTRAINT [DF_mu_customer_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF__mu_custom__hiera__178D7CA5]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_customer] ADD  CONSTRAINT [DF__mu_custom__hiera__178D7CA5]  DEFAULT ('0') FOR [hierarchy_id]
GO
/****** Object:  Default [DF__mu_custom__searc__7FEAFD3E]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_customer] ADD  CONSTRAINT [DF__mu_custom__searc__7FEAFD3E]  DEFAULT ('GROUP') FOR [search_scope]
GO
/****** Object:  Default [DF__mu_ext_me__sort___25DB9BFC]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_ext_menu] ADD  CONSTRAINT [DF__mu_ext_me__sort___25DB9BFC]  DEFAULT ((90)) FOR [sort_no]
GO
/****** Object:  Default [DF__mu_ext_me__archi__26CFC035]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_ext_menu] ADD  CONSTRAINT [DF__mu_ext_me__archi__26CFC035]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF_mu_item_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_item] ADD  CONSTRAINT [DF_mu_item_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF_mu_item_list_sort_no]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_item_list] ADD  CONSTRAINT [DF_mu_item_list_sort_no]  DEFAULT ((0)) FOR [sort_no]
GO
/****** Object:  Default [DF_mu_item_list_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_item_list] ADD  CONSTRAINT [DF_mu_item_list_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF_mu_mpl_pre_condition_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_mpl_pre_condition] ADD  CONSTRAINT [DF_mu_mpl_pre_condition_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF_mu_mpl_search_all_download]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_mpl_search] ADD  CONSTRAINT [DF_mu_mpl_search_all_download]  DEFAULT ('F') FOR [allow_download]
GO
/****** Object:  Default [DF__mu_mpl_se__auto___3BFFE745]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_mpl_search] ADD  CONSTRAINT [DF__mu_mpl_se__auto___3BFFE745]  DEFAULT ('T') FOR [auto_search]
GO
/****** Object:  Default [DF_mu_mpl_select_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_mpl_select] ADD  CONSTRAINT [DF_mu_mpl_select_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF_mu_object_is_seat]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF_mu_object_is_seat]  DEFAULT ('T') FOR [is_seat]
GO
/****** Object:  Default [DF_mu_object_is_locked]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF_mu_object_is_locked]  DEFAULT ('F') FOR [is_locked]
GO
/****** Object:  Default [DF_mu_object_is_discard]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF_mu_object_is_discard]  DEFAULT ('F') FOR [is_discard]
GO
/****** Object:  Default [DF_mu_object_is_system]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF_mu_object_is_system]  DEFAULT ('F') FOR [is_system]
GO
/****** Object:  Default [DF_mu_object_is_publish]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF_mu_object_is_publish]  DEFAULT ('F') FOR [is_publish]
GO
/****** Object:  Default [DF_mu_object_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF_mu_object_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF__mu_object__is_ru__5006DFF2]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF__mu_object__is_ru__5006DFF2]  DEFAULT ('F') FOR [is_rule]
GO
/****** Object:  Default [DF__mu_object__is_pr__79FD19BE]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF__mu_object__is_pr__79FD19BE]  DEFAULT ('F') FOR [is_private]
GO
/****** Object:  Default [DF__mu_object__is_hi__15A53433]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF__mu_object__is_hi__15A53433]  DEFAULT ('F') FOR [is_hierarchy]
GO
/****** Object:  Default [DF__mu_object__chk_r__1975C517]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF__mu_object__chk_r__1975C517]  DEFAULT ('') FOR [chk_repeat]
GO
/****** Object:  Default [DF__mu_object__allow__1A69E950]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF__mu_object__allow__1A69E950]  DEFAULT ('F') FOR [allow_batch]
GO
/****** Object:  Default [DF__mu_object__add_c__1C5231C2]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF__mu_object__add_c__1C5231C2]  DEFAULT ('F') FOR [add_continue]
GO
/****** Object:  Default [DF_mu_object_is_single]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF_mu_object_is_single]  DEFAULT ('F') FOR [is_single]
GO
/****** Object:  Default [DF_mu_object_all_show_master]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF_mu_object_all_show_master]  DEFAULT ('F') FOR [all_show_master]
GO
/****** Object:  Default [DF__mu_object__searc__7E02B4CC]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  CONSTRAINT [DF__mu_object__searc__7E02B4CC]  DEFAULT ('GROUP') FOR [search_scope]
GO
/****** Object:  Default [DF__mu_object__show___5070F446]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object] ADD  DEFAULT ('T') FOR [show_no]
GO
/****** Object:  Default [DF_mu_object_field_width]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_width]  DEFAULT ((20)) FOR [width]
GO
/****** Object:  Default [DF_mu_object_field_height]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_height]  DEFAULT ((1)) FOR [high]
GO
/****** Object:  Default [DF_mu_object_field_is_forbidden]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_is_forbidden]  DEFAULT ('F') FOR [is_forbidden]
GO
/****** Object:  Default [DF_mu_object_field_is_new]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_is_new]  DEFAULT ('T') FOR [is_new]
GO
/****** Object:  Default [DF_mu_object_field_is_list]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_is_list]  DEFAULT ('T') FOR [is_list]
GO
/****** Object:  Default [DF_mu_object_field_is_edit]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_is_edit]  DEFAULT ('T') FOR [is_edit]
GO
/****** Object:  Default [DF_mu_object_field_is_seat]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_is_seat]  DEFAULT ('T') FOR [is_seat]
GO
/****** Object:  Default [DF_mu_object_field_is_search]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_is_search]  DEFAULT ('F') FOR [is_search]
GO
/****** Object:  Default [DF_mu_object_field_is_required]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_is_required]  DEFAULT ('F') FOR [is_required]
GO
/****** Object:  Default [DF_mu_object_field_col_span]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_col_span]  DEFAULT ((0)) FOR [col_span]
GO
/****** Object:  Default [DF_mu_object_field_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF__mu_object__is_ru__5F492382]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF__mu_object__is_ru__5F492382]  DEFAULT ('F') FOR [is_rule]
GO
/****** Object:  Default [DF__mu_object__allow__1B5E0D89]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF__mu_object__allow__1B5E0D89]  DEFAULT ('F') FOR [allow_batch]
GO
/****** Object:  Default [DF__mu_object__allow__1D4655FB]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF__mu_object__allow__1D4655FB]  DEFAULT ('F') FOR [allow_recall]
GO
/****** Object:  Default [DF__mu_object__clone__1F2E9E6D]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF__mu_object__clone__1F2E9E6D]  DEFAULT ('F') FOR [clone_by]
GO
/****** Object:  Default [DF__mu_object__allow__2022C2A6]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF__mu_object__allow__2022C2A6]  DEFAULT ('F') FOR [allow_clone]
GO
/****** Object:  Default [DF__mu_object__is_nu__436BFEE3]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF__mu_object__is_nu__436BFEE3]  DEFAULT ('F') FOR [is_num]
GO
/****** Object:  Default [DF_mu_object_field_is_richText]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_is_richText]  DEFAULT ('F') FOR [is_richText]
GO
/****** Object:  Default [DF_mu_object_field_is_attachment]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_field] ADD  CONSTRAINT [DF_mu_object_field_is_attachment]  DEFAULT ('F') FOR [is_attachment]
GO
/****** Object:  Default [DF_mu_object_master_field_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_master_field] ADD  CONSTRAINT [DF_mu_object_master_field_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF_mu_object_rule_type]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_rule] ADD  CONSTRAINT [DF_mu_object_rule_type]  DEFAULT ('O') FOR [type]
GO
/****** Object:  Default [DF_mu_object_rule_con_role]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_rule] ADD  CONSTRAINT [DF_mu_object_rule_con_role]  DEFAULT ('CCUSER') FOR [con_role]
GO
/****** Object:  Default [DF_mu_object_rule_con_condition]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_rule] ADD  CONSTRAINT [DF_mu_object_rule_con_condition]  DEFAULT ('=') FOR [con_condition]
GO
/****** Object:  Default [DF_mu_object_rule_con_edit]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_rule] ADD  CONSTRAINT [DF_mu_object_rule_con_edit]  DEFAULT ('T') FOR [con_edit]
GO
/****** Object:  Default [DF_mu_object_rule_con_delete]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_rule] ADD  CONSTRAINT [DF_mu_object_rule_con_delete]  DEFAULT ('T') FOR [con_delete]
GO
/****** Object:  Default [DF_mu_object_rule_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_rule] ADD  CONSTRAINT [DF_mu_object_rule_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF__mu_object__con_h__1699586C]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_object_rule] ADD  CONSTRAINT [DF__mu_object__con_h__1699586C]  DEFAULT ('T') FOR [con_hierarchy]
GO
/****** Object:  Default [DF_mu_opp_archive]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_opp] ADD  CONSTRAINT [DF_mu_opp_archive]  DEFAULT ('F') FOR [archive]
GO
/****** Object:  Default [DF__mu_opp__hierarch__1881A0DE]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_opp] ADD  CONSTRAINT [DF__mu_opp__hierarch__1881A0DE]  DEFAULT ('0') FOR [hierarchy_id]
GO
/****** Object:  Default [DF__mu_opp__search_s__7EF6D905]    Script Date: 01/14/2015 18:01:35 ******/
ALTER TABLE [dbo].[mu_opp] ADD  CONSTRAINT [DF__mu_opp__search_s__7EF6D905]  DEFAULT ('GROUP') FOR [search_scope]
GO
/****** Object:  Default [DF_mu_phone_archive]    Script Date: 01/14/2015 18:01:36 ******/
ALTER TABLE [dbo].[mu_phone] ADD  CONSTRAINT [DF_mu_phone_archive]  DEFAULT ('F') FOR [archive]
GO
