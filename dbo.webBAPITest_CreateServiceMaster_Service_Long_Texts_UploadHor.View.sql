USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webBAPITest_CreateServiceMaster_Service_Long_Texts_UploadHor]
AS
SELECT        ID, ParentID, Service_Long_Texts_Change_Id, Service_Long_Texts_Format, Service_Long_Texts_Language, Service_Long_Texts_Line
FROM            dbo.ttBAPITest_CreateServiceMaster_Service_Long_Texts_Upload
GO
