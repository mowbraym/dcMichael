USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webdspMonitordspComposeIntegrationHor]
AS
SELECT        dspMonitorReportName, dspComposeTemplateID, dspComposeInsertStoredProcName, Comment
FROM            dbo.ttdspMonitordspComposeIntegration
GO
