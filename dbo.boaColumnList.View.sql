USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaColumnList] AS 

SELECT	sys.objects.name AS TableName,
		sys.columns.name AS ColumnName,
		sys.columns.column_id AS ColOrder,
		sys.objects.type
FROM	sys.columns INNER JOIN sys.objects ON sys.columns.object_id = sys.objects.object_id
WHERE   (sys.objects.type IN ('U', 'V'))
GO
