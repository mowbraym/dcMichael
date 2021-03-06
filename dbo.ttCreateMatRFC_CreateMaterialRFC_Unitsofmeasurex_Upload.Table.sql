USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasurex_Upload](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[RequestID] [int] NULL,
	[Unitsofmeasurex_Alt_Unit] [nvarchar](3) NULL,
	[Unitsofmeasurex_Alt_Unit_Iso] [nvarchar](3) NULL,
	[Unitsofmeasurex_Capacity_Usage] [nvarchar](1) NULL,
	[Unitsofmeasurex_Denominatr] [nvarchar](1) NULL,
	[Unitsofmeasurex_Ean_Cat] [nvarchar](1) NULL,
	[Unitsofmeasurex_Ean_Upc] [nvarchar](1) NULL,
	[Unitsofmeasurex_Ewm_Cw_Uom_Type] [nvarchar](1) NULL,
	[Unitsofmeasurex_Gross_Wt] [nvarchar](1) NULL,
	[Unitsofmeasurex_Gtin_Variant] [nvarchar](1) NULL,
	[Unitsofmeasurex_Height] [nvarchar](1) NULL,
	[Unitsofmeasurex_Length] [nvarchar](1) NULL,
	[Unitsofmeasurex_Maximum_Stacking] [nvarchar](1) NULL,
	[Unitsofmeasurex_Nesting_Factor] [nvarchar](1) NULL,
	[Unitsofmeasurex_Numerator] [nvarchar](1) NULL,
	[Unitsofmeasurex_Sub_Uom] [nvarchar](1) NULL,
	[Unitsofmeasurex_Sub_Uom_Iso] [nvarchar](1) NULL,
	[Unitsofmeasurex_Unit_Dim] [nvarchar](1) NULL,
	[Unitsofmeasurex_Unit_Dim_Iso] [nvarchar](1) NULL,
	[Unitsofmeasurex_Unit_Of_Wt] [nvarchar](1) NULL,
	[Unitsofmeasurex_Unit_Of_Wt_Iso] [nvarchar](1) NULL,
	[Unitsofmeasurex_Volume] [nvarchar](1) NULL,
	[Unitsofmeasurex_Volumeunit] [nvarchar](1) NULL,
	[Unitsofmeasurex_Volumeunit_Iso] [nvarchar](1) NULL,
	[Unitsofmeasurex_Width] [nvarchar](1) NULL,
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
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasurex_Upload] ADD  DEFAULT ((2)) FOR [PostError]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasurex_Upload] ADD  DEFAULT ('') FOR [PostMessage]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasurex_Upload] ADD  DEFAULT ((0)) FOR [Reject]
GO
ALTER TABLE [dbo].[ttCreateMatRFC_CreateMaterialRFC_Unitsofmeasurex_Upload]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[ttCreateMatRFC_CreateMaterialRFC__Upload] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
