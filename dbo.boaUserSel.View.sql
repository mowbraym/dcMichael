USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaUserSel] AS 

SELECT	[User].UserID,
		[User].Name,
		[User].WindowsUserName,
		[User].LanguageID,
		[WebAppUser].WebAppID,
		[User].EMailAddress, 
		[User].Telephone
FROM	[Cransoft].dbo.[User] [User] INNER JOIN
		[Cransoft].dbo.WebAppUser WebappUser ON [User].UserID = WebAppUser.UserID
WHERE	WebAppUser.WebAppID IN (SELECT WebAppID FROM [Cransoft].dbo.WebApp WHERE DataSourceID = '3f2e30a4-6e6b-46fb-bdca-07aba8200272')
UNION
SELECT	[User].UserID,
		[User].Name,
		[User].WindowsUserName,
		[User].LanguageID,
		RoleWebAppGroup.WebAppID,
		[User].EMailAddress, 
		[User].Telephone
FROM	[Cransoft].dbo.[User] [User] INNER JOIN 
		[Cransoft].dbo.[RoleUser] RoleUser ON
			RoleUser.UserID = [User].UserID INNER JOIN 
			[Cransoft].dbo.[RoleWebAppGroup] RoleWebAppGroup ON
				RoleWebAppGroup.RoleID = RoleUser.RoleID
					WHERE RoleWebAppGroup.WebAppID IN 
						(SELECT WebAppID FROM [Cransoft].dbo.WebApp WHERE DataSourceID = '3f2e30a4-6e6b-46fb-bdca-07aba8200272')
	
GO
