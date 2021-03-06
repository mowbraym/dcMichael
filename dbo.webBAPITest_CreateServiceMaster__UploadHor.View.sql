USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webBAPITest_CreateServiceMaster__UploadHor]
AS
SELECT        dbo.ttBAPITest_CreateServiceMaster__Upload.ID, NULL AS ShortText, dbo.ttBAPITest_CreateServiceMaster__Upload.Im_Service_Data_Base_Uom, dbo.ttBAPITest_CreateServiceMaster__Upload.Im_Service_Data_Serv_Cat, 
                         dbo.tvBAPITest_CreateServiceMaster_Service_Long_Texts_Upload_CountSel.LongTexts, dbo.ttBAPITest_CreateServiceMaster__Upload.ID AS ParentID
FROM            dbo.ttBAPITest_CreateServiceMaster__Upload LEFT OUTER JOIN
                         dbo.tvBAPITest_CreateServiceMaster_Service_Long_Texts_Upload_CountSel ON dbo.ttBAPITest_CreateServiceMaster__Upload.ID = dbo.tvBAPITest_CreateServiceMaster_Service_Long_Texts_Upload_CountSel.ParentID
GO
