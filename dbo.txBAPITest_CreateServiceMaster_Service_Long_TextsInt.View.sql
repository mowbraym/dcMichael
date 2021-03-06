USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txBAPITest_CreateServiceMaster_Service_Long_TextsInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Service_Long_Texts_Change_Id], 
[Service_Long_Texts_Format], 
[Service_Long_Texts_Language], 
[Service_Long_Texts_Language_Iso], 
[Service_Long_Texts_Line], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttBAPITest_CreateServiceMaster_Service_Long_Texts_Upload]
GO
