USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Taxclassifications_Upload](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[RequestID] [int] NULL,
	[Taxclassifications_Depcountry] [nvarchar](3) NULL,
	[Taxclassifications_Depcountry_Iso] [nvarchar](2) NULL,
	[Taxclassifications_Tax_Ind] [nvarchar](1) NULL,
	[Taxclassifications_Tax_Type_1] [nvarchar](4) NULL,
	[Taxclassifications_Tax_Type_2] [nvarchar](4) NULL,
	[Taxclassifications_Tax_Type_3] [nvarchar](4) NULL,
	[Taxclassifications_Tax_Type_4] [nvarchar](4) NULL,
	[Taxclassifications_Tax_Type_5] [nvarchar](4) NULL,
	[Taxclassifications_Tax_Type_6] [nvarchar](4) NULL,
	[Taxclassifications_Tax_Type_7] [nvarchar](4) NULL,
	[Taxclassifications_Tax_Type_8] [nvarchar](4) NULL,
	[Taxclassifications_Tax_Type_9] [nvarchar](4) NULL,
	[Taxclassifications_Taxclass_1] [nvarchar](1) NULL,
	[Taxclassifications_Taxclass_2] [nvarchar](1) NULL,
	[Taxclassifications_Taxclass_3] [nvarchar](1) NULL,
	[Taxclassifications_Taxclass_4] [nvarchar](1) NULL,
	[Taxclassifications_Taxclass_5] [nvarchar](1) NULL,
	[Taxclassifications_Taxclass_6] [nvarchar](1) NULL,
	[Taxclassifications_Taxclass_7] [nvarchar](1) NULL,
	[Taxclassifications_Taxclass_8] [nvarchar](1) NULL,
	[Taxclassifications_Taxclass_9] [nvarchar](1) NULL,
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
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Taxclassifications_Upload] ADD  DEFAULT ((2)) FOR [PostError]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Taxclassifications_Upload] ADD  DEFAULT ('') FOR [PostMessage]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Taxclassifications_Upload] ADD  DEFAULT ((0)) FOR [Reject]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Taxclassifications_Upload]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[ttCreateMatRFC_CreateMaterialRFC__Upload] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
