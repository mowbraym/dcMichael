USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaWebAppGroupSel] AS 

SELECT	GroupID, 
		GroupName,
		WebAppID
FROM	[Cransoft].dbo.WebAppGroup
WHERE	WebAppID IN (SELECT WebAppID FROM [Cransoft].dbo.WebApp WHERE DataSourceID = '3f2e30a4-6e6b-46fb-bdca-07aba8200272')
GO
