USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttdspMonitordspComposeIntegration](
	[dspMonitorReportName] [nvarchar](255) NOT NULL,
	[dspComposeTemplateID] [uniqueidentifier] NOT NULL,
	[dspComposeInsertStoredProcName] [nvarchar](255) NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_ttdspMonitordspComposeIntegration] PRIMARY KEY CLUSTERED 
(
	[dspMonitorReportName] ASC,
	[dspComposeTemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
