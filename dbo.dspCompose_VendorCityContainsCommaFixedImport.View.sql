USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dspCompose_VendorCityContainsCommaFixedImport]
AS
SELECT        LIFNR AS [RF02K-LIFNR], NAME1, STREET, REPLACE(CITY1, ',', ' ') AS [LFA1-ORT01], REGION, COUNTRY, KTOKK, 'X' AS [RF02K-D0110]
FROM            dgReports.dbo.tvLFA1_ADRC_CITY1_ContainsComma_RptSel
GO
