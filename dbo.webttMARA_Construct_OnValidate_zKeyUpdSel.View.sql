USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webttMARA_Construct_OnValidate_zKeyUpdSel]
AS
SELECT        zKey, zSource + BISMT AS zKeyNew
FROM            dbo.ttMARA_Construct
GO
