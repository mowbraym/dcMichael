USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  TRIGGER [DSPCommonTrace_Master_Trigger] on database for ALTER_FUNCTION, ALTER_INDEX, ALTER_PROCEDURE, ALTER_TABLE, ALTER_VIEW, CREATE_FUNCTION, CREATE_INDEX, CREATE_PROCEDURE, CREATE_SYNONYM, CREATE_TABLE, CREATE_VIEW, DROP_FUNCTION, DROP_INDEX, DROP_PROCEDURE, DROP_SYNONYM, DROP_TABLE, DROP_VIEW as

-- Wrap this entire thing in a try catch, I know it's not the greatest practice
-- but we NEVER want this trigger to stop the user from modifying their database
-- when there is something wrong in this logic, unforseen or otherwise.

BEGIN TRY

	-- Hide this to the users, if we left this off, everytime they made
	-- a change to the database they would see an additional '1 row(s) affected'
	-- which could be an annoyance and cause confusion for those who don't know why
	-- it is happening.
	SET NOCOUNT ON

	-- If the tracking table doesn't exist, we cannot create it without knowing the seed
	-- so try to print a user friendly message, and return. Note... this message will display
	-- any time an oject is changed, so it will have info about how to delete it.
	IF NOT EXISTS(SELECT * FROM SYS.TABLES where name = 'DSPCommonTrace_EventData')
	BEGIN
		PRINT '** Warning ** This Database is being tracked by DSPCommonTrace but does not have the table needed to store data. '
			  + 'If this Database is not active in DSPCommonTrace you can safetly delete this trigger.'
		RETURN
	END

	DECLARE @data xml
	SET @data = EVENTDATA()

	DECLARE @DatabaseName nvarchar(256)
	SET @DatabaseName = @data.value('(/EVENT_INSTANCE/DatabaseName)[1]', 'nvarchar(256)')

	DECLARE @EventType nvarchar(64)
	SET @EventType = @data.value('(/EVENT_INSTANCE/EventType)[1]', 'nvarchar(64)')

	DECLARE @ObjectName nvarchar(256)
	SET @ObjectName = @data.value('(/EVENT_INSTANCE/ObjectName)[1]', 'nvarchar(256)')

	DECLARE @ObjectType nvarchar(32)
	SET @ObjectType = @data.value('(/EVENT_INSTANCE/ObjectType)[1]', 'nvarchar(32)')

	DECLARE @TSQLCommand nvarchar(max)
	SET @TSQLCommand = @data.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'nvarchar(max)')

	DECLARE @LoginName nvarchar(256)
	SET @LoginName = @data.value('(/EVENT_INSTANCE/LoginName)[1]', 'nvarchar(256)')


	DECLARE @type nvarchar(8)
	SET @type = '?'
	SELECT @type = type FROM sys.objects WHERE object_id = object_id(@ObjectName)


	IF @ObjectName not like ''
	BEGIN
	INSERT INTO DSPCommonTrace_EventData ([DatabaseName], [EventType], [ObjectName], [ObjectType], [TSQLCommand], [LoginName], [ChangedOn], [type])
		VALUES (@DatabaseName, @EventType, @ObjectName, @ObjectType, @TSQLCommand, @LoginName, GETDATE(), @type)
	END

	SET NOCOUNT OFF

END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE()
END CATCH
GO
ENABLE TRIGGER [DSPCommonTrace_Master_Trigger] ON DATABASE
GO
