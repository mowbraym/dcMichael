USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webReportsHor] AS 

SELECT DISTINCT		webReportHor.Priority,
					webReportHor.PageID AS Report,
					WebAppGroupUser.UserID AS boaUserID
FROM				[Cransoft].dbo.webReportHor webReportHor
                    INNER JOIN [Cransoft].dbo.WebAppGroupPage WebAppGroupPage
                    ON webReportHor.PageID = WebAppGroupPage.PageID
                    INNER JOIN [Cransoft].dbo.WebAppGroupUser WebAppGroupUser
                    ON WebAppGroupPage.GroupID = WebAppGroupUser.GroupID
WHERE				webReportHor.WebAppID IN (SELECT WebAppID FROM [Cransoft].dbo.WebApp WHERE DataSourceID = '3f2e30a4-6e6b-46fb-bdca-07aba8200272') AND
					webReportHor.IsTopLevelReport = 1

UNION

SELECT DISTINCT		webReportHor.Priority,
					webReportHor.PageID AS Report,
					RoleUser.UserID AS boaUserID
FROM				[Cransoft].dbo.webReportHor webReportHor
                    INNER JOIN [Cransoft].dbo.WebAppGroupPage WebAppGroupPage
                    ON webReportHor.PageID = WebAppGroupPage.PageID
                    INNER JOIN [Cransoft].dbo.RoleWebAppGroup RoleWebAppGroup
                    ON WebAppGroupPage.GroupID = RoleWebAppGroup.GroupID
                    INNER JOIN [Cransoft].dbo.RoleUser RoleUser
                    ON RoleWebAppGroup.RoleID = RoleUser.RoleID
WHERE				webReportHor.WebAppID IN (SELECT WebAppID FROM [Cransoft].dbo.WebApp WHERE DataSourceID = '3f2e30a4-6e6b-46fb-bdca-07aba8200272') AND
					webReportHor.IsTopLevelReport = 1
GO
