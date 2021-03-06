USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttGetBankList_GetBankList_Bank_List_Upload](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[RequestID] [int] NULL,
	[Bank_List_Bank_Ctry] [nvarchar](3) NULL,
	[Bank_List_Bank_Key] [nvarchar](15) NULL,
	[Bank_List_Bank_Name] [nvarchar](60) NULL,
	[Bank_List_City] [nvarchar](35) NULL,
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
ALTER TABLE [dbo].[ttGetBankList_GetBankList_Bank_List_Upload] ADD  DEFAULT ((2)) FOR [PostError]
GO
ALTER TABLE [dbo].[ttGetBankList_GetBankList_Bank_List_Upload] ADD  DEFAULT ('') FOR [PostMessage]
GO
ALTER TABLE [dbo].[ttGetBankList_GetBankList_Bank_List_Upload] ADD  DEFAULT ((0)) FOR [Reject]
GO
ALTER TABLE [dbo].[ttGetBankList_GetBankList_Bank_List_Upload]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[ttGetBankList_GetBankList__Upload] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
