USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Prtdata_Upload](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[RequestID] [int] NULL,
	[Prtdata_Create_Load_Recs] [nvarchar](1) NULL,
	[Prtdata_Ctrl_Key] [nvarchar](4) NULL,
	[Prtdata_Ctrl_Key_No_Chg] [nvarchar](1) NULL,
	[Prtdata_End_Offset] [decimal](5, 0) NULL,
	[Prtdata_End_Offset_No_Chg] [nvarchar](1) NULL,
	[Prtdata_End_Offset_Unit] [nvarchar](3) NULL,
	[Prtdata_End_Offset_Unit_Iso] [nvarchar](3) NULL,
	[Prtdata_End_Ref_Date] [nvarchar](2) NULL,
	[Prtdata_End_Ref_Date_No_Chg] [nvarchar](1) NULL,
	[Prtdata_Formula_Tot_Qty] [nvarchar](6) NULL,
	[Prtdata_Formula_Tot_Qty_No_Chg] [nvarchar](1) NULL,
	[Prtdata_Formula_Tot_Usage] [nvarchar](6) NULL,
	[Prtdata_Formula_Tot_Usage_No_Chg] [nvarchar](1) NULL,
	[Prtdata_Grp_Key_1] [nvarchar](4) NULL,
	[Prtdata_Grp_Key_2] [nvarchar](4) NULL,
	[Prtdata_Plant] [nvarchar](4) NULL,
	[Prtdata_Prt_Usage] [nvarchar](3) NULL,
	[Prtdata_Ref_Key_No_Chg] [nvarchar](1) NULL,
	[Prtdata_St_Ref_Date_No_Chg] [nvarchar](1) NULL,
	[Prtdata_Start_Offset] [decimal](5, 0) NULL,
	[Prtdata_Start_Offset_No_Chg] [nvarchar](1) NULL,
	[Prtdata_Start_Offset_Unit] [nvarchar](3) NULL,
	[Prtdata_Start_Offset_Unit_Iso] [nvarchar](3) NULL,
	[Prtdata_Start_Ref_Date] [nvarchar](2) NULL,
	[Prtdata_Std_Text_Key] [nvarchar](7) NULL,
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
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Prtdata_Upload] ADD  DEFAULT ((2)) FOR [PostError]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Prtdata_Upload] ADD  DEFAULT ('') FOR [PostMessage]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Prtdata_Upload] ADD  DEFAULT ((0)) FOR [Reject]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Prtdata_Upload]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[ttCreateMatRFC_CreateMaterialRFC__Upload] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
