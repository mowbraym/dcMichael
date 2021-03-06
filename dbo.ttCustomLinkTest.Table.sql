USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttCustomLinkTest](
	[DataSourceID] [uniqueidentifier] NOT NULL,
	[Report] [nvarchar](130) NOT NULL,
	[UserID] [nvarchar](50) NOT NULL,
	[GroupID] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[TemplateID] [uniqueidentifier] NOT NULL,
	[InsertSP] [nvarchar](255) NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [smalldatetime] NULL,
	[AddedVia] [nvarchar](50) NULL,
	[ChangedBy] [nvarchar](50) NULL,
	[ChangedOn] [smalldatetime] NULL,
	[ChangedVia] [nvarchar](50) NULL,
	[boaStatus] [int] NULL,
 CONSTRAINT [PK_ttCustomLinkTest] PRIMARY KEY CLUSTERED 
(
	[DataSourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
