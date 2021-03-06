USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txGetBankList_GetBankList_Bank_ListInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Bank_List_Bank_Ctry], 
[Bank_List_Bank_Key], 
[Bank_List_Bank_Name], 
[Bank_List_City], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttGetBankList_GetBankList_Bank_List_Upload]
GO
