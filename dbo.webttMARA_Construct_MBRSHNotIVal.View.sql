USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webttMARA_Construct_MBRSHNotIVal]
AS
SELECT        zSource, BISMT, MBRSH
FROM            dbo.ttMARA_Construct
WHERE        (MBRSH <> N'I')
GO
