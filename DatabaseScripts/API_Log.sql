
GO

/****** Object:  Table [dbo].[API_Log]    Script Date: 07/03/2018 22:52:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[API_Log](
	[LogID] [uniqueidentifier] NOT NULL,
	[Host] [nvarchar](100) NULL,
	[Headers] [nvarchar](1000) NULL,
	[StatusCode] [nvarchar](50) NULL,
	[TimeUtc] [datetime] NULL,
	[RequestBody] [nvarchar](max) NULL,
	[RequestedMethod] [nvarchar](max) NULL,
	[UserHostAddress] [nvarchar](100) NULL,
	[Useragent] [nvarchar](100) NULL,
	[AbsoluteUri] [nvarchar](100) NULL,
	[RequestType] [nvarchar](100) NULL,
 CONSTRAINT [PK_API_Log] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[API_Log] ADD  CONSTRAINT [DF_API_Log_LogID]  DEFAULT (newid()) FOR [LogID]
GO


