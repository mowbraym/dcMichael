USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_UnitsofmeasurexInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Unitsofmeasurex_Alt_Unit], 
[Unitsofmeasurex_Alt_Unit_Iso], 
[Unitsofmeasurex_Capacity_Usage], 
[Unitsofmeasurex_Denominatr], 
[Unitsofmeasurex_Ean_Cat], 
[Unitsofmeasurex_Ean_Upc], 
[Unitsofmeasurex_Ewm_Cw_Uom_Type], 
[Unitsofmeasurex_Gross_Wt], 
[Unitsofmeasurex_Gtin_Variant], 
[Unitsofmeasurex_Height], 
[Unitsofmeasurex_Length], 
[Unitsofmeasurex_Maximum_Stacking], 
[Unitsofmeasurex_Nesting_Factor], 
[Unitsofmeasurex_Numerator], 
[Unitsofmeasurex_Sub_Uom], 
[Unitsofmeasurex_Sub_Uom_Iso], 
[Unitsofmeasurex_Unit_Dim], 
[Unitsofmeasurex_Unit_Dim_Iso], 
[Unitsofmeasurex_Unit_Of_Wt], 
[Unitsofmeasurex_Unit_Of_Wt_Iso], 
[Unitsofmeasurex_Volume], 
[Unitsofmeasurex_Volumeunit], 
[Unitsofmeasurex_Volumeunit_Iso], 
[Unitsofmeasurex_Width], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasurex_Upload]
GO
