USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaProcedureList] AS 

SELECT	name as [name]
FROM	sys.procedures
GO
