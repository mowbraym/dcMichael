USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txMARA_MARC_ConstructInt]
AS
SELECT        ISNULL(dbo.ttMARC_Construct.zKey, dbo.ttMARA_Construct.zKey) AS zKey, dbo.ttMARA_Construct.BISMT, dbo.ttMARA_Construct.MAKTX, dbo.ttMARA_Construct.MBRSH, dbo.ttMARA_Construct.MATKL, 
                         dbo.ttMARA_Construct.MEINS, dbo.ttMARA_Construct.[/RIO/ZZSECT] AS _RIO_ZZSECT, dbo.ttMARA_Construct.[/RIO/ZZUNSPSC] AS _RIO_ZZUNSPSC, dbo.ttMARA_Construct.MPROF, dbo.ttMARC_Construct.WERKS, 
                         dbo.ttMARC_Construct.PRCTR
FROM            dbo.ttMARA_Construct LEFT OUTER JOIN
                         dbo.ttMARC_Construct ON dbo.ttMARA_Construct.zSource = dbo.ttMARC_Construct.zSource AND dbo.ttMARA_Construct.BISMT = dbo.ttMARC_Construct.BISMT
GO
