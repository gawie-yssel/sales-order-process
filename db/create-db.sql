USE master
GO
CREATE DATABASE SalesProcessDemo;
END;
GO
USE SalesProcessDemo
GO

/****** Object:  Schema [Elsa]    Script Date: 2023/05/19 09:26:56 ******/
CREATE SCHEMA [Elsa]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2023/05/19 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [nvarchar](50) NOT NULL,
	[CustomerCode] [nvarchar](50) NOT NULL,
	[StockCode] [nvarchar](50) NOT NULL,
	[Amount] [numeric](18, 2) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Elsa].[__EFMigrationsHistory]    Script Date: 2023/05/19 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Elsa].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Elsa].[Bookmarks]    Script Date: 2023/05/19 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Elsa].[Bookmarks](
	[Id] [nvarchar](450) NOT NULL,
	[TenantId] [nvarchar](450) NULL,
	[Hash] [nvarchar](450) NOT NULL,
	[Model] [nvarchar](max) NOT NULL,
	[ModelType] [nvarchar](max) NOT NULL,
	[ActivityType] [nvarchar](450) NOT NULL,
	[ActivityId] [nvarchar](450) NOT NULL,
	[WorkflowInstanceId] [nvarchar](450) NOT NULL,
	[CorrelationId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Bookmarks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Elsa].[Triggers]    Script Date: 2023/05/19 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Elsa].[Triggers](
	[Id] [nvarchar](450) NOT NULL,
	[TenantId] [nvarchar](450) NULL,
	[Hash] [nvarchar](450) NOT NULL,
	[Model] [nvarchar](max) NOT NULL,
	[ModelType] [nvarchar](max) NOT NULL,
	[ActivityType] [nvarchar](450) NOT NULL,
	[ActivityId] [nvarchar](450) NOT NULL,
	[WorkflowDefinitionId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Triggers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Elsa].[WorkflowDefinitions]    Script Date: 2023/05/19 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Elsa].[WorkflowDefinitions](
	[Id] [nvarchar](450) NOT NULL,
	[DefinitionId] [nvarchar](450) NOT NULL,
	[TenantId] [nvarchar](450) NULL,
	[Name] [nvarchar](450) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
	[IsSingleton] [bit] NOT NULL,
	[PersistenceBehavior] [int] NOT NULL,
	[DeleteCompletedInstances] [bit] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[IsLatest] [bit] NOT NULL,
	[Tag] [nvarchar](450) NULL,
	[Data] [nvarchar](max) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_WorkflowDefinitions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Elsa].[WorkflowExecutionLogRecords]    Script Date: 2023/05/19 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Elsa].[WorkflowExecutionLogRecords](
	[Id] [nvarchar](450) NOT NULL,
	[TenantId] [nvarchar](450) NULL,
	[WorkflowInstanceId] [nvarchar](450) NOT NULL,
	[ActivityId] [nvarchar](450) NOT NULL,
	[ActivityType] [nvarchar](450) NOT NULL,
	[Timestamp] [datetimeoffset](7) NOT NULL,
	[EventName] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Source] [nvarchar](max) NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_WorkflowExecutionLogRecords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Elsa].[WorkflowInstances]    Script Date: 2023/05/19 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Elsa].[WorkflowInstances](
	[Id] [nvarchar](450) NOT NULL,
	[DefinitionId] [nvarchar](450) NOT NULL,
	[TenantId] [nvarchar](450) NULL,
	[Version] [int] NOT NULL,
	[WorkflowStatus] [int] NOT NULL,
	[CorrelationId] [nvarchar](450) NOT NULL,
	[ContextType] [nvarchar](450) NULL,
	[ContextId] [nvarchar](450) NULL,
	[Name] [nvarchar](450) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[LastExecutedAt] [datetimeoffset](7) NULL,
	[FinishedAt] [datetimeoffset](7) NULL,
	[CancelledAt] [datetimeoffset](7) NULL,
	[FaultedAt] [datetimeoffset](7) NULL,
	[Data] [nvarchar](max) NULL,
	[LastExecutedActivityId] [nvarchar](max) NULL,
	[DefinitionVersionId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_WorkflowInstances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_ProcessInstanceId]    Script Date: 2023/05/19 09:26:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Orders_ProcessInstanceId] ON [dbo].[Orders]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Elsa].[Bookmarks] ADD  DEFAULT (N'') FOR [CorrelationId]
GO
ALTER TABLE [Elsa].[WorkflowDefinitions] ADD  DEFAULT ('0001-01-01T00:00:00.0000000+00:00') FOR [CreatedAt]
GO
ALTER TABLE [Elsa].[WorkflowInstances] ADD  DEFAULT (N'') FOR [CorrelationId]
GO
USE [master]
GO
ALTER DATABASE [ProcessDemo] SET  READ_WRITE 
GO
