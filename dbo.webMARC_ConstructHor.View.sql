USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webMARC_ConstructHor]
AS
SELECT        zKey, zSource, BISMT, WERKS, PRCTR
FROM            dbo.ttMARC_Construct
GO
