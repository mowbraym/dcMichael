USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaJobQueueTaskSel] AS 

SELECT	[Cransoft].dbo.JobTaskStatus.boaStatus, 
		[Cransoft].dbo.JobQueueTask.*
FROM	[Cransoft].dbo.JobQueueTask INNER JOIN
		[Cransoft].dbo.JobQueue ON [Cransoft].dbo.JobQueueTask.JobID = [Cransoft].dbo.JobQueue.JobID LEFT OUTER JOIN
		[Cransoft].dbo.JobTaskStatus ON [Cransoft].dbo.JobQueueTask.Status = [Cransoft].dbo.JobTaskStatus.JobStatus
GO
