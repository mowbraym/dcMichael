USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Prtdatax_Download](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[RequestID] [int] NULL,
	[Prtdatax_Create_Load_Recs] [nvarchar](1) NULL,
	[Prtdatax_Ctrl_Key] [nvarchar](1) NULL,
	[Prtdatax_Ctrl_Key_No_Chg] [nvarchar](1) NULL,
	[Prtdatax_End_Offset] [nvarchar](1) NULL,
	[Prtdatax_End_Offset_No_Chg] [nvarchar](1) NULL,
	[Prtdatax_End_Offset_Unit] [nvarchar](1) NULL,
	[Prtdatax_End_Offset_Unit_Iso] [nvarchar](1) NULL,
	[Prtdatax_End_Ref_Date] [nvarchar](1) NULL,
	[Prtdatax_End_Ref_Date_No_Chg] [nvarchar](1) NULL,
	[Prtdatax_Formula_Tot_Qty] [nvarchar](1) NULL,
	[Prtdatax_Formula_Tot_Qty_No_Chg] [nvarchar](1) NULL,
	[Prtdatax_Formula_Tot_Usage] [nvarchar](1) NULL,
	[Prtdatax_Formula_Tot_Usage_No_Chg] [nvarchar](1) NULL,
	[Prtdatax_Grp_Key_1] [nvarchar](1) NULL,
	[Prtdatax_Grp_Key_2] [nvarchar](1) NULL,
	[Prtdatax_Plant] [nvarchar](4) NULL,
	[Prtdatax_Prt_Usage] [nvarchar](1) NULL,
	[Prtdatax_Ref_Key_No_Chg] [nvarchar](1) NULL,
	[Prtdatax_St_Ref_Date_No_Chg] [nvarchar](1) NULL,
	[Prtdatax_Start_Offset] [nvarchar](1) NULL,
	[Prtdatax_Start_Offset_No_Chg] [nvarchar](1) NULL,
	[Prtdatax_Start_Offset_Unit] [nvarchar](1) NULL,
	[Prtdatax_Start_Offset_Unit_Iso] [nvarchar](1) NULL,
	[Prtdatax_Start_Ref_Date] [nvarchar](1) NULL,
	[Prtdatax_Std_Text_Key] [nvarchar](1) NULL,
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
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Prtdatax_Download] ADD  DEFAULT ((2)) FOR [PostError]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Prtdatax_Download] ADD  DEFAULT ('') FOR [PostMessage]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Prtdatax_Download] ADD  DEFAULT ((0)) FOR [Reject]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Prtdatax_Download]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[ttCreateMatRFC_CreateMaterialRFC__Upload] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
