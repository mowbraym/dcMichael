USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaSqlList] AS 

SELECT	sys.objects.name,
		sys.objects.type AS xtype,
		sys.sql_modules.definition AS SQL
FROM	sys.sql_modules INNER JOIN
		sys.objects ON sys.sql_modules.object_id = sys.objects.object_id
WHERE	sys.objects.type IN ('V', 'FN', 'P')
GO
