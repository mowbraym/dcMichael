USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[webttMARA_Construct_/RIO/ZZSECT_NullVal] AS SELECT [ttMARA_Construct].[zSource], [ttMARA_Construct].[BISMT], [ttMARA_Construct].[/RIO/ZZSECT] FROM [dbo].[ttMARA_Construct] WHERE ([ttMARA_Construct].[/RIO/ZZSECT] IS NULL)
GO
