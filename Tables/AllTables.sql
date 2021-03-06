USE [s16guest29]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[StreetAddress] [varchar](100) NOT NULL,
	[CityID] [int] NOT NULL,
	[StateID] [tinyint] NULL,
	[CountryID] [tinyint] NULL,
	[ZipCode] [varchar](5) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[BranchID] [int] IDENTITY(1,1) NOT NULL,
	[BranchNumber] [smallint] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[City] [varchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](75) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyAddress]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyAddress](
	[CompanyID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_CompanyAddress] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](75) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](75) NOT NULL,
	[Login] [varchar](32) NULL,
	[Password] [varchar](32) NULL,
	[CompanyID] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddress](
	[CustomerID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_CustomerAddress] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerPhone]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerPhone](
	[CustomerID] [int] NOT NULL,
	[PhoneID] [int] NOT NULL,
 CONSTRAINT [PK_CustomerPhone] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[PhoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerRelease]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerRelease](
	[CustomerReleaseID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[VersionID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[MajorReleaseNumber] [tinyint] NOT NULL,
	[MinorReleaseNumber] [tinyint] NOT NULL,
	[DateOfRelease] [date] NOT NULL,
	[DownloadURL] [varchar](2083) NOT NULL,
 CONSTRAINT [PK_CustomerRelease] PRIMARY KEY CLUSTERED 
(
	[CustomerReleaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerRequest]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerRequest](
	[CustomerRequestID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[DateOfRequest] [date] NOT NULL,
	[CustomerReleaseID] [int] NOT NULL,
 CONSTRAINT [PK_CustomerRequest] PRIMARY KEY CLUSTERED 
(
	[CustomerRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feature]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feature](
	[FeatureID] [int] IDENTITY(1,1) NOT NULL,
	[NameOfFeature] [varchar](50) NOT NULL,
	[FeatureDescription] [varchar](max) NULL,
	[StatusTypeID] [tinyint] NOT NULL,
	[DateOfRelease] [date] NULL,
	[CustomerReleaseID] [int] NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Iteration]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Iteration](
	[IterationID] [int] IDENTITY(1,1) NOT NULL,
	[IterationLabel] [varchar](50) NOT NULL,
	[ParentID] [int] NULL,
 CONSTRAINT [PK_Iteration] PRIMARY KEY CLUSTERED 
(
	[IterationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone](
	[PhoneID] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [varchar](15) NOT NULL,
	[PhoneTypeID] [tinyint] NOT NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[PhoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhoneType]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhoneType](
	[PhoneTypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[PhoneType] [varchar](8) NOT NULL,
 CONSTRAINT [PK_PhoneType] PRIMARY KEY CLUSTERED 
(
	[PhoneTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[NameOfProduct] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Platform] [varchar](25) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Release]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Release](
	[ReleaseID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[VersionID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[MajorReleaseNumber] [tinyint] NOT NULL,
	[MinorReleaseNumber] [tinyint] NOT NULL,
	[DateOfRelease] [date] NOT NULL,
 CONSTRAINT [PK_Release] PRIMARY KEY CLUSTERED 
(
	[ReleaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State](
	[StateID] [tinyint] IDENTITY(1,1) NOT NULL,
	[State] [varchar](20) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StatusType]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StatusType](
	[StatusTypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[StatusType] [varchar](10) NOT NULL,
 CONSTRAINT [PK_StatusType] PRIMARY KEY CLUSTERED 
(
	[StatusTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Version]    Script Date: 5/2/2016 4:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Version](
	[VersionID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[MajorVersionNumber] [tinyint] NOT NULL,
	[MinorVersionNumber] [tinyint] NOT NULL,
	[DateOfRelease] [date] NOT NULL,
 CONSTRAINT [PK_Version] PRIMARY KEY CLUSTERED 
(
	[VersionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_Product]
GO
ALTER TABLE [dbo].[CompanyAddress]  WITH CHECK ADD  CONSTRAINT [FK_CompanyAddress_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[CompanyAddress] CHECK CONSTRAINT [FK_CompanyAddress_Address]
GO
ALTER TABLE [dbo].[CompanyAddress]  WITH CHECK ADD  CONSTRAINT [FK_CompanyAddress_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([CompanyID])
GO
ALTER TABLE [dbo].[CompanyAddress] CHECK CONSTRAINT [FK_CompanyAddress_Company]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Company]
GO
ALTER TABLE [dbo].[CustomerAddress]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAddress_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[CustomerAddress] CHECK CONSTRAINT [FK_CustomerAddress_Address]
GO
ALTER TABLE [dbo].[CustomerAddress]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAddress_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerAddress] CHECK CONSTRAINT [FK_CustomerAddress_Customer]
GO
ALTER TABLE [dbo].[CustomerPhone]  WITH CHECK ADD  CONSTRAINT [FK_CustomerPhone_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerPhone] CHECK CONSTRAINT [FK_CustomerPhone_Customer]
GO
ALTER TABLE [dbo].[CustomerPhone]  WITH CHECK ADD  CONSTRAINT [FK_CustomerPhone_Phone] FOREIGN KEY([PhoneID])
REFERENCES [dbo].[Phone] ([PhoneID])
GO
ALTER TABLE [dbo].[CustomerPhone] CHECK CONSTRAINT [FK_CustomerPhone_Phone]
GO
ALTER TABLE [dbo].[CustomerRelease]  WITH CHECK ADD  CONSTRAINT [FK_CustomerRelease_Branch] FOREIGN KEY([BranchID])
REFERENCES [dbo].[Branch] ([BranchID])
GO
ALTER TABLE [dbo].[CustomerRelease] CHECK CONSTRAINT [FK_CustomerRelease_Branch]
GO
ALTER TABLE [dbo].[CustomerRelease]  WITH CHECK ADD  CONSTRAINT [FK_CustomerRelease_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[CustomerRelease] CHECK CONSTRAINT [FK_CustomerRelease_Product]
GO
ALTER TABLE [dbo].[CustomerRelease]  WITH CHECK ADD  CONSTRAINT [FK_CustomerRelease_Version] FOREIGN KEY([VersionID])
REFERENCES [dbo].[Version] ([VersionID])
GO
ALTER TABLE [dbo].[CustomerRelease] CHECK CONSTRAINT [FK_CustomerRelease_Version]
GO
ALTER TABLE [dbo].[CustomerRequest]  WITH CHECK ADD  CONSTRAINT [FK_CustomerRequest_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerRequest] CHECK CONSTRAINT [FK_CustomerRequest_Customer]
GO
ALTER TABLE [dbo].[CustomerRequest]  WITH CHECK ADD  CONSTRAINT [FK_CustomerRequest_CustomerRelease] FOREIGN KEY([CustomerReleaseID])
REFERENCES [dbo].[CustomerRelease] ([CustomerReleaseID])
GO
ALTER TABLE [dbo].[CustomerRequest] CHECK CONSTRAINT [FK_CustomerRequest_CustomerRelease]
GO
ALTER TABLE [dbo].[Feature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_CustomerRelease] FOREIGN KEY([CustomerReleaseID])
REFERENCES [dbo].[CustomerRelease] ([CustomerReleaseID])
GO
ALTER TABLE [dbo].[Feature] CHECK CONSTRAINT [FK_Feature_CustomerRelease]
GO
ALTER TABLE [dbo].[Feature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_StatusType] FOREIGN KEY([StatusTypeID])
REFERENCES [dbo].[StatusType] ([StatusTypeID])
GO
ALTER TABLE [dbo].[Feature] CHECK CONSTRAINT [FK_Feature_StatusType]
GO
ALTER TABLE [dbo].[Iteration]  WITH CHECK ADD  CONSTRAINT [FK_Iteration_Iteration] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Iteration] ([IterationID])
GO
ALTER TABLE [dbo].[Iteration] CHECK CONSTRAINT [FK_Iteration_Iteration]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_PhoneType] FOREIGN KEY([PhoneTypeID])
REFERENCES [dbo].[PhoneType] ([PhoneTypeID])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_PhoneType]
GO
ALTER TABLE [dbo].[Release]  WITH CHECK ADD  CONSTRAINT [FK_Release_Branch] FOREIGN KEY([BranchID])
REFERENCES [dbo].[Branch] ([BranchID])
GO
ALTER TABLE [dbo].[Release] CHECK CONSTRAINT [FK_Release_Branch]
GO
ALTER TABLE [dbo].[Release]  WITH CHECK ADD  CONSTRAINT [FK_Release_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Release] CHECK CONSTRAINT [FK_Release_Product]
GO
ALTER TABLE [dbo].[Release]  WITH CHECK ADD  CONSTRAINT [FK_Release_Version] FOREIGN KEY([VersionID])
REFERENCES [dbo].[Version] ([VersionID])
GO
ALTER TABLE [dbo].[Release] CHECK CONSTRAINT [FK_Release_Version]
GO
ALTER TABLE [dbo].[Version]  WITH CHECK ADD  CONSTRAINT [FK_Version_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Version] CHECK CONSTRAINT [FK_Version_Product]
GO
