
GO

/****** Object:  Table [dbo].[API_Error]    Script Date: 07/03/2018 22:54:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[API_Error](
	[APIErrorId] [uniqueidentifier] NOT NULL,
	[RequestMethod] [varchar](100) NULL,
	[RequestUri] [varchar](100) NULL,
	[TimeUtc] [datetime] NULL,
	[Message] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_API_Error] PRIMARY KEY CLUSTERED 
(
	[APIErrorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[API_Error] ADD  CONSTRAINT [DF_API_Error_APIErrorId]  DEFAULT (newid()) FOR [APIErrorId]
GO


