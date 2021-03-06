USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_TaxclassificationsInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Taxclassifications_Depcountry], 
[Taxclassifications_Depcountry_Iso], 
[Taxclassifications_Tax_Ind], 
[Taxclassifications_Tax_Type_1], 
[Taxclassifications_Tax_Type_2], 
[Taxclassifications_Tax_Type_3], 
[Taxclassifications_Tax_Type_4], 
[Taxclassifications_Tax_Type_5], 
[Taxclassifications_Tax_Type_6], 
[Taxclassifications_Tax_Type_7], 
[Taxclassifications_Tax_Type_8], 
[Taxclassifications_Tax_Type_9], 
[Taxclassifications_Taxclass_1], 
[Taxclassifications_Taxclass_2], 
[Taxclassifications_Taxclass_3], 
[Taxclassifications_Taxclass_4], 
[Taxclassifications_Taxclass_5], 
[Taxclassifications_Taxclass_6], 
[Taxclassifications_Taxclass_7], 
[Taxclassifications_Taxclass_8], 
[Taxclassifications_Taxclass_9], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Taxclassifications_Upload]
GO
