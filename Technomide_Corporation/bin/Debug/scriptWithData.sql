USE [master]
GO
/****** Object:  Database [TheProject]    Script Date: 7/28/2020 5:03:01 PM ******/
CREATE DATABASE [TheProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TheProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TheProject.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TheProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TheProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TheProject] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TheProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TheProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TheProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TheProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TheProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TheProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [TheProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TheProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TheProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TheProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TheProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TheProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TheProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TheProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TheProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TheProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TheProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TheProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TheProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TheProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TheProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TheProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TheProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TheProject] SET RECOVERY FULL 
GO
ALTER DATABASE [TheProject] SET  MULTI_USER 
GO
ALTER DATABASE [TheProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TheProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TheProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TheProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TheProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TheProject', N'ON'
GO
USE [TheProject]
GO
/****** Object:  Table [dbo].[AcademyIncomeTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademyIncomeTable](
	[AI_ID] [int] IDENTITY(1,1) NOT NULL,
	[Std_ID] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Note] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_AcademyIncomeTable] PRIMARY KEY CLUSTERED 
(
	[AI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttendanceTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceTable](
	[Att_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[InTime] [time](7) NOT NULL,
	[OutTime] [time](7) NOT NULL,
	[State_ID] [int] NOT NULL,
 CONSTRAINT [PK_AttendanceTable] PRIMARY KEY CLUSTERED 
(
	[Att_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConsultantTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultantTable](
	[C_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[F_Name] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[G_ID] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone1] [nvarchar](50) NOT NULL,
	[Phone2] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ConsultantTable] PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DesignationTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignationTable](
	[D_ID] [int] IDENTITY(1,1) NOT NULL,
	[PostName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DesignationTable] PRIMARY KEY CLUSTERED 
(
	[D_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee_Salaries]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Salaries](
	[ES_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_ID] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Date] [date] NOT NULL,
	[Note] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employee_Salaries] PRIMARY KEY CLUSTERED 
(
	[ES_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeSkillTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSkillTable](
	[ES_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_ID] [int] NOT NULL,
	[S_ID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeSkillTable] PRIMARY KEY CLUSTERED 
(
	[ES_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTable](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[F_Name] [nvarchar](50) NOT NULL,
	[CNIC] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Agreement] [nvarchar](50) NOT NULL,
	[T_ID] [int] NOT NULL,
	[G_ID] [int] NOT NULL,
	[D_ID] [int] NOT NULL,
	[Q_ID] [int] NOT NULL,
	[Phone1] [nvarchar](50) NOT NULL,
	[Phone2] [nvarchar](50) NOT NULL,
	[Employee_ID] [nvarchar](50) NOT NULL,
	[Salary] [float] NOT NULL,
 CONSTRAINT [PK_EmployeeTable] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GenderTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenderTable](
	[G_ID] [int] IDENTITY(1,1) NOT NULL,
	[GenderName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GenderTable] PRIMARY KEY CLUSTERED 
(
	[G_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoginInfoTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginInfoTable](
	[L_ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role_ID] [int] NOT NULL,
 CONSTRAINT [PK_LoginInfoTable] PRIMARY KEY CLUSTERED 
(
	[L_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectAssignedTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectAssignedTable](
	[PA_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pro_ID] [int] NOT NULL,
	[E_ID] [int] NOT NULL,
 CONSTRAINT [PK_ProjectAssignedTable] PRIMARY KEY CLUSTERED 
(
	[PA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectExpense]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectExpense](
	[PE_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pro_ID] [int] NOT NULL,
	[E_ID] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Date] [date] NOT NULL,
	[Note] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProjectExpense] PRIMARY KEY CLUSTERED 
(
	[PE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectIncomeTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectIncomeTable](
	[PI_ID] [int] IDENTITY(1,1) NOT NULL,
	[Project_id] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Note] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_ProjectIncomeTable] PRIMARY KEY CLUSTERED 
(
	[PI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTable](
	[Pro_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date_Of_Start] [date] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[C_ID] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Date_Of_Completion] [date] NOT NULL,
	[Date_Of_Delivery] [date] NOT NULL,
	[Project_Date] [date] NOT NULL,
 CONSTRAINT [PK_ProjectTable] PRIMARY KEY CLUSTERED 
(
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QualificationTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QualificationTable](
	[Q_ID] [int] IDENTITY(1,1) NOT NULL,
	[QName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_QualificationTable] PRIMARY KEY CLUSTERED 
(
	[Q_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Regular_Expenses]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regular_Expenses](
	[RE_ID] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [float] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Regular_Expenses] PRIMARY KEY CLUSTERED 
(
	[RE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleTable](
	[Role_ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RoleTable] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SkillsTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillsTable](
	[S_ID] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SkillsTable] PRIMARY KEY CLUSTERED 
(
	[S_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StatusTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusTable](
	[State_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StatusTable] PRIMARY KEY CLUSTERED 
(
	[State_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentsTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsTable](
	[Std_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StudentsTable] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestedByTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestedByTable](
	[Test_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pro_ID] [int] NOT NULL,
	[E_ID] [int] NOT NULL,
 CONSTRAINT [PK_TestedByTable] PRIMARY KEY CLUSTERED 
(
	[Test_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeTable]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeTable](
	[T_ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeTable] PRIMARY KEY CLUSTERED 
(
	[T_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AcademyIncomeTable] ON 

INSERT [dbo].[AcademyIncomeTable] ([AI_ID], [Std_ID], [Amount], [Note], [Date]) VALUES (1, 2, 10, N'abc', CAST(N'2020-07-26' AS Date))
INSERT [dbo].[AcademyIncomeTable] ([AI_ID], [Std_ID], [Amount], [Note], [Date]) VALUES (2, 3, 100, N'abc1', CAST(N'2020-07-28' AS Date))
INSERT [dbo].[AcademyIncomeTable] ([AI_ID], [Std_ID], [Amount], [Note], [Date]) VALUES (3, 4, 1000, N'abc2', CAST(N'2020-07-28' AS Date))
INSERT [dbo].[AcademyIncomeTable] ([AI_ID], [Std_ID], [Amount], [Note], [Date]) VALUES (4, 5, 10000, N'abc3', CAST(N'2020-07-28' AS Date))
SET IDENTITY_INSERT [dbo].[AcademyIncomeTable] OFF
SET IDENTITY_INSERT [dbo].[ConsultantTable] ON 

INSERT [dbo].[ConsultantTable] ([C_ID], [Name], [F_Name], [DOB], [G_ID], [Address], [Phone1], [Phone2]) VALUES (1, N'abc', N'dd', CAST(N'1999-01-01' AS Date), 1, N's', N'1', N'1')
INSERT [dbo].[ConsultantTable] ([C_ID], [Name], [F_Name], [DOB], [G_ID], [Address], [Phone1], [Phone2]) VALUES (2, N'ali', N'khan', CAST(N'1989-02-02' AS Date), 1, N'lahore', N'54646', N'544554')
INSERT [dbo].[ConsultantTable] ([C_ID], [Name], [F_Name], [DOB], [G_ID], [Address], [Phone1], [Phone2]) VALUES (3, N'ali', N'khan', CAST(N'1989-02-02' AS Date), 2, N'multan', N'54646', N'544554')
INSERT [dbo].[ConsultantTable] ([C_ID], [Name], [F_Name], [DOB], [G_ID], [Address], [Phone1], [Phone2]) VALUES (4, N'ali', N'khan', CAST(N'1989-02-02' AS Date), 1, N'pindi', N'54646', N'544554')
INSERT [dbo].[ConsultantTable] ([C_ID], [Name], [F_Name], [DOB], [G_ID], [Address], [Phone1], [Phone2]) VALUES (5, N'ali', N'khan', CAST(N'1989-02-02' AS Date), 2, N'islamabad', N'54646', N'544554')
INSERT [dbo].[ConsultantTable] ([C_ID], [Name], [F_Name], [DOB], [G_ID], [Address], [Phone1], [Phone2]) VALUES (6, N'ali', N'khan', CAST(N'1989-02-02' AS Date), 1, N'kimari', N'54646', N'544554')
SET IDENTITY_INSERT [dbo].[ConsultantTable] OFF
SET IDENTITY_INSERT [dbo].[DesignationTable] ON 

INSERT [dbo].[DesignationTable] ([D_ID], [PostName]) VALUES (1, N'ad')
INSERT [dbo].[DesignationTable] ([D_ID], [PostName]) VALUES (2, N'frontend')
INSERT [dbo].[DesignationTable] ([D_ID], [PostName]) VALUES (3, N'backend')
INSERT [dbo].[DesignationTable] ([D_ID], [PostName]) VALUES (4, N'database')
SET IDENTITY_INSERT [dbo].[DesignationTable] OFF
SET IDENTITY_INSERT [dbo].[Employee_Salaries] ON 

INSERT [dbo].[Employee_Salaries] ([ES_ID], [E_ID], [Amount], [Date], [Note]) VALUES (3, 2, 122, CAST(N'2020-06-29' AS Date), N'h')
INSERT [dbo].[Employee_Salaries] ([ES_ID], [E_ID], [Amount], [Date], [Note]) VALUES (8, 2, 100, CAST(N'1989-04-02' AS Date), N'ABCd')
INSERT [dbo].[Employee_Salaries] ([ES_ID], [E_ID], [Amount], [Date], [Note]) VALUES (9, 3, 1000, CAST(N'1989-05-02' AS Date), N'ABCe')
INSERT [dbo].[Employee_Salaries] ([ES_ID], [E_ID], [Amount], [Date], [Note]) VALUES (10, 2, 10, CAST(N'1989-03-02' AS Date), N'ABC')
SET IDENTITY_INSERT [dbo].[Employee_Salaries] OFF
SET IDENTITY_INSERT [dbo].[EmployeeTable] ON 

INSERT [dbo].[EmployeeTable] ([E_ID], [Name], [F_Name], [CNIC], [DOB], [Address], [Agreement], [T_ID], [G_ID], [D_ID], [Q_ID], [Phone1], [Phone2], [Employee_ID], [Salary]) VALUES (2, N'na', N'dd', N'666767', CAST(N'1999-01-01' AS Date), N'gg', N'gg', 1, 1, 1, 1, N'1', N'1', N'1', 333)
INSERT [dbo].[EmployeeTable] ([E_ID], [Name], [F_Name], [CNIC], [DOB], [Address], [Agreement], [T_ID], [G_ID], [D_ID], [Q_ID], [Phone1], [Phone2], [Employee_ID], [Salary]) VALUES (3, N'ali', N'kaka', N'121-121616-512', CAST(N'1999-02-02' AS Date), N'karachi', N'xvy', 2, 2, 2, 2, N'5657658', N'343463', N'1141111', 52)
INSERT [dbo].[EmployeeTable] ([E_ID], [Name], [F_Name], [CNIC], [DOB], [Address], [Agreement], [T_ID], [G_ID], [D_ID], [Q_ID], [Phone1], [Phone2], [Employee_ID], [Salary]) VALUES (4, N'ali123', N'ka12312ka', N'121-1216123416-512', CAST(N'1989-02-02' AS Date), N'lahore', N'xvy', 1, 2, 1, 2, N'5657658', N'343463', N'111242113', 13412)
INSERT [dbo].[EmployeeTable] ([E_ID], [Name], [F_Name], [CNIC], [DOB], [Address], [Agreement], [T_ID], [G_ID], [D_ID], [Q_ID], [Phone1], [Phone2], [Employee_ID], [Salary]) VALUES (5, N'ali123', N'ka12312ka', N'121-1216123416-512', CAST(N'1989-02-02' AS Date), N'lahore', N'xvy', 2, 1, 1, 1, N'5657658', N'343463', N'11153', 13412)
INSERT [dbo].[EmployeeTable] ([E_ID], [Name], [F_Name], [CNIC], [DOB], [Address], [Agreement], [T_ID], [G_ID], [D_ID], [Q_ID], [Phone1], [Phone2], [Employee_ID], [Salary]) VALUES (6, N'ali123', N'ka12312ka', N'121-1216123416-512', CAST(N'1989-02-02' AS Date), N'lahore', N'xvy', 1, 1, 1, 2, N'5657658', N'343463', N'11123423', 13412)
INSERT [dbo].[EmployeeTable] ([E_ID], [Name], [F_Name], [CNIC], [DOB], [Address], [Agreement], [T_ID], [G_ID], [D_ID], [Q_ID], [Phone1], [Phone2], [Employee_ID], [Salary]) VALUES (7, N'ali', N'ka12312ka', N'121-1216123416-512', CAST(N'1989-02-02' AS Date), N'lahore', N'xvy', 1, 2, 1, 1, N'5657658', N'343463', N'11152123', 13412)
INSERT [dbo].[EmployeeTable] ([E_ID], [Name], [F_Name], [CNIC], [DOB], [Address], [Agreement], [T_ID], [G_ID], [D_ID], [Q_ID], [Phone1], [Phone2], [Employee_ID], [Salary]) VALUES (9, N'adsd', N'sfdsf', N'2434', CAST(N'1999-01-01' AS Date), N'khi', N'iji', 1, 1, 1, 1, N'1', N'1', N'2', 1)
SET IDENTITY_INSERT [dbo].[EmployeeTable] OFF
SET IDENTITY_INSERT [dbo].[GenderTable] ON 

INSERT [dbo].[GenderTable] ([G_ID], [GenderName]) VALUES (1, N'male')
INSERT [dbo].[GenderTable] ([G_ID], [GenderName]) VALUES (2, N'male')
INSERT [dbo].[GenderTable] ([G_ID], [GenderName]) VALUES (3, N'female')
SET IDENTITY_INSERT [dbo].[GenderTable] OFF
SET IDENTITY_INSERT [dbo].[LoginInfoTable] ON 

INSERT [dbo].[LoginInfoTable] ([L_ID], [Username], [Password], [Role_ID]) VALUES (1, N'talha', N'123', 1)
INSERT [dbo].[LoginInfoTable] ([L_ID], [Username], [Password], [Role_ID]) VALUES (2, N'abc', N'1', 1)
INSERT [dbo].[LoginInfoTable] ([L_ID], [Username], [Password], [Role_ID]) VALUES (3, N'1', N'1', 1)
INSERT [dbo].[LoginInfoTable] ([L_ID], [Username], [Password], [Role_ID]) VALUES (4, N'sada', N'2', 1)
SET IDENTITY_INSERT [dbo].[LoginInfoTable] OFF
SET IDENTITY_INSERT [dbo].[ProjectExpense] ON 

INSERT [dbo].[ProjectExpense] ([PE_ID], [Pro_ID], [E_ID], [Amount], [Date], [Note]) VALUES (1, 2, 2, 100, CAST(N'2020-07-28' AS Date), N'dsda')
INSERT [dbo].[ProjectExpense] ([PE_ID], [Pro_ID], [E_ID], [Amount], [Date], [Note]) VALUES (3, 3, 7, 5000, CAST(N'1999-02-02' AS Date), N'bfcfjhbhkfkjfh')
SET IDENTITY_INSERT [dbo].[ProjectExpense] OFF
SET IDENTITY_INSERT [dbo].[ProjectIncomeTable] ON 

INSERT [dbo].[ProjectIncomeTable] ([PI_ID], [Project_id], [Amount], [Note], [Date]) VALUES (1, 3, 10000, N'abc3', CAST(N'2020-07-26' AS Date))
INSERT [dbo].[ProjectIncomeTable] ([PI_ID], [Project_id], [Amount], [Note], [Date]) VALUES (2, 3, 1500, N'abc3', CAST(N'2020-07-28' AS Date))
INSERT [dbo].[ProjectIncomeTable] ([PI_ID], [Project_id], [Amount], [Note], [Date]) VALUES (3, 2, 10000, N'abc3', CAST(N'2020-07-28' AS Date))
SET IDENTITY_INSERT [dbo].[ProjectIncomeTable] OFF
SET IDENTITY_INSERT [dbo].[ProjectTable] ON 

INSERT [dbo].[ProjectTable] ([Pro_ID], [Date_Of_Start], [Name], [Description], [C_ID], [Amount], [Date_Of_Completion], [Date_Of_Delivery], [Project_Date]) VALUES (2, CAST(N'1999-01-01' AS Date), N'ff', N'gsd', 1, 2, CAST(N'1999-01-01' AS Date), CAST(N'1999-01-01' AS Date), CAST(N'1999-01-01' AS Date))
INSERT [dbo].[ProjectTable] ([Pro_ID], [Date_Of_Start], [Name], [Description], [C_ID], [Amount], [Date_Of_Completion], [Date_Of_Delivery], [Project_Date]) VALUES (3, CAST(N'1989-02-02' AS Date), N'ali', N'khan', 3, 54545, CAST(N'1989-03-02' AS Date), CAST(N'1989-05-02' AS Date), CAST(N'1989-06-02' AS Date))
INSERT [dbo].[ProjectTable] ([Pro_ID], [Date_Of_Start], [Name], [Description], [C_ID], [Amount], [Date_Of_Completion], [Date_Of_Delivery], [Project_Date]) VALUES (4, CAST(N'1989-03-02' AS Date), N'alia', N'khana', 4, 54545, CAST(N'1989-04-02' AS Date), CAST(N'1989-06-02' AS Date), CAST(N'1989-07-02' AS Date))
INSERT [dbo].[ProjectTable] ([Pro_ID], [Date_Of_Start], [Name], [Description], [C_ID], [Amount], [Date_Of_Completion], [Date_Of_Delivery], [Project_Date]) VALUES (5, CAST(N'1989-04-02' AS Date), N'alib', N'khanb', 5, 54545, CAST(N'1989-05-02' AS Date), CAST(N'1989-07-02' AS Date), CAST(N'1989-08-02' AS Date))
SET IDENTITY_INSERT [dbo].[ProjectTable] OFF
SET IDENTITY_INSERT [dbo].[QualificationTable] ON 

INSERT [dbo].[QualificationTable] ([Q_ID], [QName]) VALUES (1, N's')
INSERT [dbo].[QualificationTable] ([Q_ID], [QName]) VALUES (2, N'matric')
INSERT [dbo].[QualificationTable] ([Q_ID], [QName]) VALUES (3, N'inter')
INSERT [dbo].[QualificationTable] ([Q_ID], [QName]) VALUES (4, N'graduate')
SET IDENTITY_INSERT [dbo].[QualificationTable] OFF
SET IDENTITY_INSERT [dbo].[Regular_Expenses] ON 

INSERT [dbo].[Regular_Expenses] ([RE_ID], [Amount], [Description], [Date]) VALUES (1, 2000, N'sdd', CAST(N'2020-07-28' AS Date))
INSERT [dbo].[Regular_Expenses] ([RE_ID], [Amount], [Description], [Date]) VALUES (2, 500, N'abc', CAST(N'1999-02-02' AS Date))
INSERT [dbo].[Regular_Expenses] ([RE_ID], [Amount], [Description], [Date]) VALUES (3, 600, N'ab', CAST(N'1999-03-02' AS Date))
INSERT [dbo].[Regular_Expenses] ([RE_ID], [Amount], [Description], [Date]) VALUES (4, 700, N'a', CAST(N'1999-04-02' AS Date))
SET IDENTITY_INSERT [dbo].[Regular_Expenses] OFF
SET IDENTITY_INSERT [dbo].[RoleTable] ON 

INSERT [dbo].[RoleTable] ([Role_ID], [RoleName]) VALUES (1, N'Owner')
INSERT [dbo].[RoleTable] ([Role_ID], [RoleName]) VALUES (2, N'Student')
INSERT [dbo].[RoleTable] ([Role_ID], [RoleName]) VALUES (3, N'Admin')
SET IDENTITY_INSERT [dbo].[RoleTable] OFF
SET IDENTITY_INSERT [dbo].[StatusTable] ON 

INSERT [dbo].[StatusTable] ([State_ID], [Name]) VALUES (1, N'acha')
SET IDENTITY_INSERT [dbo].[StatusTable] OFF
SET IDENTITY_INSERT [dbo].[StudentsTable] ON 

INSERT [dbo].[StudentsTable] ([Std_ID], [Name]) VALUES (1, N'ali')
INSERT [dbo].[StudentsTable] ([Std_ID], [Name]) VALUES (2, N'khan')
INSERT [dbo].[StudentsTable] ([Std_ID], [Name]) VALUES (3, N'khan1')
INSERT [dbo].[StudentsTable] ([Std_ID], [Name]) VALUES (4, N'khan2')
INSERT [dbo].[StudentsTable] ([Std_ID], [Name]) VALUES (5, N'khan3')
SET IDENTITY_INSERT [dbo].[StudentsTable] OFF
SET IDENTITY_INSERT [dbo].[TypeTable] ON 

INSERT [dbo].[TypeTable] ([T_ID], [TypeName]) VALUES (1, N'vvvv')
INSERT [dbo].[TypeTable] ([T_ID], [TypeName]) VALUES (2, N'Physical')
INSERT [dbo].[TypeTable] ([T_ID], [TypeName]) VALUES (3, N'Remotely')
SET IDENTITY_INSERT [dbo].[TypeTable] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Employee__78113480AA388E98]    Script Date: 7/28/2020 5:03:01 PM ******/
ALTER TABLE [dbo].[EmployeeTable] ADD UNIQUE NONCLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__LoginInf__536C85E4196EE94D]    Script Date: 7/28/2020 5:03:01 PM ******/
ALTER TABLE [dbo].[LoginInfoTable] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AcademyIncomeTable]  WITH CHECK ADD FOREIGN KEY([Std_ID])
REFERENCES [dbo].[StudentsTable] ([Std_ID])
GO
ALTER TABLE [dbo].[AttendanceTable]  WITH CHECK ADD FOREIGN KEY([State_ID])
REFERENCES [dbo].[StatusTable] ([State_ID])
GO
ALTER TABLE [dbo].[AttendanceTable]  WITH CHECK ADD FOREIGN KEY([E_ID])
REFERENCES [dbo].[EmployeeTable] ([E_ID])
GO
ALTER TABLE [dbo].[ConsultantTable]  WITH CHECK ADD FOREIGN KEY([G_ID])
REFERENCES [dbo].[GenderTable] ([G_ID])
GO
ALTER TABLE [dbo].[Employee_Salaries]  WITH CHECK ADD FOREIGN KEY([E_ID])
REFERENCES [dbo].[EmployeeTable] ([E_ID])
GO
ALTER TABLE [dbo].[EmployeeSkillTable]  WITH CHECK ADD FOREIGN KEY([E_ID])
REFERENCES [dbo].[EmployeeTable] ([E_ID])
GO
ALTER TABLE [dbo].[EmployeeSkillTable]  WITH CHECK ADD FOREIGN KEY([S_ID])
REFERENCES [dbo].[SkillsTable] ([S_ID])
GO
ALTER TABLE [dbo].[EmployeeTable]  WITH CHECK ADD FOREIGN KEY([D_ID])
REFERENCES [dbo].[DesignationTable] ([D_ID])
GO
ALTER TABLE [dbo].[EmployeeTable]  WITH CHECK ADD FOREIGN KEY([G_ID])
REFERENCES [dbo].[GenderTable] ([G_ID])
GO
ALTER TABLE [dbo].[EmployeeTable]  WITH CHECK ADD FOREIGN KEY([Q_ID])
REFERENCES [dbo].[QualificationTable] ([Q_ID])
GO
ALTER TABLE [dbo].[EmployeeTable]  WITH CHECK ADD FOREIGN KEY([T_ID])
REFERENCES [dbo].[TypeTable] ([T_ID])
GO
ALTER TABLE [dbo].[LoginInfoTable]  WITH CHECK ADD FOREIGN KEY([Role_ID])
REFERENCES [dbo].[RoleTable] ([Role_ID])
GO
ALTER TABLE [dbo].[ProjectAssignedTable]  WITH CHECK ADD FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[ProjectTable] ([Pro_ID])
GO
ALTER TABLE [dbo].[ProjectAssignedTable]  WITH CHECK ADD FOREIGN KEY([E_ID])
REFERENCES [dbo].[EmployeeTable] ([E_ID])
GO
ALTER TABLE [dbo].[ProjectExpense]  WITH CHECK ADD FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[ProjectTable] ([Pro_ID])
GO
ALTER TABLE [dbo].[ProjectExpense]  WITH CHECK ADD FOREIGN KEY([E_ID])
REFERENCES [dbo].[EmployeeTable] ([E_ID])
GO
ALTER TABLE [dbo].[ProjectIncomeTable]  WITH CHECK ADD  CONSTRAINT [FK_ProjectIncomeTable_ProjectTable] FOREIGN KEY([Project_id])
REFERENCES [dbo].[ProjectTable] ([Pro_ID])
GO
ALTER TABLE [dbo].[ProjectIncomeTable] CHECK CONSTRAINT [FK_ProjectIncomeTable_ProjectTable]
GO
ALTER TABLE [dbo].[ProjectTable]  WITH CHECK ADD FOREIGN KEY([C_ID])
REFERENCES [dbo].[ConsultantTable] ([C_ID])
GO
ALTER TABLE [dbo].[TestedByTable]  WITH CHECK ADD FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[ProjectTable] ([Pro_ID])
GO
ALTER TABLE [dbo].[TestedByTable]  WITH CHECK ADD FOREIGN KEY([E_ID])
REFERENCES [dbo].[EmployeeTable] ([E_ID])
GO
/****** Object:  StoredProcedure [dbo].[Academy_Income_Month]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Academy_Income_Month]
@dateTodayS date,@dateTodayE date
as
begin
  declare @Acad_in_sum float,@Pro_in_sum float,@adda float

  select @Acad_in_sum=sum(Amount) from AcademyIncomeTable where Date between @dateTodayS and @dateTodayE


  if (@Acad_in_sum IS NULL)
  BEGIN
set @Acad_in_sum=0
  END




  set @adda=@Acad_in_sum
 select @adda;
 end
GO
/****** Object:  StoredProcedure [dbo].[Active_consultant]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Active_consultant]
as
begin
select count(*) from ProjectTable where C_ID = NULL and Date_Of_Delivery !=NULL 
end

GO
/****** Object:  StoredProcedure [dbo].[attendence_marked]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[attendence_marked]
as
begin
select count(*) from AttendanceTable where InTime != NULL and OutTime !=NULL 
end

GO
/****** Object:  StoredProcedure [dbo].[attendence_Unmarked]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[attendence_Unmarked]
as
begin
select count(*) from AttendanceTable where InTime = NULL and State_ID =NULL 
end

GO
/****** Object:  StoredProcedure [dbo].[count_employees]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[count_employees]
as
begin
select count(*) from EmployeeTable
end

GO
/****** Object:  StoredProcedure [dbo].[NotActive_consultant]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[NotActive_consultant]
as
begin
select count(*) from ProjectTable where C_ID != NULL and Date_Of_Delivery =NULL 
end

GO
/****** Object:  StoredProcedure [dbo].[ongoing_project]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ongoing_project]
as
begin
select count(*) from projectTable where Date_Of_Delivery=NULL
end

GO
/****** Object:  StoredProcedure [dbo].[physical_appearence]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[physical_appearence]
as
begin
select count(*) from EmployeeTable left join TypeTable on EmployeeTable .T_id = TypeTable.T_id where TypeTable.TypeName='physical'
end

GO
/****** Object:  StoredProcedure [dbo].[project_completed]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[project_completed]
as
begin
select count(*) from projectTable where Date_Of_Delivery!=NULL
end

GO
/****** Object:  StoredProcedure [dbo].[Project_Income_Month]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[Project_Income_Month]
@dateTodayS date,@dateTodayE date
as
begin
  declare @Pro_in_sum float,@adda float

  select @Pro_in_sum=sum(Amount) from ProjectIncomeTable where Date between @dateTodayS and @dateTodayE


  if (@Pro_in_sum IS NULL)
  BEGIN
set @Pro_in_sum=0
  END
  set @adda=@Pro_in_sum
 select @adda;
 end
GO
/****** Object:  StoredProcedure [dbo].[remotely_working]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[remotely_working]
as
begin
select count(*) from EmployeeTable left join TypeTable on EmployeeTable .T_id = TypeTable.T_id where TypeTable.TypeName='remotly'
end

GO
/****** Object:  StoredProcedure [dbo].[today_academy_income]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[today_academy_income]
@date date
as
begin
select sum(Amount) from AcademyIncomeTable where AcademyIncomeTable.Date = @date
end






GO
/****** Object:  StoredProcedure [dbo].[today_project_expense]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[today_project_expense]
@date date
as
begin
select sum(Amount) from ProjectExpense where ProjectExpense.Date = @date
end

GO
/****** Object:  StoredProcedure [dbo].[today_project_income]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[today_project_income]
@date date
as
begin
select sum(Amount) from ProjectIncomeTable where ProjectIncomeTable.Date = @date
end

GO
/****** Object:  StoredProcedure [dbo].[today_regular_expense]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[today_regular_expense]
@date date
as
begin
select sum(Amount) from Regular_Expenses where Regular_Expenses.Date = @date
end

GO
/****** Object:  StoredProcedure [dbo].[total_consultant]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[total_consultant]
as
begin
select count(*) from consultantTable
end

GO
/****** Object:  StoredProcedure [dbo].[Total_Expense_Month]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Total_Expense_Month]
@dateTodayS date,@dateTodayE date
as
begin
  declare @Emp_sal_sum float,@Reg_exp_sum float,@Pro_exp_sum float, @adda float

  select @Emp_sal_sum=sum(Amount) from Employee_Salaries where Date between @dateTodayS and @dateTodayE
  select @Reg_exp_sum=sum(Amount) from Regular_Expenses where Date between @dateTodayS and @dateTodayE
  select @Pro_exp_sum=sum(Amount) from ProjectExpense where Date between @dateTodayS and @dateTodayE

  if (@Emp_sal_sum IS NULL)
  BEGIN
set @Emp_sal_sum=0
  END

  if (@Reg_exp_sum IS NULL)
  BEGIN
set @Reg_exp_sum=0
  END

  if (@Pro_exp_sum IS NULL)
  BEGIN
set @Pro_exp_sum=0
  END


  set @adda=@Emp_sal_sum+@Reg_exp_sum+@Pro_exp_sum
 select @adda from Employee_Salaries 
 end

GO
/****** Object:  StoredProcedure [dbo].[Total_Expense_Today]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[Total_Expense_Today]
@dateToday date
as
begin
  declare @Emp_sal_sum float,@Reg_exp_sum float,@Pro_exp_sum float, @adda float

  select @Emp_sal_sum=sum(Amount) from Employee_Salaries where Date=@dateToday
  select @Reg_exp_sum=sum(Amount) from Regular_Expenses where Date=@dateToday
  select @Pro_exp_sum=sum(Amount) from ProjectExpense where Date=@dateToday

  if (@Emp_sal_sum IS NULL)
  BEGIN
set @Emp_sal_sum=0
  END

  if (@Reg_exp_sum IS NULL)
  BEGIN
set @Reg_exp_sum=0
  END

  if (@Pro_exp_sum IS NULL)
  BEGIN
set @Pro_exp_sum=0
  END


  set @adda=@Emp_sal_sum+@Reg_exp_sum+@Pro_exp_sum
 select @adda from Employee_Salaries 
 end
GO
/****** Object:  StoredProcedure [dbo].[Total_Income_Month]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[Total_Income_Month]
@dateTodayS date,@dateTodayE date
as
begin
  declare @Acad_in_sum float,@Pro_in_sum float,@adda float

  select @Acad_in_sum=sum(Amount) from AcademyIncomeTable where Date between @dateTodayS and @dateTodayE
  select @Pro_in_sum=sum(Amount) from ProjectIncomeTable where Date between @dateTodayS and @dateTodayE


  if (@Acad_in_sum IS NULL)
  BEGIN
set @Acad_in_sum=0
  END

  if (@Pro_in_sum IS NULL)
  BEGIN
set @Pro_in_sum=0
  END



  set @adda=@Pro_in_sum+@Acad_in_sum
 select @adda;
 end
GO
/****** Object:  StoredProcedure [dbo].[Total_Income_Today]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
 create proc [dbo].[Total_Income_Today]
@dateToday date
as
begin
  declare @Acad_in_sum float,@Pro_in_sum float,@adda float

  select @Acad_in_sum=sum(Amount) from AcademyIncomeTable where Date=@dateToday
  select @Pro_in_sum=sum(Amount) from [ProjectIncomeTable] where Date=@dateToday

  if (@Acad_in_sum IS NULL)
  BEGIN
set @Acad_in_sum=0
  END

  if (@Pro_in_sum IS NULL)
  BEGIN
set @Pro_in_sum=0
  END



  set @adda=@Pro_in_sum+@Acad_in_sum
 select @adda;
 end
GO
/****** Object:  StoredProcedure [dbo].[total_project]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[total_project]
as
begin
select count(*) from ProjectTable
end

GO
/****** Object:  StoredProcedure [dbo].[total_users]    Script Date: 7/28/2020 5:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[total_users]
@role int
as
begin
select count(*) from logininfotable where Role_id = @role
end

GO
USE [master]
GO
ALTER DATABASE [TheProject] SET  READ_WRITE 
GO
