USE [master]
GO
/****** Object:  Database [NewMedici]    Script Date: 02/12/2016 22:10:20 ******/
CREATE DATABASE [NewMedici] ON  PRIMARY 
( NAME = N'NewMedici', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\NewMedici.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NewMedici_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\NewMedici_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NewMedici] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewMedici].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewMedici] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [NewMedici] SET ANSI_NULLS OFF
GO
ALTER DATABASE [NewMedici] SET ANSI_PADDING OFF
GO
ALTER DATABASE [NewMedici] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [NewMedici] SET ARITHABORT OFF
GO
ALTER DATABASE [NewMedici] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [NewMedici] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [NewMedici] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [NewMedici] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [NewMedici] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [NewMedici] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [NewMedici] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [NewMedici] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [NewMedici] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [NewMedici] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [NewMedici] SET  DISABLE_BROKER
GO
ALTER DATABASE [NewMedici] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [NewMedici] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [NewMedici] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [NewMedici] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [NewMedici] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [NewMedici] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [NewMedici] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [NewMedici] SET  READ_WRITE
GO
ALTER DATABASE [NewMedici] SET RECOVERY SIMPLE
GO
ALTER DATABASE [NewMedici] SET  MULTI_USER
GO
ALTER DATABASE [NewMedici] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [NewMedici] SET DB_CHAINING OFF
GO
USE [NewMedici]
GO
/****** Object:  Table [dbo].[tblCustomsJordBorder]    Script Date: 02/12/2016 22:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomsJordBorder](
	[NumCustomsJordBorder] [nchar](3) NOT NULL,
	[NameCustomsJordBorder] [nvarchar](50) NOT NULL,
	[LocalCustomsJordBorder] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblCustomsJordBorder] PRIMARY KEY CLUSTERED 
(
	[NumCustomsJordBorder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblCustomsJordBorder] ([NumCustomsJordBorder], [NameCustomsJordBorder], [LocalCustomsJordBorder]) VALUES (N'100', N'irbed', N'irbed')
INSERT [dbo].[tblCustomsJordBorder] ([NumCustomsJordBorder], [NameCustomsJordBorder], [LocalCustomsJordBorder]) VALUES (N'200', N'aqba', N'aqaba')
INSERT [dbo].[tblCustomsJordBorder] ([NumCustomsJordBorder], [NameCustomsJordBorder], [LocalCustomsJordBorder]) VALUES (N'300', N'amman', N'Amman')
/****** Object:  Table [dbo].[tblMinistryOfHeath]    Script Date: 02/12/2016 22:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMinistryOfHeath](
	[NumMinistryHeath] [int] NOT NULL,
	[NameMinistryHeath] [nvarchar](50) NOT NULL,
	[LocalMinistryHeath] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblMinistryOfHeath] PRIMARY KEY CLUSTERED 
(
	[NumMinistryHeath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblMinistryOfHeath] ([NumMinistryHeath], [NameMinistryHeath], [LocalMinistryHeath]) VALUES (1, N'MOH', N'IRBED')
INSERT [dbo].[tblMinistryOfHeath] ([NumMinistryHeath], [NameMinistryHeath], [LocalMinistryHeath]) VALUES (2, N'MOH', N'AQABA')
INSERT [dbo].[tblMinistryOfHeath] ([NumMinistryHeath], [NameMinistryHeath], [LocalMinistryHeath]) VALUES (3, N'MOH', N'AMMAN')
/****** Object:  Table [dbo].[tblTypeUser]    Script Date: 02/12/2016 22:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTypeUser](
	[IDTypeUser] [int] NOT NULL,
	[TypeNameUser] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblTypeUser] PRIMARY KEY CLUSTERED 
(
	[IDTypeUser] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblTypeUser] ([IDTypeUser], [TypeNameUser]) VALUES (1, N'Admin')
INSERT [dbo].[tblTypeUser] ([IDTypeUser], [TypeNameUser]) VALUES (2, N'Manufacturer')
INSERT [dbo].[tblTypeUser] ([IDTypeUser], [TypeNameUser]) VALUES (3, N'Warehouse')
INSERT [dbo].[tblTypeUser] ([IDTypeUser], [TypeNameUser]) VALUES (4, N'Goverment Organization')
INSERT [dbo].[tblTypeUser] ([IDTypeUser], [TypeNameUser]) VALUES (5, N'End User')
/****** Object:  Table [dbo].[tblPhamacy]    Script Date: 02/12/2016 22:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhamacy](
	[NumPhamacy] [int] NOT NULL,
	[namePhamacy] [nvarchar](50) NOT NULL,
	[LocalPhamacy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblPhamacy] PRIMARY KEY CLUSTERED 
(
	[NumPhamacy] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblPhamacy] ([NumPhamacy], [namePhamacy], [LocalPhamacy]) VALUES (1, N'PH1', N'IRBED')
INSERT [dbo].[tblPhamacy] ([NumPhamacy], [namePhamacy], [LocalPhamacy]) VALUES (2, N'PH2', N'AMMAN')
INSERT [dbo].[tblPhamacy] ([NumPhamacy], [namePhamacy], [LocalPhamacy]) VALUES (3, N'PH3', N'AQABA')
/****** Object:  Table [dbo].[tblUserCompanies]    Script Date: 02/12/2016 22:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserCompanies](
	[NumUser_comp] [nchar](3) NOT NULL,
	[NameUser_comp] [nvarchar](50) NOT NULL,
	[NameManger] [nvarchar](50) NOT NULL,
	[picComp] [nvarchar](50) NULL,
	[info] [nvarchar](4000) NULL,
	[incorporationDate] [datetime] NULL,
	[localComp] [nvarchar](50) NULL,
	[passUser_Copm] [nvarchar](50) NOT NULL,
	[IdTypeUser] [int] NOT NULL,
 CONSTRAINT [PK_tblUserCompanies] PRIMARY KEY CLUSTERED 
(
	[NumUser_comp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblUserCompanies] ([NumUser_comp], [NameUser_comp], [NameManger], [picComp], [info], [incorporationDate], [localComp], [passUser_Copm], [IdTypeUser]) VALUES (N'000', N'GovermentOrganization', N'jordan', N'Images/GovermentOrganization.jpg', N'GovermentOrganization', CAST(0xFFFFA06900000000 AS DateTime), N'jordan', N'1', 4)
INSERT [dbo].[tblUserCompanies] ([NumUser_comp], [NameUser_comp], [NameManger], [picComp], [info], [incorporationDate], [localComp], [passUser_Copm], [IdTypeUser]) VALUES (N'111', N'Pfizer', N'Charles Pfizer and Charles Erhart', N'Images/Pfizer.jpg', N'The value of the market by Pfizer about $ 203 billion and has assets worth about $ 172 billion as of May 2014. The company produces a variety of health care, including human and animal biological products and vaccines as well as food products and dietary supplements products, record sales of the company in 2013 almost 52.6 billion dollar profit multiplied 22 billion in 2013', CAST(0xFFFFB73D00000000 AS DateTime), N'New York', N'1', 2)
INSERT [dbo].[tblUserCompanies] ([NumUser_comp], [NameUser_comp], [NameManger], [picComp], [info], [incorporationDate], [localComp], [passUser_Copm], [IdTypeUser]) VALUES (N'123', N'Admin', N'Dr. Mohammed Malkawi', N'Images/Mohammad Malkawi.JPG', N'Department of Software Engineering', CAST(0x00008EAC00000000 AS DateTime), N'JORDAN', N'1', 1)
INSERT [dbo].[tblUserCompanies] ([NumUser_comp], [NameUser_comp], [NameManger], [picComp], [info], [incorporationDate], [localComp], [passUser_Copm], [IdTypeUser]) VALUES (N'222', N'Novartis', N'SAMI', N'Images/novartis.jpg', N'Novartis is a multinational pharmaceuticals are located in Switzerland and a market capitalization of $ 227 billion and has assets worth $ 126 billion as of May 2014 company, offers a large number of health-care products and has a large number of domestic patents, both in recipes medical drugs or generic drugs. The company achieved sales of $ 57.9 billion in 2013 and a profit of $ 9.2 billion in the same year.', CAST(0x000088F700000000 AS DateTime), N'Svizzera', N'1', 2)
INSERT [dbo].[tblUserCompanies] ([NumUser_comp], [NameUser_comp], [NameManger], [picComp], [info], [incorporationDate], [localComp], [passUser_Copm], [IdTypeUser]) VALUES (N'321', N'Warehouse1', N'JORDAN', N'Images/im1.jpg', N'location in amman', CAST(0xFFFFCF7E00000000 AS DateTime), N'jordan', N'1', 3)
INSERT [dbo].[tblUserCompanies] ([NumUser_comp], [NameUser_comp], [NameManger], [picComp], [info], [incorporationDate], [localComp], [passUser_Copm], [IdTypeUser]) VALUES (N'333', N'Sanofi', N'Sanofi ', N'Images/Sanofi.jpg', N'Action Sanofi company in the field of research, production and distribution of products and pharmaceutical medicines for health care for humans, and spread globally in most countries of the world has a market value estimated for 2013 at about $ 137 billion, and has assets of $ 132 billion as of May 2014, achieved sales of $ 43 billion dollars and it recorded a profit of $ 4.9 billion in the same year.', CAST(0x0000861D00000000 AS DateTime), N'France', N'1', 2)
INSERT [dbo].[tblUserCompanies] ([NumUser_comp], [NameUser_comp], [NameManger], [picComp], [info], [incorporationDate], [localComp], [passUser_Copm], [IdTypeUser]) VALUES (N'444', N'Roche Holding', N'OMAR', N'Images/Roche Holding.jpg', N'Roche Holding, a Swiss company - the second-based companies located in Switzerland''s financial capital, medicine and chocolate - Roche Holding manufactures and develops diagnostic and therapeutic products, and the total market value in 2013 of about $ 253 billion, and the value of its assets of about $ 69 billion as of May 2014, and net sales in 2013 amounted to about $ 50 billion, and profits reached in the same year was about $ 12 billion.', CAST(0xFFFFD3C600000000 AS DateTime), N'Svizzera', N'1', 2)
INSERT [dbo].[tblUserCompanies] ([NumUser_comp], [NameUser_comp], [NameManger], [picComp], [info], [incorporationDate], [localComp], [passUser_Copm], [IdTypeUser]) VALUES (N'555', N'Merck & Co', N'Whitehouse Station, New Jersey', N'Images/MerckCo.jpg', N'Other global pharmaceutical company located in the United States of America. Merck reached a market value of $ 165 billion in 2014 and owns assets equal the value of $ 105 billion as of May 2014 and was the company''s sales in 2013 of about $ 44 billion, with profits of about $ 4.4 billion last year.', CAST(0xFFFFBB8400000000 AS DateTime), N'U.S', N'1', 2)
/****** Object:  StoredProcedure [dbo].[spGetAllPhamacy]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllPhamacy]
	as
	select * from tblPhamacy
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetClassnamePhamacy]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetClassnamePhamacy]
	

	AS
	SELECT * FROM tblPhamacy
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetClassNameMinistryHeath]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetClassNameMinistryHeath]
	 
	as

	select * from tblMinistryOfHeath
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllMinistryOfHeath]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllMinistryOfHeath]

	AS

SELECT  * FROM tblMinistryOfHeath
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCustomsJordBorder]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllCustomsJordBorder]
	
AS
	select * from tblCustomsJordBorder
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInsertPhamacy]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertPhamacy]
	@NumPhamacy INT,

@namePhamacy NVARCHAR(50),

@LocalPhamacy NVARCHAR(50)



	AS

	
	INSERT INTO tblPhamacy(NumPhamacy,namePhamacy,LocalPhamacy)
	VALUES(@NumPhamacy,@namePhamacy,@LocalPhamacy)
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInsertMinistryOfHeath]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertMinistryOfHeath]
	
	@NumMinistryHeath  INT,
    @NameMinistryHeath NVARCHAR (50),
    @LocalMinistryHeath NVARCHAR(50)




	AS
	INSERT INTO tblMinistryOfHeath(NumMinistryHeath,NameMinistryHeath,LocalMinistryHeath)
	VALUES(@NumMinistryHeath,@NameMinistryHeath,@LocalMinistryHeath)
	


	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInsertCustomsJordBorder]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertCustomsJordBorder]
	@NumCustomsJordBorder nchar(3),
    @NameCustomsJordBorder nvarchar (50),
    @LocalCustomsJordBorder  nvarchar(50)
AS
	INSERT INTO tblCustomsJordBorder(NumCustomsJordBorder,NameCustomsJordBorder,LocalCustomsJordBorder)
	VALUES(@NumCustomsJordBorder,@NameCustomsJordBorder,@LocalCustomsJordBorder)
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetCustomsJordBorder]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetCustomsJordBorder]
	

	AS

	SELECT NumCustomsJordBorder ,NameCustomsJordBorder FROM tblCustomsJordBorder
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spUpdatePhamacy]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdatePhamacy]
	
	@NumPhamacy INT,

@namePhamacy NVARCHAR(50),

@LocalPhamacy NVARCHAR(50)
AS
	
	UPDATE tblPhamacy
	SET  namePhamacy=@namePhamacy ,LocalPhamacy=@LocalPhamacy
	 WHERE NumPhamacy=@NumPhamacy
	
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spUpdateMinistryOfHeath]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateMinistryOfHeath]
	
	@NumMinistryHeath  INT,
    @NameMinistryHeath NVARCHAR (50),
    @LocalMinistryHeath NVARCHAR(50)
AS

UPDATE tblMinistryOfHeath

	SET  NameMinistryHeath=@NameMinistryHeath ,LocalMinistryHeath=@LocalMinistryHeath
	 WHERE NumMinistryHeath=@NumMinistryHeath
	
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCustomsJordBorder]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateCustomsJordBorder]
	
	@NumCustomsJordBorder nchar(3),
    @NameCustomsJordBorder nvarchar (50),
    @LocalCustomsJordBorder  nvarchar(50)
AS
	
UPDATE tblCustomsJordBorder

	SET  NameCustomsJordBorder=@NameCustomsJordBorder ,LocalCustomsJordBorder=@LocalCustomsJordBorder WHERE NumCustomsJordBorder=@NumCustomsJordBorder
	
		RETURN
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCompAdmin]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateCompAdmin]

	@NumUser_comp nchar(3),
	@NameUser_comp nvarchar(50),
	@NameManger nvarchar (50),
	@picComp nvarchar (50),
	@info nvarchar (4000),
	@incorporationDate datetime ,
	@localComp nvarchar (50),
	@passUser_Copm nvarchar (50),
	@IdTypeUser int	
AS

UPDATE tblUserCompanies
	SET  NameUser_comp=@NameUser_comp ,NameManger=@NameManger ,picComp=@picComp ,incorporationDate=@incorporationDate ,localComp=@localComp ,passUser_Copm=@passUser_Copm ,IdTypeUser=@IdTypeUser
	WHERE NumUser_comp=@NumUser_comp

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetCompName]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetCompName]
	
AS
	
	select tblUserCompanies.NumUser_comp ,tblUserCompanies.NameUser_comp from tblUserCompanies
	where tblUserCompanies.IdTypeUser=2
		RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInserCompAdmin]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInserCompAdmin]

	@NumUser_comp nchar(3),
	@NameUser_comp nvarchar(50),
	@NameManger nvarchar (50),
	@picComp nvarchar (50),
	@info nvarchar (4000),
	@incorporationDate datetime ,
	@localComp nvarchar (50),
	@passUser_Copm nvarchar (50),
	@IdTypeUser int
	
AS
	INSERT INTO tblUserCompanies(NumUser_comp,NameUser_comp,NameManger ,picComp,info ,incorporationDate ,localComp ,passUser_Copm ,IdTypeUser)
	VALUES(@NumUser_comp,@NameUser_comp,@NameManger,@picComp,@info ,@incorporationDate ,@localComp ,@passUser_Copm ,@IdTypeUser)
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllComp]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllComp]
	
AS
	select NumUser_comp, NameUser_comp,NameManger,picComp,info,incorporationDate,localComp,passUser_Copm, tblTypeUser.TypeNameUser from tblUserCompanies
inner join tblTypeUser on tblUserCompanies.IdTypeUser=tblTypeUser.IDTypeUser
	RETURN
GO
/****** Object:  Table [dbo].[tblMedicine]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMedicine](
	[NumMedicine] [nchar](4) NOT NULL,
	[NameMedicine] [nvarchar](50) NOT NULL,
	[productionDateMedi] [datetime] NOT NULL,
	[exoirationDateMedi] [datetime] NOT NULL,
	[QuantityMedi] [int] NOT NULL,
	[picMedicine] [nvarchar](50) NULL,
	[InfoMedicine] [nvarchar](4000) NULL,
	[NumCompMedi] [nchar](3) NOT NULL,
 CONSTRAINT [PK_tblMedicine] PRIMARY KEY CLUSTERED 
(
	[NumMedicine] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'1110', N'REV1', CAST(0x0000A41300000000 AS DateTime), CAST(0x0000A6EE00000000 AS DateTime), 100, N'Images/m1.jpg', N'Dydrogesterone is an industrial progesterone similar in molecular structure and pharmacological', N'111')
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'1120', N'REV2', CAST(0x0000946100000000 AS DateTime), CAST(0x0000AB3500000000 AS DateTime), 200, N'Images/m2.jpg', N'effects of the natural hormone progesterone. And it has the characteristics of Broujesteronih ', N'111')
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'1130', N'REV3', CAST(0x0000A13900000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), 300, N'Images/m3.jpg', N'selective. And is an effective low dose oral. Has no inhibitory effect on ovulation,', N'111')
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'1140', N'REV4', CAST(0x0000A2A600000000 AS DateTime), CAST(0x0000A85B00000000 AS DateTime), 400, N'Images/m4.jpg', N' it does not alter the normal secretions of endometrial pattern, and does not prevent the formation', N'111')
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'1150', N'REV5', CAST(0x00008EAC00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), 500, N'Images/m5.jpg', N'progesterone in the placenta during early pregnancy female, so it is used to treat infertility.', N'111')
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'2210', N'O1', CAST(0x00008EAC00000000 AS DateTime), CAST(0x000092F400000000 AS DateTime), 100, N'Images/m1.jpg', N'Increases estrogen levels to control hot flashes and prevent long-term effects of menopause', N'222')
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'2220', N'O2', CAST(0x00008ECC00000000 AS DateTime), CAST(0x0000A9E800000000 AS DateTime), 200, N'Images/m2.jpg', N'such as resorption (absorption) bones and undesirable changes in the proportion of fat in the blood', N'222')
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'2230', N'O3', CAST(0x00008ECC00000000 AS DateTime), CAST(0x0000903A00000000 AS DateTime), 300, N'Images/m3.jpg', N' Albroujesteronih characteristics of dydrogesterone 20 times higher than progesterone Unlike other synthetic Broujsteronih vehicles', N'222')
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'3310', N'R1', CAST(0x0000A87B00000000 AS DateTime), CAST(0x0000A9E800000000 AS DateTime), 100, N'Images/m4.jpg', N' dydrogesterone is chemically linked to testosterone. This explains the lack of side effects caused by Onrugenih (such as acne, hirsutism)', N'333')
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'441 ', N'F1', CAST(0x0000A45000000000 AS DateTime), CAST(0x0000B69F00000000 AS DateTime), 100, N'Images/m5.jpg', N' dydrogesterone is chemically linked to testosterone. This explains the lack of side effects caused by Onrugenih (such as acne, hirsutism)', N'444')
INSERT [dbo].[tblMedicine] ([NumMedicine], [NameMedicine], [productionDateMedi], [exoirationDateMedi], [QuantityMedi], [picMedicine], [InfoMedicine], [NumCompMedi]) VALUES (N'442 ', N'F2', CAST(0x00009E5E00000000 AS DateTime), CAST(0x0000A85B00000000 AS DateTime), 200, N'Images/m1.jpg', N'progesterone in the placenta during early pregnancy female, so it is used to treat infertility.', N'444')
/****** Object:  Table [dbo].[tblDistributer]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDistributer](
	[NumDistributer] [nchar](3) NOT NULL,
	[NameDistributer] [nvarchar](50) NOT NULL,
	[GenderDistributer] [nvarchar](50) NOT NULL,
	[PhoneDistributer] [nvarchar](50) NULL,
	[InfoDistributer] [nvarchar](1000) NULL,
	[NumCopmDistributer] [nchar](3) NOT NULL,
 CONSTRAINT [PK_tblDistributer] PRIMARY KEY CLUSTERED 
(
	[NumDistributer] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDistributer] ([NumDistributer], [NameDistributer], [GenderDistributer], [PhoneDistributer], [InfoDistributer], [NumCopmDistributer]) VALUES (N'DI1', N'DB Schenker', N'MALE', N'22019209', N'DB Schenker company one of the world shipping companies, established German company with offices in most countries of the world can almost see through your company''s official website', N'111')
INSERT [dbo].[tblDistributer] ([NumDistributer], [NameDistributer], [GenderDistributer], [PhoneDistributer], [InfoDistributer], [NumCopmDistributer]) VALUES (N'DI2', N'Cohen Nagel Land', N'MALE', N'234234234', N'global company well-known in the field of cargo air, land, sea and these companies possess fleets own transport and can find out addresses and phone numbers of the company through the official website of the company.', N'111')
INSERT [dbo].[tblDistributer] ([NumDistributer], [NameDistributer], [GenderDistributer], [PhoneDistributer], [InfoDistributer], [NumCopmDistributer]) VALUES (N'DI3', N'DIS3', N'MALE', N'233223233', N'', N'111')
INSERT [dbo].[tblDistributer] ([NumDistributer], [NameDistributer], [GenderDistributer], [PhoneDistributer], [InfoDistributer], [NumCopmDistributer]) VALUES (N'DI4', N'DIS4', N'MALE', N'908U98', N'', N'222')
INSERT [dbo].[tblDistributer] ([NumDistributer], [NameDistributer], [GenderDistributer], [PhoneDistributer], [InfoDistributer], [NumCopmDistributer]) VALUES (N'DI5', N'DIS5', N'MALE', N'877686787', N'', N'222')
INSERT [dbo].[tblDistributer] ([NumDistributer], [NameDistributer], [GenderDistributer], [PhoneDistributer], [InfoDistributer], [NumCopmDistributer]) VALUES (N'DI6', N'DIS6', N'MALE', N'665664', N'', N'333')
INSERT [dbo].[tblDistributer] ([NumDistributer], [NameDistributer], [GenderDistributer], [PhoneDistributer], [InfoDistributer], [NumCopmDistributer]) VALUES (N'DI7', N'DIS7', N'MALE', N'2332432', N'', N'444')
/****** Object:  Table [dbo].[tblWarehouseOrganizationforFoodmedicineJORD]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWarehouseOrganizationforFoodmedicineJORD](
	[NumCustomJordBorderASS] [nchar](3) NOT NULL,
	[NumCompJordAss] [nchar](3) NOT NULL,
	[NumMediJordASS] [nchar](4) NOT NULL,
	[NumDistJordASS] [nchar](3) NOT NULL,
	[DateOfEntryJord] [datetime] NOT NULL,
	[QuantityJordAss] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblWarehouseOrganizationforFoodmedicineJORD] ([NumCustomJordBorderASS], [NumCompJordAss], [NumMediJordASS], [NumDistJordASS], [DateOfEntryJord], [QuantityJordAss]) VALUES (N'100', N'444', N'2210', N'DI6', CAST(0x0000905800000000 AS DateTime), 150)
/****** Object:  Table [dbo].[tblMinistryORPhamacyAss]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMinistryORPhamacyAss](
	[NumMinistryORPhamacy] [int] NOT NULL,
	[QuantityMinistryORPhamacy] [int] NOT NULL,
	[DateReceiptMinistryORPhamacy] [datetime] NOT NULL,
	[NumMedicineMinistryORPhamacy] [nchar](4) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblMinistryORPhamacyAss] ([NumMinistryORPhamacy], [QuantityMinistryORPhamacy], [DateReceiptMinistryORPhamacy], [NumMedicineMinistryORPhamacy]) VALUES (3, 50, CAST(0x00008EEA00000000 AS DateTime), N'3310')
INSERT [dbo].[tblMinistryORPhamacyAss] ([NumMinistryORPhamacy], [QuantityMinistryORPhamacy], [DateReceiptMinistryORPhamacy], [NumMedicineMinistryORPhamacy]) VALUES (1, 10, CAST(0x00008F0A00000000 AS DateTime), N'1110')
INSERT [dbo].[tblMinistryORPhamacyAss] ([NumMinistryORPhamacy], [QuantityMinistryORPhamacy], [DateReceiptMinistryORPhamacy], [NumMedicineMinistryORPhamacy]) VALUES (3, 10, CAST(0x00008ECC00000000 AS DateTime), N'1110')
INSERT [dbo].[tblMinistryORPhamacyAss] ([NumMinistryORPhamacy], [QuantityMinistryORPhamacy], [DateReceiptMinistryORPhamacy], [NumMedicineMinistryORPhamacy]) VALUES (2, 30, CAST(0x00008ECC00000000 AS DateTime), N'1110')
/****** Object:  StoredProcedure [dbo].[spGetAllMidicine]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllMidicine]
	
	@NumCompMedi nchar(3)
	AS

	select * from tblMedicine where NumCompMedi=@NumCompMedi
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllDistributer]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllDistributer]
	@NumCopmDistributer nchar (3)
AS
		select * from tblDistributer where NumCopmDistributer=@NumCopmDistributer
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetMedicineName]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetMedicineName]


	AS

	SELECT tblMedicine.NameMedicine,tblMedicine.NumMedicine FROM tblMedicine
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetDistributerName]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetDistributerName]
	
AS
	SELECT tblDistributer.NameDistributer ,tblDistributer.NumDistributer FROM tblDistributer
	
		RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInserMedicine]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInserMedicine]
	


	@NumMedicine nchar(4),
	@NameMedicine nvarchar(50),
	@productionDateMedi datetime,
	@exoirationDateMedi datetime,
	@QuantityMedi int,
	@picMedicine nvarchar(50) ,
	@InfoMedicine nvarchar(4000) ,
	@NumCompMedi nchar(3)
AS
	

	INSERT INTO tblMedicine(NumMedicine,NameMedicine,productionDateMedi ,exoirationDateMedi,QuantityMedi ,picMedicine ,InfoMedicine ,NumCompMedi)
	VALUES(@NumMedicine,@NameMedicine,@productionDateMedi,@exoirationDateMedi,@QuantityMedi ,@picMedicine ,@InfoMedicine ,@NumCompMedi)
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInserDistributer]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInserDistributer]

    @NumDistributer nchar(3),
	@NameDistributer nvarchar (50),
	@GenderDistributer nvarchar(50),
	@PhoneDistributer nvarchar(50),
	@InfoDistributer nvarchar(1000) ,
	@NumCopmDistributer nchar (3)
	
AS
	INSERT INTO tblDistributer(NumDistributer,NameDistributer,GenderDistributer ,PhoneDistributer,InfoDistributer ,NumCopmDistributer)
	VALUES(@NumDistributer,@NameDistributer,@GenderDistributer,@PhoneDistributer,@InfoDistributer ,@NumCopmDistributer)
	
	RETURN
GO
/****** Object:  Table [dbo].[tablWarehouseCompanies]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablWarehouseCompanies](
	[NumCopmAss] [nchar](3) NOT NULL,
	[NumMediAss] [nchar](4) NOT NULL,
	[NumDistrAss] [nchar](3) NOT NULL,
	[receiptdateAss] [datetime] NULL,
	[issueDateAss] [datetime] NULL,
	[QuantityAss] [int] NOT NULL,
	[InfoAss] [nvarchar](1000) NULL,
	[localIssue] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tablWarehouseCompanies] ([NumCopmAss], [NumMediAss], [NumDistrAss], [receiptdateAss], [issueDateAss], [QuantityAss], [InfoAss], [localIssue]) VALUES (N'111', N'1120', N'DI3', CAST(0x0000900600000000 AS DateTime), CAST(0x0000972800000000 AS DateTime), 400, N'NO INFO', N'ITALIA')
INSERT [dbo].[tablWarehouseCompanies] ([NumCopmAss], [NumMediAss], [NumDistrAss], [receiptdateAss], [issueDateAss], [QuantityAss], [InfoAss], [localIssue]) VALUES (N'333', N'2220', N'DI4', CAST(0x0000900600000000 AS DateTime), CAST(0x0000972800000000 AS DateTime), 400, N'---', N'SYRIA')
/****** Object:  StoredProcedure [dbo].[spUpdateMedicine]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateMedicine]
	@NumMedicine nchar(4),
	@NameMedicine nvarchar(50),
	@productionDateMedi datetime,
	@exoirationDateMedi datetime,
	@QuantityMedi int,
	@picMedicine nvarchar(50) ,
	@InfoMedicine nvarchar(4000) ,
	@NumCompMedi nchar(3)
AS
	
	UPDATE tblMedicine
	SET  NameMedicine=@NameMedicine ,productionDateMedi=@productionDateMedi ,exoirationDateMedi=@exoirationDateMedi ,QuantityMedi=@QuantityMedi ,picMedicine=@picMedicine ,InfoMedicine=@InfoMedicine ,NumCompMedi=@NumCompMedi
	WHERE NumMedicine=@NumMedicine
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spUpdateDistributer]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateDistributer]
	 @NumDistributer nchar(3),
	@NameDistributer nvarchar (50),
	@GenderDistributer nvarchar(50),
	@PhoneDistributer nvarchar(50),
	@InfoDistributer nvarchar(1000) ,
	@NumCopmDistributer nchar (3)
AS
	
	UPDATE tblDistributer
	SET  NameDistributer=@NameDistributer ,GenderDistributer=@GenderDistributer ,PhoneDistributer=@PhoneDistributer ,InfoDistributer=@InfoDistributer ,NumCopmDistributer=@NumCopmDistributer
	WHERE NumDistributer=@NumDistributer
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInserWarehouse]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInserWarehouse]
	
	@NumCopmAss nchar(3) ,
	@NumMediAss nchar(4) ,
	@NumDistrAss nchar(3) ,
	@receiptdateAss datetime,
	@issueDateAss datetime ,
	@QuantityAss int ,
	@InfoAss nvarchar (1000) ,
	@localIssue nvarchar (50)
	AS

	INSERT INTO tablWarehouseCompanies(NumCopmAss,NumMediAss,NumDistrAss ,receiptdateAss,issueDateAss ,QuantityAss ,InfoAss ,localIssue)
	VALUES(@NumCopmAss,@NumMediAss,@NumDistrAss,@receiptdateAss,@issueDateAss ,@QuantityAss ,@InfoAss ,@localIssue)
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInsertWarehouseOrganizationforFoodmedicineJORD]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertWarehouseOrganizationforFoodmedicineJORD]
	
@NumCustomJordBorderASS nchar(3) ,
@NumCompJordAss nchar(3),
@NumMediJordASS nchar(4),
@NumDistJordASS nchar(3),
@DateOfEntryJord datetime,
@QuantityJordAss int

	as

	INSERT INTO tblWarehouseOrganizationforFoodmedicineJORD(NumCustomJordBorderASS,NumCompJordAss,NumMediJordASS,NumDistJordASS,DateOfEntryJord,QuantityJordAss)
	VALUES(@NumCustomJordBorderASS,@NumCompJordAss,@NumMediJordASS,@NumDistJordASS,@DateOfEntryJord,@QuantityJordAss)
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spInsertMinistryAssPhamacy]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertMinistryAssPhamacy]


	@NumMinistryORPhamacy int,
@QuantityMinistryORPhamacy int,
@DateReceiptMinistryORPhamacy datetime,
@NumMedicineMinistryORPhamacy nchar(4)
	AS
	INSERT INTO tblMinistryORPhamacyAss(NumMinistryORPhamacy,QuantityMinistryORPhamacy,DateReceiptMinistryORPhamacy,NumMedicineMinistryORPhamacy)
	VALUES(@NumMinistryORPhamacy,@QuantityMinistryORPhamacy,@DateReceiptMinistryORPhamacy,@NumMedicineMinistryORPhamacy)
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllWarehouse]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllWarehouse]
	
AS
	select * from tablWarehouseCompanies
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllMinistryORPhamacyAss]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllMinistryORPhamacyAss]
	
	AS
	SELECT * FROM tblMinistryORPhamacyAss
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spGetAllAssJordan]    Script Date: 02/12/2016 22:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllAssJordan]

	AS
	SELECT * FROM tblWarehouseOrganizationforFoodmedicineJORD
	RETURN
GO
/****** Object:  ForeignKey [FK_tblUserCompanies_tblTypeUser]    Script Date: 02/12/2016 22:10:22 ******/
ALTER TABLE [dbo].[tblUserCompanies]  WITH CHECK ADD  CONSTRAINT [FK_tblUserCompanies_tblTypeUser] FOREIGN KEY([IdTypeUser])
REFERENCES [dbo].[tblTypeUser] ([IDTypeUser])
GO
ALTER TABLE [dbo].[tblUserCompanies] CHECK CONSTRAINT [FK_tblUserCompanies_tblTypeUser]
GO
/****** Object:  ForeignKey [FK_tblMedicine_tblUserCompanies]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tblMedicine]  WITH CHECK ADD  CONSTRAINT [FK_tblMedicine_tblUserCompanies] FOREIGN KEY([NumCompMedi])
REFERENCES [dbo].[tblUserCompanies] ([NumUser_comp])
GO
ALTER TABLE [dbo].[tblMedicine] CHECK CONSTRAINT [FK_tblMedicine_tblUserCompanies]
GO
/****** Object:  ForeignKey [FK_tblDistributer_tblUserCompanies]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tblDistributer]  WITH CHECK ADD  CONSTRAINT [FK_tblDistributer_tblUserCompanies] FOREIGN KEY([NumCopmDistributer])
REFERENCES [dbo].[tblUserCompanies] ([NumUser_comp])
GO
ALTER TABLE [dbo].[tblDistributer] CHECK CONSTRAINT [FK_tblDistributer_tblUserCompanies]
GO
/****** Object:  ForeignKey [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblCustomsJordBorder]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tblWarehouseOrganizationforFoodmedicineJORD]  WITH CHECK ADD  CONSTRAINT [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblCustomsJordBorder] FOREIGN KEY([NumCustomJordBorderASS])
REFERENCES [dbo].[tblCustomsJordBorder] ([NumCustomsJordBorder])
GO
ALTER TABLE [dbo].[tblWarehouseOrganizationforFoodmedicineJORD] CHECK CONSTRAINT [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblCustomsJordBorder]
GO
/****** Object:  ForeignKey [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblDistributer]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tblWarehouseOrganizationforFoodmedicineJORD]  WITH CHECK ADD  CONSTRAINT [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblDistributer] FOREIGN KEY([NumDistJordASS])
REFERENCES [dbo].[tblDistributer] ([NumDistributer])
GO
ALTER TABLE [dbo].[tblWarehouseOrganizationforFoodmedicineJORD] CHECK CONSTRAINT [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblDistributer]
GO
/****** Object:  ForeignKey [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblMedicine]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tblWarehouseOrganizationforFoodmedicineJORD]  WITH CHECK ADD  CONSTRAINT [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblMedicine] FOREIGN KEY([NumMediJordASS])
REFERENCES [dbo].[tblMedicine] ([NumMedicine])
GO
ALTER TABLE [dbo].[tblWarehouseOrganizationforFoodmedicineJORD] CHECK CONSTRAINT [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblMedicine]
GO
/****** Object:  ForeignKey [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblUserCompanies]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tblWarehouseOrganizationforFoodmedicineJORD]  WITH CHECK ADD  CONSTRAINT [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblUserCompanies] FOREIGN KEY([NumCompJordAss])
REFERENCES [dbo].[tblUserCompanies] ([NumUser_comp])
GO
ALTER TABLE [dbo].[tblWarehouseOrganizationforFoodmedicineJORD] CHECK CONSTRAINT [FK_tblWarehouseOrganizationforFoodmedicineJORD_tblUserCompanies]
GO
/****** Object:  ForeignKey [FK_tblMinistryORPhamacyAss_tblMedicine]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tblMinistryORPhamacyAss]  WITH CHECK ADD  CONSTRAINT [FK_tblMinistryORPhamacyAss_tblMedicine] FOREIGN KEY([NumMedicineMinistryORPhamacy])
REFERENCES [dbo].[tblMedicine] ([NumMedicine])
GO
ALTER TABLE [dbo].[tblMinistryORPhamacyAss] CHECK CONSTRAINT [FK_tblMinistryORPhamacyAss_tblMedicine]
GO
/****** Object:  ForeignKey [FK_tblMinistryORPhamacyAss_tblPhamacy]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tblMinistryORPhamacyAss]  WITH CHECK ADD  CONSTRAINT [FK_tblMinistryORPhamacyAss_tblPhamacy] FOREIGN KEY([NumMinistryORPhamacy])
REFERENCES [dbo].[tblMinistryOfHeath] ([NumMinistryHeath])
GO
ALTER TABLE [dbo].[tblMinistryORPhamacyAss] CHECK CONSTRAINT [FK_tblMinistryORPhamacyAss_tblPhamacy]
GO
/****** Object:  ForeignKey [FK_tblMinistryORPhamacyAss_tblPhamacy1]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tblMinistryORPhamacyAss]  WITH CHECK ADD  CONSTRAINT [FK_tblMinistryORPhamacyAss_tblPhamacy1] FOREIGN KEY([NumMinistryORPhamacy])
REFERENCES [dbo].[tblPhamacy] ([NumPhamacy])
GO
ALTER TABLE [dbo].[tblMinistryORPhamacyAss] CHECK CONSTRAINT [FK_tblMinistryORPhamacyAss_tblPhamacy1]
GO
/****** Object:  ForeignKey [FK_tablWarehouseCompanies_tblDistributer]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tablWarehouseCompanies]  WITH CHECK ADD  CONSTRAINT [FK_tablWarehouseCompanies_tblDistributer] FOREIGN KEY([NumDistrAss])
REFERENCES [dbo].[tblDistributer] ([NumDistributer])
GO
ALTER TABLE [dbo].[tablWarehouseCompanies] CHECK CONSTRAINT [FK_tablWarehouseCompanies_tblDistributer]
GO
/****** Object:  ForeignKey [FK_tablWarehouseCompanies_tblMedicine]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tablWarehouseCompanies]  WITH CHECK ADD  CONSTRAINT [FK_tablWarehouseCompanies_tblMedicine] FOREIGN KEY([NumMediAss])
REFERENCES [dbo].[tblMedicine] ([NumMedicine])
GO
ALTER TABLE [dbo].[tablWarehouseCompanies] CHECK CONSTRAINT [FK_tablWarehouseCompanies_tblMedicine]
GO
/****** Object:  ForeignKey [FK_tablWarehouseCompanies_tblUserCompanies]    Script Date: 02/12/2016 22:10:34 ******/
ALTER TABLE [dbo].[tablWarehouseCompanies]  WITH CHECK ADD  CONSTRAINT [FK_tablWarehouseCompanies_tblUserCompanies] FOREIGN KEY([NumCopmAss])
REFERENCES [dbo].[tblUserCompanies] ([NumUser_comp])
GO
ALTER TABLE [dbo].[tablWarehouseCompanies] CHECK CONSTRAINT [FK_tablWarehouseCompanies_tblUserCompanies]
GO
