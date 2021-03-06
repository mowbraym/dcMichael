USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Returnmessages_Upload](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[RequestID] [int] NULL,
	[Returnmessages_Field] [nvarchar](30) NULL,
	[Returnmessages_Id] [nvarchar](20) NULL,
	[Returnmessages_Log_Msg_No] [nvarchar](128) NULL,
	[Returnmessages_Log_No] [nvarchar](20) NULL,
	[Returnmessages_Message] [nvarchar](220) NULL,
	[Returnmessages_Message_V1] [nvarchar](50) NULL,
	[Returnmessages_Message_V2] [nvarchar](50) NULL,
	[Returnmessages_Message_V3] [nvarchar](50) NULL,
	[Returnmessages_Message_V4] [nvarchar](50) NULL,
	[Returnmessages_Number] [nvarchar](128) NULL,
	[Returnmessages_Parameter] [nvarchar](32) NULL,
	[Returnmessages_Row] [nvarchar](128) NULL,
	[Returnmessages_System] [nvarchar](10) NULL,
	[Returnmessages_Type] [nvarchar](1) NULL,
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
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Returnmessages_Upload] ADD  DEFAULT ((2)) FOR [PostError]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Returnmessages_Upload] ADD  DEFAULT ('') FOR [PostMessage]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Returnmessages_Upload] ADD  DEFAULT ((0)) FOR [Reject]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Returnmessages_Upload]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[ttCreateMatRFC_CreateMaterialRFC__Upload] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
