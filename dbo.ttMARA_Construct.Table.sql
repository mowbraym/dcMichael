USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttMARA_Construct](
	[zSource] [nvarchar](50) NOT NULL,
	[BISMT] [nvarchar](18) NOT NULL,
	[zKey] [nvarchar](68) NULL,
	[MAKTX] [nvarchar](40) NOT NULL,
	[MBRSH] [nvarchar](1) NOT NULL,
	[MATKL] [nvarchar](9) NOT NULL,
	[MEINS] [nvarchar](3) NOT NULL,
	[/RIO/ZZSECT] [nvarchar](6) NOT NULL,
	[MPROF] [nchar](10) NOT NULL,
	[/RIO/ZZUNSPSC] [nvarchar](10) NOT NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [smalldatetime] NULL,
	[AddedVia] [nvarchar](50) NULL,
	[ChangedBy] [nvarchar](50) NULL,
	[ChangedOn] [smalldatetime] NULL,
	[ChangedVia] [nvarchar](50) NULL,
	[boaStatus] [int] NULL,
 CONSTRAINT [PK_ttMARA_Construct_1] PRIMARY KEY CLUSTERED 
(
	[zSource] ASC,
	[BISMT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
