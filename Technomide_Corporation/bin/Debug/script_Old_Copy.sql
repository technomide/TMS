USE [master]
GO
/****** Object:  Database [TheProject]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[AcademyIncomeTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[AttendanceTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[ConsultantTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[DesignationTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[Employee_Salaries]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[EmployeeSkillTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[EmployeeTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GenderTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[LoginInfoTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectAssignedTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[ProjectExpense]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[ProjectIncomeTable]    Script Date: 7/27/2020 1:03:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectIncomeTable](
	[PI_ID] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [float] NOT NULL,
	[Note] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_ProjectIncomeTable] PRIMARY KEY CLUSTERED 
(
	[PI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[QualificationTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[Regular_Expenses]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[RoleTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[SkillsTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[StatusTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[StudentsTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[TestedByTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
/****** Object:  Table [dbo].[TypeTable]    Script Date: 7/27/2020 1:03:24 PM ******/
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
insert into RoleTable values('Owner');
insert into RoleTable values('Student');
insert into RoleTable values('Admin');
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
ALTER TABLE [dbo].[ProjectTable]  WITH CHECK ADD FOREIGN KEY([C_ID])
REFERENCES [dbo].[ConsultantTable] ([C_ID])
GO
ALTER TABLE [dbo].[TestedByTable]  WITH CHECK ADD FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[ProjectTable] ([Pro_ID])
GO
ALTER TABLE [dbo].[TestedByTable]  WITH CHECK ADD FOREIGN KEY([E_ID])
REFERENCES [dbo].[EmployeeTable] ([E_ID])
GO
USE [master]
GO
ALTER DATABASE [TheProject] SET  READ_WRITE 
GO
USE [TheProject]
GO

/****** Object:  StoredProcedure [dbo].[total_project]    Script Date: 7/28/2020 1:21:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc count_employees
as
begin
select count(*) from EmployeeTable
end
GO

create proc attendence_marked
as
begin
select count(*) from AttendanceTable where InTime != NULL and OutTime !=NULL 
end
GO

create proc attendence_Unmarked
as
begin
select count(*) from AttendanceTable where InTime = NULL and State_ID =NULL 
end
GO

create proc total_project
as
begin
select count(*) from ProjectTable
end
GO

create proc ongoing_project
as
begin
select count(*) from projectTable where Date_Of_Delivery=NULL
end
GO

create proc total_consultant
as
begin
select count(*) from consultantTable
end
GO

create proc physical_appearence
as
begin
select count(*) from EmployeeTable left join TypeTable on EmployeeTable .T_id = TypeTable.T_id where TypeTable.TypeName='physical'
end
GO

create proc Active_consultant
as
begin
select count(*) from ProjectTable where C_ID = NULL and Date_Of_Delivery !=NULL 
end
GO

create proc NotActive_consultant
as
begin
select count(*) from ProjectTable where C_ID != NULL and Date_Of_Delivery =NULL 
end
GO

create proc project_completed
as
begin
select count(*) from projectTable where Date_Of_Delivery!=NULL
end
GO


create proc remotely_working
as
begin
select count(*) from EmployeeTable left join TypeTable on EmployeeTable .T_id = TypeTable.T_id where TypeTable.TypeName='remotly'
end

GO
create proc total_users
@role int
as
begin
select count(*) from logininfotable where Role_id = @role
end

GO

create proc today_regular_expense
@date date
as
begin
select sum(Amount) from Regular_Expenses where Regular_Expenses.Date = @date
end

GO

create proc today_project_expense
@date date
as
begin
select sum(Amount) from ProjectExpense where ProjectExpense.Date = @date
end

GO
create proc today_project_income
@date date
as
begin
select sum(Amount) from ProjectIncomeTable where ProjectIncomeTable.Date = @date
end

GO

create proc today_academy_income
@date date
as
begin
select sum(Amount) from AcademyIncomeTable where AcademyIncomeTable.Date = @date
end

GO
 create proc Total_Expense_Today
@dateToday date
as
begin
  declare @Emp_sal_sum float,@Reg_exp_sum float,@Pro_exp_sum float, @adda float

  select @Emp_sal_sum=sum(Amount) from Employee_Salaries 
  select @Reg_exp_sum=sum(Amount) from Regular_Expenses
  select @Pro_exp_sum=sum(Amount) from ProjectExpense

 set @adda=@Emp_sal_sum+@Reg_exp_sum+@Pro_exp_sum
 print @adda

 end
 GO

  
 create proc Total_Expense_Today
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

  create proc Total_Expense_Month
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

 create proc Total_Income_Today
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


  create proc Total_Income_Month
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


 create proc Academy_Income_Month
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

  create proc Project_Income_Month
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


