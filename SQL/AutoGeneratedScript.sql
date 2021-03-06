USE [master]
GO
/****** Object:  Database [Cinema]    Script Date: 17.01.2020 14:09:39 ******/
CREATE DATABASE [Cinema]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cinema', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Cinema.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cinema_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Cinema_log.ldf' , SIZE = 204800KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Cinema] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cinema].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cinema] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cinema] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cinema] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cinema] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cinema] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cinema] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cinema] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cinema] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cinema] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cinema] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cinema] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cinema] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cinema] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cinema] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cinema] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Cinema] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cinema] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cinema] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cinema] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cinema] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cinema] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cinema] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cinema] SET RECOVERY FULL 
GO
ALTER DATABASE [Cinema] SET  MULTI_USER 
GO
ALTER DATABASE [Cinema] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cinema] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cinema] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cinema] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cinema] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Cinema', N'ON'
GO
ALTER DATABASE [Cinema] SET QUERY_STORE = OFF
GO
USE [Cinema]
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Comment_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Comment_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Complaint_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Complaint_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Customer_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Customer_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Genre_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Genre_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 50
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Movie_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Movie_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Rating_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Rating_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Role_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Role_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 3
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Screen_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Screen_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 3
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Seat_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Seat_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 80
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Showtime_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Showtime_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Ticket_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Ticket_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [Cinema]
GO
/****** Object:  Sequence [dbo].[SEQ_Ticket_Type_ID]    Script Date: 17.01.2020 14:09:39 ******/
CREATE SEQUENCE [dbo].[SEQ_Ticket_Type_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 10
 CACHE 
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[Genre_ID] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Description] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Genre_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Movie_ID] [int] NOT NULL,
	[Title] [varchar](250) NOT NULL,
	[Release_Date] [date] NOT NULL,
	[Description] [varchar](500) NULL,
	[Director] [varchar](50) NULL,
	[Age_Category] [int] NULL,
	[Duration] [int] NOT NULL,
	[Genre_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Showtime]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Showtime](
	[Showtime_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
	[Screen_ID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Technology] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Showtime_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screen]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screen](
	[Screen_ID] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
	[Screen_Size] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Screen_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[SHOWTIME_VIEW]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SHOWTIME_VIEW] AS
SELECT  Movie.Title AS 'Movie', Movie.Duration, Movie.Age_Category AS 'Age Category', Movie.Director,
		Movie.Description, Genre.Name AS 'Genre', Screen.Screen_ID AS 'Screen', s1.Technology, 
		(SELECT CONCAT(DATEPART(year, Date),'-',DATEPART(month, Date),'-',DATEPART(day, Date),' ',DATEPART(hour, Date), ':',
			DATEPART(MINUTE, Date)) 
			FROM Showtime s2  
			WHERE s2.Showtime_ID=s1.Showtime_ID) AS 'Date'
FROM Showtime s1
JOIN Movie ON s1.Movie_ID = Movie.Movie_ID
JOIN Screen ON s1.Screen_ID = Screen.Screen_ID
JOIN Genre ON Movie.Genre_ID = Genre.Genre_ID;
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] NOT NULL,
	[Login] [varchar](25) NOT NULL,
	[Password] [varchar](25) NOT NULL,
	[First_Name] [varchar](25) NOT NULL,
	[Last_Name] [varchar](25) NOT NULL,
	[Birth] [date] NOT NULL,
	[Email] [varchar](30) NULL,
	[Phone] [varchar](20) NULL,
	[Role_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Ticket_ID] [int] NOT NULL,
	[Showtime_ID] [int] NOT NULL,
	[Customer_ID] [int] NULL,
	[Seat_ID] [int] NOT NULL,
	[Ticket_Type_ID] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ticket_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket_Type]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket_Type](
	[Ticket_Type_ID] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ticket_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[Seat_ID] [int] NOT NULL,
	[Screen_ID] [int] NOT NULL,
	[Name] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Seat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[TICKET_VIEW]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TICKET_VIEW] AS
SELECT CONCAT(Customer.First_Name,' ', Customer.Last_Name) AS 'Client', Movie.Title AS 'Movie', 
	(SELECT CONCAT(DATEPART(year, Date),'-',DATEPART(month, Date),'-',DATEPART(day, Date),' ',DATEPART(hour, Date), ':',DATEPART(MINUTE, Date)) 
			FROM Showtime Showtime2
			WHERE Showtime.Showtime_ID = Showtime2.Showtime_ID) AS 'Showtime',
	Ticket_Type.Price AS 'Ticket Price',  Ticket.Status,  Seat.Name AS 'Seat', Seat.Screen_ID,
	(SELECT CONCAT(DATEPART(year, Date),'-',DATEPART(month, Date),'-',DATEPART(day, Date),' ',DATEPART(hour, Date), ':',DATEPART(MINUTE, Date)) 
			FROM Ticket Ticket2
			WHERE Ticket.Ticket_ID = Ticket2.Ticket_ID) AS 'Transaction'
