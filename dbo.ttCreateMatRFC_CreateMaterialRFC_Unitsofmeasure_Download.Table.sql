USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasure_Download](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[RequestID] [int] NULL,
	[Unitsofmeasure_Alt_Unit] [nvarchar](3) NULL,
	[Unitsofmeasure_Alt_Unit_Iso] [nvarchar](3) NULL,
	[Unitsofmeasure_Capacity_Usage] [decimal](15, 3) NULL,
	[Unitsofmeasure_Del_Flag] [nvarchar](1) NULL,
	[Unitsofmeasure_Denominatr] [decimal](5, 0) NULL,
	[Unitsofmeasure_Ean_Cat] [nvarchar](2) NULL,
	[Unitsofmeasure_Ean_Upc] [nvarchar](18) NULL,
	[Unitsofmeasure_Ewm_Cw_Uom_Type] [nvarchar](1) NULL,
	[Unitsofmeasure_Gross_Wt] [decimal](13, 3) NULL,
	[Unitsofmeasure_Gtin_Variant] [nvarchar](2) NULL,
	[Unitsofmeasure_Height] [decimal](13, 3) NULL,
	[Unitsofmeasure_Length] [decimal](13, 3) NULL,
	[Unitsofmeasure_Maximum_Stacking] [nvarchar](128) NULL,
	[Unitsofmeasure_Nesting_Factor] [decimal](3, 0) NULL,
	[Unitsofmeasure_Numerator] [decimal](5, 0) NULL,
	[Unitsofmeasure_Sub_Uom] [nvarchar](3) NULL,
	[Unitsofmeasure_Sub_Uom_Iso] [nvarchar](3) NULL,
	[Unitsofmeasure_Unit_Dim] [nvarchar](3) NULL,
	[Unitsofmeasure_Unit_Dim_Iso] [nvarchar](3) NULL,
	[Unitsofmeasure_Unit_Of_Wt] [nvarchar](3) NULL,
	[Unitsofmeasure_Unit_Of_Wt_Iso] [nvarchar](3) NULL,
	[Unitsofmeasure_Volume] [decimal](13, 3) NULL,
	[Unitsofmeasure_Volumeunit] [nvarchar](3) NULL,
	[Unitsofmeasure_Volumeunit_Iso] [nvarchar](3) NULL,
	[Unitsofmeasure_Width] [decimal](13, 3) NULL,
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
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasure_Download] ADD  DEFAULT ((2)) FOR [PostError]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasure_Download] ADD  DEFAULT ('') FOR [PostMessage]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasure_Download] ADD  DEFAULT ((0)) FOR [Reject]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasure_Download]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[ttCreateMatRFC_CreateMaterialRFC__Upload] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
