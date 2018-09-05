USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaTableAndViewList] AS 

SELECT  [name],
        rtrim(type) AS [xtype]
FROM    sys.objects
WHERE   [type] IN ('U', 'V')
GO
