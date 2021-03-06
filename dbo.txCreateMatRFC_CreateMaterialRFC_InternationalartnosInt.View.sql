USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_InternationalartnosInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Internationalartnos_Del_Flag], 
[Internationalartnos_Ean_Cat], 
[Internationalartnos_Ean_Upc], 
[Internationalartnos_Unit], 
[Internationalartnos_Unit_Iso], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Internationalartnos_Upload]
GO
