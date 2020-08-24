
GO

/****** Object:  StoredProcedure [dbo].[API_ErrorLogging]    Script Date: 07/03/2018 22:55:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[API_ErrorLogging]
 @Message nvarchar(max)
,@RequestMethod varchar(50)
,@RequestUri varchar(50)
,@TimeUtc datetime
as
begin

INSERT INTO [dbo].[API_Error]
           (
            [Message]
           ,[RequestMethod]
           ,[RequestUri]
           ,[TimeUtc])
     VALUES
           (
            @Message 
           ,@RequestMethod 
           ,@RequestUri 
           ,@TimeUtc)
end


GO


