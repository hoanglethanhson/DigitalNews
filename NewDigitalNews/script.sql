USE [master]
GO
/****** Object:  Database [J3.L.P0004]    Script Date: 7/28/2018 11:58:38 AM ******/
CREATE DATABASE [J3.L.P0004]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J3.L.P0004', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\J3.L.P0004.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'J3.L.P0004_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\J3.L.P0004_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [J3.L.P0004] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3.L.P0004].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3.L.P0004] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J3.L.P0004] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J3.L.P0004] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J3.L.P0004] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J3.L.P0004] SET ARITHABORT OFF 
GO
ALTER DATABASE [J3.L.P0004] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J3.L.P0004] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J3.L.P0004] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J3.L.P0004] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J3.L.P0004] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J3.L.P0004] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J3.L.P0004] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J3.L.P0004] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J3.L.P0004] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J3.L.P0004] SET  DISABLE_BROKER 
GO
ALTER DATABASE [J3.L.P0004] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J3.L.P0004] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J3.L.P0004] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J3.L.P0004] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J3.L.P0004] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J3.L.P0004] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J3.L.P0004] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J3.L.P0004] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [J3.L.P0004] SET  MULTI_USER 
GO
ALTER DATABASE [J3.L.P0004] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J3.L.P0004] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J3.L.P0004] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J3.L.P0004] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [J3.L.P0004] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [J3.L.P0004] SET QUERY_STORE = OFF
GO
USE [J3.L.P0004]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [J3.L.P0004]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 7/28/2018 11:58:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED 
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 7/28/2018 11:58:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Content] [nvarchar](1500) NOT NULL,
	[Writer] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Image] [nvarchar](150) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Date] ([Date]) VALUES (CAST(N'2018-08-30T19:05:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Title], [Content], [Writer], [Date], [Image]) VALUES (1, N'Machine Learning', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'SonHlT', CAST(N'2015-01-05' AS Date), N'images/i1.jpg')
INSERT [dbo].[News] ([ID], [Title], [Content], [Writer], [Date], [Image]) VALUES (2, N'Rush B', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'DangLH', CAST(N'2017-06-08' AS Date), N'images/i1.jpg')
INSERT [dbo].[News] ([ID], [Title], [Content], [Writer], [Date], [Image]) VALUES (3, N'Apply to university', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'HoangNV', CAST(N'2017-07-07' AS Date), N'images/i1.jpg')
INSERT [dbo].[News] ([ID], [Title], [Content], [Writer], [Date], [Image]) VALUES (4, N'Graduate from university', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'TungTM', CAST(N'2016-02-09' AS Date), N'images/i1.jpg')
INSERT [dbo].[News] ([ID], [Title], [Content], [Writer], [Date], [Image]) VALUES (5, N'Software Requirement', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'TrungNT', CAST(N'2018-09-08' AS Date), N'images/i1.jpg')
INSERT [dbo].[News] ([ID], [Title], [Content], [Writer], [Date], [Image]) VALUES (6, N'Software Testing', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'BanTQ', CAST(N'2018-07-07' AS Date), N'images/i1.jpg')
INSERT [dbo].[News] ([ID], [Title], [Content], [Writer], [Date], [Image]) VALUES (7, N'Software Design', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'TrungNT', CAST(N'2017-03-01' AS Date), N'images/i1.jpg')
INSERT [dbo].[News] ([ID], [Title], [Content], [Writer], [Date], [Image]) VALUES (8, N'Software Analys', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'ABC', CAST(N'2015-01-01' AS Date), N'images/i1.jpg')
INSERT [dbo].[News] ([ID], [Title], [Content], [Writer], [Date], [Image]) VALUES (9, N'Software Development', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'DEF', CAST(N'2017-12-02' AS Date), N'images/i1.jpg')
INSERT [dbo].[News] ([ID], [Title], [Content], [Writer], [Date], [Image]) VALUES (13, N'Software Acceptance', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'Minh', CAST(N'2014-06-12' AS Date), N'images/i1.jpg')
SET IDENTITY_INSERT [dbo].[News] OFF
USE [master]
GO
ALTER DATABASE [J3.L.P0004] SET  READ_WRITE 
GO
