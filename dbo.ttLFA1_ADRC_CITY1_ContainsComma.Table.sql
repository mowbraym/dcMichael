USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttLFA1_ADRC_CITY1_ContainsComma](
	[MANDT] [nvarchar](3) NOT NULL,
	[LIFNR] [nvarchar](10) NOT NULL,
	[KTOKK] [nvarchar](4) NULL,
	[NAME1] [nvarchar](35) NULL,
	[STREET] [nvarchar](50) NULL,
	[CITY1] [nvarchar](35) NULL,
	[REGION] [nvarchar](3) NULL,
	[COUNTRY] [nvarchar](3) NULL,
	[ReportName] [nvarchar](50) NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [smalldatetime] NULL,
	[AddedVia] [nvarchar](50) NULL,
	[ChangedBy] [nvarchar](50) NULL,
	[ChangedOn] [smalldatetime] NULL,
	[ChangedVia] [nvarchar](50) NULL,
	[boaStatus] [int] NULL,
 CONSTRAINT [PK_ttLFA1_ADRC_CITY1_ContainsComma] PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[LIFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
