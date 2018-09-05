USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttTEST](
	[zSource] [nvarchar](50) NULL,
	[TESTTINYINT] [tinyint] NULL,
	[TESTSMALLINT] [smallint] NULL,
	[TESTINT] [int] NULL,
	[TESTBIGINT] [bigint] NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [smalldatetime] NULL,
	[AddedVia] [nvarchar](50) NULL,
	[ChangedBy] [nvarchar](50) NULL,
	[ChangedOn] [smalldatetime] NULL,
	[ChangedVia] [nvarchar](50) NULL,
	[boaStatus] [int] NULL
) ON [PRIMARY]
GO
