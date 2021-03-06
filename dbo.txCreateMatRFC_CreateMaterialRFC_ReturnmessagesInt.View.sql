USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_ReturnmessagesInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Returnmessages_Field], 
[Returnmessages_Id], 
[Returnmessages_Log_Msg_No], 
[Returnmessages_Log_No], 
[Returnmessages_Message], 
[Returnmessages_Message_V1], 
[Returnmessages_Message_V2], 
[Returnmessages_Message_V3], 
[Returnmessages_Message_V4], 
[Returnmessages_Number], 
[Returnmessages_Parameter], 
[Returnmessages_Row], 
[Returnmessages_System], 
[Returnmessages_Type], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Returnmessages_Upload]
GO
