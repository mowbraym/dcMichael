USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webCustomLinkTestHor]
AS
SELECT        DataSourceID, Report, UserID, GroupID, Description, TemplateID, InsertSP, NULL AS CreateDspcomposeRequest
FROM            dbo.ttCustomLinkTest
GO
