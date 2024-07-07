/****** Object:  Database [pubs]    Script Date: 7/3/2024 9:31:17 AM ******/
CREATE DATABASE [pubs]  (EDITION = 'GeneralPurpose', SERVICE_OBJECTIVE = 'GP_Gen5_2', MAXSIZE = 32 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [pubs] SET COMPATIBILITY_LEVEL = 160
GO
ALTER DATABASE [pubs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pubs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pubs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pubs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pubs] SET ARITHABORT OFF 
GO
ALTER DATABASE [pubs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pubs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pubs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pubs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pubs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pubs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pubs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pubs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pubs] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [pubs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pubs] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [pubs] SET  MULTI_USER 
GO
ALTER DATABASE [pubs] SET ENCRYPTION ON
GO
ALTER DATABASE [pubs] SET QUERY_STORE = ON
GO
ALTER DATABASE [pubs] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 7/3/2024 9:31:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](128) NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
	[AccountCode] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[Enrrolled] [int] NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[MobileNumber] [nvarchar](max) NULL,
	[FaxNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CustomerId] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/3/2024 9:31:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Date] [datetime] NOT NULL,
	[Type] [nvarchar](max) NULL,
	[ItemName] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER DATABASE [pubs] SET  READ_WRITE 
GO
