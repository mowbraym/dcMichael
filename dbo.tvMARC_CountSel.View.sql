USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[tvMARC_CountSel]
AS
SELECT        dbo.ttMARC_Construct.zSource, dbo.ttMARC_Construct.BISMT, COUNT(dbo.ttMARC_Construct.WERKS) AS Plant
FROM            dbo.ttMARA_Construct INNER JOIN
                         dbo.ttMARC_Construct ON dbo.ttMARA_Construct.zSource = dbo.ttMARC_Construct.zSource AND dbo.ttMARA_Construct.BISMT = dbo.ttMARC_Construct.BISMT
GROUP BY dbo.ttMARC_Construct.zSource, dbo.ttMARC_Construct.BISMT
GO
