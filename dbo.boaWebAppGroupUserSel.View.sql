USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaWebAppGroupUserSel] AS 

SELECT	WebAppGroupUser.GroupID,
		WebAppGroupUser.UserID,
		WebAppGroup.WebAppID
FROM	[Cransoft].dbo.WebAppGroupUser WebAppGroupUser 
		INNER JOIN [Cransoft].dbo.WebAppGroup WebAppGroup
		ON WebAppGroupUser.GroupID = WebAppGroup.GroupID
WHERE	WebAppGroup.WebAppID IN (SELECT WebAppID FROM [Cransoft].dbo.WebApp WHERE DataSourceID = '3f2e30a4-6e6b-46fb-bdca-07aba8200272')
UNION
SELECT	RoleWebAppGroup.GroupID,
		RoleUser.UserID,
		RoleWebAppGroup.WebappID
FROM	[Cransoft].dbo.RoleWebAppGroup RoleWebAppGroup
		INNER JOIN  [Cransoft].dbo.RoleUser RoleUser ON
		RoleWebAppGroup.RoleID = RoleUser.RoleID
WHERE	RoleWebAppGroup.WebAppID IN (SELECT WebAppID FROM [Cransoft].dbo.WebApp WHERE DataSourceID = '3f2e30a4-6e6b-46fb-bdca-07aba8200272')
GO
