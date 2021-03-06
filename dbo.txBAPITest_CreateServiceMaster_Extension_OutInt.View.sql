USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txBAPITest_CreateServiceMaster_Extension_OutInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Extension_Out_Structure], 
[Extension_Out_Valuepart1], 
[Extension_Out_Valuepart2], 
[Extension_Out_Valuepart3], 
[Extension_Out_Valuepart4], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttBAPITest_CreateServiceMaster_Extension_Out_Upload]
GO