FROM Ticket 
JOIN Customer ON Ticket.Customer_ID = Customer.Customer_ID
JOIN Showtime ON Ticket.Showtime_ID = Showtime.Showtime_ID
JOIN Movie ON Showtime.Movie_ID = Movie.Movie_ID
JOIN Ticket_Type ON Ticket.Ticket_Type_ID = Ticket_Type.Ticket_Type_ID
JOIN Seat ON Ticket.Seat_ID = Seat.Seat_ID
JOIN Screen ON Seat.Screen_ID = Screen.Screen_ID;
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Comment_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Comment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complaint]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaint](
	[Complaint_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Complaint_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbRole]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbRole](
	[Role_ID] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Rating_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
	[Stars] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Rating_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Comment] ([Comment_ID], [Movie_ID], [Customer_ID], [Description], [Date]) VALUES (1, 1, 1, N'Amazing!', CAST(N'2019-11-25T22:11:00.000' AS DateTime))
INSERT [dbo].[Comment] ([Comment_ID], [Movie_ID], [Customer_ID], [Description], [Date]) VALUES (3, 22, 1, N'Had a great time watching this!', CAST(N'2019-12-23T11:04:00.000' AS DateTime))
INSERT [dbo].[Comment] ([Comment_ID], [Movie_ID], [Customer_ID], [Description], [Date]) VALUES (4, 26, 1, N'Classic !', CAST(N'2019-12-23T11:07:00.000' AS DateTime))
INSERT [dbo].[Comment] ([Comment_ID], [Movie_ID], [Customer_ID], [Description], [Date]) VALUES (6, 16, 1, N'First part was better', CAST(N'2019-12-23T11:13:00.000' AS DateTime))
INSERT [dbo].[Comment] ([Comment_ID], [Movie_ID], [Customer_ID], [Description], [Date]) VALUES (7, 17, 1, N'Best marvel movie ever', CAST(N'2019-12-23T11:14:00.000' AS DateTime))
INSERT [dbo].[Comment] ([Comment_ID], [Movie_ID], [Customer_ID], [Description], [Date]) VALUES (10, 6, 1, N'Super', CAST(N'2020-01-07T14:29:00.000' AS DateTime))
INSERT [dbo].[Comment] ([Comment_ID], [Movie_ID], [Customer_ID], [Description], [Date]) VALUES (11, 5, 110082, N'Really good movie!', CAST(N'2020-01-13T12:26:00.000' AS DateTime))
INSERT [dbo].[Complaint] ([Complaint_ID], [Customer_ID], [Description], [Date]) VALUES (1, 1, N'Customer service was unpleasant!', CAST(N'2019-12-27T11:04:00.000' AS DateTime))
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (1, N'Jan83', N'123456', N'Jan', N'Kowalski', CAST(N'1983-04-22' AS Date), N'kowaki@gmail.com', N'615234004', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (2, N'AtomicPulga', N'qwerty', N'Leo', N'Messi', CAST(N'1989-10-26' AS Date), N'lmessi@gmail.com', N'215488975', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (4, N'hazardeden', N'chelsea', N'Eden', N'Hazard', CAST(N'1992-07-11' AS Date), N'ehazard@gmail.com', N'784525641', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (5, N'cr7', N'juveshit', N'Cristiano', N'Ronaldo', CAST(N'1988-08-01' AS Date), N'cronaldo@gmail.com', N'756285341', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (6, N'captainamerica', N'trueblue', N'Christian', N'Pulisic', CAST(N'1998-02-27' AS Date), N'cpulisic@gmail.com', N'697854231', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (8, N'jmourinho', N'specialone', N'Jose', N'Mourinho', CAST(N'1962-04-13' AS Date), N'jmourinho@gmail.com', N'315478945', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (9, N'admin', N'admin', N'admin', N'admin', CAST(N'1998-12-13' AS Date), NULL, NULL, 3)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (11, N'clayJensen', N'helmet', N'Clay', N'Jensen', CAST(N'2000-02-15' AS Date), N'cjensen@gmail.com', N'685321457', 2)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (14, N'kinglj', N'lakers', N'LeBron', N'James', CAST(N'1987-08-05' AS Date), N'ljames@gmail.com', N'443258971', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (15, N'flampard', N'bestcoach', N'Frank', N'Lampard', CAST(N'1984-12-04' AS Date), N'flampard@gmail.com', N'795648231', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (100000, N'Anonymous_Client', N'cinemaanonymousclient', N'Anonymous', N'Client', CAST(N'1990-12-31' AS Date), N'cinema@cinema.com', NULL, 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (110082, N'nowak79', N'123456', N'Adam', N'Nowak', CAST(N'1979-06-13' AS Date), N'adamnowak@gmail.com', N'654368949', 1)
INSERT [dbo].[dbRole] ([Role_ID], [Name]) VALUES (1, N'Client')
INSERT [dbo].[dbRole] ([Role_ID], [Name]) VALUES (2, N'Employee')
INSERT [dbo].[dbRole] ([Role_ID], [Name]) VALUES (3, N'Admin')
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (1, N'Action', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (2, N'Adventure', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (3, N'Animation', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (4, N'Comedy', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (5, N'Crime', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (6, N'Drama', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (7, N'Fantasy', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (8, N'Historical', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (9, N'Horror', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (10, N'Romance', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (11, N'Sci-Fi', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (12, N'Thriller', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (13, N'Western', NULL)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (1, N'Joker', CAST(N'2019-10-04' AS Date), NULL, N'Todd Phillips', 16, 122, 5)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (2, N'Once Upon a Time... in Hollywood', CAST(N'2019-08-16' AS Date), N'', N'Quentin Tarantino', 16, 161, 1)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (3, N'Frozen 2', CAST(N'2019-11-22' AS Date), N'', N'Jennifer Lee', 3, 103, 3)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (4, N'Star Wars: The Rise of Skywalker', CAST(N'2019-12-18' AS Date), N'', N'J.J. Abrams', 12, 155, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (5, N'Parasite', CAST(N'2019-09-20' AS Date), NULL, N'Joon-Ho Bong', 12, 132, 6)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (6, N'Whiplash', CAST(N'2015-01-02' AS Date), NULL, N'Damien Hazielle', 3, 105, 6)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (7, N'Alien', CAST(N'1979-05-25' AS Date), NULL, N'Ridley Scott', 16, 117, 9)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (8, N'Silent Hill', CAST(N'2006-05-26' AS Date), NULL, N'Christophe Gans', 16, 125, 9)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (9, N'It', CAST(N'2017-09-08' AS Date), NULL, N'Andy Muschietti', 16, 135, 9)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (10, N'The Conjuring', CAST(N'2013-07-26' AS Date), NULL, N'James Wan', 16, 112, 9)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (11, N'I am Legend', CAST(N'2008-01-11' AS Date), NULL, N'Francis Lawrence', 12, 101, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (12, N'Iron Man', CAST(N'2008-04-30' AS Date), NULL, N'Jon Favreau', 3, 126, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (13, N'Thor Ragnarok', CAST(N'2017-10-25' AS Date), NULL, N'Taika Waititi', 3, 130, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (14, N'Guardians of the Galaxy', CAST(N'2014-08-01' AS Date), NULL, N'James Gunn', 3, 121, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (15, N'Avengers', CAST(N'2012-05-11' AS Date), NULL, N'Josh Whedon', 3, 142, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (16, N'Avengers Age of Ultron', CAST(N'2015-05-07' AS Date), NULL, N'Josh Whedon', 3, 141, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (17, N'Avengers Infinity War', CAST(N'2018-04-26' AS Date), NULL, N'Anthony Russo', 3, 149, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (18, N'Avengers End Game', CAST(N'2019-04-25' AS Date), NULL, N'Anthony Russo', 3, 182, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (19, N'The Dark Knight', CAST(N'2008-08-08' AS Date), NULL, N'Christopher Nolan', 12, 152, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (20, N'Django Unchained', CAST(N'2013-01-18' AS Date), NULL, N'Quentin Tarantino', 12, 165, 6)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (21, N'Spiderman Far From Home', CAST(N'2019-07-05' AS Date), NULL, N'Jon Watts', 3, 129, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (22, N'Deadpool', CAST(N'2016-02-12' AS Date), NULL, N'Tim Miller', 12, 108, 4)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (23, N'Intouchables', CAST(N'2011-09-23' AS Date), NULL, N'Olivier Nakache', 3, 108, 4)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (24, N'Forrest Gump', CAST(N'1994-06-23' AS Date), NULL, N'Robert Zemeckis', 3, 142, 6)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (25, N'The Lord of the Rings: The Return of the King', CAST(N'2003-12-01' AS Date), NULL, N'Peter Jackson', 3, 201, 7)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (26, N'The Lord of the Rings: The Two Towers', CAST(N'2002-12-05' AS Date), NULL, N'Peter Jackson', 3, 179, 7)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (28, N'Iron Man 3', CAST(N'2016-02-03' AS Date), N'aaaa as da dsad s ', N'Jon Favreau', 3, 125, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (39, N'titleEdit', CAST(N'2020-01-16' AS Date), N'', N'direcotrrr', 3, 126, 11)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (40, N'new', CAST(N'2020-01-01' AS Date), N'adsad', N'test', 12, 115, 8)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (41, N'Klaus', CAST(N'2019-12-17' AS Date), N'Christmas Movie', N'Netflix', 3, 87, 3)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (44, N'The Irishman', CAST(N'2019-12-20' AS Date), N'', N'Netflix', 12, 210, 6)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (45, N'aaa', CAST(N'2020-01-06' AS Date), N'aa', N'asdsadsad', 12, 123, 4)
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (1, 1, 1, 5, CAST(N'2019-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (2, 1, 2, 1, CAST(N'2019-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (3, 2, 1, 10, CAST(N'2019-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (4, 9, 39, 4, CAST(N'2019-12-22T18:27:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (5, 9, 25, 2, CAST(N'2019-12-22T18:27:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (6, 9, 6, 4, CAST(N'2019-12-22T18:27:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (7, 9, 8, 3, CAST(N'2019-12-22T18:28:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (8, 1, 8, 7, CAST(N'2019-12-23T14:42:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (9, 1, 7, 7, CAST(N'2019-12-27T14:52:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (12, 1, 6, 4, CAST(N'2020-01-07T14:29:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (13, 110082, 5, 9, CAST(N'2020-01-13T12:27:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (14, 110082, 14, 7, CAST(N'2020-01-13T12:27:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (15, 110082, 41, 6, CAST(N'2020-01-13T12:27:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (16, 110082, 3, 4, CAST(N'2020-01-13T12:28:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (17, 110082, 9, 7, CAST(N'2020-01-13T12:28:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (18, 110082, 17, 10, CAST(N'2020-01-13T12:28:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (19, 110082, 22, 9, CAST(N'2020-01-13T12:28:00.000' AS DateTime))
INSERT [dbo].[Screen] ([Screen_ID], [Capacity], [Screen_Size]) VALUES (1, 20, N'small')
INSERT [dbo].[Screen] ([Screen_ID], [Capacity], [Screen_Size]) VALUES (2, 20, N'medium')
INSERT [dbo].[Screen] ([Screen_ID], [Capacity], [Screen_Size]) VALUES (3, 40, N'big')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (1, 1, N'1A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (2, 1, N'2A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (3, 1, N'3A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (4, 1, N'4A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (5, 1, N'5A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (6, 1, N'1B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (7, 1, N'2B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (8, 1, N'3B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (9, 1, N'4B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (10, 1, N'5B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (11, 1, N'1C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (12, 1, N'2C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (13, 1, N'3C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (14, 1, N'4C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (15, 1, N'5C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (16, 1, N'1D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (17, 1, N'2D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (18, 1, N'3D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (19, 1, N'4D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (20, 1, N'5D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (21, 2, N'1A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (22, 2, N'2A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (23, 2, N'3A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (24, 2, N'4A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (25, 2, N'5A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (26, 2, N'1B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (27, 2, N'2B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (28, 2, N'3B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (29, 2, N'4B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (30, 2, N'5B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (31, 2, N'1C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (32, 2, N'2C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (33, 2, N'3C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (34, 2, N'4C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (35, 2, N'5C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (36, 2, N'1D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (37, 2, N'2D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (38, 2, N'3D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (39, 2, N'4D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (40, 2, N'5D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (41, 3, N'1A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (42, 3, N'2A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (43, 3, N'3A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (44, 3, N'4A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (45, 3, N'5A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (46, 3, N'6A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (47, 3, N'7A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (48, 3, N'8A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (49, 3, N'1B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (50, 3, N'2B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (51, 3, N'3B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (52, 3, N'4B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (53, 3, N'5B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (54, 3, N'6B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (55, 3, N'7B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (56, 3, N'8B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (57, 3, N'1C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (58, 3, N'2C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (59, 3, N'3C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (60, 3, N'4C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (61, 3, N'5C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (62, 3, N'6C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (63, 3, N'7C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (64, 3, N'8C')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (65, 3, N'1D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (66, 3, N'2D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (67, 3, N'3D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (68, 3, N'4D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (69, 3, N'5D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (70, 3, N'6D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (71, 3, N'7D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (72, 3, N'8D')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (73, 3, N'1E')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (74, 3, N'2E')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (75, 3, N'3E')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (76, 3, N'4E')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (77, 3, N'5E')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (78, 3, N'6E')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (79, 3, N'7E')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (80, 3, N'8E')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (1, 1, 3, CAST(N'2019-11-26T20:15:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (2, 4, 1, CAST(N'2020-01-14T15:15:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (3, 2, 2, CAST(N'2020-01-11T17:45:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (4, 3, 2, CAST(N'2020-01-23T15:15:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (20, 2, 1, CAST(N'2019-11-26T20:15:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (21, 2, 3, CAST(N'2019-11-27T20:15:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (22, 4, 1, CAST(N'2020-02-13T18:15:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (23, 15, 1, CAST(N'2020-11-11T18:35:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (24, 18, 2, CAST(N'2019-12-29T18:35:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (25, 18, 3, CAST(N'2019-12-29T18:35:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (26, 20, 3, CAST(N'2020-01-08T15:35:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (27, 23, 1, CAST(N'2020-06-06T12:15:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (28, 21, 3, CAST(N'2020-02-02T12:15:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (29, 5, 1, CAST(N'2020-01-01T12:15:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (30, 28, 3, CAST(N'2020-03-13T15:15:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (31, 25, 3, CAST(N'2020-01-07T18:35:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (32, 5, 1, CAST(N'2020-01-07T12:15:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (33, 2, 2, CAST(N'2020-01-07T16:15:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (34, 44, 1, CAST(N'2020-01-07T15:15:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (35, 17, 2, CAST(N'2020-01-08T15:15:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (36, 6, 3, CAST(N'2020-01-25T12:15:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (37, 2, 3, CAST(N'2020-01-16T14:31:29.000' AS DateTime), N'2D')
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (1, 1, 1, 41, 2, N'Paid', CAST(N'2019-11-25T22:35:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (3, 4, 4, 24, 2, N'Paid', CAST(N'2019-11-25T22:48:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (4, 4, 5, 25, 2, N'Paid', CAST(N'2019-11-25T23:41:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (5, 4, 6, 27, 2, N'Booked', CAST(N'2019-11-25T19:22:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (7, 2, 2, 51, 1, N'Paid', CAST(N'2019-11-25T14:36:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (8, 4, 1, 31, 1, N'Booked', CAST(N'2019-12-23T12:39:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (9, 4, 1, 35, 1, N'Paid', CAST(N'2019-12-23T14:42:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (10, 3, 1, 12, 1, N'Booked', CAST(N'2019-12-23T14:42:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (11, 23, 1, 9, 2, N'Booked', CAST(N'2019-12-27T12:08:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (12, 26, 100000, 60, 2, N'Paid', CAST(N'2019-12-27T14:49:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (13, 29, 100000, 3, 2, N'Booked', CAST(N'2019-12-27T14:49:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (15, 29, 100000, 12, 2, N'Booked', CAST(N'2019-12-27T14:50:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (16, 29, 1, 15, 2, N'Paid', CAST(N'2019-12-27T14:52:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (19, 32, 100000, 13, 2, N'Paid', CAST(N'2020-01-07T12:54:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (20, 31, 1, 73, 2, N'Paid', CAST(N'2020-01-07T14:29:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (22, 32, 110082, 8, 2, N'Paid', CAST(N'2020-01-13T12:25:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (23, 32, 100000, 19, 2, N'Paid', CAST(N'2020-01-13T12:40:00.000' AS DateTime))
INSERT [dbo].[Ticket_Type] ([Ticket_Type_ID], [Name], [Price]) VALUES (1, N'Reduced', 15)
INSERT [dbo].[Ticket_Type] ([Ticket_Type_ID], [Name], [Price]) VALUES (2, N'Regular', 20)
/****** Object:  Index [IX_COMMENT_DATE]    Script Date: 17.01.2020 14:09:39 ******/
CREATE NONCLUSTERED INDEX [IX_COMMENT_DATE] ON [dbo].[Comment]
(
	[Date] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__5E55825B39C718CE]    Script Date: 17.01.2020 14:09:39 ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CUSTOMER_AUTHENTICATION]    Script Date: 17.01.2020 14:09:39 ******/
CREATE NONCLUSTERED INDEX [IX_CUSTOMER_AUTHENTICATION] ON [dbo].[Customer]
(
	[Login] ASC,
	[Password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CUSTOMER_NAME]    Script Date: 17.01.2020 14:09:39 ******/
CREATE NONCLUSTERED INDEX [IX_CUSTOMER_NAME] ON [dbo].[Customer]
(
	[Last_Name] ASC,
	[First_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Genre__737584F61B3D6626]    Script Date: 17.01.2020 14:09:39 ******/
ALTER TABLE [dbo].[Genre] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MOVIE_RELEASE]    Script Date: 17.01.2020 14:09:39 ******/
CREATE NONCLUSTERED INDEX [IX_MOVIE_RELEASE] ON [dbo].[Movie]
(
	[Release_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MOVIE_TITLE]    Script Date: 17.01.2020 14:09:39 ******/
CREATE NONCLUSTERED INDEX [IX_MOVIE_TITLE] ON [dbo].[Movie]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RATING_MOVIE]    Script Date: 17.01.2020 14:09:39 ******/
CREATE NONCLUSTERED INDEX [IX_RATING_MOVIE] ON [dbo].[Rating]
(
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SHOWTIME_DATE]    Script Date: 17.01.2020 14:09:39 ******/
CREATE NONCLUSTERED INDEX [IX_SHOWTIME_DATE] ON [dbo].[Showtime]
(
	[Date] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TICKET_CUSTOMER]    Script Date: 17.01.2020 14:09:39 ******/
CREATE NONCLUSTERED INDEX [IX_TICKET_CUSTOMER] ON [dbo].[Ticket]
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Customer]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Movie]
GO
ALTER TABLE [dbo].[Complaint]  WITH CHECK ADD  CONSTRAINT [FK_Complaint_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Complaint] CHECK CONSTRAINT [FK_Complaint_Customer]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Role] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[dbRole] ([Role_ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Role]
GO
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Genre] FOREIGN KEY([Genre_ID])
REFERENCES [dbo].[Genre] ([Genre_ID])
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_Genre]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Customer]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Movie]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [FK_Seat_Screen] FOREIGN KEY([Screen_ID])
REFERENCES [dbo].[Screen] ([Screen_ID])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [FK_Seat_Screen]
GO
ALTER TABLE [dbo].[Showtime]  WITH CHECK ADD  CONSTRAINT [FK_Showtime_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[Showtime] CHECK CONSTRAINT [FK_Showtime_Movie]
GO
ALTER TABLE [dbo].[Showtime]  WITH CHECK ADD  CONSTRAINT [FK_Showtime_Screen] FOREIGN KEY([Screen_ID])
REFERENCES [dbo].[Screen] ([Screen_ID])
GO
ALTER TABLE [dbo].[Showtime] CHECK CONSTRAINT [FK_Showtime_Screen]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Customer]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Seat] FOREIGN KEY([Seat_ID])
REFERENCES [dbo].[Seat] ([Seat_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Seat]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Showtime] FOREIGN KEY([Showtime_ID])
REFERENCES [dbo].[Showtime] ([Showtime_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Showtime]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Ticket_Type] FOREIGN KEY([Ticket_Type_ID])
REFERENCES [dbo].[Ticket_Type] ([Ticket_Type_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Ticket_Type]
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqCommentID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_getSeqCommentID]
AS
SELECT NEXT VALUE FOR SEQ_Comment_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqComplaintID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_getSeqComplaintID]
AS
SELECT NEXT VALUE FOR SEQ_Complaint_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqCustomerID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_getSeqCustomerID]
AS
SELECT NEXT VALUE FOR SEQ_CUSTOMER_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqGenreID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_getSeqGenreID]
AS
SELECT NEXT VALUE FOR SEQ_Genre_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqMovieID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_getSeqMovieID]
AS
SELECT NEXT VALUE FOR SEQ_Movie_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqRatingID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_getSeqRatingID]
AS
SELECT NEXT VALUE FOR SEQ_Rating_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqRoleID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_getSeqRoleID]
AS
SELECT NEXT VALUE FOR SEQ_Role_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqScreenID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_getSeqScreenID]
AS
SELECT NEXT VALUE FOR SEQ_Screen_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqSeatID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_getSeqSeatID]
AS
SELECT NEXT VALUE FOR SEQ_Seat_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqShowtimeID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_getSeqShowtimeID]
AS
SELECT NEXT VALUE FOR SEQ_Showtime_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqTicketID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_getSeqTicketID]
AS
SELECT NEXT VALUE FOR SEQ_Ticket_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_getSeqTicketTypeID]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_getSeqTicketTypeID]
AS
SELECT NEXT VALUE FOR SEQ_Ticket_Type_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_showAvailableSeats]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showAvailableSeats] @Showtime_ID int
AS
-- SELECT ALL SEATS EXCEPT TAKEN ONES
SELECT Seat.Seat_ID, Seat.Name
FROM Seat
JOIN Screen ON Screen.Screen_ID = Seat.Screen_ID
JOIN Showtime ON Showtime.Screen_ID = Screen.Screen_ID
WHERE Showtime.Showtime_ID = @Showtime_ID
EXCEPT 
SELECT Seat.Seat_ID, Seat.Name
FROM Ticket
JOIN Seat ON Ticket.Seat_ID = Seat.Seat_ID
JOIN Showtime ON Ticket.Showtime_ID = Showtime.Showtime_ID
WHERE Showtime.Showtime_ID = @Showtime_ID
GO
/****** Object:  StoredProcedure [dbo].[sp_showAverageRatingMovie]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showAverageRatingMovie] @Movie_ID int
AS
SELECT Movie.Title, AVG(Cast(Rating.Stars as Decimal)) AS 'Average Rating'
FROM Rating 
JOIN Movie ON Rating.Movie_ID = Movie.Movie_ID
WHERE Rating.Movie_ID = @Movie_ID
GROUP BY Movie.Title
ORDER BY Movie.Title;
GO
/****** Object:  StoredProcedure [dbo].[sp_showCommentsCustomer]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showCommentsCustomer] @Customer_ID int
AS
SELECT concat(Customer.First_Name,' ',Customer.Last_Name)AS 'Customer',Movie.Title,Comment.Description AS 'Comment'
FROM Comment
JOIN Customer ON Customer.Customer_ID=Comment.Customer_ID
JOIN Movie ON Movie.Movie_ID=Comment.Movie_ID
WHERE Customer.Customer_ID = @Customer_ID
GO
/****** Object:  StoredProcedure [dbo].[sp_showCommentsMovie]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showCommentsMovie] @Movie_ID int
AS
SELECT Movie.Title,concat(Customer.First_Name,' ',Customer.Last_Name)AS 'Customer',Comment.Description AS 'Comment'
FROM Comment
JOIN Customer ON Customer.Customer_ID=Comment.Customer_ID
JOIN Movie ON Movie.Movie_ID = Comment.Movie_ID
WHERE Movie.Movie_ID=@Movie_ID
GO
/****** Object:  StoredProcedure [dbo].[sp_showComplaints]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_showComplaints] @Customer_ID int
AS
SELECT concat(Customer.First_Name,' ',Customer.Last_Name)AS 'Customer',Complaint.Description AS 'Complaint'
FROM Complaint
JOIN Customer ON Customer.Customer_ID=Complaint.Customer_ID
WHERE Complaint.Customer_ID = @Customer_ID
GO
/****** Object:  StoredProcedure [dbo].[sp_showCustomer]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showCustomer] @Customer_ID int
AS
SELECT concat(Customer.First_Name,' ',Customer.Last_Name)AS 'Customer', Customer.Login,Customer.Birth AS 'Birth date',Customer.Email, Customer.Phone
FROM Customer
WHERE Customer.Customer_ID = @Customer_ID
GO
/****** Object:  StoredProcedure [dbo].[sp_showCustomerRatings]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showCustomerRatings] @Customer_ID int
AS
SELECT Movie.Title AS 'Title',Rating.stars AS 'Rating', Rating.Date AS 'Date'
FROM Rating 
JOIN Customer ON Rating.Customer_ID=Customer.Customer_ID
JOIN Movie ON Rating.Movie_ID=Movie.Movie_ID
WHERE Rating.Customer_ID = @Customer_ID
GO
/****** Object:  StoredProcedure [dbo].[sp_showCustomers]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showCustomers]
AS
SELECT concat(Customer.First_Name,' ',Customer.Last_Name)AS 'Customer', Customer.Login,Customer.Birth AS 'Birth date',Customer.Email, Customer.Phone
FROM Customer
GO
/****** Object:  StoredProcedure [dbo].[sp_showCustomerTickets]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showCustomerTickets] @Customer_ID int
AS
SELECT CONCAT(Customer.First_Name,' ', Customer.Last_Name) AS 'Client', Movie.Title AS 'Movie', 
	(SELECT CONCAT(DATEPART(year, Date),'-',DATEPART(month, Date),'-',DATEPART(day, Date),' ',DATEPART(hour, Date), ':',DATEPART(MINUTE, Date)) 
			FROM Showtime Showtime2
			WHERE Showtime.Showtime_ID = Showtime2.Showtime_ID) AS 'Showtime',
	Ticket_Type.Price AS 'Ticket Price',  Ticket_Type.Name AS 'Type', Ticket.Status,  Seat.Name AS 'Seat', Seat.Screen_ID AS 'Screen' , 
	(SELECT CONCAT(DATEPART(year, Date),'-',DATEPART(month, Date),'-',DATEPART(day, Date),' ',DATEPART(hour, Date), ':',DATEPART(MINUTE, Date)) 
			FROM Ticket Ticket2
			WHERE Ticket.Ticket_ID = Ticket2.Ticket_ID) AS 'Transaction'
FROM Ticket 
JOIN Customer ON Customer.Customer_ID = @Customer_ID
JOIN Showtime ON Ticket.Showtime_ID = Showtime.Showtime_ID
JOIN Movie ON Showtime.Movie_ID = Movie.Movie_ID
JOIN Ticket_Type ON Ticket.Ticket_Type_ID = Ticket_Type.Ticket_Type_ID
JOIN Seat ON Ticket.Seat_ID = Seat.Seat_ID
JOIN Screen ON Seat.Screen_ID = Screen.Screen_ID
WHERE Ticket.Customer_ID = @Customer_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_showGenre]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showGenre] @Movie_ID int
AS
SELECT Movie.Title,Genre.Name AS 'Genre'
FROM Movie
JOIN Genre ON Genre.Genre_ID=Movie.Genre_ID
WHERE Movie.Movie_ID = @Movie_ID
GO
/****** Object:  StoredProcedure [dbo].[sp_showMovie]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showMovie] @Movie_ID int
AS
SELECT Movie.Title,Movie.Director,Genre.Name AS 'Genre',Movie.Release_Date AS 'Release date', Movie.Age_Category AS 'Age category'
FROM Movie
JOIN Genre ON Genre.Genre_ID=Movie.Genre_ID
WHERE Movie.Movie_ID = @Movie_ID
GO
/****** Object:  StoredProcedure [dbo].[sp_showMovieRatings]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showMovieRatings] @Movie_ID int
AS
SELECT Movie.Title, Rating.stars AS 'Rating', concat(Customer.First_Name,' ',Customer.Last_Name)AS 'Customer'
FROM Rating 
JOIN Customer ON Rating.Customer_ID=Customer.Customer_ID
JOIN Movie ON Rating.Movie_ID=Movie.Movie_ID
WHERE Movie.Movie_ID = @Movie_ID
GO
/****** Object:  StoredProcedure [dbo].[sp_showMovies]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showMovies]
AS
SELECT Movie.Title,Movie.Director,Genre.Name AS 'Genre',Movie.Release_Date AS 'Release date', Movie.Age_Category AS 'Age category'
FROM Movie
JOIN Genre ON Genre.Genre_ID=Movie.Genre_ID
GO
/****** Object:  StoredProcedure [dbo].[sp_showTickets]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showTickets] @Showtime_ID int
AS
SELECT concat(Customer.First_Name,' ',Customer.Last_Name)AS 'Customer', Seat.Name AS 'Seat' , Ticket.Status
FROM Ticket
JOIN Customer ON Ticket.Customer_ID = Customer.Customer_ID
JOIN Seat ON Ticket.Seat_ID = Seat.Seat_ID
JOIN Showtime ON Ticket.Showtime_ID = Showtime.Showtime_ID
WHERE Ticket.Showtime_ID = @Showtime_ID
GO
/****** Object:  Trigger [dbo].[movie_age_category_ai]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[movie_age_category_ai]  ON [dbo].[Movie]
         AFTER INSERT 
         AS
           DECLARE @ageMin int ,@ageMax int 
		   SELECT @ageMin=Age_Category, @ageMax=Age_Category FROM inserted
		   IF @ageMin < 3 
			   UPDATE Movie SET Age_Category=3 WHERE Age_Category<3
			IF @ageMax > 18 
			   UPDATE Movie SET Age_Category=18 WHERE Age_Category>18
GO
ALTER TABLE [dbo].[Movie] ENABLE TRIGGER [movie_age_category_ai]
GO
/****** Object:  Trigger [dbo].[movie_duration_ai]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[movie_duration_ai]  ON [dbo].[Movie]
         AFTER INSERT 
         AS
           DECLARE @timeMin int  
		   SELECT @timeMin=Duration FROM inserted
		   IF @timeMin <1 
			   UPDATE Movie SET Duration=1 WHERE Duration<1
GO
ALTER TABLE [dbo].[Movie] ENABLE TRIGGER [movie_duration_ai]
GO
/****** Object:  Trigger [dbo].[rating_ai]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[rating_ai] ON [dbo].[Rating]
         AFTER INSERT 
         AS
           DECLARE @starsMin int ,@starsMax int 
		   SELECT @starsMin=stars, @starsMax=stars FROM inserted
		   IF @starsMIN < 1 
			   UPDATE Rating SET stars=1 WHERE stars<1
			IF @starsMAX > 10 
			   UPDATE Rating SET stars=10 WHERE stars>10
GO
ALTER TABLE [dbo].[Rating] ENABLE TRIGGER [rating_ai]
GO
/****** Object:  Trigger [dbo].[ticket_type_price]    Script Date: 17.01.2020 14:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[ticket_type_price] ON [dbo].[Ticket_Type]
         AFTER INSERT 
         AS
           DECLARE @priceMin int ,@priceMax int 
		   SELECT @priceMin=Price, @priceMax=Price FROM inserted
		   IF @priceMin <15 
			   UPDATE ticket_type SET Price=15 WHERE Price<15
			IF  @priceMax>25
			     UPDATE ticket_type SET Price=25 WHERE Price>25
GO
ALTER TABLE [dbo].[Ticket_Type] ENABLE TRIGGER [ticket_type_price]
GO
USE [master]
GO
ALTER DATABASE [Cinema] SET  READ_WRITE 
GO
