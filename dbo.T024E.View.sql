USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* View Generated by CranSoft DataGarage View Builder
 User: MowbrayM     Date:  */ 
Create View [dbo].[T024E] AS SELECT [dgSAP].[dbo].[T024E].[MANDT], [dgSAP].[dbo].[T024E].[EKORG], [dgSAP].[dbo].[T024E].[EKOTX], [dgSAP].[dbo].[T024E].[BUKRS], [dgSAP].[dbo].[T024E].[TXADR], [dgSAP].[dbo].[T024E].[TXKOP], [dgSAP].[dbo].[T024E].[TXFUS], [dgSAP].[dbo].[T024E].[TXGRU], [dgSAP].[dbo].[T024E].[KALSE], [dgSAP].[dbo].[T024E].[MKALS], [dgSAP].[dbo].[T024E].[BPEFF], [dgSAP].[dbo].[T024E].[BUKRS_NTR] From [dgSAP].[dbo].[T024E]  INNER JOIN [dbo].dswParam ON [dgSAP].[dbo].[T024E].[MANDT] = [dbo].DswParam.SAPClient  
GO
