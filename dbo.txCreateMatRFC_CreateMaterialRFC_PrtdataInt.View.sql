USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_PrtdataInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Prtdata_Create_Load_Recs], 
[Prtdata_Ctrl_Key], 
[Prtdata_Ctrl_Key_No_Chg], 
[Prtdata_End_Offset], 
[Prtdata_End_Offset_No_Chg], 
[Prtdata_End_Offset_Unit], 
[Prtdata_End_Offset_Unit_Iso], 
[Prtdata_End_Ref_Date], 
[Prtdata_End_Ref_Date_No_Chg], 
[Prtdata_Formula_Tot_Qty], 
[Prtdata_Formula_Tot_Qty_No_Chg], 
[Prtdata_Formula_Tot_Usage], 
[Prtdata_Formula_Tot_Usage_No_Chg], 
[Prtdata_Grp_Key_1], 
[Prtdata_Grp_Key_2], 
[Prtdata_Plant], 
[Prtdata_Prt_Usage], 
[Prtdata_Ref_Key_No_Chg], 
[Prtdata_St_Ref_Date_No_Chg], 
[Prtdata_Start_Offset], 
[Prtdata_Start_Offset_No_Chg], 
[Prtdata_Start_Offset_Unit], 
[Prtdata_Start_Offset_Unit_Iso], 
[Prtdata_Start_Ref_Date], 
[Prtdata_Std_Text_Key], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Prtdata_Upload]
GO
