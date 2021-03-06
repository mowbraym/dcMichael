USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttMARC_Construct](
	[zSource] [nvarchar](50) NOT NULL,
	[BISMT] [nvarchar](18) NOT NULL,
	[WERKS] [nvarchar](4) NOT NULL,
	[PRCTR] [nvarchar](10) NULL,
	[zKey] [nvarchar](72) NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [smalldatetime] NULL,
	[AddedVia] [nvarchar](50) NULL,
	[ChangedBy] [nvarchar](50) NULL,
	[ChangedOn] [smalldatetime] NULL,
	[ChangedVia] [nvarchar](50) NULL,
	[boaStatus] [int] NULL,
 CONSTRAINT [PK_ttMARC_Construct_1] PRIMARY KEY CLUSTERED 
(
	[zSource] ASC,
	[BISMT] ASC,
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
