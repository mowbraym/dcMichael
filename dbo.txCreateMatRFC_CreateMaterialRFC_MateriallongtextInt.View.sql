USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txCreateMatRFC_CreateMaterialRFC_MateriallongtextInt]
AS
SELECT [ID], 
[ParentID], 
[RequestID], 
[Materiallongtext_Applobject], 
[Materiallongtext_Del_Flag], 
[Materiallongtext_Format_Col], 
[Materiallongtext_Langu], 
[Materiallongtext_Langu_Iso], 
[Materiallongtext_Text_Id], 
[Materiallongtext_Text_Line], 
[Materiallongtext_Text_Name], 
[PostError], 
[PostMessage], 
[boaStatus], 
[ValidationErrorMessage], 
[Severity], 
[Reject], 
[RejectReason], 
[RejectedBy], 
[LockReject]
FROM [ttCreateMatRFC_CreateMaterialRFC_Materiallongtext_Upload]
GO
