USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Materiallongtext_Download](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[RequestID] [int] NULL,
	[Materiallongtext_Applobject] [nvarchar](10) NULL,
	[Materiallongtext_Del_Flag] [nvarchar](1) NULL,
	[Materiallongtext_Format_Col] [nvarchar](2) NULL,
	[Materiallongtext_Langu] [nvarchar](1) NULL,
	[Materiallongtext_Langu_Iso] [nvarchar](2) NULL,
	[Materiallongtext_Text_Id] [nvarchar](4) NULL,
	[Materiallongtext_Text_Line] [nvarchar](132) NULL,
	[Materiallongtext_Text_Name] [nvarchar](70) NULL,
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
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Materiallongtext_Download] ADD  DEFAULT ((2)) FOR [PostError]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Materiallongtext_Download] ADD  DEFAULT ('') FOR [PostMessage]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Materiallongtext_Download] ADD  DEFAULT ((0)) FOR [Reject]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Materiallongtext_Download]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[ttCreateMatRFC_CreateMaterialRFC__Upload] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
