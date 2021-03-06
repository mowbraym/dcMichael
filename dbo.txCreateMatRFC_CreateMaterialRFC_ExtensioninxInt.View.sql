USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_ExtensioninxInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Extensioninx_Structure], 
[Extensioninx_Valuepart1], 
[Extensioninx_Valuepart2], 
[Extensioninx_Valuepart3], 
[Extensioninx_Valuepart4], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Extensioninx_Upload]
GO
