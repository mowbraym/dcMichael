USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaTableList] AS 

SELECT	name as [Name]
FROM	sys.tables
GO
