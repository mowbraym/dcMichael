USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[tvBAPITest_CreateServiceMaster_Service_Long_Texts_Upload_CountSel]
AS
SELECT        ParentID, COUNT(ID) AS LongTexts
FROM            dbo.ttBAPITest_CreateServiceMaster_Service_Long_Texts_Upload
GROUP BY ParentID
GO
