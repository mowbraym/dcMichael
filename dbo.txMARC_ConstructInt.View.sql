USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[txMARC_ConstructInt]
AS
SELECT        zSource, BISMT, WERKS, PRCTR, zKey
FROM            dbo.ttMARC_Construct
GO
