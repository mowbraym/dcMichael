USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webMARA_ConstructVer]
AS
SELECT        dbo.ttMARA_Construct.zKey, dbo.ttMARA_Construct.zSource, dbo.ttMARA_Construct.BISMT, dbo.ttMARA_Construct.MAKTX, dbo.ttMARA_Construct.MBRSH, dbo.ttMARA_Construct.MATKL, dbo.ttMARA_Construct.MEINS, 
                         dbo.ttMARA_Construct.MPROF, RTRIM(CONVERT(char, dbo.tvMARC_CountSel.Plant)) + ' Plant(s)' AS Plant, NULL AS TabA, NULL AS LableA, dbo.ttMARA_Construct.[/RIO/ZZSECT], dbo.ttMARA_Construct.[/RIO/ZZUNSPSC]
FROM            dbo.ttMARA_Construct LEFT OUTER JOIN
                         dbo.tvMARC_CountSel ON dbo.ttMARA_Construct.zSource = dbo.tvMARC_CountSel.zSource AND dbo.ttMARA_Construct.BISMT = dbo.tvMARC_CountSel.BISMT
GO
