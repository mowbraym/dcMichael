USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[myboaStripNonASCIIChar]
(
  @InString AS NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
	DECLARE @StringLen AS INT
	DECLARE @CurrentPosition AS INT
	DECLARE @Result AS NVARCHAR(255)
	DECLARE @Done AS INT

	SET @StringLen = Len(@InString)
	/*Set @StringLen = Len(@InString) */
	SET @CurrentPosition = 0
	SET @Result = ''
	SET @Done = @StringLen

	WHILE ( @Done > 0 )
	BEGIN
		SET @Done = @Done - 1
		SET @CurrentPosition = @CurrentPosition + 1

		IF Ascii(Substring(@InString, @CurrentPosition, 1)) = 0
		  CONTINUE
		ELSE
		BEGIN
			SET @Result = @Result
						  + Substring(@InString, @CurrentPosition, 1)
		END

	END

	RETURN @Result

END
GO
