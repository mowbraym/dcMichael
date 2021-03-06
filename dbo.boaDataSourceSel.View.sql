USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaDataSourceSel] AS 

SELECT     DataSource.DataSourceID,
		   DataSource.DataSourceName,
		   ISNULL(DataSourceInstance.[Database],
		   DataSource.[Database]) AS [Database], 
		   ISNULL(DataSourceInstance.UserID, DataSource.UserID) AS UserID,
		   ISNULL(DataSourceInstance.DSN, DataSource.DSN) AS DSN, ISNULL(DataSourceInstance.Path, DataSource.Path) AS Path,
		   ISNULL(DataSourceInstance.Port, DataSource.Port) AS Port
FROM       [Cransoft].[dbo].DataSource DataSource 
           INNER JOIN [Cransoft].[dbo].DataSourceType ON DataSource.DataSourceType = [Cransoft].[dbo].DataSourceType.DataSourceType
           LEFT OUTER JOIN [Cransoft].[dbo].DataSourceInstance DataSourceInstance
           ON DataSource.DataSourceID = DataSourceInstance.DatasourceID
           AND DataSourceInstance.Instance = [Cransoft].[dbo].GetCurrentInstance()
WHERE     ([Cransoft].[dbo].DataSourceType.[Database] = 1)
GO
