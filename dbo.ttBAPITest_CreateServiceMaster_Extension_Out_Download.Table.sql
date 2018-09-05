USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttBAPITest_CreateServiceMaster_Extension_Out_Download](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[RequestID] [int] NULL,
	[Extension_Out_Structure] [nvarchar](30) NULL,
	[Extension_Out_Valuepart1] [nvarchar](240) NULL,
	[Extension_Out_Valuepart2] [nvarchar](240) NULL,
	[Extension_Out_Valuepart3] [nvarchar](240) NULL,
	[Extension_Out_Valuepart4] [nvarchar](240) NULL,
	[PostingID] [uniqueidentifier] NULL,
	[PostError] [int] NULL,
	[PostMessage] [nvarchar](max) NULL,
	[boaStatus] [int] NULL,
	[ValidationErrorMessage] [nvarchar](max) NULL,
	[Severity] [int] NULL,
	[Reject] [bit] NULL,
	[RejectReason] [nvarchar](max) NULL,
	[RejectedBy] [nvarchar](50) NULL,
	[LockReject] [bit] NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [smalldatetime] NULL,
	[AddedVia] [nvarchar](50) NULL,
	[ChangedBy] [nvarchar](50) NULL,
	[ChangedOn] [smalldatetime] NULL,
	[ChangedVia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ttBAPITest_CreateServiceMaster_Extension_Out_Download] ADD  DEFAULT ((2)) FOR [PostError]
GO
ALTER TABLE [dbo].[ttBAPITest_CreateServiceMaster_Extension_Out_Download] ADD  DEFAULT ('') FOR [PostMessage]
GO
ALTER TABLE [dbo].[ttBAPITest_CreateServiceMaster_Extension_Out_Download] ADD  DEFAULT ((0)) FOR [Reject]
GO
ALTER TABLE [dbo].[ttBAPITest_CreateServiceMaster_Extension_Out_Download]  WITH CHECK ADD  CONSTRAINT [FK__ttBAPITes__Paren__3BFFE745] FOREIGN KEY([ParentID])
REFERENCES [dbo].[ttBAPITest_CreateServiceMaster__Upload] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ttBAPITest_CreateServiceMaster_Extension_Out_Download] CHECK CONSTRAINT [FK__ttBAPITes__Paren__3BFFE745]
GO
