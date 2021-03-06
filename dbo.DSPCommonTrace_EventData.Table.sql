USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSPCommonTrace_EventData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DatabaseName] [nvarchar](256) NULL,
	[EventType] [nvarchar](64) NULL,
	[ObjectName] [nvarchar](256) NULL,
	[ObjectType] [nvarchar](32) NULL,
	[TSQLCommand] [nvarchar](max) NULL,
	[LoginName] [nvarchar](256) NULL,
	[ChangedOn] [datetime] NULL,
	[type] [nvarchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
