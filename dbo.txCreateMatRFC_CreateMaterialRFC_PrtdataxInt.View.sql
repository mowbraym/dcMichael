USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_PrtdataxInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Prtdatax_Create_Load_Recs], 
[Prtdatax_Ctrl_Key], 
[Prtdatax_Ctrl_Key_No_Chg], 
[Prtdatax_End_Offset], 
[Prtdatax_End_Offset_No_Chg], 
[Prtdatax_End_Offset_Unit], 
[Prtdatax_End_Offset_Unit_Iso], 
[Prtdatax_End_Ref_Date], 
[Prtdatax_End_Ref_Date_No_Chg], 
[Prtdatax_Formula_Tot_Qty], 
[Prtdatax_Formula_Tot_Qty_No_Chg], 
[Prtdatax_Formula_Tot_Usage], 
[Prtdatax_Formula_Tot_Usage_No_Chg], 
[Prtdatax_Grp_Key_1], 
[Prtdatax_Grp_Key_2], 
[Prtdatax_Plant], 
[Prtdatax_Prt_Usage], 
[Prtdatax_Ref_Key_No_Chg], 
[Prtdatax_St_Ref_Date_No_Chg], 
[Prtdatax_Start_Offset], 
[Prtdatax_Start_Offset_No_Chg], 
[Prtdatax_Start_Offset_Unit], 
[Prtdatax_Start_Offset_Unit_Iso], 
[Prtdatax_Start_Ref_Date], 
[Prtdatax_Std_Text_Key], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Prtdatax_Upload]
GO
