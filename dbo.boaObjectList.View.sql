USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaObjectList] AS 

SELECT	[name],
		[type]
FROM	[sys].[objects]
WHERE	[type] IN ('U', 'V', 'FN', 'P')
GO
