USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_UnitsofmeasureInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Unitsofmeasure_Alt_Unit], 
[Unitsofmeasure_Alt_Unit_Iso], 
[Unitsofmeasure_Capacity_Usage], 
[Unitsofmeasure_Del_Flag], 
[Unitsofmeasure_Denominatr], 
[Unitsofmeasure_Ean_Cat], 
[Unitsofmeasure_Ean_Upc], 
[Unitsofmeasure_Ewm_Cw_Uom_Type], 
[Unitsofmeasure_Gross_Wt], 
[Unitsofmeasure_Gtin_Variant], 
[Unitsofmeasure_Height], 
[Unitsofmeasure_Length], 
[Unitsofmeasure_Maximum_Stacking], 
[Unitsofmeasure_Nesting_Factor], 
[Unitsofmeasure_Numerator], 
[Unitsofmeasure_Sub_Uom], 
[Unitsofmeasure_Sub_Uom_Iso], 
[Unitsofmeasure_Unit_Dim], 
[Unitsofmeasure_Unit_Dim_Iso], 
[Unitsofmeasure_Unit_Of_Wt], 
[Unitsofmeasure_Unit_Of_Wt_Iso], 
[Unitsofmeasure_Volume], 
[Unitsofmeasure_Volumeunit], 
[Unitsofmeasure_Volumeunit_Iso], 
[Unitsofmeasure_Width], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasure_Upload]
GO
