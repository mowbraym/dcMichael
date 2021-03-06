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
CREATE PROCEDURE [dbo].[webCustomLinkTest_OnLoadUpd]
  @DataSourceID UNIQUEIDENTIFIER,
  @GroupID NVARCHAR(50),
  @Report NVARCHAR(255),
  @UserID NVARCHAR(50),
  @boaUserID NVARCHAR(50)
AS
BEGIN

	DECLARE @Description NVARCHAR(255)
	DECLARE @TemplateID NVARCHAR(255)
	DECLARE @InsertSP NVARCHAR(255)
	DECLARE @RequestID INT
	DECLARE @UserAccess NVARCHAR(255)

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SET @Description = LEFT(@Report + ' Request for ' + @UserID, 255)
	SELECT DISTINCT
		  @TemplateID = [dspComposeTemplateID],
		  @InsertSP = [dspComposeInsertStoredProcName]
		FROM
		  [dcMichael].[dbo].[ttdspMonitordspComposeIntegration]
		WHERE
		  ( [dspMonitorReportName] = @Report )
		;

	-- If @dspComposeTemplateID is NULL then we can't create a Request
	IF  (@TemplateID IS NULL)
	BEGIN
		THROW 99999, 'A dspCompose Template is not assigned for this Report', 1;
	END

	-- Check the dspComposeTemplateID exists in dspCompose
	SELECT DISTINCT
		@UserAccess = [TemplateID]
	FROM [cMass].[dbo].[ttTemplate]
	WHERE [TemplateID] = @TemplateID
	IF  (@UserAccess IS NULL)
	BEGIN
		THROW 99999, 'The dspCompose Template assigned to this report does not exist', 1;
	END

-- Check this @UserID can access this @TemplateID
	SELECT DISTINCT
		@UserAccess = [TemplateID]
	FROM [cMass].[dbo].[ttTemplateUser]
	WHERE [TemplateID] = @TemplateID
	AND UserID = @UserID
	IF  (@UserAccess IS NULL)
	BEGIN
		THROW 99999, 'This User is not Authorised to use this dspCompose Template', 1;
	END

--- Check if a Request for this report and template exist already
	IF EXISTS (
		SELECT RequestStatus
		FROM [cMass].[dbo].[ttRequest]
		WHERE description LIKE @Report+'%'
		AND TemplateID = @TemplateID
		AND RequestStatus IN (0,1,2) -- Request In Process, Posting Scheduled, Posting
	)
	BEGIN
		THROW 99999, 'A Request for this Report is already in process', 2
	END

-- Call the BOA Create Request API
	EXEC [cMass].[dbo].[apiCreateRequest]
		@Description -- Description
		,@TemplateID -- TemplateID
		,NULL -- SAPConnectionID
		,NULL -- TemplateExternalRequestScenarioID
		,NULL -- SenderEmailAddress
		,@UserID -- boaUserID
		,@RequestID OUTPUT -- CreatedRequestID

-- Now populate the Request data table with the report data ...
-- Make sure this exists before executing
	IF OBJECT_ID(@InsertSP) IS NOT NULL
	BEGIN
		EXEC @InsertSP
			@RequestID
			,@UserID
	END;

	DECLARE @ReturnMessage NVARCHAR(255) = 'dspCompose Request ' + CAST(@RequestID AS nvarchar) + ' created';

	--THROW 99999, @ReturnMessage, 1;

END
GO
