USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaJobQueueSel] AS 

SELECT	[Cransoft].dbo.JobStatus.JobboaStatus,
		[Cransoft].dbo.JobQueue.*
FROM	[Cransoft].dbo.JobQueue LEFT OUTER JOIN
		[Cransoft].dbo.JobStatus ON [Cransoft].dbo.JobQueue.Status = [Cransoft].dbo.JobStatus.JobStatus
WHERE	[Cransoft].dbo.JobQueue.WebAppID IN (SELECT WebAppID FROM [Cransoft].dbo.[WebApp] WHERE DataSourceID = '3f2e30a4-6e6b-46fb-bdca-07aba8200272')
GO
