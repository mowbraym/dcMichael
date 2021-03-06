USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txBAPITest_CreateServiceMaster_ReturnInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Return_Field], 
[Return_Id], 
[Return_Log_Msg_No], 
[Return_Log_No], 
[Return_Message], 
[Return_Message_V1], 
[Return_Message_V2], 
[Return_Message_V3], 
[Return_Message_V4], 
[Return_Number], 
[Return_Parameter], 
[Return_Row], 
[Return_System], 
[Return_Type], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttBAPITest_CreateServiceMaster_Return_Upload]
GO
