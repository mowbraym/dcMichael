USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[boaDataSourceAllSel] AS 

SELECT     DataSource.DataSourceID,
		   DataSource.DataSourceName,
		   ISNULL(DataSourceInstance.[Database],
		   DataSource.[Database]) AS [Database], 
		   ISNULL(DataSourceInstance.UserID, DataSource.UserID) AS UserID,
		   ISNULL(DataSourceInstance.DSN, DataSource.DSN) AS DSN, ISNULL(DataSourceInstance.Path, DataSource.Path) AS Path,
		   ISNULL(DataSourceInstance.Port, DataSource.Port) AS Port, DataSource.DatabaseType, 
		   DataSourceType.DataSourceType, DataSourceType.[Database] AS IsDatabase
FROM       [Cransoft].[dbo].DataSource DataSource 
           LEFT OUTER JOIN [Cransoft].[dbo].DataSourceInstance DataSourceInstance
           ON DataSource.DataSourceID = DataSourceInstance.DatasourceID
           AND DataSourceInstance.Instance = [Cransoft].[dbo].GetCurrentInstance()
		   INNER JOIN [Cransoft].[dbo].DataSourceType DataSourceType
		   ON DataSource.DataSourceType = DataSourceType.DataSourceType
GO
