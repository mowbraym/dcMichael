USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_MaterialdescriptionInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Materialdescription_Del_Flag], 
[Materialdescription_Langu], 
[Materialdescription_Langu_Iso], 
[Materialdescription_Matl_Desc], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Materialdescription_Upload]
GO
