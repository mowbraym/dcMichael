USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txBAPITest_CreateServiceMaster_Extension_InInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Extension_In_Structure], 
[Extension_In_Valuepart1], 
[Extension_In_Valuepart2], 
[Extension_In_Valuepart3], 
[Extension_In_Valuepart4], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttBAPITest_CreateServiceMaster_Extension_In_Upload]
GO
