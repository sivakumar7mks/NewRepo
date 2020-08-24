
GO

/****** Object:  StoredProcedure [dbo].[API_Logging]    Script Date: 07/03/2018 22:55:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[API_Logging] 
     @Host NVARCHAR(100)
	,@Headers NVARCHAR(500)
	,@StatusCode VARCHAR(50)
	,@RequestBody NVARCHAR(max)
	,@RequestedMethod NVARCHAR(max)
	,@UserHostAddress NVARCHAR(100)
	,@Useragent NVARCHAR(100)
	,@AbsoluteUri NVARCHAR(100)
	,@RequestType NVARCHAR(100)
AS
BEGIN
	INSERT INTO [dbo].[API_Log] (
		[Host]
		,[Headers]
		,[StatusCode]
		,[TimeUtc]
		,[RequestBody]
		,[RequestedMethod]
		,[UserHostAddress]
		,[Useragent]
		,[AbsoluteUri]
		,[RequestType]
		)
	VALUES (
		@Host
		,@Headers
		,@StatusCode
		,getdate()
		,@RequestBody
		,@RequestedMethod
		,@UserHostAddress
		,@Useragent
		,@AbsoluteUri
		,@RequestType
		)
END

GO


