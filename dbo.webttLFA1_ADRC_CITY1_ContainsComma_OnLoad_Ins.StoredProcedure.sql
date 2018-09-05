USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[webttLFA1_ADRC_CITY1_ContainsComma_OnLoad_Ins] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  INSERT INTO [cMass].[dbo].[ttRequest]
  (Description
,  TemplateID
,  boaStatus
,  AddedOn
,  AddedBy
,  RequestStatus
,  PostingID
,  UseExcel2007
,  MessageGathering
,  ExternalRoleEmailSent
,  OrgUnitStatus
,  OrgUnitConfirmed
,  OrgUnitsLoaded
,  RejectedRecords
)
VALUES
('Cloned from 1133'
,'624D00F7-0048-4132-9F5B-6505A866917B'
,0
,GETDATE()
,'MowbrayM'
,0
,NEWID()
,1
,0
,0
,0
,0
,1
,0
)
END
GO
