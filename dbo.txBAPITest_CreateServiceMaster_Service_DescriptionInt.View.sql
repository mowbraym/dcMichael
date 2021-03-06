USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txBAPITest_CreateServiceMaster_Service_DescriptionInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Service_Description_Change_Id], 
[Service_Description_Language], 
[Service_Description_Language_Iso], 
[Service_Description_Short_Text], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttBAPITest_CreateServiceMaster_Service_Description_Upload]
GO
