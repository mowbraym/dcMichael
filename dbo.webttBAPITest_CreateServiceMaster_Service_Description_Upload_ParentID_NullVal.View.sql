USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webttBAPITest_CreateServiceMaster_Service_Description_Upload_ParentID_NullVal] AS SELECT [ttBAPITest_CreateServiceMaster_Service_Description_Upload].[ID], [ttBAPITest_CreateServiceMaster_Service_Description_Upload].[ParentID] FROM [dbo].[ttBAPITest_CreateServiceMaster_Service_Description_Upload] WHERE ([ttBAPITest_CreateServiceMaster_Service_Description_Upload].[ParentID] IS NULL)
GO
