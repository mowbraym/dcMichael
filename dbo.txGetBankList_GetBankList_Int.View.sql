USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txGetBankList_GetBankList_Int]
AS
SELECT [ID], 
[RequestID], 
[Bank_Ctry], 
[Max_Rows], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttGetBankList_GetBankList__Upload]
GO
