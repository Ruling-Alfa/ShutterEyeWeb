USE [master]
GO

/****** Object:  Database [shutterEye]    Script Date: 11/16/2016 12:22:33 ******/
CREATE DATABASE [shutterEye] ON  PRIMARY 
( NAME = N'shutterEye', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\shutterEye.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shutterEye_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\shutterEye_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [shutterEye] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shutterEye].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [shutterEye] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [shutterEye] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [shutterEye] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [shutterEye] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [shutterEye] SET ARITHABORT OFF 
GO

ALTER DATABASE [shutterEye] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [shutterEye] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [shutterEye] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [shutterEye] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [shutterEye] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [shutterEye] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [shutterEye] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [shutterEye] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [shutterEye] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [shutterEye] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [shutterEye] SET  DISABLE_BROKER 
GO

ALTER DATABASE [shutterEye] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [shutterEye] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [shutterEye] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [shutterEye] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [shutterEye] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [shutterEye] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [shutterEye] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [shutterEye] SET  READ_WRITE 
GO

ALTER DATABASE [shutterEye] SET RECOVERY FULL 
GO

ALTER DATABASE [shutterEye] SET  MULTI_USER 
GO

ALTER DATABASE [shutterEye] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [shutterEye] SET DB_CHAINING OFF 
GO




USE [shutterEye]
GO

/****** Object:  Table [dbo].[accType]    Script Date: 11/16/2016 12:28:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[accType](
	[acId] [int] NOT NULL,
	[acType] [varchar](20) NOT NULL,
 CONSTRAINT [PK_accType] PRIMARY KEY CLUSTERED 
(
	[acId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





CREATE TABLE [dbo].[registration](
	[uId] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](150) NOT NULL,
	[lastName] [varchar](150) NULL,
	[userName] [varchar](150) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[emailId] [varchar](80) NOT NULL,
	[mobileNo] [int] NULL,
	[country] [varchar](50) NOT NULL,
	[state] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[profilePhoto] [varchar](50) NULL,
	[gender] [varchar](2) NOT NULL,
	[accType] [int] NOT NULL,
 CONSTRAINT [PK_registration] PRIMARY KEY CLUSTERED 
(
	[uId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[registration]  WITH CHECK ADD  CONSTRAINT [FK_registration_accType] FOREIGN KEY([accType])
REFERENCES [dbo].[accType] ([acId])
GO

ALTER TABLE [dbo].[registration] CHECK CONSTRAINT [FK_registration_accType]
GO





USE [shutterEye]
GO

/****** Object:  Table [dbo].[comment]    Script Date: 11/16/2016 12:34:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[comment](
	[cId] [int] IDENTITY(1,1) NOT NULL,
	[uId] [int] NOT NULL,
	[pId] [int] NOT NULL,
	[comment] [varchar](max) NULL,
	[cDate] [datetime] NOT NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[cId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_photoUpload] FOREIGN KEY([pId])
REFERENCES [dbo].[photoUpload] ([pId])
GO

ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_photoUpload]
GO

ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_registration] FOREIGN KEY([uId])
REFERENCES [dbo].[registration] ([uId])
GO

ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_registration]
GO





USE [shutterEye]
GO

/****** Object:  Table [dbo].[like]    Script Date: 11/16/2016 12:34:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[like](
	[lId] [int] IDENTITY(1,1) NOT NULL,
	[uId] [int] NOT NULL,
	[pId] [int] NOT NULL,
	[lDate] [datetime] NOT NULL,
 CONSTRAINT [PK_like] PRIMARY KEY CLUSTERED 
(
	[lId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[like]  WITH CHECK ADD  CONSTRAINT [FK_like_photoUpload] FOREIGN KEY([pId])
REFERENCES [dbo].[photoUpload] ([pId])
GO

ALTER TABLE [dbo].[like] CHECK CONSTRAINT [FK_like_photoUpload]
GO

ALTER TABLE [dbo].[like]  WITH CHECK ADD  CONSTRAINT [FK_like_registration] FOREIGN KEY([uId])
REFERENCES [dbo].[registration] ([uId])
GO

ALTER TABLE [dbo].[like] CHECK CONSTRAINT [FK_like_registration]
GO





USE [shutterEye]
GO

/****** Object:  Table [dbo].[photoUpload]    Script Date: 11/16/2016 12:34:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[photoUpload](
	[pId] [int] IDENTITY(1,1) NOT NULL,
	[uId] [int] NOT NULL,
	[path] [varchar](50) NOT NULL,
	[phName] [varchar](50) NOT NULL,
	[myReg] [varchar](50) NULL,
	[caption] [varchar](50) NULL,
	[phDate] [datetime] NOT NULL,
	[location] [varchar](50) NULL,
	[phType] [varchar](20) NULL,
 CONSTRAINT [PK_photoUpload] PRIMARY KEY CLUSTERED 
(
	[pId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[photoUpload]  WITH CHECK ADD  CONSTRAINT [FK_photoUpload_registration1] FOREIGN KEY([uId])
REFERENCES [dbo].[registration] ([uId])
GO

ALTER TABLE [dbo].[photoUpload] CHECK CONSTRAINT [FK_photoUpload_registration1]
GO





USE [shutterEye]
GO

/****** Object:  Table [dbo].[registration]    Script Date: 11/16/2016 12:34:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO







USE [shutterEye]
GO

/****** Object:  Table [dbo].[verifyUser]    Script Date: 11/16/2016 12:35:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[verifyUser](
	[vId] [int] IDENTITY(1,1) NOT NULL,
	[uId] [int] NOT NULL,
 CONSTRAINT [PK_verifyUser] PRIMARY KEY CLUSTERED 
(
	[vId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[verifyUser]  WITH CHECK ADD  CONSTRAINT [FK_verifyUser_registration] FOREIGN KEY([uId])
REFERENCES [dbo].[registration] ([uId])
GO

ALTER TABLE [dbo].[verifyUser] CHECK CONSTRAINT [FK_verifyUser_registration]
GO


