USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[webttMARA_Construct_OnValidate_zKeyUpd]
AS
BEGIN
	UPDATE webttMARA_Construct_OnValidate_zKeyUpdSel
	SET zKey = zKeyNew

END
GO
