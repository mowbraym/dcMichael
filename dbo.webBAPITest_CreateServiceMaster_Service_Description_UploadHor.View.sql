USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webBAPITest_CreateServiceMaster_Service_Description_UploadHor]
AS
SELECT        ID, ParentID, Service_Description_Language, Service_Description_Short_Text
FROM            dbo.ttBAPITest_CreateServiceMaster_Service_Description_Upload
GO
