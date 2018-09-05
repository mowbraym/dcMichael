USE [dcMichael]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttBAPITest_CreateServiceMaster__Download](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[RequestID] [int] NULL,
	[Ex_Service_Data_Auth_Group] [nvarchar](4) NULL,
	[Ex_Service_Data_Base_Uom] [nvarchar](3) NULL,
	[Ex_Service_Data_Base_Uom_Iso] [nvarchar](3) NULL,
	[Ex_Service_Data_Changed_By] [nvarchar](12) NULL,
	[Ex_Service_Data_Changed_On] [nvarchar](10) NULL,
	[Ex_Service_Data_Chgtext] [nvarchar](1) NULL,
	[Ex_Service_Data_Conv_Den] [decimal](5, 0) NULL,
	[Ex_Service_Data_Conv_Num] [decimal](5, 0) NULL,
	[Ex_Service_Data_Created_By] [nvarchar](12) NULL,
	[Ex_Service_Data_Created_On] [nvarchar](10) NULL,
	[Ex_Service_Data_Del_Ind] [nvarchar](1) NULL,
	[Ex_Service_Data_Division] [nvarchar](2) NULL,
	[Ex_Service_Data_Ean_Cat] [nvarchar](2) NULL,
	[Ex_Service_Data_Ean_Upc] [nvarchar](18) NULL,
	[Ex_Service_Data_Edition] [nvarchar](128) NULL,
	[Ex_Service_Data_Formula] [nvarchar](10) NULL,
	[Ex_Service_Data_Graphic_Url] [nvarchar](132) NULL,
	[Ex_Service_Data_Hier_Serv] [nvarchar](18) NULL,
	[Ex_Service_Data_Master_Langu] [nvarchar](1) NULL,
	[Ex_Service_Data_Master_Langu_Iso] [nvarchar](2) NULL,
	[Ex_Service_Data_Matl_Group] [nvarchar](9) NULL,
	[Ex_Service_Data_P_Status] [nvarchar](2) NULL,
	[Ex_Service_Data_Serv_Cat] [nvarchar](4) NULL,
	[Ex_Service_Data_Serv_Type] [nvarchar](3) NULL,
	[Ex_Service_Data_Service] [nvarchar](18) NULL,
	[Ex_Service_Data_Ssc_Item] [nvarchar](18) NULL,
	[Ex_Service_Data_Tax_Ind] [nvarchar](1) NULL,
	[Ex_Service_Data_Val_Class] [nvarchar](4) NULL,
	[Ex_Service_Data_Valid_From] [nvarchar](10) NULL,
	[Ex_Service_Data_Wagetype] [nvarchar](4) NULL,
	[Ex_Service_Data_Work_Uom] [nvarchar](3) NULL,
	[Ex_Service_Data_Work_Uom_Iso] [nvarchar](3) NULL,
	[Ex_Service_Datax_Auth_Group] [nvarchar](1) NULL,
	[Ex_Service_Datax_Base_Uom] [nvarchar](1) NULL,
	[Ex_Service_Datax_Base_Uom_Iso] [nvarchar](1) NULL,
	[Ex_Service_Datax_Changed_By] [nvarchar](1) NULL,
	[Ex_Service_Datax_Changed_On] [nvarchar](1) NULL,
	[Ex_Service_Datax_Chgtext] [nvarchar](1) NULL,
	[Ex_Service_Datax_Conv_Den] [nvarchar](1) NULL,
	[Ex_Service_Datax_Conv_Num] [nvarchar](1) NULL,
	[Ex_Service_Datax_Created_By] [nvarchar](1) NULL,
	[Ex_Service_Datax_Created_On] [nvarchar](1) NULL,
	[Ex_Service_Datax_Del_Ind] [nvarchar](1) NULL,
	[Ex_Service_Datax_Division] [nvarchar](1) NULL,
	[Ex_Service_Datax_Ean_Cat] [nvarchar](1) NULL,
	[Ex_Service_Datax_Ean_Upc] [nvarchar](1) NULL,
	[Ex_Service_Datax_Edition] [nvarchar](1) NULL,
	[Ex_Service_Datax_Formula] [nvarchar](1) NULL,
	[Ex_Service_Datax_Graphic_Url] [nvarchar](1) NULL,
	[Ex_Service_Datax_Hier_Serv] [nvarchar](1) NULL,
	[Ex_Service_Datax_Master_Langu] [nvarchar](1) NULL,
	[Ex_Service_Datax_Master_Langu_Iso] [nvarchar](1) NULL,
	[Ex_Service_Datax_Matl_Group] [nvarchar](1) NULL,
	[Ex_Service_Datax_P_Status] [nvarchar](1) NULL,
	[Ex_Service_Datax_Serv_Cat] [nvarchar](1) NULL,
	[Ex_Service_Datax_Serv_Type] [nvarchar](1) NULL,
	[Ex_Service_Datax_Service] [nvarchar](18) NULL,
	[Ex_Service_Datax_Ssc_Item] [nvarchar](1) NULL,
	[Ex_Service_Datax_Tax_Ind] [nvarchar](1) NULL,
	[Ex_Service_Datax_Val_Class] [nvarchar](1) NULL,
	[Ex_Service_Datax_Valid_From] [nvarchar](1) NULL,
	[Ex_Service_Datax_Wagetype] [nvarchar](1) NULL,
	[Ex_Service_Datax_Work_Uom] [nvarchar](1) NULL,
	[Ex_Service_Datax_Work_Uom_Iso] [nvarchar](1) NULL,
	[Service] [nvarchar](18) NULL,
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
 CONSTRAINT [PK__ttBAPITe__3214EC27F1DBB9E1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ttBAPITest_CreateServiceMaster__Download] ADD  CONSTRAINT [DF__ttBAPITes__PostE__00DF2177]  DEFAULT ((2)) FOR [PostError]
GO
ALTER TABLE [dbo].[ttBAPITest_CreateServiceMaster__Download] ADD  CONSTRAINT [DF__ttBAPITes__PostM__01D345B0]  DEFAULT ('') FOR [PostMessage]
GO
ALTER TABLE [dbo].[ttBAPITest_CreateServiceMaster__Download] ADD  CONSTRAINT [DF__ttBAPITes__Rejec__02C769E9]  DEFAULT ((0)) FOR [Reject]
GO
ALTER TABLE [dbo].[ttBAPITest_CreateServiceMaster__Download]  WITH CHECK ADD  CONSTRAINT [FK__ttBAPITes__Paren__42ACE4D4] FOREIGN KEY([ParentID])
REFERENCES [dbo].[ttBAPITest_CreateServiceMaster__Upload] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ttBAPITest_CreateServiceMaster__Download] CHECK CONSTRAINT [FK__ttBAPITes__Paren__42ACE4D4]
GO
