USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_ExtensioninInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Extensionin_Structure], 
[Extensionin_Valuepart1], 
[Extensionin_Valuepart2], 
[Extensionin_Valuepart3], 
[Extensionin_Valuepart4], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Extensionin_Upload]
GO
