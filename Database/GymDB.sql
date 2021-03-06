USE [master]
GO
/****** Object:  Database [GymDB]    Script Date: 01/14/2020 15:24:16 ******/
CREATE DATABASE [GymDB] ON  PRIMARY 
( NAME = N'GymDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\GymDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GymDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\GymDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GymDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GymDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GymDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [GymDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [GymDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [GymDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [GymDB] SET ARITHABORT OFF
GO
ALTER DATABASE [GymDB] SET AUTO_CLOSE ON
GO
ALTER DATABASE [GymDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [GymDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [GymDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [GymDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [GymDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [GymDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [GymDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [GymDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [GymDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [GymDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [GymDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [GymDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [GymDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [GymDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [GymDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [GymDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [GymDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [GymDB] SET  READ_WRITE
GO
ALTER DATABASE [GymDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [GymDB] SET  MULTI_USER
GO
ALTER DATABASE [GymDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [GymDB] SET DB_CHAINING OFF
GO
USE [GymDB]
GO
/****** Object:  Table [dbo].[TblTrainers]    Script Date: 01/14/2020 15:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblTrainers](
	[trainerid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](300) NULL,
	[contactno] [varchar](20) NULL,
	[gender] [varchar](10) NULL,
	[dob] [date] NULL,
	[email] [varchar](70) NULL,
	[city] [varchar](25) NULL,
	[state] [varchar](25) NULL,
	[salary] [int] NULL,
	[password] [varchar](500) NULL,
	[doj] [varchar](50) NULL,
 CONSTRAINT [PK_TblTrainers] PRIMARY KEY CLUSTERED 
(
	[trainerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TblTrainers] ON
INSERT [dbo].[TblTrainers] ([trainerid], [name], [address], [contactno], [gender], [dob], [email], [city], [state], [salary], [password], [doj]) VALUES (1, N'Neel', N'2,Surat', N'9106775453', N'Male', CAST(0xEC230B00 AS Date), N't@gmail.com', N'Surat', N'Gujrat', 25000, N'61128261655019320619523813021612215325324663', N'19/11/2019')
INSERT [dbo].[TblTrainers] ([trainerid], [name], [address], [contactno], [gender], [dob], [email], [city], [state], [salary], [password], [doj]) VALUES (2, N'z', N'a4', N'9632256325', N'Male', CAST(0x81230B00 AS Date), N'z@gmail.com', N'Surat', N'Gujrat', 5000, N'251173233227106635421121411819318486929215', N'22/11/2019')
SET IDENTITY_INSERT [dbo].[TblTrainers] OFF
/****** Object:  Table [dbo].[TblTrainerAllocation]    Script Date: 01/14/2020 15:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTrainerAllocation](
	[trainerid] [int] NULL,
	[memberid] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TblTrainerAllocation] ([trainerid], [memberid]) VALUES (1, 3)
INSERT [dbo].[TblTrainerAllocation] ([trainerid], [memberid]) VALUES (1, 6)
INSERT [dbo].[TblTrainerAllocation] ([trainerid], [memberid]) VALUES (1, 8)
/****** Object:  Table [dbo].[TblMembers]    Script Date: 01/14/2020 15:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblMembers](
	[memberid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](300) NULL,
	[contactno] [varchar](20) NULL,
	[gender] [varchar](10) NULL,
	[dob] [varchar](50) NULL,
	[email] [varchar](70) NULL,
	[city] [varchar](25) NULL,
	[state] [varchar](25) NULL,
	[height] [float] NULL,
	[weight] [float] NULL,
	[month] [int] NULL,
	[onemonthfee] [int] NULL,
	[totalfee] [int] NULL,
	[receivedfee] [int] NULL,
	[password] [varchar](500) NULL,
	[mon] [varchar](200) NULL,
	[tues] [varchar](200) NULL,
	[wed] [varchar](200) NULL,
	[thu] [varchar](200) NULL,
	[fri] [varchar](200) NULL,
	[satu] [varchar](200) NULL,
	[sun] [varchar](200) NULL,
	[fromtime] [varchar](100) NULL,
	[totime] [varchar](100) NULL,
	[doj] [varchar](50) NULL,
	[expiredate] [varchar](50) NULL,
 CONSTRAINT [PK_TblMembers] PRIMARY KEY CLUSTERED 
(
	[memberid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TblMembers] ON
INSERT [dbo].[TblMembers] ([memberid], [name], [address], [contactno], [gender], [dob], [email], [city], [state], [height], [weight], [month], [onemonthfee], [totalfee], [receivedfee], [password], [mon], [tues], [wed], [thu], [fri], [satu], [sun], [fromtime], [totime], [doj], [expiredate]) VALUES (1, N'Taman', N'S', N'9632256325', N'Male', N'20/08/1999', N'm@gmail.com', N'Surat', N'Gujrat', 5.6, 55, 5, 1200, 6000, 500, N'61128261655019320619523813021612215325324663', N'A', N'b', N'cd', N'd', N'e', N'f', N'G', N'11:00', N'13:00', N'19/11/2019', N'19/4/2019')
INSERT [dbo].[TblMembers] ([memberid], [name], [address], [contactno], [gender], [dob], [email], [city], [state], [height], [weight], [month], [onemonthfee], [totalfee], [receivedfee], [password], [mon], [tues], [wed], [thu], [fri], [satu], [sun], [fromtime], [totime], [doj], [expiredate]) VALUES (3, N'Raj', N'A', N'9856321478', N'Male', N'02/05/1999', N'a@gmail.com', N'Surat', N'Gujrat', 5.3, 52, 5, 100, 500, 200, N'12193117185192241182168491951532261051193897', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'05:00', N'06:00', N'22/11/2019', N'22/04/2019')
INSERT [dbo].[TblMembers] ([memberid], [name], [address], [contactno], [gender], [dob], [email], [city], [state], [height], [weight], [month], [onemonthfee], [totalfee], [receivedfee], [password], [mon], [tues], [wed], [thu], [fri], [satu], [sun], [fromtime], [totime], [doj], [expiredate]) VALUES (6, N'Pinu', N'b', N'9632256325', N'Male', N'02/05/1999', N'b@gmail.com', N'surat', N'Gujrat', 5.3, 54, 5, 1000, 5000, 500, N'146235952542301744723658215281191174987143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10:00', N'11:00', N'22/11/2019', N'22/04/2019')
INSERT [dbo].[TblMembers] ([memberid], [name], [address], [contactno], [gender], [dob], [email], [city], [state], [height], [weight], [month], [onemonthfee], [totalfee], [receivedfee], [password], [mon], [tues], [wed], [thu], [fri], [satu], [sun], [fromtime], [totime], [doj], [expiredate]) VALUES (7, N'Jil', N'c', N'9106775453', N'Male', N'05/12/1999', N'c@gmail.com', N'surat', N'Gujarat', 5.3, 60, 5, 1500, 7500, 1000, N'741388240157551835514910014456641399551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10:00', N'11:00', N'22/11/2019', N'22/04/2019')
INSERT [dbo].[TblMembers] ([memberid], [name], [address], [contactno], [gender], [dob], [email], [city], [state], [height], [weight], [month], [onemonthfee], [totalfee], [receivedfee], [password], [mon], [tues], [wed], [thu], [fri], [satu], [sun], [fromtime], [totime], [doj], [expiredate]) VALUES (8, N'Silu', N'd', N'9632256325', N'Female', N'24/10/1999', N'd@gmail.com', N'surat', N'Gujarat', 5.1, 80, 5, 1000, 5000, 1500, N'1301192241451311711491807212111822224145173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'20:00', N'21:00', N'22/11/2019', N'22/04/2019')
SET IDENTITY_INSERT [dbo].[TblMembers] OFF
/****** Object:  Table [dbo].[TblAdmin]    Script Date: 01/14/2020 15:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblAdmin](
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_TblAdmin] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblAdmin] ([email], [password]) VALUES (N'admin@gmail.com', N'admin')
