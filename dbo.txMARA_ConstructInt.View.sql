USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txMARA_ConstructInt]
AS
SELECT        zKey, zSource, BISMT, MAKTX, MBRSH, MATKL, MEINS, [/RIO/ZZSECT] AS _RIO_ZZSECT, MPROF, [/RIO/ZZUNSPSC] AS _RIO_ZZUNSPSC
FROM            dbo.ttMARA_Construct
GO
