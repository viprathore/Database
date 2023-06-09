USE [AshcliffDB_I5]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleId] [uniqueidentifier] NOT NULL,
	[Role] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UserRole] ([UserRoleId], [Role]) VALUES (N'922a8192-d7d2-48c4-8fca-1cae8fd8e539', N'Super Admin')
INSERT [dbo].[UserRole] ([UserRoleId], [Role]) VALUES (N'757e87bc-5eaf-4efe-a2e3-20b452990c5e', N'Admin')
INSERT [dbo].[UserRole] ([UserRoleId], [Role]) VALUES (N'a4caded8-3d67-4f17-a095-3a98c06f4836', N'Project Manager')
INSERT [dbo].[UserRole] ([UserRoleId], [Role]) VALUES (N'7bc3adf5-b767-496f-8ecc-4461854c060a', N'User')
INSERT [dbo].[UserRole] ([UserRoleId], [Role]) VALUES (N'a570bde2-1c06-4b10-9865-8e1bdc5add30', N'Visitor')
/****** Object:  Table [dbo].[RuleSet]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleSet](
	[Name] [nvarchar](128) NOT NULL,
	[MajorVersion] [int] NOT NULL,
	[MinorVersion] [int] NOT NULL,
	[RuleSet] [ntext] NOT NULL,
	[Status] [smallint] NULL,
	[AssemblyPath] [nvarchar](256) NULL,
	[ActivityName] [nvarchar](128) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [pk_RuleSet] PRIMARY KEY CLUSTERED 
(
	[Name] ASC,
	[MajorVersion] ASC,
	[MinorVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[RuleSet] ([Name], [MajorVersion], [MinorVersion], [RuleSet], [Status], [AssemblyPath], [ActivityName], [ModifiedDate]) VALUES (N'RuleSet1', 1, 0, N'<RuleSet Description="{p1:Null}" Name="RuleSet1" ChainingBehavior="Full" xmlns:p1="http://schemas.microsoft.com/winfx/2006/xaml" xmlns="http://schemas.microsoft.com/winfx/2006/xaml/workflow" />', 0, N'D:\SVN Project\09_AshCliff_April\AshCliff\AshCliff.Data\bin\Debug\AshCliff.Data.dll', N'AshCliff.Data.TaskData', CAST(0x0000A03500B521EC AS DateTime))
/****** Object:  Table [dbo].[RestrictionType]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestrictionType](
	[RestrictionTypeId] [uniqueidentifier] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RestrictionType] PRIMARY KEY CLUSTERED 
(
	[RestrictionTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table2]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table2](
	[ID] [int] NULL,
	[Value] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[table2] ([ID], [Value]) VALUES (1, N'First')
INSERT [dbo].[table2] ([ID], [Value]) VALUES (2, N'Second')
INSERT [dbo].[table2] ([ID], [Value]) VALUES (3, N'Third')
INSERT [dbo].[table2] ([ID], [Value]) VALUES (6, N'Sixth')
INSERT [dbo].[table2] ([ID], [Value]) VALUES (7, N'Seventh')
INSERT [dbo].[table2] ([ID], [Value]) VALUES (8, N'Eighth')
/****** Object:  Table [dbo].[table1]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table1](
	[ID] [int] NULL,
	[Value] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[table1] ([ID], [Value]) VALUES (1, N'First')
INSERT [dbo].[table1] ([ID], [Value]) VALUES (2, N'Second')
INSERT [dbo].[table1] ([ID], [Value]) VALUES (3, N'Third')
INSERT [dbo].[table1] ([ID], [Value]) VALUES (4, N'Fourth')
INSERT [dbo].[table1] ([ID], [Value]) VALUES (5, N'Fifth')
/****** Object:  Table [dbo].[TollgateTemplate]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TollgateTemplate](
	[TollgateTemplateId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[TollgateTemplateName] [nvarchar](50) NOT NULL,
	[Reactions] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_TollgateTemplate] PRIMARY KEY CLUSTERED 
(
	[TollgateTemplateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TollgateTemplate] ([TollgateTemplateId], [CompanyId], [TollgateTemplateName], [Reactions], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'835a8e04-c6b3-48b6-bf1c-0e714a3a7f47', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Tollgate-002', N'null', CAST(0x0000A09E0020E4F6 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[TollgateTemplate] ([TollgateTemplateId], [CompanyId], [TollgateTemplateName], [Reactions], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'b0151450-8cd6-4007-aff0-1a24377ed81a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Tollgate-009', N'', CAST(0x0000A0BA00112EB2 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[TollgateTemplate] ([TollgateTemplateId], [CompanyId], [TollgateTemplateName], [Reactions], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'912d3ff6-4630-42fb-a6c7-23df8b64e6f2', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Tollgate-003', N'null', CAST(0x0000A09E0020F502 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[TollgateTemplate] ([TollgateTemplateId], [CompanyId], [TollgateTemplateName], [Reactions], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'8e930357-c771-4bbf-b480-37f5170a907d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Tollgate-001', N'null', CAST(0x0000A09E001E390A AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[TollgateTemplate] ([TollgateTemplateId], [CompanyId], [TollgateTemplateName], [Reactions], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'a547055b-c655-4b9e-9e47-649a494c2032', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Tollgate-006', NULL, CAST(0x0000A0AC0013D5EE AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[TollgateTemplate] ([TollgateTemplateId], [CompanyId], [TollgateTemplateName], [Reactions], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'73e38cca-66db-4b54-86b4-9e91b7ef3cad', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Tollgate-007', NULL, CAST(0x0000A0AC0013D5EF AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[TollgateTemplate] ([TollgateTemplateId], [CompanyId], [TollgateTemplateName], [Reactions], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'070a9b6b-4445-487c-a59c-a79f3dba49bf', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Tollgate-008', NULL, CAST(0x0000A0AC0013D5F4 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[TollgateTemplate] ([TollgateTemplateId], [CompanyId], [TollgateTemplateName], [Reactions], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'554d1141-69ca-4b4d-ab0a-b4b32a17b3ae', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Tollgate-004', NULL, CAST(0x0000A0AC0013D5EB AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[TollgateTemplate] ([TollgateTemplateId], [CompanyId], [TollgateTemplateName], [Reactions], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'191a2e31-68a6-49c3-a8a2-c8f6357767fb', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Tollgate-010', N'', CAST(0x0000A0BA00112EBB AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[TollgateTemplate] ([TollgateTemplateId], [CompanyId], [TollgateTemplateName], [Reactions], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'ab75cf83-455f-43ab-9a90-e5288a2e8e86', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Tollgate-005', NULL, CAST(0x0000A0AC0013D5ED AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
/****** Object:  Table [dbo].[TransmittalStatus]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransmittalStatus](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TransmittalStatus] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TransmittalStatus] ON
INSERT [dbo].[TransmittalStatus] ([StatusId], [Description]) VALUES (1, N'Sent')
INSERT [dbo].[TransmittalStatus] ([StatusId], [Description]) VALUES (2, N'Draft')
SET IDENTITY_INSERT [dbo].[TransmittalStatus] OFF
/****** Object:  Table [dbo].[Module]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module](
	[ModuleId] [uniqueidentifier] NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Modules] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Module] ([ModuleId], [ModuleName], [ParentId]) VALUES (N'658128f3-3950-45e5-bd44-459813614f67', N'Project', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Module] ([ModuleId], [ModuleName], [ParentId]) VALUES (N'6c041e32-96a1-4a83-850d-4c8f0aed1cf4', N'Document', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Module] ([ModuleId], [ModuleName], [ParentId]) VALUES (N'a381d916-720f-46e2-af26-694a9c4f30a5', N'Bulk Update', N'6c041e32-96a1-4a83-850d-4c8f0aed1cf4')
INSERT [dbo].[Module] ([ModuleId], [ModuleName], [ParentId]) VALUES (N'a5c52387-0edb-448a-a0fc-82cda3246baf', N'Single Document Registration', N'6c041e32-96a1-4a83-850d-4c8f0aed1cf4')
INSERT [dbo].[Module] ([ModuleId], [ModuleName], [ParentId]) VALUES (N'ce23d27b-e6dd-4256-9109-8bc7662abeae', N'Bulk Upload', N'6c041e32-96a1-4a83-850d-4c8f0aed1cf4')
INSERT [dbo].[Module] ([ModuleId], [ModuleName], [ParentId]) VALUES (N'209b1bdb-e2fc-4787-b073-998fe4865e49', N'Transmittal', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Module] ([ModuleId], [ModuleName], [ParentId]) VALUES (N'18183b95-220c-43c6-9bbd-aaded2154a59', N'Task', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Module] ([ModuleId], [ModuleName], [ParentId]) VALUES (N'6e44d17b-52f4-4ce3-b36c-b4975c813363', N'Template Upload', N'6c041e32-96a1-4a83-850d-4c8f0aed1cf4')
INSERT [dbo].[Module] ([ModuleId], [ModuleName], [ParentId]) VALUES (N'efb2f6ca-7141-41a7-8059-e453c5c9b754', N'Alert', N'00000000-0000-0000-0000-000000000000')
/****** Object:  Table [dbo].[MetaTagType]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetaTagType](
	[TypeId] [uniqueidentifier] NOT NULL,
	[Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MetaTagType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MetaTagType] ([TypeId], [Type]) VALUES (N'adef6fdc-632b-4c4d-aa20-00f8dd79f146', N'COMPUTED')
INSERT [dbo].[MetaTagType] ([TypeId], [Type]) VALUES (N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'FREETEXT')
INSERT [dbo].[MetaTagType] ([TypeId], [Type]) VALUES (N'3f56d2d0-3af4-4977-8fb0-2f002d767dc1', N'NUMERIC')
INSERT [dbo].[MetaTagType] ([TypeId], [Type]) VALUES (N'9e860d27-758d-4634-b566-2f7b133beecb', N'CHOICE')
INSERT [dbo].[MetaTagType] ([TypeId], [Type]) VALUES (N'14858a47-bc89-4db6-aaf1-a7ddfacc1b5b', N'AUTO')
/****** Object:  Table [dbo].[DocumentControl]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentControl](
	[DocumentControlId] [uniqueidentifier] NOT NULL,
	[RepositoryName] [varchar](200) NOT NULL,
 CONSTRAINT [PK_DocumentRepository] PRIMARY KEY CLUSTERED 
(
	[DocumentControlId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DocumentControl] ([DocumentControlId], [RepositoryName]) VALUES (N'a099fda7-ca05-491a-99d1-59a11f3eae94', N'BOX.NET 2')
INSERT [dbo].[DocumentControl] ([DocumentControlId], [RepositoryName]) VALUES (N'9ea46303-09f1-49c5-840c-a1e66fc1bf48', N'BOX.NET 4')
INSERT [dbo].[DocumentControl] ([DocumentControlId], [RepositoryName]) VALUES (N'ec1f6740-2648-4432-9e19-b0eaa8cc3c39', N'BOX.NET 1')
INSERT [dbo].[DocumentControl] ([DocumentControlId], [RepositoryName]) VALUES (N'ed7cfdb0-b6b1-4b2d-8c68-e99f62dc5b86', N'BOX.NET 3')
/****** Object:  Table [dbo].[DeliverableTemplate]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliverableTemplate](
	[DeliverableTemplateId] [uniqueidentifier] NOT NULL,
	[NameOfDeliverable] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsRequired] [bit] NOT NULL,
	[NumberOfDeliverable] [int] NOT NULL,
	[CompletionMethod] [uniqueidentifier] NOT NULL,
	[Query] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_DeliverableTemplate] PRIMARY KEY CLUSTERED 
(
	[DeliverableTemplateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'd567c73a-7ca6-4ee8-888e-08d3261946c0', N'Deliverable-006', N'Deliverable template - 6.A project management term for the quantifiable goods or services that will be provided upon the completion of a project.', 0, 1, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0A800332310 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'2f4f046b-7c0b-423e-b6c6-0f66ad8f3bae', N'Deliverable-025', N'Deliverable template - 25.Deliverables can be tangible or intangible parts of the development process, and are often specified functions or characteristics of the project.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AE00654666 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'9481dd84-a48b-45c4-b5ec-1b0e55543474', N'Deliverable-029', N'Deliverable template - 29.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0BA00119D9B AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'1dc65ae9-fc65-4187-b3a7-2657950ef160', N'Deliverable-033', N'Deliverable template - 33.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0BA00119DA4 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'984a2571-4f2b-4265-8af3-300cb6837448', N'Deliverable-005', N'Deliverable template - 5.Deliverables serves as a general term that encompasses the requirements of a project.', 0, 1, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0A8003322E5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'04b5a1c7-2a16-4ef5-be90-396963b3f1bb', N'Deliverable-004', N'Deliverable template - 4.A deliverable may be an object, used in the greater scheme of the project.', 0, 1, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0A8003322DB AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'390174f1-2d7d-44c9-83e5-3b61e273eb76', N'Deliverable-015', N'Deliverable template - 15.For example, in a project meant to upgrade a firm''s technology, a deliverable may be a dozen new computers.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AC0017EE06 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'f62ee480-d0b2-45ee-beb0-404cacb7c5a0', N'Deliverable-013', N'Deliverable template - 13.Alternatively, a deliverable may be a function or aspect of the overall project.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AC0017EE04 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'fc3cb686-ae5f-45a1-af53-45354a1b2834', N'Deliverable-014', N'Deliverable template - 14.For example, a software project may have a deliverable specifying that the computer program must be able to compute a company''s accounts receivable.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AC0017EE05 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'7b7514a8-c2a7-46f1-8e2f-4e239ecf22be', N'Deliverable-007', N'Deliverable template - 7.Deliverable is a term used in project management to describe a tangible or intangible object produced as a result of the project that is intended to be delivered to a customer (either internal or external). A deliverable could be a report, a document, a server upgrade or any other building block of an overall project.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0A9002FEFE0 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'fc8ea139-fde8-4d99-af1b-54ee29eab311', N'Deliverable-019', N'Deliverable template - 19.A deliverable may be composed of multiple smaller deliverables. It may be either an outcome to be achieved (as in "The corporation says that making a profit this year is a deliverable.") or a product to be provided (as in "The deliverable for the completed project consists of a special-purpose electronic device and its controlling software.").', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AC0017EE0F AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'09ba3e0b-3075-43f5-ad04-5642c2b4d151', N'Deliverable-023', N'Deliverable template - 23.A deliverable differs from a project milestone in that a milestone is a measurement of progress toward an outcome whereas the deliverable is the result of the process. For a typical project, a milestone might be the completion of a product design while the deliverable might be the technical diagram of the product.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AC001B5AC5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'65b7709e-05d7-43a6-ae38-5abfcceeacf9', N'Deliverable-011', N'Deliverable template - 11.In technical projects, deliverables can further be classified as hardware, software, or design documents.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AC0017EDD0 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'0cf4c9ce-a1d7-4a81-89c0-67fc45073f69', N'Deliverable-026', N'Deliverable template - 26.In the United States Department of Defense, a deliverable is any item delivered to the government under a contract, whether it is a physical product or an item of data.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AE0065466C AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'4206df22-766e-4eba-9ac0-796708e21611', N'Deliverable-009', N'Deliverable template - 9. A “nonseverable deliverable” means a deliverable item that is a single end product or undertaking, entire in nature, that cannot be feasibly subdivided into discrete elements or phases without losing its identity.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0A9002FEFE3 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'7feaa402-60c6-4064-9629-7d02acc8e7ef', N'Deliverable-017', N'Deliverable template - 17.Project management is the discipline of planning, organizing, securing, managing, leading, and controlling resources to achieve specific goals. ', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AC0017EE09 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'5284c293-489b-46cb-8133-7d626964d576', N'Deliverable-030', N'Deliverable template - 30.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0BA00119D9B AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'6edc5ee2-26a6-4c3b-aba5-98b80d6416a5', N'Deliverable-002', N'Deliverable template -2.. A project is a temporary endeavor with a defined beginning and end (usually time-constrained, and often constrained by funding or deliverables),[', 0, 2, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0A8000E0F71 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'8d0ad091-1ecf-46da-948c-99975ad8dd40', N'Deliverable-003', N'Deliverable template - 3.undertaken to meet unique goals and objectives,[2] typically to bring about beneficial change or added value. ', 0, 2, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0A8000E20E9 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'1007994d-987c-40b1-b00f-a697bac0bc3a', N'Deliverable-028', N'Deliverable template - 28. The temporary nature of projects stands in contrast with business as usual (or operations),[3] which are repetitive, permanent, or semi-permanent functional activities to produce products or services.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AE00654695 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'cf18a824-1544-4edc-a6a2-b33fcd60c826', N'Deliverable-016', N'Deliverable template - 16.In practice, the management of these two systems is often quite different, and as such requires the development of distinct technical skills and management strategies.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AC0017EE09 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'1dcf7d75-793a-4e53-a613-bc6239d110ce', N'Deliverable-008', N'Deliverable template - 8.The primary challenge of project management is to achieve all of the project goals[4] and objectives while honoring the preconceived constraints.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0A9002FEFE2 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'2db13cac-56d8-4b3b-8053-be95179a3e52', N'Deliverable-027', N'Deliverable template - 27.The primary constraints are scope, time, quality and budget.[6] The secondary —and more ambitious— challenge is to optimize the allocation of necessary inputs and integrate them to meet pre-defined objectives.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AE00654674 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'e6572213-8d66-4cd5-a9ac-c995f78b09d6', N'Deliverable-012', N'Deliverable template - 12.s a discipline, project management developed from several fields of application including civil construction, engineering, and heavy defense activity', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AC0017EDE3 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'4999b475-6122-4899-bfb1-d08aef4bba31', N'Deliverable-031', N'Deliverable template - 31.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0BA00119D9F AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'7dacd90a-054e-4274-98a4-d62cd6489319', N'Deliverable-032', N'Deliverable template - 32.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0BA00119D9F AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'3349cfbe-7342-42c2-97bd-ebbf3f3984bb', N'Deliverable-001', N'Deliverable template -1.The 1950s marked the beginning of the modern project management era where core engineering fields come together to work as one.', 0, 3, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0A00052932D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[DeliverableTemplate] ([DeliverableTemplateId], [NameOfDeliverable], [Description], [IsRequired], [NumberOfDeliverable], [CompletionMethod], [Query], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'cf910610-d420-43da-a4f6-ed26cde2207c', N'Deliverable-018', N'Deliverable template - 18.At the same time, as project-scheduling models were being developed, technology for project cost estimating, cost management, and engineering economics was evolving, with pioneering work by Hans Lang and others.', 0, 0, N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'', CAST(0x0000A0AC0017EE0C AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
/****** Object:  Table [dbo].[Company]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [uniqueidentifier] NOT NULL,
	[CompanyName] [varchar](500) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[Logo] [varchar](200) NULL,
	[PrimaryColor] [varchar](200) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [DateCreated], [Logo], [PrimaryColor]) VALUES (N'00000000-0000-0000-0000-000000000000', N'', CAST(0x00009FF2016EA03E AS DateTime), N'', N'')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [DateCreated], [Logo], [PrimaryColor]) VALUES (N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'YAHOO', CAST(0x00009FF2016EA03E AS DateTime), NULL, NULL)
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [DateCreated], [Logo], [PrimaryColor]) VALUES (N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'DYNAMIS', CAST(0x00009FEC004039EE AS DateTime), NULL, NULL)
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [DateCreated], [Logo], [PrimaryColor]) VALUES (N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'GOOGLE', CAST(0x00009FEF000D8911 AS DateTime), NULL, NULL)
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [DateCreated], [Logo], [PrimaryColor]) VALUES (N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497', N'TECHVALENS', CAST(0x00009FF2016EA03E AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[CommunicationMethod]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommunicationMethod](
	[MethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CommunicationMethod] PRIMARY KEY CLUSTERED 
(
	[MethodId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CommunicationMethod] ON
INSERT [dbo].[CommunicationMethod] ([MethodId], [Description]) VALUES (1, N'EMAIL')
INSERT [dbo].[CommunicationMethod] ([MethodId], [Description]) VALUES (2, N'REPOSITORY')
SET IDENTITY_INSERT [dbo].[CommunicationMethod] OFF
/****** Object:  Table [dbo].[AppOption]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppOption](
	[ParamId] [uniqueidentifier] NOT NULL,
	[ParamKey] [varchar](50) NULL,
	[ParamValue] [varchar](50) NOT NULL,
	[DisplaySequence] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppOption] PRIMARY KEY CLUSTERED 
(
	[ParamId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'00000000-0000-0000-0000-000000000000', N'null', N'null', NULL, 1, N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'b965be06-090a-44f6-9a52-051314735215', N'Scope', N'Company', 1, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'Scope', N'Project', 2, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'01f9804b-5932-4235-84c8-05fce898ec25', N'TargetItem', N'Project', 3, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'011ae0da-9e78-45e8-a5ce-13228da3a996', N'CommunicationMethod', N'UI', 2, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'Scope', N'Company', 1, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'd9e04fc2-80bc-4a50-b6b9-15cd6731f416', N'TaskStatus', N'InProgress', 1, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'874b4b94-6068-4e65-979f-1953149b814f', N'Module', N'Company', 1, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'60dd6b73-6b6f-418a-a189-21dcc48c0018', N'TargetItem', N'Document', 2, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'3bde413e-1051-4488-9f07-23faa7159314', N'CompletionMethod', N'Auto', 2, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'b4b25b74-786e-4ec8-98cf-24f7e3ceba9d', N'RelatedItem', N'User', 3, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'Severity', N'Low', 3, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'10bfe7d7-6d61-4df2-98c3-2e5754232f08', N'Module', N'Project', 3, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'6267818c-42ef-4831-b3eb-3533e48565c3', N'TaskStatus', N'InProgress', 1, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'63ead6df-1eae-4905-92ec-414812bc9e1a', N'RelatedItem', N'Document', 4, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'b4c4c2f1-139a-4e7f-bd05-448f2e60fa0d', N'TaskStatus', N'Completed', 2, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'8c979857-5cff-4fd0-8a03-457d7fd9eb59', N'RelatedItem', N'User', 3, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'25ee0ba6-8896-44d2-8e90-46f65461cdce', N'CommunicationMethod', N'Email', 1, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'cdc2ef67-079f-4df2-a595-47b2dbc893d8', N'DeliverableCompletionMethod', N'Manual', 1, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'43ff7e47-751c-4b9d-9427-481dc812bdf5', N'Severity', N'Medium', 2, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'f56b7dec-f0b8-40a4-8ce0-4bad993d95b6', N'TargetItem', N'All', 1, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'4f880496-9cbd-4a82-80e5-51628e4fe934', N'Module', N'User', 2, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'Severity', N'Medium', 2, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'f781320b-8dad-4520-9edd-5d0284cf0a09', N'Module', N'Project', 3, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'a180f07a-f8bb-4e02-8d4b-62a052cb54b3', N'CommunicationMethod', N'Email', 1, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'121308ff-21bb-476c-a607-62f32ff2253a', N'Scope', N'User', 3, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'06e2a299-296b-42bb-a99c-64ab3225cfd8', N'Scope', N'User', 3, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'a700886f-c7f9-4689-b1ff-652e25e81b81', N'RelatedItem', N'Project', 2, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'bb4513a1-fb2e-48e5-ba40-66aaaf526079', N'RelatedItem', N'Company', 1, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'522b0b03-5821-4bba-99b9-77bc40e73761', N'Module', N'User', 2, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'5b5a30e7-6e08-4ae2-8a9c-85cdce036b47', N'TargetItem', N'User', 4, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'1a825ac9-b0b2-4215-a9b5-8f84523d38a3', N'RelatedItem', N'Company', 1, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'Severity', N'High', 1, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'aeef89f1-f05e-40e8-aefc-959a0d2c3a8e', N'Scope', N'Project', 2, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'6694f2fa-213f-451f-9d7f-ab584ec12012', N'CompletionMethod', N'Manual', 1, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'2df57256-7c60-4225-98e1-ad3771d3d755', N'RelatedItem', N'Document', 4, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'05cedb9d-c1c3-4ea3-856d-b01572aa8786', N'Severity', N'High', 1, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'22b3ad4e-0d79-42c2-b45f-b66758b345ed', N'RelatedItem', N'Project', 2, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'CompletionMethod', N'Manual', 1, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'390a71e9-63c3-4fec-8e3d-d8bc53da46b0', N'DeliverableCompletionMethod', N'Calculated', 2, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'a203f2c0-cae7-4380-846e-dd832275166f', N'TaskStatus', N'Completed', 2, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'47336e92-3cb6-4ac3-b8a8-e4bc743589bf', N'Severity', N'Low', 3, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'CompletionMethod', N'Auto', 2, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'2ab670e4-d20f-4fa0-a239-f1646562a586', N'CommunicationMethod', N'UI', 2, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[AppOption] ([ParamId], [ParamKey], [ParamValue], [DisplaySequence], [IsActive], [CompanyId]) VALUES (N'c483ccc1-d0af-452f-8d60-fa42af367067', N'Module', N'Company', 1, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
/****** Object:  Table [dbo].[AlertTemplate]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlertTemplate](
	[TemplateId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](1000) NOT NULL,
	[RuleSet] [ntext] NOT NULL,
	[StatusId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AlertTemplate] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Position] [varchar](100) NOT NULL,
	[Address] [varchar](2000) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MetaTag]    Script Date: 03/21/2013 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetaTag](
	[MetaTagId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DefaultValue] [varchar](50) NOT NULL,
	[TypeId] [uniqueidentifier] NOT NULL,
	[Description] [varchar](2000) NULL,
	[Regex] [varchar](2000) NULL,
	[IsMandatory] [bit] NOT NULL,
	[DisplayOrder] [int] NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MetaTag] PRIMARY KEY CLUSTERED 
(
	[MetaTagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'faa991f8-e4ec-4ba1-8b42-1592b26cfce8', N'EQID', N'', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 2, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'28698d9f-f429-4d60-a501-23be4c454a2a', N'EQID', N'', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 2, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'5ba874bf-c4c9-46d4-8b8c-2f2fee63aa75', N'REVISION', N'ARUN_INT', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 5, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'a26ffb3a-066b-477a-849c-4675da94d55a', N'CODE', N'', N'9e860d27-758d-4634-b566-2f7b133beecb', N'', N'', 0, 6, N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'0e4c3eae-4591-439e-946c-4c0cd3a5493a', N'DOCTYPE', N'', N'9e860d27-758d-4634-b566-2f7b133beecb', N'', N'', 1, 4, N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'f576cc64-b443-4d57-9337-4d18cd87dda9', N'SEQ', N'', N'14858a47-bc89-4db6-aaf1-a7ddfacc1b5b', N'', N'', 0, 8, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'21eb7fe1-54db-4cee-869f-52bd80f851ca', N'REVISION', N'VIPIN_INT', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 5, N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'ec636964-9510-4233-ab5d-57fe9fb3c01f', N'SOURCE', N'', N'9e860d27-758d-4634-b566-2f7b133beecb', N'', N'', 1, 3, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'e66b4139-35ad-4f41-928a-5a805aa35bd0', N'CLIENTNUMBER', N'', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 9, N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'DOCTYPE', N'', N'9e860d27-758d-4634-b566-2f7b133beecb', N'', N'', 1, 4, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'5d0fb255-d96a-4262-b9e2-6ff10d15ba82', N'PROJID', N'', N'14858a47-bc89-4db6-aaf1-a7ddfacc1b5b', N'', N'', 1, 7, N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'c629040b-33f8-4d54-8dac-73bdb203e6ba', N'CODE', N'', N'9e860d27-758d-4634-b566-2f7b133beecb', N'', N'', 0, 6, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'2cbbf080-19d7-4d5b-8c80-73c341f756fc', N'SUBPROJID', N'', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 1, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'a76762e3-cb1e-49d7-a614-88ec5a08de7a', N'CODE', N'', N'9e860d27-758d-4634-b566-2f7b133beecb', N'', N'', 0, 6, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'6e5f4fb4-b804-41f8-b881-8a96a406632a', N'CLIENTNUMBER', N'', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 9, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'4cd6e000-6cd8-4d85-90c7-95a83701972e', N'SEQ', N'', N'14858a47-bc89-4db6-aaf1-a7ddfacc1b5b', N'', N'', 0, 8, N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'ecbde09e-19f7-4b1b-b7ed-9d8057ad8f5a', N'CLIENTNUMBER', N'', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 9, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'18bb7702-f854-4cfd-8776-9ef7266201ec', N'SOURCE', N'', N'9e860d27-758d-4634-b566-2f7b133beecb', N'', N'', 1, 3, N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'f9d84290-d27b-4005-88c1-b8c1bcc57758', N'REVISION', N'INT', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 5, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'5285a84d-921c-4482-b72b-be96586f20c3', N'SUBPROJID', N'', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 1, N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'c06ae525-9d35-4854-bc49-c79a3c517306', N'PROJID', N'', N'14858a47-bc89-4db6-aaf1-a7ddfacc1b5b', N'', N'', 1, 7, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'e0dab2d5-f412-4f1c-a54d-c85069ef4ff7', N'SUBPROJID', N'', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 1, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'f2c07a8f-c5af-4344-bcbb-daa7cb11561f', N'SOURCE', N'', N'9e860d27-758d-4634-b566-2f7b133beecb', N'', N'', 1, 3, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'8caf4c02-b2eb-4b1f-81cd-dc786b57bd46', N'SEQ', N'', N'14858a47-bc89-4db6-aaf1-a7ddfacc1b5b', N'', N'', 0, 8, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'9bc1ceaa-2d5f-4488-8849-de8dfe1304e4', N'EQID', N'', N'1689ca59-e091-46be-82cc-1857cbf2fdf1', N'', N'', 0, 2, N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'0ed4adca-39e3-4a2a-8ab7-e873ffd2ad8e', N'DOCTYPE', N'', N'9e860d27-758d-4634-b566-2f7b133beecb', N'', N'', 1, 4, N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[MetaTag] ([MetaTagId], [Name], [DefaultValue], [TypeId], [Description], [Regex], [IsMandatory], [DisplayOrder], [CompanyId]) VALUES (N'e89378a7-57d0-4186-98d7-ed881b2b5f4e', N'PROJID', N'', N'14858a47-bc89-4db6-aaf1-a7ddfacc1b5b', N'', N'', 1, 7, N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
/****** Object:  StoredProcedure [dbo].[GetRuleSet]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRuleSet]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	/* SET NOCOUNT ON */
	 SELECT Name, MajorVersion, MinorVersion, RuleSet, Status, AssemblyPath, ActivityName, ModifiedDate FROM RuleSet 
	 ORDER BY Name,MajorVersion, MinorVersion
             
RETURN
GO
/****** Object:  Table [dbo].[SystemEvent]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemEvent](
	[EventId] [uniqueidentifier] NOT NULL,
	[EventName] [varchar](50) NOT NULL,
	[EventTypeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SystemEvent] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Setting](
	[SettingId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[Key] [varchar](200) NOT NULL,
	[Value] [varchar](500) NOT NULL,
	[ParentSettingId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ScreenLabel] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Setting1] PRIMARY KEY CLUSTERED 
(
	[SettingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'cc35ac1b-136a-4585-a1f3-00b5b0728989', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'EmailRegistrationVerifyUri', N'https://www.box.net/api/1.0/rest?action=verify_registration_email&api_key={0}&login={1}', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Box Email VerifyUri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'e94d65a4-9990-4f21-9d63-034fa29a410f', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'TemplateName', N'template_1', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Template Name')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'2f1d822a-dc05-4fec-af9e-03ecaa2a1dec', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'NonConformanceStatus', N'OPEN', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Non Conformance Status OPEN')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'cf93031e-4b64-4ae0-bbba-08ae570ae5f7', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Severity', N'High', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Highest Severity')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'fa553bd1-e82e-4f2b-a7d0-13dda8f28ac3', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'DeliverableStatus', N'Completed', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Completed')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'a86a6ddc-bf4a-4a2a-abf8-232e7c612dff', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'TollgateStatus', N'Completed', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Completed')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'6ea4bf93-9b57-48d5-a217-248d8cfdea54', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'EmailPassword', N'techvalens1234', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Email Password')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'DeliverableStatus', N'NotStarted', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Not Started')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'e15e1001-b827-4f03-80d8-36c4aae3ce4d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'CollaborationUri', N'http://www.box.net/api/1.0/rest?action=invite_collaborators&api_key={0}&auth_token={1}&target=folder&target_id={2}&user_ids[]=&emails[]={3}&item_role_name=editor&resend_invite=0&no_email=0&params[]=force_accept', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Collaboration Uri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'9d1e83eb-f817-4859-93e6-3b6ea549f42c', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'DocumentDownloadUri', N'https://www.box.net/api/1.0/download', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Box Document Uri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'a2933716-2c4c-4617-9848-3b9bb7537be3', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'ProjectNumberSeed', N'5', N'335f14a6-4d8e-4839-a784-d466d7716c72', 1, N'Project Number Seed')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'1043b947-6a3a-477b-a48d-3d77a679eea8', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'OverwriteFileUri', N'http://upload.box.net/api/1.0/overwrite/{0}/{1}?file_name={2}', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Overwrite File Uri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'e1d1fd24-c540-473f-9f66-3fee1c9603f8', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'UploadFileUri', N'http://upload.box.net/api/1.0/upload/{0}/{1}', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Upload File Uri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'8784170b-56e0-4f98-83eb-4212bfebf72c', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'DocumentControlRepository', N'BOX.NET 1', N'00000000-0000-0000-0000-000000000000', 1, N'BoxDocument Repository')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'26dd1735-e657-445c-91ac-429695541d72', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'MakeVersionCurrent', N'http://www.box.net/api/1.0/rest?action=make_current_version&api_key={0}&auth_token={1}&version_id={2}', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Make Version Current')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'7370a281-9ccc-4d8a-bc12-44194d017213', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'SMTPServer', N'smtp.gmail.com', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'SMTP Server')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'59022d75-9a77-4ce5-ad51-482a28e88865', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'SMTPPort', N'587', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'SMTP Port')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'd3164f81-fa3c-4107-9707-4c4573efbff0', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'DocumentControlRepository', N'BOX.NET 2', N'00000000-0000-0000-0000-000000000000', 1, N'BoxDocument Repository')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'4ca8c0ab-a1d6-4199-b0d6-4e0c32b8fafd', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'PublicShareURL', N'http://www.box.net/shared/', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Share Folder Link')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'dbe75edf-e320-4daf-a358-509dedcbb105', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'CollaborationUri', N'http://www.box.net/api/1.0/rest?action=invite_collaborators&api_key={0}&auth_token={1}&target=folder&target_id={2}&user_ids[]=&emails[]={3}&item_role_name=editor&resend_invite=0&no_email=0&params[]=force_accept', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Collaboration Uri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'2f1f2604-4ada-4c16-9e61-5c5bdd1286c1', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Severity', N'Medium', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Medium Severity')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'303a04c7-68b0-477c-ad8d-646e79ecfde9', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'DocumentDownloadUri', N'https://www.box.net/api/1.0/download', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Box Document Uri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'eede2ff8-08c3-4d9d-b2d3-69ade47a1c39', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'ProjectStatus', N'InProgress', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Project Status InProgress')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'dbb0aee6-cdb0-45af-8c55-6fb0a1f7177f', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'ProjectStatus', N'Completed', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Project Status Completed')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'c3fcf888-2cbd-45f4-b561-76be0752fa2e', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'PublicShareURL', N'http://www.box.net/shared/', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Share Folder Link')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'51dda701-247a-4a40-b27a-7e16fe1df365', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'DeliverableStatus', N'InProgress', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'In Progress')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'6006ffc0-3385-448e-a09c-809aadd17d17', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'ProjectNumberSeed', N'1', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Project Number Seed')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'7e35f358-a300-469f-a99e-8675fa31b17d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'OverwriteFileUri', N'http://upload.box.net/api/1.0/overwrite/{0}/{1}?file_name={2}', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Overwrite File Uri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'284b3b48-f924-4ef7-9316-8693396e2ed1', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'EmailAddress', N'ashcliffTV@gmail.com', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Email Address')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'e7e32370-b50c-4c7d-990a-8d7115297c48', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'General', N'Null', N'00000000-0000-0000-0000-000000000000', 1, N'Null')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'56fdb8a1-bc14-4cf3-8ac6-9014353680a0', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'ApiKey', N'ae5lvx7macztu900mccg9ej62kbtiapj', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Box Api Key')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'c2f947d3-2862-43cd-bb65-91efb14fbbaa', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'DefaultRevision', N'ARUN_INT', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Default Revision')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'0ac5f2e7-80a9-421e-8c0f-9942e247320b', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'DocumentVersions', N'http://www.box.net/api/1.0/rest?action=get_versions&api_key={0}&auth_token={1}&target=file&target_id={2}', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Box Document Versions')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'61e86692-f10a-4be3-9336-9c6f1a4a1268', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'EmailPassword', N'techvalens1234', N'335f14a6-4d8e-4839-a784-d466d7716c72', 1, N'Email Password')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'e94dff19-90d7-4d13-8705-a025ef8d191a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'CompanyRootFolder', N'COMPANY 1 ROOT PROJECT', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Company Root Folder')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'363e3292-a4d3-4cc1-88b2-a748ffccaf66', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'DocumentVersionsDownload', N'https://www.box.net/api/1.0/download_version', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Box Document VersionsDownload')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'8bbf2fed-64bc-408c-ba15-ab66db214368', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'DefaultRevision', N'INT', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Default Revision')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'e0fd14a7-3b8e-436c-956e-acefb931c578', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'TollgateStatus', N'NotStarted', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Not Started')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'd6011164-4233-4852-b3a2-ae9a3f73cc31', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'AuthTokenUri', N'http://www.box.net/api/1.0/auth/', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Auth Token Uri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'4edfeb0c-a6a9-4a7e-a001-b6378a7505fb', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'NonConformanceTemplateStatus', N'Draft', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Non Conformance Status Draft')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'3c6f4f71-1b9d-423c-845a-b7c7bf16d60e', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'TemplateName', N'template', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Template Name')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'017e52f6-5a84-4c98-a885-ba7550de961b', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'ApiKey', N'ae5lvx7macztu900mccg9ej62kbtiapj', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Box Api Key')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'2f4ca400-5739-4072-9798-bab56e6e3c8a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'MaxDocumentUploadLimit', N'1000', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'MaxDocument UploadLimit')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'c0a45b79-2722-45e2-8410-bd67a85d9a84', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'DocumentVersions', N'http://www.box.net/api/1.0/rest?action=get_versions&api_key={0}&auth_token={1}&target=file&target_id={2}', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Box Document Versions')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'a98acc25-98f9-4895-99ea-c51be0540097', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'TollgateStatus', N'InProgress', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'In Progress')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'83a7478f-2f37-4ae4-a3bb-c67c7bfedac7', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'NonConformanceStatus', N'CLOSED', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Non Conformance Status CLOSED')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'8939ea96-2de3-4675-9e1d-c7a40e0d196b', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'MaxDocumentUploadLimit', N'5000', N'335f14a6-4d8e-4839-a784-d466d7716c72', 1, N'MaxDocument UploadLimit')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'e786bdb1-97f0-4aa1-b0b3-c88271d1cd89', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'MakeVersionCurrent', N'http://www.box.net/api/1.0/rest?action=make_current_version&api_key={0}&auth_token={1}&version_id={2}', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Make Version Current')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'2ed582ca-b538-4fcb-9c77-cb5789ffd655', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'DeliverableStatus', N'NotRequired', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Not Required')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'a0a6a46a-b3fd-4893-a46e-d18343ea58c7', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Severity', N'Low', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Low Severity')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'ee1088ee-0c54-4e8e-8561-d29960dd73a8', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'NonConformanceTemplateStatus', N'Active', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Non Conformance Status Active')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'335f14a6-4d8e-4839-a784-d466d7716c72', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'General', N'Null', N'00000000-0000-0000-0000-000000000000', 1, N'Null')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'9c52ad0e-13da-4eea-b3b1-d50c9c57f960', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'UploadFileUri', N'http://upload.box.net/api/1.0/upload/{0}/{1}', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Upload File Uri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'7780c6fe-e772-44fd-8c46-d5728cdbdba4', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'AuthTokenUri', N'http://www.box.net/api/1.0/auth/', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Auth Token Uri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'72a05039-7f30-4ce0-82c8-e30a1791abed', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'EmailRegistrationVerifyUri', N'https://www.box.net/api/1.0/rest?action=verify_registration_email&api_key={0}&login={1}', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Box Email VerifyUri')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'8fa76356-03e7-44b7-9be1-e751aeea1fb3', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'DocumentVersionsDownload', N'https://www.box.net/api/1.0/download_version', N'8784170b-56e0-4f98-83eb-4212bfebf72c', 1, N'Box Document VersionsDownload')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'e911110c-2684-4954-b57a-e84b1b9d54a1', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'NonConformanceTemplateStatus', N'InActive', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Non Conformance Status Inactive')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'91089a20-f6e8-4965-9721-e9fecb97c757', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'EmailAddress', N'ashcliffTV@gmail.com', N'335f14a6-4d8e-4839-a784-d466d7716c72', 1, N'Email Address')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'e454f52e-5b93-4529-ac6b-ee007c3b3670', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'NonConformanceStatus', N'RESOLVED', N'e7e32370-b50c-4c7d-990a-8d7115297c48', 1, N'Non Conformance Status RESOLVED')
INSERT [dbo].[Setting] ([SettingId], [CompanyId], [Key], [Value], [ParentSettingId], [IsActive], [ScreenLabel]) VALUES (N'a6b546da-7787-495b-bedd-efbfe005a356', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'CompanyRootFolder', N'COMPANY 2 ROOT PROJECT I4', N'd3164f81-fa3c-4107-9707-4c4573efbff0', 1, N'Company Root Folder')
/****** Object:  Table [dbo].[RelatedItem]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RelatedItem](
	[RelatedItemId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NULL,
	[Relationship] [uniqueidentifier] NULL,
	[Description] [varchar](200) NULL,
 CONSTRAINT [PK_RelatedItem] PRIMARY KEY CLUSTERED 
(
	[RelatedItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[RelatedItem] ([RelatedItemId], [Name], [Relationship], [Description]) VALUES (N'42e445ac-0ff4-40e6-8e81-048f82d1f015', N'User', N'b4b25b74-786e-4ec8-98cf-24f7e3ceba9d', N'')
INSERT [dbo].[RelatedItem] ([RelatedItemId], [Name], [Relationship], [Description]) VALUES (N'46bf18e5-34cb-4329-a3f2-08f4c9787953', N'Document', N'63ead6df-1eae-4905-92ec-414812bc9e1a', N'')
INSERT [dbo].[RelatedItem] ([RelatedItemId], [Name], [Relationship], [Description]) VALUES (N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13', N'Company', N'1a825ac9-b0b2-4215-a9b5-8f84523d38a3', N'')
INSERT [dbo].[RelatedItem] ([RelatedItemId], [Name], [Relationship], [Description]) VALUES (N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79', N'Project', N'a700886f-c7f9-4689-b1ff-652e25e81b81', N'')
/****** Object:  Table [dbo].[ModuleRoleAccess]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleRoleAccess](
	[MRAId] [uniqueidentifier] NOT NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
	[RollId] [uniqueidentifier] NOT NULL,
	[View] [bit] NULL,
	[Create] [bit] NULL,
	[Edit] [bit] NULL,
	[Delete] [bit] NULL,
 CONSTRAINT [PK_ModuleRoleAccess] PRIMARY KEY CLUSTERED 
(
	[MRAId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'3fab05e2-ddc3-4448-bfd5-1e8cedc2484b', N'a381d916-720f-46e2-af26-694a9c4f30a5', N'7bc3adf5-b767-496f-8ecc-4461854c060a', 1, 1, 1, 0)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'a8b08465-a322-4ba6-aa57-202caacaf5c9', N'6c041e32-96a1-4a83-850d-4c8f0aed1cf4', N'7bc3adf5-b767-496f-8ecc-4461854c060a', 1, 0, 1, 1)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'83a5806b-26ed-46de-8cba-23eaa3f0f83f', N'6e44d17b-52f4-4ce3-b36c-b4975c813363', N'a4caded8-3d67-4f17-a095-3a98c06f4836', 1, 1, 0, 1)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'1b2657a6-12fb-405a-8a32-2502657c3eee', N'efb2f6ca-7141-41a7-8059-e453c5c9b754', N'a4caded8-3d67-4f17-a095-3a98c06f4836', 1, 1, 0, 1)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'0a31e3fc-b954-4545-b9b6-30c04584e2b5', N'a5c52387-0edb-448a-a0fc-82cda3246baf', N'a4caded8-3d67-4f17-a095-3a98c06f4836', 1, 1, 0, 0)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'9b65d26e-ca92-40f8-ae98-35d2ae7e958d', N'209b1bdb-e2fc-4787-b073-998fe4865e49', N'7bc3adf5-b767-496f-8ecc-4461854c060a', 1, 0, 1, 1)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'e0bbe139-6b81-4d05-a26c-54b9260c99a6', N'6e44d17b-52f4-4ce3-b36c-b4975c813363', N'7bc3adf5-b767-496f-8ecc-4461854c060a', 0, 0, 1, 1)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'61bd2598-8ea5-4f42-a3cc-5c5f748bf4fe', N'efb2f6ca-7141-41a7-8059-e453c5c9b754', N'7bc3adf5-b767-496f-8ecc-4461854c060a', 1, 0, 1, 1)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'fd0398c8-d00c-48b6-8e68-7a5f61ddebd6', N'18183b95-220c-43c6-9bbd-aaded2154a59', N'a4caded8-3d67-4f17-a095-3a98c06f4836', 1, 0, 0, 1)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'ddafd1ca-12b4-4fa3-990c-a42f1f170416', N'ce23d27b-e6dd-4256-9109-8bc7662abeae', N'7bc3adf5-b767-496f-8ecc-4461854c060a', 1, 1, 1, 0)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'03d4ca2d-95df-4ac7-8a51-b632b4d90daa', N'ce23d27b-e6dd-4256-9109-8bc7662abeae', N'a4caded8-3d67-4f17-a095-3a98c06f4836', 1, 0, 0, 1)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'0413f9aa-ae7c-4d9a-867b-b6d85a259175', N'209b1bdb-e2fc-4787-b073-998fe4865e49', N'a4caded8-3d67-4f17-a095-3a98c06f4836', 0, 0, 0, 1)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'ad6d2ff9-3929-4a01-8dec-db9462d1397f', N'a5c52387-0edb-448a-a0fc-82cda3246baf', N'7bc3adf5-b767-496f-8ecc-4461854c060a', 1, 0, 1, 0)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'2323e505-073d-427a-8f56-de42306f7a39', N'18183b95-220c-43c6-9bbd-aaded2154a59', N'7bc3adf5-b767-496f-8ecc-4461854c060a', 1, 1, 1, 0)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'2a566d3d-96ce-4748-8ae8-e4fba248ba84', N'658128f3-3950-45e5-bd44-459813614f67', N'7bc3adf5-b767-496f-8ecc-4461854c060a', 1, 0, 1, 0)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'59b83966-35d0-4bf7-8d70-f85871f7a3ee', N'658128f3-3950-45e5-bd44-459813614f67', N'a4caded8-3d67-4f17-a095-3a98c06f4836', 1, 0, 1, 0)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'b06ad4cf-5bdc-425e-8a20-fcf0da106141', N'a381d916-720f-46e2-af26-694a9c4f30a5', N'a4caded8-3d67-4f17-a095-3a98c06f4836', 0, 1, 0, 1)
INSERT [dbo].[ModuleRoleAccess] ([MRAId], [ModuleId], [RollId], [View], [Create], [Edit], [Delete]) VALUES (N'f3a3b25d-f805-4b9a-ab8f-fd9534ad8702', N'6c041e32-96a1-4a83-850d-4c8f0aed1cf4', N'a4caded8-3d67-4f17-a095-3a98c06f4836', 1, 1, 0, 1)
/****** Object:  Table [dbo].[Address]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[Street] [varchar](200) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[State] [varchar](100) NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[PostalCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TollgateTemplateDeliverable]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TollgateTemplateDeliverable](
	[TollgateTemplateId] [uniqueidentifier] NOT NULL,
	[DeliverableTemplateId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ProjectTollgateDeliverable] PRIMARY KEY CLUSTERED 
(
	[DeliverableTemplateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'070a9b6b-4445-487c-a59c-a79f3dba49bf', N'd567c73a-7ca6-4ee8-888e-08d3261946c0')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'a547055b-c655-4b9e-9e47-649a494c2032', N'2f4f046b-7c0b-423e-b6c6-0f66ad8f3bae')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'b0151450-8cd6-4007-aff0-1a24377ed81a', N'9481dd84-a48b-45c4-b5ec-1b0e55543474')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'191a2e31-68a6-49c3-a8a2-c8f6357767fb', N'1dc65ae9-fc65-4187-b3a7-2657950ef160')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'835a8e04-c6b3-48b6-bf1c-0e714a3a7f47', N'984a2571-4f2b-4265-8af3-300cb6837448')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'835a8e04-c6b3-48b6-bf1c-0e714a3a7f47', N'04b5a1c7-2a16-4ef5-be90-396963b3f1bb')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'ab75cf83-455f-43ab-9a90-e5288a2e8e86', N'390174f1-2d7d-44c9-83e5-3b61e273eb76')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'070a9b6b-4445-487c-a59c-a79f3dba49bf', N'f62ee480-d0b2-45ee-beb0-404cacb7c5a0')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'ab75cf83-455f-43ab-9a90-e5288a2e8e86', N'fc3cb686-ae5f-45a1-af53-45354a1b2834')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'912d3ff6-4630-42fb-a6c7-23df8b64e6f2', N'7b7514a8-c2a7-46f1-8e2f-4e239ecf22be')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'a547055b-c655-4b9e-9e47-649a494c2032', N'fc8ea139-fde8-4d99-af1b-54ee29eab311')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'a547055b-c655-4b9e-9e47-649a494c2032', N'09ba3e0b-3075-43f5-ad04-5642c2b4d151')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'554d1141-69ca-4b4d-ab0a-b4b32a17b3ae', N'65b7709e-05d7-43a6-ae38-5abfcceeacf9')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'73e38cca-66db-4b54-86b4-9e91b7ef3cad', N'0cf4c9ce-a1d7-4a81-89c0-67fc45073f69')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'070a9b6b-4445-487c-a59c-a79f3dba49bf', N'4206df22-766e-4eba-9ac0-796708e21611')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'b0151450-8cd6-4007-aff0-1a24377ed81a', N'5284c293-489b-46cb-8133-7d626964d576')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'8e930357-c771-4bbf-b480-37f5170a907d', N'6edc5ee2-26a6-4c3b-aba5-98b80d6416a5')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'73e38cca-66db-4b54-86b4-9e91b7ef3cad', N'8d0ad091-1ecf-46da-948c-99975ad8dd40')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'ab75cf83-455f-43ab-9a90-e5288a2e8e86', N'cf18a824-1544-4edc-a6a2-b33fcd60c826')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'912d3ff6-4630-42fb-a6c7-23df8b64e6f2', N'1dcf7d75-793a-4e53-a613-bc6239d110ce')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'73e38cca-66db-4b54-86b4-9e91b7ef3cad', N'2db13cac-56d8-4b3b-8053-be95179a3e52')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'554d1141-69ca-4b4d-ab0a-b4b32a17b3ae', N'e6572213-8d66-4cd5-a9ac-c995f78b09d6')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'191a2e31-68a6-49c3-a8a2-c8f6357767fb', N'4999b475-6122-4899-bfb1-d08aef4bba31')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'191a2e31-68a6-49c3-a8a2-c8f6357767fb', N'7dacd90a-054e-4274-98a4-d62cd6489319')
INSERT [dbo].[TollgateTemplateDeliverable] ([TollgateTemplateId], [DeliverableTemplateId]) VALUES (N'8e930357-c771-4bbf-b480-37f5170a907d', N'3349cfbe-7342-42c2-97bd-ebbf3f3984bb')
/****** Object:  Table [dbo].[TaskTemplate]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskTemplate](
	[TemplateId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](1000) NOT NULL,
	[RuleSet] [ntext] NOT NULL,
	[StatusId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TaskTemplate] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginID] [varchar](200) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[UserRoleId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[BoxTicket] [varchar](100) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[User] ([UserId], [LoginID], [Password], [UserRoleId], [CreatedDate], [IsActive], [BoxTicket], [FirstName], [LastName], [CompanyId]) VALUES (N'0d581fdf-6707-4e6e-b3ef-101577ceab24', N'virat.joshi@techvalens.com', N'Virat', N'7bc3adf5-b767-496f-8ecc-4461854c060a', CAST(0x00009F9501605D69 AS DateTime), 0, N'neceziknrj3ko16la19ohruy3edna4om', N'Virat', N'Joshi', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[User] ([UserId], [LoginID], [Password], [UserRoleId], [CreatedDate], [IsActive], [BoxTicket], [FirstName], [LastName], [CompanyId]) VALUES (N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41', N'vipin.rathore@techvalens.com', N'Vipin', N'a4caded8-3d67-4f17-a095-3a98c06f4836', CAST(0x00009F9501605D69 AS DateTime), 0, N'jecq0l4d4zmnf4lblydmerdouj4sl4iq', N'Vipin', N'Rathore', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[User] ([UserId], [LoginID], [Password], [UserRoleId], [CreatedDate], [IsActive], [BoxTicket], [FirstName], [LastName], [CompanyId]) VALUES (N'7c5b86e3-54c8-47f6-8800-32bf742f3c32', N'ckapatch@dynamisfzc.com', N'blank', N'7bc3adf5-b767-496f-8ecc-4461854c060a', CAST(0x00009F59017730C6 AS DateTime), 0, N's4hjle6d59v61xddnxpaii7sgv6xg9de', N'Chad', N'Kapatch', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[User] ([UserId], [LoginID], [Password], [UserRoleId], [CreatedDate], [IsActive], [BoxTicket], [FirstName], [LastName], [CompanyId]) VALUES (N'28378dd6-ac29-4572-a78f-463b4f8b988f', N'rarsenault@dynamisfzc.com', N'blank', N'7bc3adf5-b767-496f-8ecc-4461854c060a', CAST(0x0000A004002F5282 AS DateTime), 0, N'eqv5t19a17hoe636pn2izxarivl29rdo', N'Ryan', N'Arsenault', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[User] ([UserId], [LoginID], [Password], [UserRoleId], [CreatedDate], [IsActive], [BoxTicket], [FirstName], [LastName], [CompanyId]) VALUES (N'e7fa13ef-afd9-4933-89fc-dfc69d916e94', N'test11073@gmail.com', N'blank', N'7bc3adf5-b767-496f-8ecc-4461854c060a', CAST(0x00009F5A00FE1B03 AS DateTime), 0, N'i5vzpotzvboeart9zs1kxyyrtlp2kxue', N'Amit', N'Soni', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[User] ([UserId], [LoginID], [Password], [UserRoleId], [CreatedDate], [IsActive], [BoxTicket], [FirstName], [LastName], [CompanyId]) VALUES (N'48d559d5-fa6f-441e-a6be-ed86bdcf19d2', N'anurag@techvalens.com', N'anurag', N'7bc3adf5-b767-496f-8ecc-4461854c060a', CAST(0x00009F5A00D49B82 AS DateTime), 0, N'p8sq4vdfy240f30xy4lgoak5y6fo4860', N'Anurag', N'Agarwal', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93')
INSERT [dbo].[User] ([UserId], [LoginID], [Password], [UserRoleId], [CreatedDate], [IsActive], [BoxTicket], [FirstName], [LastName], [CompanyId]) VALUES (N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'arun.manjhi@techvalens.com', N'Arun', N'7bc3adf5-b767-496f-8ecc-4461854c060a', CAST(0x00009F9501605D69 AS DateTime), 0, N'2nziish97u1n5kcmg4y6b1t3phqye28n', N'Arun', N'Manjhi', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
INSERT [dbo].[User] ([UserId], [LoginID], [Password], [UserRoleId], [CreatedDate], [IsActive], [BoxTicket], [FirstName], [LastName], [CompanyId]) VALUES (N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', N'sandeep.modi@techvalens.com', N'Nidhi', N'7bc3adf5-b767-496f-8ecc-4461854c060a', CAST(0x00009FF001605D69 AS DateTime), 0, N'p8sq4vdfy240f30xy4lgoak5y6fo4860', N'Nidhi', N'Mantri', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c')
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UpdateUser]
 (
	@UserId  uniqueidentifier,
	@BoxTicket  varchar(100)
 )
 As
 
	Update [User] 
	Set [BoxTicket] = @BoxTicket
	Where UserId = @UserId
GO
/****** Object:  Table [dbo].[SystemEventParameter]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemEventParameter](
	[EventParamId] [uniqueidentifier] NOT NULL,
	[EventId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Type] [varchar](100) NOT NULL,
	[Value] [varchar](200) NOT NULL,
 CONSTRAINT [PK_EventParameter] PRIMARY KEY CLUSTERED 
(
	[EventParamId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Project]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[ProjectId] [varchar](200) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Description] [varchar](2500) NULL,
	[PurchaseOrderNumber] [varchar](50) NULL,
	[ProjectManager] [uniqueidentifier] NOT NULL,
	[BoxFolderId] [bigint] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[ClientName] [varchar](250) NULL,
	[ClientContact] [varchar](50) NULL,
	[ClientProjectNumber] [varchar](150) NULL,
	[Status] [uniqueidentifier] NOT NULL,
	[ProjectStartDate] [datetime] NOT NULL,
	[ProjectCompletionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[UniqueId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Project] ([UniqueId], [ProjectId], [Name], [Description], [PurchaseOrderNumber], [ProjectManager], [BoxFolderId], [CreatedBy], [CreatedDate], [LastModifiedBy], [ModifyDate], [CompanyId], [ClientName], [ClientContact], [ClientProjectNumber], [Status], [ProjectStartDate], [ProjectCompletionDate]) VALUES (N'11656405-1a40-49ab-8336-10baead4af72', N'120003', N'Software Testing Manual', N'Manual testing is the oldest and most rigorous type of software testing.', N'Alfa-4234', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 415647170, N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0DB00BEA780 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0DB00BF0288 AS DateTime), N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Chad kapatch', N'1212-12-12-12', N'PRo-23', N'eede2ff8-08c3-4d9d-b2d3-69ade47a1c39', CAST(0x0000A0DB00000000 AS DateTime), CAST(0x0000A0F500000000 AS DateTime))
INSERT [dbo].[Project] ([UniqueId], [ProjectId], [Name], [Description], [PurchaseOrderNumber], [ProjectManager], [BoxFolderId], [CreatedBy], [CreatedDate], [LastModifiedBy], [ModifyDate], [CompanyId], [ClientName], [ClientContact], [ClientProjectNumber], [Status], [ProjectStartDate], [ProjectCompletionDate]) VALUES (N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'120001', N'Test Project First', N'Testing Project For Trunk', N'fdgh234234', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 383790925, N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C800FCF6A1 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C800FCF6A1 AS DateTime), N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Arun Kumar Manjhi', N'09987765543', N'dfgh123_121', N'eede2ff8-08c3-4d9d-b2d3-69ade47a1c39', CAST(0x0000A0C800000000 AS DateTime), CAST(0x0000A0CC00000000 AS DateTime))
INSERT [dbo].[Project] ([UniqueId], [ProjectId], [Name], [Description], [PurchaseOrderNumber], [ProjectManager], [BoxFolderId], [CreatedBy], [CreatedDate], [LastModifiedBy], [ModifyDate], [CompanyId], [ClientName], [ClientContact], [ClientProjectNumber], [Status], [ProjectStartDate], [ProjectCompletionDate]) VALUES (N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'120002', N'This is Test Project', N'Testing', N'1111', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 385246451, N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C80189DB07 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C80189DB07 AS DateTime), N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Sandeep', N'99099999', N'12112', N'eede2ff8-08c3-4d9d-b2d3-69ade47a1c39', CAST(0x0000A0C800000000 AS DateTime), CAST(0x0000A0C800000000 AS DateTime))
INSERT [dbo].[Project] ([UniqueId], [ProjectId], [Name], [Description], [PurchaseOrderNumber], [ProjectManager], [BoxFolderId], [CreatedBy], [CreatedDate], [LastModifiedBy], [ModifyDate], [CompanyId], [ClientName], [ClientContact], [ClientProjectNumber], [Status], [ProjectStartDate], [ProjectCompletionDate]) VALUES (N'00366f1c-2491-42a1-823f-5930778bbdf4', N'120004', N'MVC Architecture Manual', N'Learn what is Basic Model View and Controller Architecture ...', N'Alfa-4234', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 415659838, N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0DB00C45DFD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0DB00C4D6D8 AS DateTime), N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Chad kapatch', N'1212-12-12-12', N'PRo-23', N'eede2ff8-08c3-4d9d-b2d3-69ade47a1c39', CAST(0x0000A0DB00000000 AS DateTime), CAST(0x0000A0F400000000 AS DateTime))
/****** Object:  Table [dbo].[MetaTagChoice]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetaTagChoice](
	[ChoiceId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MetaTagId] [uniqueidentifier] NOT NULL,
	[Abbreviation] [varchar](50) NULL,
	[Description] [varchar](200) NULL,
 CONSTRAINT [PK_MetaTagChoice] PRIMARY KEY CLUSTERED 
(
	[ChoiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'f30d82e9-9fad-4a3b-8e60-0b0742fae8d3', N'Techvalens', N'18bb7702-f854-4cfd-8776-9ef7266201ec', N'TV', N'Created by Techvalens Personnel for project purposes. To be submitted to sub-contractors and or the client.')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'5d52a8d9-ce81-450b-a3b5-11a1c1f1dbf4', N'Rejected', N'c629040b-33f8-4d54-8dac-73bdb203e6ba', N'C2', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'e90486b3-288a-41d2-9c10-132ede88184a', N'Commercial Invoice', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'CI', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'bb5b7a31-3088-4edc-94b5-135b74c59977', N'Process Flow Diagram', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'PFD', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'de930eda-3f86-47f0-9207-181067f9f2f3', N'Packing Slip', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'PS', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'e77dc3a8-ec31-4e9c-9c67-1a3c2002ea11', N'No Review Needed', N'a26ffb3a-066b-477a-849c-4675da94d55a', N'C3', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'e982b49d-16cc-483f-a2e4-1eec671a34bd', N'Standard or Certificate of Conformance', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'STD', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'6e57bcf2-4515-4d3b-b6b8-221114170a59', N'Approved', N'a76762e3-cb1e-49d7-a614-88ec5a08de7a', N'C0', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'05df2776-a11b-4611-873b-254f5d33f500', N'Wiring Schematic', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'WSC', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'34982189-3010-410e-870c-30392bc1d04e', N'Material Test Report', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'MTR', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'14d096e0-92d5-43f1-b1ca-3646d17ae449', N'Quality Assurance & Quality Control', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'QA', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'671b2662-bd75-4584-b830-3b6a0192f36a', N'Outstanding', N'a26ffb3a-066b-477a-849c-4675da94d55a', N'C1', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'51a31b6f-6284-45be-9dbf-3c4ba4e0f3e6', N'Approved', N'a26ffb3a-066b-477a-849c-4675da94d55a', N'C0', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'fd813083-035c-4443-a944-3e4d1053f80b', N'Data Sheet', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'DS', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'4c877e07-685a-4036-9518-40e3c2111bfc', N'Client', N'18bb7702-f854-4cfd-8776-9ef7266201ec', N'C', N'Client – Created by the project client for Dynamis information or approval.')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'3dc7b566-e269-4f36-8f8b-462ba7852375', N'General Design Information', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'GDI', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'a84729f7-efe1-4127-bb44-583568a02ab3', N'Dynamis', N'f2c07a8f-c5af-4344-bcbb-daa7cb11561f', N'D', N'Created by Dynamis Personnel for project purposes. To be submitted to sub-contractors and or the client.')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'08e0c4b2-3436-4d09-892a-5943536894ac', N'Project Technical Based Schedule', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'SCD', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'132de5ec-62e6-4a6e-a88e-61b5ef2e8c34', N'Quote', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'QU', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'd30729e1-7c82-44eb-bc13-61b9d2f8e619', N'Single Line Diagram', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'SLD', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'6c461ae8-58c4-4a7b-8b1c-7cb7e23d93ed', N'Request For Information', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'RFI', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'a7a93fb0-e0de-4091-984f-7d6925767bb4', N'Project Management Based Schedule', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'SCE', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'6f23326b-39d3-47a3-a500-7f342f45be32', N'Installation & Operating Manual', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'IOM', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'8f5a52c7-694e-4424-be07-82d8ed75f37f', N'Proposal', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'PRO', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'74a876aa-fd6a-46e2-9a3a-83bdb75476e1', N'Dimensional Drawing', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'DIM', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'cc6258be-16b2-4004-a040-8a46447ac2c4', N'Receiving Report', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'REC', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'7e809300-55fc-4a41-a7a6-8d24ef19da58', N'Report', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'REP', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'94e9ca4b-f6c6-442d-a272-8e2b93040ea1', N'Purchase Order', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'PO', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'94a38260-c892-459a-992f-923bbde99fdc', N'Data Sheet', N'0e4c3eae-4591-439e-946c-4c0cd3a5493a', N'DS', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'c6c224ee-436c-4aae-bd55-94068cd0c614', N'Calibration Report', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'CAL', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'34afde83-efae-4791-a2cf-970af46b2b91', N'Rejected', N'a26ffb3a-066b-477a-849c-4675da94d55a', N'C2', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'c2742234-90c8-4de0-98a9-a1a87b557d95', N'Dynamis', N'ec636964-9510-4233-ab5d-57fe9fb3c01f', N'D', N'Created by Dynamis Personnel for project purposes. To be submitted to sub-contractors and or the client.')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'bf99bb3a-e5b3-47ad-a1d8-a6790d885d60', N'Packing Slip', N'0ed4adca-39e3-4a2a-8ab7-e873ffd2ad8e', N'PS', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'd8860a3e-a91f-4ae3-812d-aa11e54d0e64', N'Vendor', N'18bb7702-f854-4cfd-8776-9ef7266201ec', N'V', N'Created or supplied by one of Dynamis’ sub-contractors or equipment vendors.')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'8da3f1c1-15a9-4aa8-b3af-ac3f2f69f97f', N'Single Line Diagram', N'0e4c3eae-4591-439e-946c-4c0cd3a5493a', N'SLD', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'a235033d-860d-468f-a2f0-acf82fce5375', N'Client', N'ec636964-9510-4233-ab5d-57fe9fb3c01f', N'C', N'Client – Created by the project client for Dynamis information or approval.')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'e389d9fe-f883-4d01-b5c4-afaddad27b9e', N'Standard or Certificate of Conformance', N'0ed4adca-39e3-4a2a-8ab7-e873ffd2ad8e', N'STD', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'24ea5e06-00ea-4684-9e78-afd3135aaca9', N'Meeting Minutes', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'MM', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'69f2101e-53b4-4952-b46a-b25d698dcf09', N'Invoice', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'INV', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'ad0d049b-95fa-4f1a-b5cb-b3fd654c7df4', N'Hazardous Area Certificate', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'HAZ', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'4feb046f-95ba-4bef-a4ac-be6571755374', N'Rejected', N'a76762e3-cb1e-49d7-a614-88ec5a08de7a', N'C2', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'1b5804a2-070f-4971-b739-c86c2ac2bef2', N'Manufacturers Record Book', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'MRB', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'f050d434-2f42-4cc3-85fb-ce1763cba9f2', N'Inspection & Test Plan', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'ITP', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'f9fe1aee-87c8-4b4f-a471-cf8a0da9dfaa', N'Picture', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'PIC', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'ba12393b-c9fa-4671-a5a4-da5776198dd8', N'Calculation or Sizing', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'ADD', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'368acbed-089a-4368-97c1-dd60c4a86797', N'Approved', N'c629040b-33f8-4d54-8dac-73bdb203e6ba', N'C0', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'0e1fb418-13ae-4d7e-b315-dd7b0c51711b', N'Piping & Instrument Diagram', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'PID', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'8afe2c6b-a2e6-4efd-ba6b-e0105bc3c77f', N'Change Order or Change Proposal', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'CO', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'fef8f20a-fead-49ed-a2ac-e40830758745', N'Vendor', N'f2c07a8f-c5af-4344-bcbb-daa7cb11561f', N'V', N'Created or supplied by one of Dynamis’ sub-contractors or equipment vendors. To be submitted by Dynamis as a Dynamis document to sub-contractors or the client.')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'0b5c4fb9-9a6a-4208-9963-e4820c2edfe8', N'Outstanding', N'c629040b-33f8-4d54-8dac-73bdb203e6ba', N'C1', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'75c052d4-83b4-409f-86a4-e48563412329', N'Quality Assurance & Quality Control', N'0e4c3eae-4591-439e-946c-4c0cd3a5493a', N'QA', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'024e56bf-7edd-434b-8c89-ebc4f858ded2', N'General Design Information', N'0e4c3eae-4591-439e-946c-4c0cd3a5493a', N'GDI', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'a8be3724-6cc5-4124-b971-ef16424a2004', N'No Review Needed', N'a76762e3-cb1e-49d7-a614-88ec5a08de7a', N'C3', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'18b5fc54-5db5-43af-87e1-eff3ccb16b1a', N'Material Test Report', N'0e4c3eae-4591-439e-946c-4c0cd3a5493a', N'MTR', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'edaa51e8-fdd5-4dfd-8ab3-f0591f339776', N'Vendor', N'ec636964-9510-4233-ab5d-57fe9fb3c01f', N'V', N'Created or supplied by one of Dynamis’ sub-contractors or equipment vendors. To be submitted by Dynamis as a Dynamis document to sub-contractors or the client.')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'ca649c3b-1234-4cdb-a136-f20608935007', N'No Review Needed', N'c629040b-33f8-4d54-8dac-73bdb203e6ba', N'C3', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'aaa1bcb9-9ce0-46b9-99f4-f2612dd4a8f8', N'Quote', N'0ed4adca-39e3-4a2a-8ab7-e873ffd2ad8e', N'QU', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'fbc8d9c1-ee45-43b2-934f-f36c9ed54fb0', N'Layout', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'LAY', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'c5e68d8d-e203-4a1c-99e9-fa6b58eb1eb5', N'Correspondence', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'COR', N'')
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'1a19c754-a65b-4ff6-896f-fca3e27ad061', N'Outstanding', N'a76762e3-cb1e-49d7-a614-88ec5a08de7a', N'C1', NULL)
INSERT [dbo].[MetaTagChoice] ([ChoiceId], [Name], [MetaTagId], [Abbreviation], [Description]) VALUES (N'173923c4-4a31-4c3b-8306-ff5c44ae4e55', N'Hydrostatic Test Report', N'b2c033aa-287d-4120-8b95-5bd929fdfae9', N'HTR', N'')
/****** Object:  Table [dbo].[NotesReason]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NotesReason](
	[NotesReasonId] [uniqueidentifier] NOT NULL,
	[Author] [uniqueidentifier] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Description] [varchar](2000) NULL,
 CONSTRAINT [PK_NotesResonTable] PRIMARY KEY CLUSTERED 
(
	[NotesReasonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'eff8dc60-5910-4353-8288-02013dfcb314', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C801044275 AS DateTime), CAST(0x0000A0C801021DE0 AS DateTime), N'"aaa"')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'6fbaa462-9c17-4ed4-8867-03e85f746104', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD005F029F AS DateTime), CAST(0x0000A0CD005EE1BF AS DateTime), N'hello nc 12 12 121 2')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'40061091-7879-4257-934d-058bfd713963', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD005EC981 AS DateTime), CAST(0x0000A0CD005EC981 AS DateTime), N'derfg dfgdf gdxsfg')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'b41527be-4253-45a4-9cbf-0846c39397c2', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD00524737 AS DateTime), CAST(0x0000A0CD00524737 AS DateTime), N'11111111111111111111111111')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'3e014a60-7d8d-438b-b0dd-08a160f7cbcc', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD01286736 AS DateTime), CAST(0x0000A0CD00550875 AS DateTime), N'9 stioikju')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'48755eb8-9217-49a3-b290-095a4e85ab45', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C8012E5B0B AS DateTime), CAST(0x0000A0C8012E5B0B AS DateTime), N'Helloooooooo')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'ac8d7dd2-18a8-4bee-bcea-0f2b9ac4eba1', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C8011056A7 AS DateTime), CAST(0x0000A0C8010C8347 AS DateTime), N'sdfdsa sf asdf asdf asdf a')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'e2c62b39-5729-4480-998f-0f9bb9ef238d', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C8012E0D79 AS DateTime), CAST(0x0000A0C8012E0D79 AS DateTime), N'&amp;lt;b&amp;gt;hi&amp;lt;/b&amp;gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'1e599c38-cc3c-42da-94f6-10600c077dc7', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD004F5D3A AS DateTime), CAST(0x0000A0CD004F5D3A AS DateTime), N'Hi Arun')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'592d2b62-7703-49e4-9adf-1970fd024df1', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C9013F95E7 AS DateTime), CAST(0x0000A0C9013F96BD AS DateTime), N'NR')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'd0c90ab4-2cce-45d0-9c2e-1ee45c9c7408', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C9013A29AF AS DateTime), CAST(0x0000A0C9013A2A44 AS DateTime), N'No Reason 1')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'5edabbfa-d8da-4c9f-8b42-249249e232cd', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0DB00C5724A AS DateTime), CAST(0x0000A0DB00C57249 AS DateTime), N'&lt;b&gt;Model View Controller&lt;/b&gt;&amp;nbsp;has been adapted as an&amp;nbsp;&lt;b&gt;architecture&lt;/b&gt;&amp;nbsp;for World Wide Web applications. Several commercial and noncommercial application frameworks')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'f1042c66-2ea0-4db8-b1c3-31954f00a02a', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CA00BC8D18 AS DateTime), CAST(0x0000A0CA00BC8D9A AS DateTime), N'No Reason')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'ade16bbe-3799-49d9-99a8-458935549416', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CE0181FC61 AS DateTime), CAST(0x0000A0CE0181FC61 AS DateTime), N'This is Closed')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'68cdc2d2-ad34-424d-81a8-4fb29ed3f553', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD01293B03 AS DateTime), CAST(0x0000A0CD01293B03 AS DateTime), N'&amp;nbsp;66666666666666 666666666666')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'52f2aea8-7821-42a3-ae13-4fed08b83678', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0D001889AC8 AS DateTime), CAST(0x0000A0CE01648512 AS DateTime), N'&lt;span style="color: rgb(68, 68, 68); font-family: ''Segoe UI'', Arial, sans-serif; font-size: 13px; line-height: 17.316667556762695px; background-color: rgb(255, 255, 255); "&gt;Welcome to my site about WCF tutorial. This tutorial will explain about WCF concepts, creating new service and lot more things in WCF. This is great network distributed system developed by Microsoft for communication between applications.&lt;/span&gt;&amp;nbsp;&lt;br&gt;&lt;div&gt;&lt;span style="color: rgb(68, 68, 68); font-family: ''Segoe UI'', Arial, sans-serif; font-size: 13px; line-height: 17.316667556762695px; background-color: rgb(255, 255, 255); "&gt;Welcome to my site about WCF tutorial. This tutorial will explain about WCF concepts, creating new service and lot more things in WCF. This is great network distributed system developed by Microsoft for communication between applications.&lt;/span&gt;&amp;nbsp;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style="color: rgb(68, 68, 68); font-family: ''Segoe UI'', Arial, sans-serif; font-size: 13px; line-height: 17.316667556762695px; background-color: rgb(255, 255, 255); "&gt;Welcome to my site about WCF tutorial. This tutorial will explain about WCF concepts, creating new service and lot more things in WCF. This is great network distributed system developed by Microsoft for communication between applications.&lt;/span&gt;&amp;nbsp;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style="color: rgb(68, 68, 68); font-family: ''Segoe UI'', Arial, sans-serif; font-size: 13px; line-height: 17.316667556762695px; background-color: rgb(255, 255, 255); "&gt;Welcome to my site about WCF tutorial. This tutorial will explain about WCF concepts, creating new service and lot more things in WCF. This is great network distributed system developed by Microsoft for communication between applications.&lt;/span&gt;&amp;nbsp;&lt;br&gt;&lt;/div&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'bab5f4e0-42c2-4b6c-b8fa-511efd6616b7', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD0053513B AS DateTime), CAST(0x0000A0CD0053513B AS DateTime), N'111111111111')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'03dd457e-64d9-4f0d-afa3-630ed7e83fbd', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD00FD11BE AS DateTime), CAST(0x0000A0CD00FD11BE AS DateTime), N'Notes Reason: 1')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'7383abe0-16db-4a8d-8837-6950149e4a3c', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C80110E0F0 AS DateTime), CAST(0x0000A0C8010892D9 AS DateTime), N'&lt;br&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Wa&lt;i&gt;&lt;u&gt;nt to learn &lt;/u&gt;&lt;/i&gt;more? take a &lt;b&gt;quick tour,w&lt;/b&gt;atch a video tutorial or read Blogger Buxx&lt;/div&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'e9c57306-fad0-45c8-87d2-69d89f9e136d', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0D0018726C7 AS DateTime), CAST(0x0000A0CE01798CB4 AS DateTime), N'&lt;blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"&gt;&lt;blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"&gt;&lt;ol&gt;&lt;li&gt;sdfsdf&lt;br&gt;&lt;/li&gt;&lt;li&gt;sdfas&lt;br&gt;&lt;/li&gt;&lt;li&gt;df&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;a href="http://www.google.com" title="google" target="na"&gt;asdfasd&lt;/a&gt;&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'7236a6cc-18fa-47f6-a147-6d97292fbce3', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0D0016BE5BD AS DateTime), CAST(0x0000A0CE01796762 AS DateTime), N'Close.....')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'69cae67d-1867-4836-aebe-73dea7c9ad75', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0D000040433 AS DateTime), CAST(0x0000A0D000040433 AS DateTime), N'&lt;b&gt;&lt;i&gt;abc&lt;/i&gt;&lt;/b&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'055651ec-b7d0-44e7-96b0-7439de81e96e', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD00574E76 AS DateTime), CAST(0x0000A0CD00574E76 AS DateTime), N'Hi this is Test notes')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'45cf213b-095f-4351-813b-7634cfa50f6b', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD005AB17D AS DateTime), CAST(0x0000A0CD005AB17D AS DateTime), N'&amp;nbsp;1 2 3 4 5 6 7&amp;nbsp;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'46a9a4e3-93a0-4c57-b6c0-77f9a12e179f', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD0059CB1C AS DateTime), CAST(0x0000A0CD0059CB1C AS DateTime), N'&amp;nbsp;56556')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'8d1b6f6e-4b0e-4b32-96de-7da5007cdfab', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CF002A7B7B AS DateTime), CAST(0x0000A0CF0028EE16 AS DateTime), N'&lt;blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"&gt;&lt;ol&gt;&lt;li&gt;&lt;u&gt;dfjjdsashjasmjakx&lt;/u&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;i&gt;lasjdkasmjdjjnxm&lt;/i&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;kldmkasdka&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;b&gt;''djnsnnasmx&lt;/b&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;b&gt;dkasdjak&lt;/b&gt;&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;/blockquote&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'415742d4-aeb7-4952-ab42-7f6a4c5ca6b3', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD012846E9 AS DateTime), CAST(0x0000A0CD012846E9 AS DateTime), N'n n n n nn n rftgh gfh fgh......................')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'5c1ccaa6-88e6-420b-b34b-82d1687c0b4b', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C80141725F AS DateTime), CAST(0x0000A0C80141725F AS DateTime), N'&lt;blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"&gt;&lt;blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"&gt;&lt;blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"&gt;Helloooooooo&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'595932e7-6eaa-43ca-ad05-8455489c50ef', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD005E4C40 AS DateTime), CAST(0x0000A0CD005E4C40 AS DateTime), N'bnbn')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'a63831ae-10f0-4738-898d-855dfc63871a', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CF0077F3B1 AS DateTime), CAST(0x0000A0CF0077F3B1 AS DateTime), N'asdf asdf asd121 212 121 21212asdf asdf asd121 212 121 21212as daswd a2323232323232 232 32 32 3 232 32')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'5e78f186-2de9-41a0-bae7-8693c5b1d0b6', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C8012B9497 AS DateTime), CAST(0x0000A0C8012B9497 AS DateTime), N'way to &lt;a href="http://www.google.com" title="Google" target="Google"&gt;Google&lt;/a&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'f7b4ba8d-a9ac-4098-babe-8757fa9cf9e4', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C80114555C AS DateTime), CAST(0x0000A0C80113A17F AS DateTime), N'No Required')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'b9e302bf-f68c-43ce-842a-89e5fe3712c6', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD005EF7FA AS DateTime), CAST(0x0000A0CD005EF7FA AS DateTime), N'hello once again...')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'94503b91-8452-4dbd-a35d-8b2503c10b44', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD0055B3C9 AS DateTime), CAST(0x0000A0CD0055B3C9 AS DateTime), N'1212121212')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'2e04d309-89fb-4931-b241-8d956c67e1ba', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD0052567B AS DateTime), CAST(0x0000A0CD0052567B AS DateTime), N'fghfghfgh')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'a778254b-0adb-43b0-9328-8f30a37f72fb', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD004EC0EF AS DateTime), CAST(0x0000A0CD004EC0EF AS DateTime), N'Hello')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'9e2c6143-0276-4e31-83df-8fb20d4c6094', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CA00DB201A AS DateTime), CAST(0x0000A0CA00DB20C0 AS DateTime), N'NO Reason')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'f78501ea-aecd-416c-8f89-94fd0f86b4af', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C90141F2DB AS DateTime), CAST(0x0000A0C90141F3B3 AS DateTime), N'NR')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'8e82e8c0-23bb-4baf-99be-99e36beb2ab9', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD004F049D AS DateTime), CAST(0x0000A0CD01017E3C AS DateTime), N'&lt;blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"&gt;&lt;ol&gt;&lt;li&gt;Notes Reason: 2&lt;br&gt;&lt;/li&gt;&lt;li&gt;Notes Reason: 2&amp;nbsp;&lt;br&gt;&lt;/li&gt;&lt;li&gt;Notes Reason: 3&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;/blockquote&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'8c8f88f1-5085-4731-b993-9a5b8f69920d', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C801441B71 AS DateTime), CAST(0x0000A0C80143E3F0 AS DateTime), N'Hi &lt;b&gt;Sandeep Modi Dewas MP&lt;/b&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'8283e421-92ec-4c63-9bc7-9d71c9d12b38', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD00597FF9 AS DateTime), CAST(0x0000A0CD00597FF9 AS DateTime), N'00 0 0 0 000 000 swer sderfsdf')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'3a803c35-2abd-422a-8fc8-9e05d20ae9f4', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0D900236403 AS DateTime), CAST(0x0000A0C801114904 AS DateTime), N'&lt;div&gt;&lt;b&gt;Server-side Application&lt;/b&gt;&lt;/div&gt;Server-side applications in the managed world are implemented 
through&amp;nbsp;run time&amp;nbsp;hosts. Unmanaged applications host the common language&amp;nbsp;run time, 
which allows your custom managed code to control the behavior of the server. 
This model provides you with all the features of the common language runtime and 
class library while gaining the performance and scalability of the host 
server.')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'8bc702dc-5de0-4b29-857c-a2e05c3801a6', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C90133A628 AS DateTime), CAST(0x0000A0C90133A711 AS DateTime), N'No Reason')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'2d8209c2-7cca-4300-90d0-abb7c33f19c7', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C900B43CBB AS DateTime), CAST(0x0000A0C8014513F5 AS DateTime), N'&lt;ol&gt;&lt;li&gt;&lt;b&gt;&lt;i&gt;aasdfasfa&amp;nbsp;&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;b&gt;&lt;i&gt;asfasfa&lt;/i&gt;&lt;/b&gt;&lt;/li&gt;&lt;/ol&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'669cc1ec-912b-42e1-a31c-b946d68c7bc9', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD005E1B78 AS DateTime), CAST(0x0000A0CD005E1B78 AS DateTime), N'12121')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'a20faee1-dfd5-4cb6-bb40-c07cb388b8d7', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C90134FD61 AS DateTime), CAST(0x0000A0C90134FE24 AS DateTime), N'No Reason 1')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'4d550ec0-12c1-46b9-8e75-c1a47c241efc', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD00FD59BC AS DateTime), CAST(0x0000A0CD00FD59BC AS DateTime), N'&lt;blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;&lt;i&gt;&lt;u&gt;&lt;span style="color: rgb(66, 66, 66); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(237, 239, 244); "&gt;Notes Reason: 1&lt;/span&gt;&amp;nbsp;&lt;/u&gt;&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/blockquote&gt;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'e92bb8a8-3291-4f80-929e-caafeb088198', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CF0077E1D6 AS DateTime), CAST(0x0000A0CF0077E1D6 AS DateTime), N'asdf asdf asd121 212 121 21212')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'76fa903a-d8b7-4700-850b-ce573ca10c29', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD004EADD6 AS DateTime), CAST(0x0000A0CD004EADD6 AS DateTime), N'Hello')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'c8a33217-c104-46dc-8b4b-d031f1789df9', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C901141436 AS DateTime), CAST(0x0000A0C90114152B AS DateTime), N'No Reason 2')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'88931e8d-2c4b-409d-8ee9-da1879c03613', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD0059C15D AS DateTime), CAST(0x0000A0CD0100D086 AS DateTime), N'Note 343 434&amp;nbsp;')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'bff72cf8-50d1-49b9-8557-dfb8bee741e3', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD006F99D2 AS DateTime), CAST(0x0000A0CD006F99D2 AS DateTime), N'abc')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'3deaddaf-d377-47b4-a330-ec82418438c4', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C80141AA13 AS DateTime), CAST(0x0000A0C80141AA13 AS DateTime), N'Hi')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'c0de5a90-a731-484b-ac4b-f16e641c56c1', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD004F2C2E AS DateTime), CAST(0x0000A0CD004F2C2E AS DateTime), N'Hi sandeep')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'2312a164-7be0-4b46-b580-f4e47b8692c6', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD0054AFE4 AS DateTime), CAST(0x0000A0CD0054AFE4 AS DateTime), N'22222222 2 2 2 2 22 2')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'4f53ffb3-5c33-48f4-a8cd-f9a5c1f4682b', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD005B6026 AS DateTime), CAST(0x0000A0CD005B6026 AS DateTime), N'333333333333333333333333333')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'2bb5c589-72b6-42ec-8bc0-f9f94cccce3d', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD005CC5BB AS DateTime), CAST(0x0000A0CD005CC5BB AS DateTime), N'555555')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'17fb5930-bf9a-436d-8608-fbc0b3d6f1f1', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CD004F801C AS DateTime), CAST(0x0000A0CD004F801C AS DateTime), N'Hi arun')
INSERT [dbo].[NotesReason] ([NotesReasonId], [Author], [ModifiedBy], [ModifiedDate], [CreatedDate], [Description]) VALUES (N'da804f7f-2066-4b02-9c4d-fd413cb8434d', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C90113114A AS DateTime), CAST(0x0000A0C9011311E4 AS DateTime), N'No Reason')
/****** Object:  Table [dbo].[NonConformanceTemplate]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NonConformanceTemplate](
	[NonConformanceTemplateId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[TargetItemId] [nvarchar](50) NOT NULL,
	[TargetItemType] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [uniqueidentifier] NOT NULL,
	[Details] [nvarchar](max) NULL,
	[Severity] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[ActionPlan] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CompletionMethod] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Non_ConformanceTemplate] PRIMARY KEY CLUSTERED 
(
	[NonConformanceTemplateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NonConformanceTemplate] ([NonConformanceTemplateId], [CompanyId], [TargetItemId], [TargetItemType], [Name], [Status], [Details], [Severity], [GroupName], [ActionPlan], [CreatedDate], [CreatedBy], [IsActive], [CompletionMethod]) VALUES (N'10c63260-7a3b-47ed-941c-f661f558ec4f', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'Project', N'01f9804b-5932-4235-84c8-05fce898ec25', N'Manual', N'e911110c-2684-4954-b57a-e84b1b9d54a1', N'Non Conformance template -001', N'cf93031e-4b64-4ae0-bbba-08ae570ae5f7', N'NC Group 001', N'Action Plan 001', CAST(0x0000A0A200194565 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1, N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d')
/****** Object:  Table [dbo].[EventFired]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventFired](
	[FiredId] [uniqueidentifier] NOT NULL,
	[DateFired] [datetime] NOT NULL,
	[FiredBy] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[EventId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_EventFired] PRIMARY KEY CLUSTERED 
(
	[FiredId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alert]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alert](
	[AlertId] [uniqueidentifier] NOT NULL,
	[Description] [varchar](75) NOT NULL,
	[Details] [text] NOT NULL,
	[ModuleId] [uniqueidentifier] NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[SeverityId] [uniqueidentifier] NOT NULL,
	[ScopeId] [uniqueidentifier] NOT NULL,
	[CommunicationModeId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AssignedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Alert] PRIMARY KEY CLUSTERED 
(
	[AlertId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'55b34bcd-cf34-4a58-9422-058e50a6446a', N'Hello, Complete this task', N'Hello, Complete this task', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'121308ff-21bb-476c-a607-62f32ff2253a', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A03F00AF3B4B AS DateTime), N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'56259a1c-c41d-40b6-9cf5-0851f374a484', N'hello', N'hello', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02400EE60DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'81bff8fe-624f-42e9-8331-0e69a2537de3', N'hello friends', N'na', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'121308ff-21bb-476c-a607-62f32ff2253a', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02200BE275E AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'0a66958f-31bb-4066-b608-15209f37239a', N'AshCliff Project', N'No Details', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A01C00F0A77E AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'bf98095c-496e-40a2-87f1-1a0b93ebe926', N'b', N'b', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02900C65CBC AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'1a506e43-0954-4545-98bc-1bd1dd5c364a', N'dsf', N'dfs', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000E815A3 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'72d6e892-a7d6-4606-a1a0-1bd7d5e5b56f', N'sfd', N'sfd', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A040010C481B AS DateTime), N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'4f2447a2-8b57-4a32-88bc-1f927fff3036', N'Gmail is built on th...', N'Gmail is built on th...', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'121308ff-21bb-476c-a607-62f32ff2253a', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A03500BBB475 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'62d928c8-5403-419c-89c9-1ff1147a2e3e', N'Start Date: Date the deliverable was started', N'Start Date: Date the deliverable was started', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02F00F393D1 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'285d502b-fccf-442a-b9a7-2249dced4fbf', N'This is Demo Alert', N'This is Demo Alert', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02B00E9A1FB AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'f56fc022-f4ef-48b9-a381-244d825e4f1e', N'qqq', N'qqq', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000CE73D7 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'b248e2e2-d65e-4796-9ad7-2566cd5a5a83', N'Hello', N'Hello', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A0290113EEDA AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'4cfc7622-198c-4eca-a3e6-2c31ceb4b0a8', N'Lightweight, affordable range of holiday porosity detectors ex stock', N'Lightweight, affordable range of holiday porosity detectors ex stock', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A03500E55C5E AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'2cd168cc-9435-4bdd-894d-2e2f5a7b7519', N'dfg', N'dfs', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A03500FD929B AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'816fe0e3-248f-4828-9d03-359932409154', N'Alert to Vipin', N'Alert To vipin', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A03900E437F1 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'28ef280c-d6a7-44e0-8fa1-36c8ae6056e2', N'test', N'fghugf', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'121308ff-21bb-476c-a607-62f32ff2253a', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02000F87EEC AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'603d4c93-a661-4755-be52-37306cb47659', N'Register today and get Rs 2000 welcome Bonus in Jabong', N'Register today and get Rs 2000 welcome Bonus in Jabong', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A03500D23957 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'2049ad32-4695-4a31-bf79-3b502fcddf3c', N'yy', N'yy', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000FA55AA AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'1143724e-75ff-4699-8709-3cb56f32fabd', N'f', N'f', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02400BBDCB9 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'81ce0bdc-c35f-4b51-ba62-3cbccab76e8f', N'cccccccccccccccccccccccccccccccccccccccccc', N'cccccccccccccccccccccccccccccccccc', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02C012472C7 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'aaa6b542-7610-4fa6-8af5-423c6555946a', N'fff', N'fff', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000CA4FA3 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'c8525fc6-e6af-4e07-b197-43230bd2f454', N'b', N'b', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'121308ff-21bb-476c-a607-62f32ff2253a', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02000CE73D7 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'c9b0049f-043a-442c-b086-441a4da04455', N'sjjad', N'sdfkajk', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02000F544CC AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'02eededa-83e7-4136-90ea-47e54ca5dfc3', N'AshCliff Project AshCliff Project AshCliff Project AshCliff Project', N'No test', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02000FF7F5F AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'40160b9f-910a-498e-8d7c-4823166c705d', N'hjhjjkjhjkjkjjj', N'hjhkjhkjhkjkjkjhkj', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02400F71D30 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'6ccc7ea6-2774-40c9-a3fb-48b12ed3c9d3', N'dfgdfgdgfdgfdgf', N'dgfdfgdgfdgfdgfdgf', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02C0122FAE0 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'5143a439-8332-4f62-bf8b-48de17cf11ce', N'TechValens', N'TechValens', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02400F33287 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'89983a6e-7207-42a8-8f7f-4d3ae3a89878', N'cc', N'cc', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000FDCC02 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'6bd70479-702d-491e-8bb2-504c77016e80', N'aass', N'aass', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000DB87B8 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'd4cf96eb-fae9-41e4-925e-5081c31a5f2d', N'dfsa', N'dfsa', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A0240105A3E6 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'5330d773-5be8-4a24-9b1a-54da81cad356', N'a', N'a', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A0270115B95E AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'9a3ce1e0-9199-4b2e-96d7-57352858289c', N'y', N'y', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000EA9698 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'4efae181-3ad3-4229-80ab-57700d455c44', N'This update also resolves someThis update also resolves some', N'This update also resolves someThis update also resolves someThis update also resolves someThis update This update also resolves someThis update also resolves someThis update also resolves someThis update also resolves someThis update also resolves someThis update also resolves somealso resolves someThis update also resolves some', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A06800B3D8E3 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'c5a9089c-ccfd-4de3-9fd5-5836204a89db', N'Hello', N'Hello', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02B00E55A5D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'feea3586-4378-45b3-98b0-58c59e103cc5', N'sandeep', N'modi', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'121308ff-21bb-476c-a607-62f32ff2253a', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02000BE5397 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'697ea589-0b5a-4f40-9ffb-58d7dc2bf77c', N'Project', N'Project', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A0290098805E AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'136a3e3f-ce20-4a8b-991f-59c55211e015', N'yhyhyh', N'yhyhyhyh', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000F0F77F AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'f5191eb2-edcf-428e-be67-5a456e53589f', N'A Google approach to email. ', N'A Google approach to email. ', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02C00B34DE5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'03d02dd5-bde7-4f5e-8ba2-5c736970d27e', N'hello friends, I am AshCliff. How are you today. I am fine here. how was', N'AshCliff', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A020010FB3EC AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'3a31b3df-a2da-4838-a29e-5ee14568ba4f', N'Project', N'Project', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02800EEF222 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'deb1e9d3-5f60-446b-b220-5f5fabd4ad4a', N'sdfdfsdfsdfsd', N'dfsdfsdfsdfs', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A040010926E7 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'f21310b2-eba0-4f04-976a-61b17211ae27', N'fds', N'fsd', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A023011E5018 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'7339ea1f-d8e4-4f14-acff-6c81030237f6', N'gggggggggg', N'gggggggggggggg', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02F00E731E1 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'c23c54c3-81b8-4109-b112-6f9a6e7a3c4f', N'xcxcxc', N'xcvxcvxcv', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'121308ff-21bb-476c-a607-62f32ff2253a', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A0270122737D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'c095acda-e837-401f-a54f-751163ea8c57', N'hello friends, I am AshCliff. How are you today. I am fine here. how.......', N'NO DETAILS', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02200D50A0A AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'4b3844a6-26e1-4c56-ba1a-75ec3f621083', N'rtyretewwerqew', N'rqwerqwrqewrewrewqrew', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A01B00F63B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'1819a997-e153-410e-bac9-7639cb422499', N'http://www.nilzorblog.com/2011/11/using-wf4-as-rule-engine.html ', N'http://www.nilzorblog.com/2011/11/using-wf4-as-rule-engine.html ', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02F00F1CE15 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'00b489a6-7635-40ff-b8ed-776918c22b86', N'sss', N'sss', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000DA6BD8 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'8545fb42-3eb8-4bab-be8a-785606484360', N'Hello', N'Hello', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02700BBA7DA AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'ab2e94f3-56fb-4e6b-9896-79d2746208a5', N'hiiii', N'new alert', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A03800AA1AAA AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'f3b1bc86-eba5-4976-8990-7fa390053201', N'iiiiiiiiiiiiiiiiiiiiiiii', N'iiiiiiiiiiiiiiiiiiiiiii', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A03501406959 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'4a00db87-9a80-40fd-9c95-800ec52706a4', N'hello hello hello', N'helo hello hello', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02400E11849 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'9400f157-d32b-47ce-8c9c-8170dd5ecc73', N'ccc', N'ccc', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000C5D6D3 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'28c64c1e-40de-4576-9218-8430a623a0c5', N'In order to access the system please click on log on link at the right', N'In order to access the system please click on log on link at the right corner of the page.', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02100BDB56E AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'21f9e366-bc4e-4f6d-b44a-8872ab7b9c05', N'ii', N'ii', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000ED1A91 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'7f9b9648-627c-41a7-9e93-89406ede80c8', N'hhh', N'hhh', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02E01513DAB AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'b508e616-e139-413d-9473-91a6beb20e11', N'hhh', N'hhh', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000CF3E70 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'bf63d269-43e5-4900-97b7-91b4a94d1d50', N'H', N'H', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02E00AC2011 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'0a2624ba-0cd5-4c64-9502-95aae9c5117e', N'zzz', N'zzz', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000EA0D50 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'e6ffbb41-72b6-498a-bd3d-95e738cef2bb', N'fff', N'fff', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000E8DBAB AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'0defb381-087c-450b-abaa-a148eb3161d2', N'eee', N'eeee', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02000C8E6AD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'f832d2f5-da55-4d78-8476-a26e8d17623b', N'jdfskjdfksjdfskjdfskklfdsklfkljkldsjfkjkdskfjkdjskfjkdskfkdsfjdkskjfkjkds', N'jsdfajkdsl', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02201132723 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'c023b0c5-a1ec-4b4f-9c34-a2cd9ca457bc', N'c', N'c', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02900C6A258 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'3008609e-304a-44d0-b3fe-a353d3e8374f', N'As you will notice above I have created the following controls', N'As you will notice above I have created the following controls', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02F00F195C7 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'9939965d-60d1-4fa1-a97a-a85c503059c5', N'Google.co.in offered in: Hindi Bengali Telugu Marathi Tamil Gujarati Kannad', N'Google.co.in offered in: Hindi Bengali Telugu Marathi Tamil Gujarati Kannada Malayalam Punjabi', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02F00B7759E AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'c8cc8e9c-cee9-4b36-b3e5-ac108ff956e4', N'111', N'111', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02000E45937 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'b50e8bb0-c5b8-4b2f-a2cd-af5b2e9b76e2', N'(Kindly note Application supports google single sign on Authentication)', N'(Kindly note Application supports google single sign on Authentication)', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02C011FB8C3 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'56d6b642-f043-4272-bf58-af9b95076d27', N'Are', N'Are', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02700BC8BD7 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'b178c9fb-d8e6-4837-9d9a-b1be9c37ddf3', N'Hello AshCLiff', N'Hello AshCLiff', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A03500BD87A9 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'dcb988bd-8f28-43cf-b2a1-b1ffced3eee6', N'zzz', N'zzz', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000EA16D6 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'ccb7b0f6-6384-4824-b2b6-b52b3a38532b', N'Hello Friends', N'No Details for Friends', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A01D010DB9B4 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'0fc12a8d-eff9-4c92-939c-b802523df8fe', N'jdfsk', N'dksfj', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'25ee0ba6-8896-44d2-8e90-46f65461cdce', CAST(0x0000A02000F23C90 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'b4bbf87a-d00b-46a0-a0a5-b84be67d20dc', N'Hi', N'HI', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02700BBF2B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'ad4445e7-33dd-4f8d-94fb-b9b941ae16d9', N'ddd', N'ddd', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000C7B0DC AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'7417fd57-e10f-43dc-aab8-bae7a6b2156a', N'jjjjj', N'jjjjj', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000DCAFC8 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'5f0980f6-28da-4c0e-88fb-bdd5a2cb08c0', N'd', N'd', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02400BF3DE9 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'e92b39f3-8702-4b6b-bb27-bf4c4c72d83b', N'mm', N'mm', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000EBD483 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'd2bb3571-c540-4204-bee2-bf93efd149fd', N'sandeep', N'sandeep', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'121308ff-21bb-476c-a607-62f32ff2253a', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02B013757A3 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'414cbab9-8b8e-4deb-9511-bfa950b2d91c', N'hello hello hello', N'hello hello hello', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'121308ff-21bb-476c-a607-62f32ff2253a', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02400BFCD38 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'0d7bbdfe-7239-4821-8482-c658793fb46a', N'Test', N'Test', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02B00ED874A AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'aca6f3c5-7508-415e-a497-cd088272b74c', N'hello create alert', N'no', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02200D63032 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'8df46f1f-2d76-4d95-865d-d137fc3655cd', N'dsf', N'dfs', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000FBB955 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'0bbb2583-b86e-40ec-a665-d138923f4a9c', N'How', N'How', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02700BC2927 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'7f6f6edd-220a-4eac-8a0b-d40afc0433af', N'Project', N'Project', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02900C4FA10 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f33632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'0a84b73b-18bb-43f7-aebe-d481e6aeb82d', N'a', N'a', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02900C60B71 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'275d5a70-6952-4a20-b477-d543927f7c5f', N'AshCliff Description', N'No Details Available', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A01E00F05F28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'da350270-e184-4d8c-b2f2-d5c7cbd38d87', N'aaa', N'aaa', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000C41FE7 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'b06550ed-61a4-4dc4-934b-da19c813adad', N'Hi', N'Hi', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'121308ff-21bb-476c-a607-62f32ff2253a', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A0240100A854 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'916ba0bd-f678-4678-81ed-dd70240cb40e', N'is on Facebook. To connect with FS, sign up f', N'is on Facebook. To connect with FS, sign up f', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A03F00EB17B5 AS DateTime), N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'4915c776-557d-4a77-bab7-e0ab27237b0f', N'procedure when this event occurs, set the OnClick property to the', N'procedure when this event occurs, set the OnClick property to the', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02C0120BEEC AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'fbe52033-cd50-405b-9c53-e438951521f9', N'ddd', N'dddd', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000CCF2B4 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'bb39e8fb-3dd8-4845-a191-e8b0b0939bdd', N'Project Ashcliff', N'Ashcliff Project', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02B00AF7092 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'e6809b82-a92c-4bc0-9db0-e8b34bbf2392', N'FS, fS, and fs may refer to: Contents. 1 Computing & technology; 2 Science', N'FS, fS, and fs may refer to: Contents. 1 Computing & technology; 2 Science and ', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A03F00EB5FC1 AS DateTime), N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'8857d432-9268-447e-9efc-e9d6f625387c', N'bbb', N'bbb', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000BFCADB AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'cebdb28f-b266-4094-a147-eb7f6c23d63b', N'testingtestingtestingtestingtestingtesting', N'testingtestingtestingtestingtesting', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02B00EC74C8 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'02f9da4f-df97-42d2-8c96-ef4c3ab6af2c', N'You', N'You', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02700BD0896 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'84d58dd1-86d7-4521-9e29-f00ad34698ab', N'r', N'r', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'0443d354-a269-41f5-bfa6-3f813b61fa41', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02400BDDF62 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'01712bad-fddf-430f-8efb-f0131bae288f', N'No', N'No', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'121308ff-21bb-476c-a607-62f32ff2253a', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A01F00F15FCC AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'34de9f9f-9384-45b5-a301-f102e0985974', N'No Info', N'Information', N'5ec5f1ad-2b79-4a90-83ab-e9da38ae459a', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'5da772b3-62d9-423b-a7b7-947eefc9a590', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000BD0CD6 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'b8e35515-3472-4276-a03a-f1541cf70f6a', N'Crezy', N'Crezy', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'b657fe15-7c85-44f3-844d-136a52bfe5a7', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02600BD7EF0 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'3ffdf6da-676e-4140-8bbb-f213f3064902', N'hjjjj', N'jjjj', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000D0B0BB AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
GO
print 'Processed 100 total records'
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'596ff1a0-ca77-4073-8181-f34a9b65f47f', N'zzz', N'zzz', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000E2D57B AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'cd87ee30-86e7-416c-80b5-f547529899ef', N'gg', N'gg', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'bc2dbd28-ef99-4c78-8385-7bb5928a8e93', N'3c61165c-5e6e-411d-afb8-5a9f2f04de35', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02000E68129 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
INSERT [dbo].[Alert] ([AlertId], [Description], [Details], [ModuleId], [CompanyId], [SeverityId], [ScopeId], [CommunicationModeId], [CreatedDate], [AssignedBy]) VALUES (N'f6ee55a2-d33c-4cb7-af0e-fba15156051e', N'NO INFO', N'NO INFO', N'ce697f8b-0112-4691-bb7e-d6a6b6a7326d', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', N'9e37eb1e-9286-4be3-8cc0-25cee48dab20', N'bd82e6ea-9729-444b-a511-05e78a602aa1', N'011ae0da-9e78-45e8-a5ce-13228da3a996', CAST(0x0000A02400F52B00 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08')
/****** Object:  Table [dbo].[CompanyTollgateTemplate]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTollgateTemplate](
	[CompanyTollgateTemplateId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[TotalNoOfTollgateTemplates] [int] NOT NULL,
	[IsRequiredApproval] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CompanyTollgateTemplate] PRIMARY KEY CLUSTERED 
(
	[CompanyTollgateTemplateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CompanyTollgateTemplate] ([CompanyTollgateTemplateId], [CompanyId], [TotalNoOfTollgateTemplates], [IsRequiredApproval], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'dabdd668-6130-4fa4-9aa3-bc3780737c3c', 8, 0, CAST(0x0000A09E002F5282 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[CompanyTollgateTemplate] ([CompanyTollgateTemplateId], [CompanyId], [TotalNoOfTollgateTemplates], [IsRequiredApproval], [CreatedDate], [CreatedBy], [IsActive]) VALUES (N'581db4f2-1099-41ce-a403-272ec9a46c0a', N'5ea1c33e-ad24-4fe7-98f2-fefc51edb497', 2, 0, CAST(0x0000A0A5017FFC64 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
/****** Object:  Table [dbo].[AlertRelatedItem]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlertRelatedItem](
	[AlertRelatedItemId] [uniqueidentifier] NOT NULL,
	[AlertId] [uniqueidentifier] NULL,
	[RelatedItemId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AlertItemDetail] PRIMARY KEY CLUSTERED 
(
	[AlertRelatedItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'be7fc483-c418-4cbe-890f-031e04a2b371', N'00b489a6-7635-40ff-b8ed-776918c22b86', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'1fa9b4ee-fd26-4a36-9081-04b6ebe443fd', N'e6809b82-a92c-4bc0-9db0-e8b34bbf2392', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'898dce13-0741-4139-a9a1-05496f92d86b', N'd4cf96eb-fae9-41e4-925e-5081c31a5f2d', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'ab0bb8d3-1b54-4c46-a140-082ccf08bf52', N'b50e8bb0-c5b8-4b2f-a2cd-af5b2e9b76e2', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'0147819e-c62b-4de2-a14d-0aa3297cefc8', N'84d58dd1-86d7-4521-9e29-f00ad34698ab', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'89517095-e5cc-43f0-a375-0ae1f3eaca1f', N'f3b1bc86-eba5-4976-8990-7fa390053201', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'98808069-79a1-4f16-96aa-0c4dea0b9a3e', N'f832d2f5-da55-4d78-8476-a26e8d17623b', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'1cb2e2d1-76ca-48b9-a55c-0c749e46211e', N'b178c9fb-d8e6-4837-9d9a-b1be9c37ddf3', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'faa7f374-ed52-4881-8b3e-0da61b90e89c', N'0d7bbdfe-7239-4821-8482-c658793fb46a', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'447b8a7d-e763-4dac-be13-0f0198804e66', N'1819a997-e153-410e-bac9-7639cb422499', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'8fcdd0f2-dc3e-45cc-a87e-10923ade9d8c', N'4f2447a2-8b57-4a32-88bc-1f927fff3036', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'46ccf874-87a8-4c42-9348-1888ec9d56fa', N'136a3e3f-ce20-4a8b-991f-59c55211e015', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'e2c7e698-1aba-402a-84bc-18f8f55b55c7', N'1819a997-e153-410e-bac9-7639cb422499', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'b8b85104-083d-44be-b406-1cc50f8c0fc2', N'0fc12a8d-eff9-4c92-939c-b802523df8fe', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'fc2b99bc-478e-4fbf-8a0f-1dbd5dc073cb', N'9939965d-60d1-4fa1-a97a-a85c503059c5', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'acf54529-3967-4d07-bcdf-1deca34949ba', N'03d02dd5-bde7-4f5e-8ba2-5c736970d27e', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'b7f1278a-16a7-46c1-927c-1f8fa4d89066', N'e92b39f3-8702-4b6b-bb27-bf4c4c72d83b', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'16b81e68-9037-4444-bc77-209155db0619', N'55b34bcd-cf34-4a58-9422-058e50a6446a', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'80aac62f-a9bf-4e4f-ba3e-2145cd1ee80f', N'c8cc8e9c-cee9-4b36-b3e5-ac108ff956e4', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'823bb5ba-8f62-4b8c-8662-24cdb939c0dc', N'7339ea1f-d8e4-4f14-acff-6c81030237f6', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'31bae7e0-3a64-430a-9d6d-26b1b5c519c0', N'7f6f6edd-220a-4eac-8a0b-d40afc0433af', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'93005e80-ed8e-4a1f-8e1a-2702d0b729a9', N'5f0980f6-28da-4c0e-88fb-bdd5a2cb08c0', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'cbf41b38-8e9b-4bdc-af22-2efa9af287d1', N'ad4445e7-33dd-4f8d-94fb-b9b941ae16d9', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'5222b20a-bbb1-41dd-812e-31177d2a0958', N'0d7bbdfe-7239-4821-8482-c658793fb46a', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'08ee7205-2b47-49da-a614-3144c72501be', N'3008609e-304a-44d0-b3fe-a353d3e8374f', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'a7ed4043-2e6d-49d0-abb3-33634aa50722', N'4cfc7622-198c-4eca-a3e6-2c31ceb4b0a8', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'83c183a5-9773-4e7a-9a7f-3490bf755fe1', N'b06550ed-61a4-4dc4-934b-da19c813adad', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'2405c605-f2f4-4fda-bab0-3764787ca997', N'bf63d269-43e5-4900-97b7-91b4a94d1d50', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'65b34e85-e371-4e75-9922-37930fd75c31', N'c8525fc6-e6af-4e07-b197-43230bd2f454', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'447f8e79-4d09-4894-affd-3980e4a2d280', N'4915c776-557d-4a77-bab7-e0ab27237b0f', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'69ac3246-ce89-4edb-abd7-3b8773cc06b2', N'c5a9089c-ccfd-4de3-9fd5-5836204a89db', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'58941e9d-744e-4b49-8dce-3bf866a3625d', N'd2bb3571-c540-4204-bee2-bf93efd149fd', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'408e817e-9adf-43f5-9273-3ccca32975f1', N'55b34bcd-cf34-4a58-9422-058e50a6446a', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'07cea3ec-43c8-4a95-9980-3e58f7b9470f', N'72d6e892-a7d6-4606-a1a0-1bd7d5e5b56f', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'b017dbc2-38a2-4021-99f2-3f2cd8d836a1', N'4915c776-557d-4a77-bab7-e0ab27237b0f', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'7f6e8da5-ec6d-42e6-973e-3fb05f5f97f6', N'7339ea1f-d8e4-4f14-acff-6c81030237f6', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'd4380998-3870-4248-9964-4077269b9efa', N'7339ea1f-d8e4-4f14-acff-6c81030237f6', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'1f3dd3ca-7f35-4fab-8718-425290db61b8', N'c095acda-e837-401f-a54f-751163ea8c57', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'c1619ad5-27e7-49c6-a29a-43108a1c6887', N'596ff1a0-ca77-4073-8181-f34a9b65f47f', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'4f7c3815-8f34-40c0-a545-46dd7fb73b51', N'c5a9089c-ccfd-4de3-9fd5-5836204a89db', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'c1116f44-be00-44a4-a524-49819dc90e8c', N'0d7bbdfe-7239-4821-8482-c658793fb46a', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'92c06a31-24ff-42b9-b117-4ada81e6bf57', N'8df46f1f-2d76-4d95-865d-d137fc3655cd', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'b116f9e2-9ab3-48de-844d-4b89c0b00198', N'd2bb3571-c540-4204-bee2-bf93efd149fd', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'e2e245c6-e34f-4572-acab-4ca42951d0d9', N'f21310b2-eba0-4f04-976a-61b17211ae27', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'e7feff45-04ba-4fe0-9bff-4cdbbaf866a3', N'b50e8bb0-c5b8-4b2f-a2cd-af5b2e9b76e2', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'd068350b-9bed-4eb4-960c-4d65855751d9', N'ccb7b0f6-6384-4824-b2b6-b52b3a38532b', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'1b37bdff-a1b3-408a-8582-4d660edd27ca', N'28ef280c-d6a7-44e0-8fa1-36c8ae6056e2', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'6f6bb4a8-7fb0-427a-ac24-4eba2418d266', N'0d7bbdfe-7239-4821-8482-c658793fb46a', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'73e1546b-687d-4bfd-ba44-4f6a43b12178', N'c23c54c3-81b8-4109-b112-6f9a6e7a3c4f', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'5b11dd37-2876-46c3-8a98-512611037b94', N'4efae181-3ad3-4229-80ab-57700d455c44', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'93245182-388c-4728-9b26-53c18c015c82', N'55b34bcd-cf34-4a58-9422-058e50a6446a', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'531a7190-2c29-4852-92c1-53fb59b547e4', N'd2bb3571-c540-4204-bee2-bf93efd149fd', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'b0747ea2-9b34-40a7-b052-5520fde20a12', N'5330d773-5be8-4a24-9b1a-54da81cad356', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'8e75e07a-518d-46a0-b56a-5523ea3a609a', N'81ce0bdc-c35f-4b51-ba62-3cbccab76e8f', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'cfa4dc56-9d38-4f50-be61-55e08446590d', N'285d502b-fccf-442a-b9a7-2249dced4fbf', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'4cd7d80c-659c-4d4a-a187-5767a471a435', N'b50e8bb0-c5b8-4b2f-a2cd-af5b2e9b76e2', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'b3d37686-da47-4694-bfa3-581f25b8e84d', N'6bd70479-702d-491e-8bb2-504c77016e80', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'e3c77408-fe5d-426c-bc70-5a2e5e0e8c43', N'b4bbf87a-d00b-46a0-a0a5-b84be67d20dc', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'fa9effcb-6a30-4886-9d5c-5ab9e115e749', N'cd87ee30-86e7-416c-80b5-f547529899ef', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'7ac24a4c-742e-4589-b53f-5b1013e52b2b', N'1a506e43-0954-4545-98bc-1bd1dd5c364a', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'102bbbc6-75ef-40c8-85eb-5c6fd6587221', N'21f9e366-bc4e-4f6d-b44a-8872ab7b9c05', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'66d8b565-67d5-4f3f-8b31-5ee31ce0da1e', N'697ea589-0b5a-4f40-9ffb-58d7dc2bf77c', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'87520e66-c208-4506-b25b-60bd0364f047', N'd2bb3571-c540-4204-bee2-bf93efd149fd', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'da264779-e414-4c48-afd3-61d9038f88a4', N'2cd168cc-9435-4bdd-894d-2e2f5a7b7519', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'089a323e-26d6-4a46-8c4f-633a14e29042', N'e6809b82-a92c-4bc0-9db0-e8b34bbf2392', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'a5131200-16f5-4b30-b8fe-689ce531c97e', N'fbe52033-cd50-405b-9c53-e438951521f9', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'a0a3a5e7-7909-4331-ba12-6f0a07835e70', N'cebdb28f-b266-4094-a147-eb7f6c23d63b', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'f57df88f-0f1b-4341-b401-71136260ba41', N'aaa6b542-7610-4fa6-8af5-423c6555946a', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'68f1b8b6-1959-47a4-964e-7264491341df', N'f5191eb2-edcf-428e-be67-5a456e53589f', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'641764c7-a146-4b74-9c7b-72f2b36c10d2', N'b248e2e2-d65e-4796-9ad7-2566cd5a5a83', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'd212240f-4103-4cd4-85b0-74942a064232', N'89983a6e-7207-42a8-8f7f-4d3ae3a89878', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'ee783c71-d914-47b9-834f-7633269be1bf', N'62d928c8-5403-419c-89c9-1ff1147a2e3e', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'21c2aa43-76d2-4022-9102-768ba519606e', N'4cfc7622-198c-4eca-a3e6-2c31ceb4b0a8', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'd1a8c46f-4cec-4b71-9b0b-79acebcac214', N'f5191eb2-edcf-428e-be67-5a456e53589f', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'20c163df-3a13-402b-b2d4-7afc036cfe93', N'feea3586-4378-45b3-98b0-58c59e103cc5', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'c6ce50ec-bcb0-4f14-9332-7b688c542ae2', N'62d928c8-5403-419c-89c9-1ff1147a2e3e', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'dbfb596a-3124-4630-95aa-7ba0bf257643', N'f3b1bc86-eba5-4976-8990-7fa390053201', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'b7be139a-abe3-40da-a07a-7c376ba75dc6', N'9939965d-60d1-4fa1-a97a-a85c503059c5', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'f7c5381a-ee27-4dba-981e-7ce94e982f20', N'ab2e94f3-56fb-4e6b-9896-79d2746208a5', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'9d5b09d6-3019-4e00-90f8-83ab20e571b2', N'81bff8fe-624f-42e9-8331-0e69a2537de3', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'92007379-d98c-429d-8a31-84f2055ade9d', N'02f9da4f-df97-42d2-8c96-ef4c3ab6af2c', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'ed881aa1-4092-4898-848e-8760bc2ca81e', N'f56fc022-f4ef-48b9-a381-244d825e4f1e', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'40113975-a9e4-4866-a91d-89aece903566', N'e6ffbb41-72b6-498a-bd3d-95e738cef2bb', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'2c88c8e8-c115-4d1e-be16-8f9f11922bd7', N'b508e616-e139-413d-9473-91a6beb20e11', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'bb0fdf5a-85b2-4165-8ad8-9255a1fc4f25', N'2cd168cc-9435-4bdd-894d-2e2f5a7b7519', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'09beec19-375d-4cc9-9d73-931022f1e9b1', N'34de9f9f-9384-45b5-a301-f102e0985974', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'8ce0392d-8981-4b97-965a-93e06a7aa4f9', N'3008609e-304a-44d0-b3fe-a353d3e8374f', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'76ef5410-1abc-4187-896d-9400796445ba', N'bb39e8fb-3dd8-4845-a191-e8b0b0939bdd', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'1384b111-3439-41f8-be1c-96d27f1d49ca', N'285d502b-fccf-442a-b9a7-2249dced4fbf', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'e1ad57ac-4681-41c7-a66b-9813f668ab5b', N'916ba0bd-f678-4678-81ed-dd70240cb40e', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'2e59573f-81e9-467f-8bd1-9cae09bf4761', N'28c64c1e-40de-4576-9218-8430a623a0c5', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'a27750c3-9355-4b37-b691-9cb6e68eee32', N'285d502b-fccf-442a-b9a7-2249dced4fbf', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'1594874b-2692-4c64-8884-9d067214484f', N'9400f157-d32b-47ce-8c9c-8170dd5ecc73', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'fecee9c8-3068-4331-8c77-a0e26b655929', N'7f9b9648-627c-41a7-9e93-89406ede80c8', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'7c85921e-d07a-4c91-b201-a36cdd56ec3a', N'c9b0049f-043a-442c-b086-441a4da04455', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'2b940a29-08ff-4e79-aa9a-a4de946e33e6', N'603d4c93-a661-4755-be52-37306cb47659', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'8eab4a60-78d5-4001-a7a4-a5c2551eb3b3', N'8545fb42-3eb8-4bab-be8a-785606484360', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'5d1d5d68-7249-4f88-bcdb-a7864567b896', N'7417fd57-e10f-43dc-aab8-bae7a6b2156a', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'cf2f911a-3ade-49ea-bd02-a87f7b613d26', N'0a2624ba-0cd5-4c64-9502-95aae9c5117e', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'42af14ec-7f2e-402e-bc93-a9dfc29f0397', N'56259a1c-c41d-40b6-9cf5-0851f374a484', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'9bed4a9d-2af4-4ccf-8bc8-aaee84a4db73', N'b8e35515-3472-4276-a03a-f1541cf70f6a', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
GO
print 'Processed 100 total records'
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'c8ebcd27-c9a3-4055-b3a6-ad47195c0747', N'deb1e9d3-5f60-446b-b220-5f5fabd4ad4a', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'e0690cbb-e6fc-4d22-aaa0-ad8cee76f74f', N'8857d432-9268-447e-9efc-e9d6f625387c', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'595ef1a5-2ed4-4d8a-abfd-ade7d48100c7', N'01712bad-fddf-430f-8efb-f0131bae288f', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'cafbff7b-8c68-4f9c-82e6-ae0d2a1ef324', N'b178c9fb-d8e6-4837-9d9a-b1be9c37ddf3', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'329b71e9-cfd7-4dc9-a04d-afdcbdea876e', N'bf98095c-496e-40a2-87f1-1a0b93ebe926', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'38ff7b40-02cf-4562-9616-b52952777f17', N'da350270-e184-4d8c-b2f2-d5c7cbd38d87', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'c1c8d1cd-9cd0-4bb5-bedf-b5e1ccb2009c', N'7f9b9648-627c-41a7-9e93-89406ede80c8', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'224e8a02-434c-46ad-9ead-b7cc908c75ab', N'7f9b9648-627c-41a7-9e93-89406ede80c8', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'443c9c4f-fb00-4d91-8acd-b9227b818aed', N'bb39e8fb-3dd8-4845-a191-e8b0b0939bdd', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'c0c1c110-3d43-47de-8a5a-bd2b3d69f896', N'3008609e-304a-44d0-b3fe-a353d3e8374f', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'f4e2560c-c3c1-4a3d-9a77-c2ebc2c29b92', N'3ffdf6da-676e-4140-8bbb-f213f3064902', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'dc407984-2144-45a4-b99c-c6bdff25387c', N'1819a997-e153-410e-bac9-7639cb422499', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'cfb60c0d-8050-4219-aca1-c6d1cc562d19', N'4b3844a6-26e1-4c56-ba1a-75ec3f621083', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'954ee209-7a57-4604-8332-c819a4f70a25', N'4915c776-557d-4a77-bab7-e0ab27237b0f', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'0ddda82c-c136-4b17-84cd-c81f4888cb61', N'414cbab9-8b8e-4deb-9511-bfa950b2d91c', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'e15360ff-1775-4afc-ae35-c8c478661428', N'81ce0bdc-c35f-4b51-ba62-3cbccab76e8f', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'dbb89156-a9b7-4c20-91aa-c99ede269d6e', N'6ccc7ea6-2774-40c9-a3fb-48b12ed3c9d3', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'2ac5d9c5-178b-4092-a3e8-c9f8cac58e84', N'55b34bcd-cf34-4a58-9422-058e50a6446a', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'54b1af67-a25d-4089-89fb-ca5a68547a12', N'9a3ce1e0-9199-4b2e-96d7-57352858289c', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'596f0af0-6679-473b-86ae-cad29f66183e', N'bf63d269-43e5-4900-97b7-91b4a94d1d50', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'cd885043-4a74-4ae6-ae75-cbb2aa8acce3', N'916ba0bd-f678-4678-81ed-dd70240cb40e', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'cd1832f8-bc32-401b-86af-ce3ed3894f23', N'bb39e8fb-3dd8-4845-a191-e8b0b0939bdd', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'c6f3492d-7e16-457b-a0ab-ce912b2f499c', N'62d928c8-5403-419c-89c9-1ff1147a2e3e', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'f6125ff3-140d-4f26-b24a-cf8da9f690fa', N'9939965d-60d1-4fa1-a97a-a85c503059c5', N'fc5790d9-09a6-4ab5-98fd-82d8c1ac0c13')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'844b1110-4edd-4f89-acd9-cfa997ff1ad1', N'5143a439-8332-4f62-bf8b-48de17cf11ce', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'b2c77948-2707-4f64-8f2e-d0ed3cf079dd', N'1143724e-75ff-4699-8709-3cb56f32fabd', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'9961914c-e5dd-4ae4-ae32-d113a297a25f', N'f5191eb2-edcf-428e-be67-5a456e53589f', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'6324a60a-8f99-4fe6-af50-dfeef7e9d462', N'0a66958f-31bb-4066-b608-15209f37239a', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'6ff46c07-9801-4b17-9694-e18fea07ecac', N'40160b9f-910a-498e-8d7c-4823166c705d', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'c6d3445a-bf38-48db-8b8d-e365708d5b6b', N'275d5a70-6952-4a20-b477-d543927f7c5f', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'1ea4f547-b1f7-48b5-98b1-e4140dcc25b0', N'9939965d-60d1-4fa1-a97a-a85c503059c5', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'de1fa4b8-6848-494f-97c3-e439a43d54fc', N'7339ea1f-d8e4-4f14-acff-6c81030237f6', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'14e13cdd-5005-46a5-af33-e853f4547946', N'0a84b73b-18bb-43f7-aebe-d481e6aeb82d', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'f3c5be2f-b41d-4836-beee-e85e1cb26224', N'6ccc7ea6-2774-40c9-a3fb-48b12ed3c9d3', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'c6e8683e-431e-4048-ab45-e87b91367de4', N'3a31b3df-a2da-4838-a29e-5ee14568ba4f', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'fc365cc3-b50f-4910-af50-eaff74b6177c', N'c5a9089c-ccfd-4de3-9fd5-5836204a89db', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'ea5c7365-ad30-4a88-80af-eb22e0a8cfe5', N'3008609e-304a-44d0-b3fe-a353d3e8374f', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'68de0095-b078-4b4d-8829-ebc5aaf96f95', N'02eededa-83e7-4136-90ea-47e54ca5dfc3', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'5363ddc5-f735-4561-b931-ec3b93b10e34', N'0defb381-087c-450b-abaa-a148eb3161d2', N'46bf18e5-34cb-4329-a3f2-08f4c9787953')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'f38c691e-9903-47c9-8362-eebe34bab0f5', N'b50e8bb0-c5b8-4b2f-a2cd-af5b2e9b76e2', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'270adffa-4cc4-4601-92a1-efd3e5fa165a', N'aca6f3c5-7508-415e-a497-cd088272b74c', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'7615ed9f-dd1b-4516-9577-f1fbf95fec83', N'56d6b642-f043-4272-bf58-af9b95076d27', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'46c81781-d09a-4d01-9a65-f3110810b72d', N'2049ad32-4695-4a31-bf79-3b502fcddf3c', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'f7b9bfb6-c96e-4145-9cd6-f31167708639', N'0bbb2583-b86e-40ec-a665-d138923f4a9c', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'93c07e07-ddc3-42be-85f9-f4ee0fe53ab7', N'4f2447a2-8b57-4a32-88bc-1f927fff3036', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'6d3c7fb1-52e5-46f4-8ac9-f646124d34c2', N'1819a997-e153-410e-bac9-7639cb422499', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'b6e71ede-d2a7-45ba-89a4-f721c1c11737', N'c023b0c5-a1ec-4b4f-9c34-a2cd9ca457bc', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'873b2ea8-60cd-46b9-98a1-f76549ff2580', N'603d4c93-a661-4755-be52-37306cb47659', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'76efed60-44f9-465d-8bb2-f81ce0770154', N'bf63d269-43e5-4900-97b7-91b4a94d1d50', N'3f28522e-f96f-47cd-a9bc-a0033cdb4f79')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'88201cf3-7014-4ad2-8b2c-fa4c403d2e97', N'f6ee55a2-d33c-4cb7-af0e-fba15156051e', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'a255e8cd-0bed-46e6-b84a-ff3df4468df3', N'dcb988bd-8f28-43cf-b2a1-b1ffced3eee6', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
INSERT [dbo].[AlertRelatedItem] ([AlertRelatedItemId], [AlertId], [RelatedItemId]) VALUES (N'd15d260e-772c-4089-bf31-ff7a9d4e00f0', N'4a00db87-9a80-40fd-9c95-800ec52706a4', N'42e445ac-0ff4-40e6-8e81-048f82d1f015')
/****** Object:  Table [dbo].[AlertInstance]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlertInstance](
	[AlertInstanceId] [uniqueidentifier] NOT NULL,
	[AlertId] [uniqueidentifier] NOT NULL,
	[AlertTemplateId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AlertInstance] PRIMARY KEY CLUSTERED 
(
	[AlertInstanceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlertAssignment]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlertAssignment](
	[AlertAssignmentId] [uniqueidentifier] NOT NULL,
	[AlertId] [uniqueidentifier] NOT NULL,
	[AssignedTo] [uniqueidentifier] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[ReadOn] [datetime] NULL,
 CONSTRAINT [PK_AlertAssignmentDetail] PRIMARY KEY CLUSTERED 
(
	[AlertAssignmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'0f0036a3-7d53-48bd-ac2c-0e0b4fb1c849', N'916ba0bd-f678-4678-81ed-dd70240cb40e', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 1, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'2843015b-b16d-4fd1-bec7-10fcddf020f9', N'603d4c93-a661-4755-be52-37306cb47659', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 1, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'371e7980-703e-450e-8c8e-160ddea996c8', N'9939965d-60d1-4fa1-a97a-a85c503059c5', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 1, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'c27d98c7-1c5a-40bc-96ca-19e9e0fe75d7', N'9400f157-d32b-47ce-8c9c-8170dd5ecc73', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'b9cf314c-2140-416c-a1b3-1e7083c6d61a', N'275d5a70-6952-4a20-b477-d543927f7c5f', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'9e1605b2-4678-4afc-b33b-244deca0eab4', N'bf63d269-43e5-4900-97b7-91b4a94d1d50', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'14002301-d443-4f20-b930-319b481c6fcf', N'deb1e9d3-5f60-446b-b220-5f5fabd4ad4a', N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'129bc45c-3713-441c-aaa6-3a175b955a6c', N'55b34bcd-cf34-4a58-9422-058e50a6446a', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'5ac8b290-3233-4bd5-9fcf-3a8244783de6', N'01712bad-fddf-430f-8efb-f0131bae288f', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'06defe34-1d2b-4815-ab47-3e14047e8fc0', N'55b34bcd-cf34-4a58-9422-058e50a6446a', N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'f8e77865-77a5-421b-adeb-401f929be019', N'72d6e892-a7d6-4606-a1a0-1bd7d5e5b56f', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'c60bc724-8103-430f-a4ad-403c9c4a1822', N'4b3844a6-26e1-4c56-ba1a-75ec3f621083', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'e5b34292-5bb5-4a51-9580-47c2bc1d74f3', N'da350270-e184-4d8c-b2f2-d5c7cbd38d87', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'166bf4d6-11e8-4659-8165-4831fcb98f8d', N'1819a997-e153-410e-bac9-7639cb422499', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'64ffd3bb-4bff-41e5-b41b-48b0846eca13', N'e6809b82-a92c-4bc0-9db0-e8b34bbf2392', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'7b8c7056-2a0e-4dd8-a35e-4eb02a93490b', N'b178c9fb-d8e6-4837-9d9a-b1be9c37ddf3', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'390cf132-0017-4718-88af-56be5da09ae6', N'62d928c8-5403-419c-89c9-1ff1147a2e3e', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'd32bafd8-917f-4efc-873c-579d1ca26261', N'4cfc7622-198c-4eca-a3e6-2c31ceb4b0a8', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'f612c29e-0fb0-4831-a50a-57cfd965c2fb', N'b248e2e2-d65e-4796-9ad7-2566cd5a5a83', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'e57cb4df-d77d-45a1-9cf7-580490635c3b', N'f3b1bc86-eba5-4976-8990-7fa390053201', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'b1e09df3-856a-466e-ba8e-5cef82eb0319', N'4f2447a2-8b57-4a32-88bc-1f927fff3036', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'd7cd699f-608f-46db-9047-61e48fdffbaf', N'7f9b9648-627c-41a7-9e93-89406ede80c8', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'fe368a97-8194-4ef9-813f-644ad1e7975a', N'2cd168cc-9435-4bdd-894d-2e2f5a7b7519', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'2520ad6d-60ec-4651-bc41-71edbf148f83', N'916ba0bd-f678-4678-81ed-dd70240cb40e', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'363ca799-a2ee-4901-a7ab-7394d24dd79b', N'4cfc7622-198c-4eca-a3e6-2c31ceb4b0a8', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'e4921108-348a-464e-b1dd-7df6e381335d', N'f3b1bc86-eba5-4976-8990-7fa390053201', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'73124395-be32-4798-9aa7-7f5c6a668868', N'feea3586-4378-45b3-98b0-58c59e103cc5', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'524b1dc4-0853-4046-9687-81788aef5160', N'3008609e-304a-44d0-b3fe-a353d3e8374f', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'400461ba-5ed9-4dbb-9105-85e00714340d', N'ccb7b0f6-6384-4824-b2b6-b52b3a38532b', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'9a99113a-19c3-42ac-b234-8adee13f48b9', N'72d6e892-a7d6-4606-a1a0-1bd7d5e5b56f', N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'eb7f018e-3a4f-42f6-a257-939c7e94c606', N'916ba0bd-f678-4678-81ed-dd70240cb40e', N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'8ff597ec-6502-474a-805e-9951419140a0', N'0a66958f-31bb-4066-b608-15209f37239a', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'334f075a-e82e-4210-bca0-9e830b3f0218', N'deb1e9d3-5f60-446b-b220-5f5fabd4ad4a', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'bde160bb-1eae-463b-b627-a73869678334', N'e6809b82-a92c-4bc0-9db0-e8b34bbf2392', N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'2fa97a61-f03f-46fa-966c-aa9d8bd571cf', N'136a3e3f-ce20-4a8b-991f-59c55211e015', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'5fe58110-b208-4892-901a-aefbc083d881', N'4f2447a2-8b57-4a32-88bc-1f927fff3036', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'02426431-e060-4650-905e-b55100116331', N'7417fd57-e10f-43dc-aab8-bae7a6b2156a', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'1b5bf20f-ca40-4b9a-b3db-b97e45e015a9', N'596ff1a0-ca77-4073-8181-f34a9b65f47f', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'a06927d0-95f9-439f-bfc0-be0f92daa4ea', N'603d4c93-a661-4755-be52-37306cb47659', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'e8a5b4dd-3014-4d7a-b3e5-d9214073519b', N'285d502b-fccf-442a-b9a7-2249dced4fbf', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'36f2abc0-ff4d-48c3-9e7d-da9ec44fa5dd', N'7339ea1f-d8e4-4f14-acff-6c81030237f6', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'541ca1a2-9862-47dc-ade6-dcdd29836fb4', N'e6809b82-a92c-4bc0-9db0-e8b34bbf2392', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'af6b68ab-6c07-4a6f-a1f1-e9afc0d83171', N'72d6e892-a7d6-4606-a1a0-1bd7d5e5b56f', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'ea7005d1-0ff5-4424-a985-eb0a5db0d468', N'4efae181-3ad3-4229-80ab-57700d455c44', N'8ecccfd5-b62b-40d0-abb2-22403ec3ef41', 1, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'8874b2c5-8f63-42c2-b6e5-f3fc71121abf', N'6bd70479-702d-491e-8bb2-504c77016e80', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'98e6ee97-4cbf-4f9e-b5a8-f785046fd69b', N'b178c9fb-d8e6-4837-9d9a-b1be9c37ddf3', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'47a51cf1-f05a-4201-b6a0-f85e508cbb24', N'bb39e8fb-3dd8-4845-a191-e8b0b0939bdd', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'c518b1b1-e5ae-4dff-8262-f8b04f8b15f7', N'b50e8bb0-c5b8-4b2f-a2cd-af5b2e9b76e2', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
INSERT [dbo].[AlertAssignment] ([AlertAssignmentId], [AlertId], [AssignedTo], [IsRead], [ReadOn]) VALUES (N'eb4e4d0b-3863-4d96-9e6e-ff6e85e04bc7', N'0d7bbdfe-7239-4821-8482-c658793fb46a', N'f35918a7-b5c4-49e8-a76a-f33632bb2d08', 0, NULL)
/****** Object:  Table [dbo].[CompanyTemplateTollgate]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTemplateTollgate](
	[CompanyTemplateId] [uniqueidentifier] NOT NULL,
	[TollgateTemplateId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CompanyTemplateTollgate] PRIMARY KEY CLUSTERED 
(
	[TollgateTemplateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CompanyTemplateTollgate] ([CompanyTemplateId], [TollgateTemplateId]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'835a8e04-c6b3-48b6-bf1c-0e714a3a7f47')
INSERT [dbo].[CompanyTemplateTollgate] ([CompanyTemplateId], [TollgateTemplateId]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'b0151450-8cd6-4007-aff0-1a24377ed81a')
INSERT [dbo].[CompanyTemplateTollgate] ([CompanyTemplateId], [TollgateTemplateId]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'912d3ff6-4630-42fb-a6c7-23df8b64e6f2')
INSERT [dbo].[CompanyTemplateTollgate] ([CompanyTemplateId], [TollgateTemplateId]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'8e930357-c771-4bbf-b480-37f5170a907d')
INSERT [dbo].[CompanyTemplateTollgate] ([CompanyTemplateId], [TollgateTemplateId]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'a547055b-c655-4b9e-9e47-649a494c2032')
INSERT [dbo].[CompanyTemplateTollgate] ([CompanyTemplateId], [TollgateTemplateId]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'73e38cca-66db-4b54-86b4-9e91b7ef3cad')
INSERT [dbo].[CompanyTemplateTollgate] ([CompanyTemplateId], [TollgateTemplateId]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'070a9b6b-4445-487c-a59c-a79f3dba49bf')
INSERT [dbo].[CompanyTemplateTollgate] ([CompanyTemplateId], [TollgateTemplateId]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'554d1141-69ca-4b4d-ab0a-b4b32a17b3ae')
INSERT [dbo].[CompanyTemplateTollgate] ([CompanyTemplateId], [TollgateTemplateId]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'191a2e31-68a6-49c3-a8a2-c8f6357767fb')
INSERT [dbo].[CompanyTemplateTollgate] ([CompanyTemplateId], [TollgateTemplateId]) VALUES (N'58895caf-b515-4b8d-a5d9-142a1e94dbbf', N'ab75cf83-455f-43ab-9a90-e5288a2e8e86')
/****** Object:  Table [dbo].[Deliverable]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deliverable](
	[DeliverableId] [uniqueidentifier] NOT NULL,
	[ProjectTollgateId] [uniqueidentifier] NOT NULL,
	[DeliverableTemplateId] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[Status] [uniqueidentifier] NOT NULL,
	[CompletionDate] [datetime] NOT NULL,
	[CompletedBy] [uniqueidentifier] NOT NULL,
	[RelatedItemsId] [uniqueidentifier] NOT NULL,
	[NotesReasonID] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[DeliverableNumber] [int] NOT NULL,
	[ProjectId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DeliverableTable] PRIMARY KEY CLUSTERED 
(
	[DeliverableId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'e34c330b-fded-49b8-81f2-04fbeae668ab', N'348ccfcc-b11e-4643-8bd9-fa51d84ab878', N'984a2571-4f2b-4265-8af3-300cb6837448', CAST(0x0000A0C80189E967 AS DateTime), N'51dda701-247a-4a40-b27a-7e16fe1df365', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E967 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'250bb2d1-5ee0-46ea-a788-0ae114c77230', N'600425c3-bb91-441f-b3ef-551cfccb7cc9', N'e6572213-8d66-4cd5-a9ac-c995f78b09d6', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 19, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'1983039c-9799-44d0-a6fb-0cf3925366da', N'8e779f4e-07cb-4fef-ae6e-82eb4a7aad06', N'cf18a824-1544-4edc-a6a2-b33fcd60c826', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 25, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'7df4f4e8-ab6b-4c48-bcdb-0d3a2f411b72', N'd9c02203-a4df-4118-b3d1-6bf76b78a282', N'984a2571-4f2b-4265-8af3-300cb6837448', CAST(0x0000A0C800FD191C AS DateTime), N'2ed582ca-b538-4fcb-9c77-cb5789ffd655', CAST(0x0000A0C8010C8A4A AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'00000000-0000-0000-0000-000000000000', N'ac8d7dd2-18a8-4bee-bcea-0f2b9ac4eba1', CAST(0x0000A0C800FD191C AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'd9a671cd-6d73-46b0-8100-0eafb1b339d9', N'a81ebb31-bc42-4a29-a24d-cc9873e63916', N'984a2571-4f2b-4265-8af3-300cb6837448', CAST(0x0000A0DB00BECB63 AS DateTime), N'51dda701-247a-4a40-b27a-7e16fe1df365', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'4700445c-9ac0-49d4-b1a4-10080ee61f27', N'3f559e43-8723-4f35-a2ac-b244c1834689', N'd567c73a-7ca6-4ee8-888e-08d3261946c0', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 15, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'237123e0-263e-41d3-ae65-13c36c13bdb8', N'90b3af6f-a84f-44ed-9f04-4dc9215e492a', N'2db13cac-56d8-4b3b-8053-be95179a3e52', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 14, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'89733d70-b557-475a-a66f-16bf1ac178fe', N'39119b82-1bf8-41cb-b9ff-a6ebbe23cd39', N'8d0ad091-1ecf-46da-948c-99975ad8dd40', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 13, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'9d75a17e-e05c-4e86-8ed3-174acb54649b', N'39119b82-1bf8-41cb-b9ff-a6ebbe23cd39', N'0cf4c9ce-a1d7-4a81-89c0-67fc45073f69', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 12, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'ecad1751-f766-4ee3-82db-17b226716d5c', N'3f559e43-8723-4f35-a2ac-b244c1834689', N'4206df22-766e-4eba-9ac0-796708e21611', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 17, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'a17e1cb4-a1ab-492c-b521-1a92efcfa4da', N'1b468f81-da40-41a6-8ddb-e8885cea528d', N'f62ee480-d0b2-45ee-beb0-404cacb7c5a0', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 16, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'e33d3c6e-49c1-40f1-923e-22743a661c46', N'54775457-e80f-4708-9ad5-c4490fcbdd0e', N'fc8ea139-fde8-4d99-af1b-54ee29eab311', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 10, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'e9d07f07-ceec-407b-9324-2317a76f453e', N'b62c260b-6024-4376-a139-cad4e71915b7', N'65b7709e-05d7-43a6-ae38-5abfcceeacf9', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 18, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'e236a539-9757-4e69-95a7-23297f0243fe', N'5b796403-e171-41fb-aa7b-559aa0cc1566', N'6edc5ee2-26a6-4c3b-aba5-98b80d6416a5', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 7, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'3e0d3dda-dbf1-4249-9932-2362461e95ff', N'08b9094b-6eda-44dc-8726-013956e813cd', N'0cf4c9ce-a1d7-4a81-89c0-67fc45073f69', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 12, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'6c491577-6863-4054-9fa5-24799c95d7c1', N'c95579fc-2ec8-418e-a688-b1e3bf5911a0', N'3349cfbe-7342-42c2-97bd-ebbf3f3984bb', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 8, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'4b5b18e7-8953-4350-a02a-24ce981f8c6f', N'600425c3-bb91-441f-b3ef-551cfccb7cc9', N'65b7709e-05d7-43a6-ae38-5abfcceeacf9', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 18, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'8ea362c6-3548-4473-ba8e-2673816b83f3', N'54775457-e80f-4708-9ad5-c4490fcbdd0e', N'09ba3e0b-3075-43f5-ad04-5642c2b4d151', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 11, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'2eb96cf6-d1b5-4971-b575-2b11b88ba247', N'760f2b97-6d99-415d-a9ae-a64d15e9430b', N'390174f1-2d7d-44c9-83e5-3b61e273eb76', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 23, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'6271c34c-6f93-4e02-abd5-2f70067d048b', N'760f2b97-6d99-415d-a9ae-a64d15e9430b', N'cf18a824-1544-4edc-a6a2-b33fcd60c826', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 25, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'4c006939-c326-49d8-a60a-319299325512', N'7d40a36b-0cfe-4013-adbd-37edf17cb612', N'8d0ad091-1ecf-46da-948c-99975ad8dd40', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 13, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'9c8b0163-071b-4b1a-b85d-36c811812e53', N'348ccfcc-b11e-4643-8bd9-fa51d84ab878', N'04b5a1c7-2a16-4ef5-be90-396963b3f1bb', CAST(0x0000A0C80189E968 AS DateTime), N'51dda701-247a-4a40-b27a-7e16fe1df365', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 2, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'7a839f51-3486-4d8f-bc44-3797936aed32', N'1b468f81-da40-41a6-8ddb-e8885cea528d', N'4206df22-766e-4eba-9ac0-796708e21611', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 17, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'8fc43ae2-2661-4008-be55-3b6b42d7a7c3', N'a81ebb31-bc42-4a29-a24d-cc9873e63916', N'04b5a1c7-2a16-4ef5-be90-396963b3f1bb', CAST(0x0000A0DB00BECB63 AS DateTime), N'51dda701-247a-4a40-b27a-7e16fe1df365', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 2, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'5678d095-01f4-4c34-add5-3caf42c80f66', N'7852afb1-c439-432d-bbd9-6e1b0248d286', N'fc3cb686-ae5f-45a1-af53-45354a1b2834', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 24, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'62a4bcb1-4447-44d0-80c7-43f2d09ba939', N'eb6fbe67-006d-4a9a-85c9-721cc2527269', N'984a2571-4f2b-4265-8af3-300cb6837448', CAST(0x0000A0DB00C47B28 AS DateTime), N'51dda701-247a-4a40-b27a-7e16fe1df365', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'0106d4f6-7cf3-4020-9ec8-4735ad061d4e', N'7852afb1-c439-432d-bbd9-6e1b0248d286', N'cf18a824-1544-4edc-a6a2-b33fcd60c826', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 25, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'0f3bb9f2-47d7-42b1-bfde-4c3ad2c737d2', N'b1bfafc0-46b3-46a5-bfd5-1e70377e1730', N'7dacd90a-054e-4274-98a4-d62cd6489319', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 22, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'67b6e2e8-be9d-485f-a74a-4efd3e6a5290', N'3926e3d8-67e6-42f0-8ff5-dd32bbee7492', N'1dc65ae9-fc65-4187-b3a7-2657950ef160', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 20, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'bdd3efb3-7e25-4229-a9e7-4ff7eee75123', N'733b52a7-0288-4172-99ef-f5819c4a9be9', N'4999b475-6122-4899-bfb1-d08aef4bba31', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 21, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'3bed1ec5-336f-4c4f-b138-53471d4f7547', N'7d40a36b-0cfe-4013-adbd-37edf17cb612', N'2db13cac-56d8-4b3b-8053-be95179a3e52', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 14, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'3a9a2586-f430-49c7-b4ff-593dfb6acc36', N'8df98724-fd52-4415-87f6-20ae778518a8', N'4999b475-6122-4899-bfb1-d08aef4bba31', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 21, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'8ff6c510-2115-45a4-932e-595b85c114b3', N'8e17fbcd-c68e-4460-916b-dda2a81fd942', N'9481dd84-a48b-45c4-b5ec-1b0e55543474', CAST(0x0000A0C8011121E2 AS DateTime), N'fa553bd1-e82e-4f2b-a7d0-13dda8f28ac3', CAST(0x0000A0C80140B6F8 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 3, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'74efde6f-90ad-4188-aade-5b9a3d152e82', N'7427ac30-eb94-4f74-8ffa-a0bb1e188140', N'7b7514a8-c2a7-46f1-8e2f-4e239ecf22be', CAST(0x0000A0C80140BFD0 AS DateTime), N'2ed582ca-b538-4fcb-9c77-cb5789ffd655', CAST(0x0000A0C801451C34 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'00000000-0000-0000-0000-000000000000', N'2d8209c2-7cca-4300-90d0-abb7c33f19c7', CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 5, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'6b6ff392-94d7-484a-83b8-67ac611ed555', N'2ea871f1-9640-4e86-8a61-f098a3d2ebcd', N'9481dd84-a48b-45c4-b5ec-1b0e55543474', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 3, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'9e4364e6-9918-42b9-8b70-68af15542e20', N'b62c260b-6024-4376-a139-cad4e71915b7', N'e6572213-8d66-4cd5-a9ac-c995f78b09d6', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 19, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'199e6495-57e7-4478-94a1-68e35b1bdb8c', N'8c44a1be-37d8-4e29-b2b7-c28cb1e2b622', N'7b7514a8-c2a7-46f1-8e2f-4e239ecf22be', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 5, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'ac6762e0-687d-4ca3-847a-6959a36d5790', N'7c71a613-f3dd-4829-99a9-1153e1c3129f', N'7b7514a8-c2a7-46f1-8e2f-4e239ecf22be', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 5, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'fc20f81f-31dd-43e9-bb23-6eb2dba3446c', N'2ea871f1-9640-4e86-8a61-f098a3d2ebcd', N'5284c293-489b-46cb-8133-7d626964d576', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 4, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'2472a419-f0de-470e-a63c-6fd8b3cec9d6', N'7d40a36b-0cfe-4013-adbd-37edf17cb612', N'0cf4c9ce-a1d7-4a81-89c0-67fc45073f69', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 12, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'15cfb8a7-6a98-43e6-bdbc-7201b796744b', N'1b468f81-da40-41a6-8ddb-e8885cea528d', N'd567c73a-7ca6-4ee8-888e-08d3261946c0', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 15, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'1e0aa9f5-93c3-495d-acd8-7369a4a9bcf3', N'adde76d8-52b3-4c0a-a736-53d0b60a714a', N'5284c293-489b-46cb-8133-7d626964d576', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 4, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'4ac2581b-e79a-4968-b087-73727e9c2c59', N'8b0ffa9a-0e28-41d2-81a4-0ae96ba39d98', N'6edc5ee2-26a6-4c3b-aba5-98b80d6416a5', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 7, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'1ecec146-a3b0-44a2-902b-767385fec71b', N'54775457-e80f-4708-9ad5-c4490fcbdd0e', N'2f4f046b-7c0b-423e-b6c6-0f66ad8f3bae', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 9, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'73d623bf-6dca-4b57-99ac-783d2834b116', N'733b52a7-0288-4172-99ef-f5819c4a9be9', N'1dc65ae9-fc65-4187-b3a7-2657950ef160', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 20, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'fc59fef3-eb03-4495-bf70-7aff3a989cb1', N'4b1b1d50-5748-4597-a487-11b9d3dbe21c', N'2f4f046b-7c0b-423e-b6c6-0f66ad8f3bae', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 9, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'4096b51a-0824-4018-9808-7b0d29eb07a2', N'594104c9-eb12-4289-acf3-460651c0c71b', N'd567c73a-7ca6-4ee8-888e-08d3261946c0', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 15, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'5114c7c6-5d87-49cf-a277-7ea31e2b41bc', N'0a831b36-ac5e-4d19-9e6d-426d370872fc', N'65b7709e-05d7-43a6-ae38-5abfcceeacf9', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 18, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'aacdcfbd-504f-4144-93b1-7f921b9586ef', N'd9c02203-a4df-4118-b3d1-6bf76b78a282', N'04b5a1c7-2a16-4ef5-be90-396963b3f1bb', CAST(0x0000A0C800FD191D AS DateTime), N'fa553bd1-e82e-4f2b-a7d0-13dda8f28ac3', CAST(0x0000A0C801111914 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 2, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'f0fe1af6-4ccd-404f-835a-830759872fd3', N'4980aa90-56e3-4f12-b670-a5c4fa7b19c2', N'09ba3e0b-3075-43f5-ad04-5642c2b4d151', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 11, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'33b428c3-d6fa-4b20-a906-866ab73142f2', N'7427ac30-eb94-4f74-8ffa-a0bb1e188140', N'1dcf7d75-793a-4e53-a613-bc6239d110ce', CAST(0x0000A0C80140BFD0 AS DateTime), N'fa553bd1-e82e-4f2b-a7d0-13dda8f28ac3', CAST(0x0000A15400567360 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 6, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'9b1db6fc-7f55-4a2a-9bef-86bdb8bbb9af', N'bc391da1-898d-41f3-bddf-e97e1b026a81', N'cf18a824-1544-4edc-a6a2-b33fcd60c826', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 25, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'7c03a376-cf4f-4731-9d2d-88cd565d9941', N'8b0ffa9a-0e28-41d2-81a4-0ae96ba39d98', N'3349cfbe-7342-42c2-97bd-ebbf3f3984bb', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 8, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'14e4d65f-8a00-4e55-8093-8c36f38df61f', N'3926e3d8-67e6-42f0-8ff5-dd32bbee7492', N'4999b475-6122-4899-bfb1-d08aef4bba31', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 21, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'4f2ac67f-1623-44bf-b80d-8f068b1dce44', N'39119b82-1bf8-41cb-b9ff-a6ebbe23cd39', N'2db13cac-56d8-4b3b-8053-be95179a3e52', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 14, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'3828a1bd-0f8a-425e-94b8-8fd374a479a3', N'3926e3d8-67e6-42f0-8ff5-dd32bbee7492', N'7dacd90a-054e-4274-98a4-d62cd6489319', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 22, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'77ac4722-13df-4af5-9d0a-8fd7d3154696', N'bc391da1-898d-41f3-bddf-e97e1b026a81', N'fc3cb686-ae5f-45a1-af53-45354a1b2834', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 24, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'f26816a0-4b4a-4f5b-9315-8ffa56695e13', N'0a831b36-ac5e-4d19-9e6d-426d370872fc', N'e6572213-8d66-4cd5-a9ac-c995f78b09d6', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 19, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'846b8117-7300-43ab-a642-975e15c650b1', N'594104c9-eb12-4289-acf3-460651c0c71b', N'f62ee480-d0b2-45ee-beb0-404cacb7c5a0', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 16, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'1272c83d-e07f-472e-9f71-9d8bd6ac1a7c', N'8df98724-fd52-4415-87f6-20ae778518a8', N'1dc65ae9-fc65-4187-b3a7-2657950ef160', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 20, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'f08cae50-cda2-49da-8a9a-9dd3b579de78', N'90b3af6f-a84f-44ed-9f04-4dc9215e492a', N'8d0ad091-1ecf-46da-948c-99975ad8dd40', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 13, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'cdfab2a4-2eeb-4135-a3a9-a41e3ff69be6', N'c329218f-84f6-4eb8-a3c6-022cd9616eef', N'2f4f046b-7c0b-423e-b6c6-0f66ad8f3bae', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 9, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'eba2a3d8-c691-4504-91cd-a5e8b884bd46', N'733b52a7-0288-4172-99ef-f5819c4a9be9', N'7dacd90a-054e-4274-98a4-d62cd6489319', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 22, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'59dcafe3-30f0-4dcc-8c5b-a7887eab4f56', N'4b1b1d50-5748-4597-a487-11b9d3dbe21c', N'fc8ea139-fde8-4d99-af1b-54ee29eab311', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 10, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'82a41521-a1ad-4cc8-868b-aa03709d23dd', N'8e779f4e-07cb-4fef-ae6e-82eb4a7aad06', N'fc3cb686-ae5f-45a1-af53-45354a1b2834', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 24, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'730146af-79d9-4f23-8c51-ab94b0376254', N'5b796403-e171-41fb-aa7b-559aa0cc1566', N'3349cfbe-7342-42c2-97bd-ebbf3f3984bb', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 8, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'e076bfaf-49a0-42b2-adb9-aea8b33c2299', N'4980aa90-56e3-4f12-b670-a5c4fa7b19c2', N'2f4f046b-7c0b-423e-b6c6-0f66ad8f3bae', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 9, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'fbeb6508-5e50-46f0-8a96-b04d688505a9', N'08b9094b-6eda-44dc-8726-013956e813cd', N'8d0ad091-1ecf-46da-948c-99975ad8dd40', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 13, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'e829273d-2f3a-4a5f-b0de-b06a4236fe09', N'cf6ab419-3fe1-4504-86f2-26ab8564ba28', N'd567c73a-7ca6-4ee8-888e-08d3261946c0', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 15, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'40cc5988-6589-4f52-8b33-b5789a521bdc', N'eb510553-277f-4c12-b9ee-4cfd3432eb56', N'e6572213-8d66-4cd5-a9ac-c995f78b09d6', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 19, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'7019a98a-8a6c-416d-8b82-b8d090b8d0cc', N'eb510553-277f-4c12-b9ee-4cfd3432eb56', N'65b7709e-05d7-43a6-ae38-5abfcceeacf9', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 18, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'77092e3f-a177-4fe1-a228-bc75d6743e13', N'4980aa90-56e3-4f12-b670-a5c4fa7b19c2', N'fc8ea139-fde8-4d99-af1b-54ee29eab311', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 10, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'7f62bf43-64c8-4fd9-962f-bd4c5228ffb6', N'3d733957-8490-4e8b-b0e0-531591b93d71', N'7b7514a8-c2a7-46f1-8e2f-4e239ecf22be', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 5, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'0be55be1-6563-496e-b80f-bee8ebbd2a6d', N'594104c9-eb12-4289-acf3-460651c0c71b', N'4206df22-766e-4eba-9ac0-796708e21611', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 17, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'ae9ad66f-66a2-46fa-a5ff-c197db1044e5', N'c95579fc-2ec8-418e-a688-b1e3bf5911a0', N'6edc5ee2-26a6-4c3b-aba5-98b80d6416a5', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 7, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'85471aba-183c-4b90-9f69-c2861b189a41', N'3b40319f-660c-4428-b656-33f579af3851', N'9481dd84-a48b-45c4-b5ec-1b0e55543474', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 3, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'21c34a1f-45b0-411f-99c9-ca21036d8247', N'b9b957f6-2d24-4897-9d24-1076d90b1ffd', N'3349cfbe-7342-42c2-97bd-ebbf3f3984bb', CAST(0x0000A154005674CD AS DateTime), N'51dda701-247a-4a40-b27a-7e16fe1df365', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 8, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'ccb4c8ce-c79b-4e64-9c95-cdcd44d0b3c4', N'b9b957f6-2d24-4897-9d24-1076d90b1ffd', N'6edc5ee2-26a6-4c3b-aba5-98b80d6416a5', CAST(0x0000A154005674D2 AS DateTime), N'51dda701-247a-4a40-b27a-7e16fe1df365', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 7, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'72de6dde-fef7-4c15-af92-ceebec2ae7f5', N'c329218f-84f6-4eb8-a3c6-022cd9616eef', N'09ba3e0b-3075-43f5-ad04-5642c2b4d151', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 11, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'dcdebca0-a82c-4333-a415-cf7b5b92dea2', N'8e779f4e-07cb-4fef-ae6e-82eb4a7aad06', N'390174f1-2d7d-44c9-83e5-3b61e273eb76', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 23, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'c9c91a9c-b5b3-48fe-8633-d2b785c58939', N'90b3af6f-a84f-44ed-9f04-4dc9215e492a', N'0cf4c9ce-a1d7-4a81-89c0-67fc45073f69', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 12, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'd6fbbe16-9c8b-4b45-8295-d9b40df220fd', N'c329218f-84f6-4eb8-a3c6-022cd9616eef', N'fc8ea139-fde8-4d99-af1b-54ee29eab311', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 10, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'03e14ceb-bed5-4fac-ac78-da0579fe7d24', N'8e17fbcd-c68e-4460-916b-dda2a81fd942', N'5284c293-489b-46cb-8133-7d626964d576', CAST(0x0000A0C8011121E2 AS DateTime), N'2ed582ca-b538-4fcb-9c77-cb5789ffd655', CAST(0x0000A0C80113A875 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'00000000-0000-0000-0000-000000000000', N'f7b4ba8d-a9ac-4098-babe-8757fa9cf9e4', CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 4, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'ea11c40b-97de-4e09-931c-db0b6bda1369', N'3f559e43-8723-4f35-a2ac-b244c1834689', N'f62ee480-d0b2-45ee-beb0-404cacb7c5a0', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 16, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'dfcf5ae3-0cce-458a-84d6-dc48a9a49ef9', N'cf6ab419-3fe1-4504-86f2-26ab8564ba28', N'f62ee480-d0b2-45ee-beb0-404cacb7c5a0', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 16, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'd39ddd2d-08f3-4095-a2dc-e047f4f9e396', N'b1bfafc0-46b3-46a5-bfd5-1e70377e1730', N'1dc65ae9-fc65-4187-b3a7-2657950ef160', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 20, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'5cdc199c-f15b-4901-9349-e2c608a62c96', N'7c71a613-f3dd-4829-99a9-1153e1c3129f', N'1dcf7d75-793a-4e53-a613-bc6239d110ce', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 6, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'fe03250d-8484-479a-a381-e4feed920101', N'4b1b1d50-5748-4597-a487-11b9d3dbe21c', N'09ba3e0b-3075-43f5-ad04-5642c2b4d151', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 11, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'7c47173a-513d-41e8-8967-e53ce29973c1', N'3d733957-8490-4e8b-b0e0-531591b93d71', N'1dcf7d75-793a-4e53-a613-bc6239d110ce', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 6, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'1d6b6b5f-8abb-4cf5-aa78-e5e42d766757', N'b1bfafc0-46b3-46a5-bfd5-1e70377e1730', N'4999b475-6122-4899-bfb1-d08aef4bba31', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 21, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'31da0af3-2f1b-48d7-be9c-e795d40e0462', N'8df98724-fd52-4415-87f6-20ae778518a8', N'7dacd90a-054e-4274-98a4-d62cd6489319', CAST(0x0000A0C800FD191D AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C800FD191D AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 22, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'e7f5b050-b622-4916-9e22-e7f0f513d4dd', N'cf6ab419-3fe1-4504-86f2-26ab8564ba28', N'4206df22-766e-4eba-9ac0-796708e21611', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 17, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'189e9127-3f28-4ac8-b129-e8b4402439fc', N'adde76d8-52b3-4c0a-a736-53d0b60a714a', N'9481dd84-a48b-45c4-b5ec-1b0e55543474', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 3, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'52ccafbd-3f60-4bda-921e-ed24a4a1f831', N'eb6fbe67-006d-4a9a-85c9-721cc2527269', N'04b5a1c7-2a16-4ef5-be90-396963b3f1bb', CAST(0x0000A0DB00C47B28 AS DateTime), N'fa553bd1-e82e-4f2b-a7d0-13dda8f28ac3', CAST(0x0000A0FE016F7881 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 2, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'5fa9e2ff-c0af-4906-8757-ef009ce481b0', N'8c44a1be-37d8-4e29-b2b7-c28cb1e2b622', N'1dcf7d75-793a-4e53-a613-bc6239d110ce', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 6, N'00366f1c-2491-42a1-823f-5930778bbdf4')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'110d5c64-29c4-40d3-93b5-ef9793b0fab9', N'3b40319f-660c-4428-b656-33f579af3851', N'5284c293-489b-46cb-8133-7d626964d576', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 4, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'6832e0c8-dbe0-485d-9be9-f313517d279e', N'760f2b97-6d99-415d-a9ae-a64d15e9430b', N'fc3cb686-ae5f-45a1-af53-45354a1b2834', CAST(0x0000A0DB00BECB63 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00BECB63 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 24, N'11656405-1a40-49ab-8336-10baead4af72')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'c094108a-145f-4590-8ab1-f37fadbb3d31', N'08b9094b-6eda-44dc-8726-013956e813cd', N'2db13cac-56d8-4b3b-8053-be95179a3e52', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 14, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'218389b2-128d-477d-9995-f8cfb94c5a5e', N'bc391da1-898d-41f3-bddf-e97e1b026a81', N'390174f1-2d7d-44c9-83e5-3b61e273eb76', CAST(0x0000A0C80189E968 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0C80189E968 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 23, N'6cd0382e-573e-41c6-9989-48762c77c5e0')
INSERT [dbo].[Deliverable] ([DeliverableId], [ProjectTollgateId], [DeliverableTemplateId], [StartDate], [Status], [CompletionDate], [CompletedBy], [RelatedItemsId], [NotesReasonID], [CreatedDate], [CreatedBy], [DeliverableNumber], [ProjectId]) VALUES (N'b7626434-6946-41d0-8a88-fbbd45a418dd', N'7852afb1-c439-432d-bbd9-6e1b0248d286', N'390174f1-2d7d-44c9-83e5-3b61e273eb76', CAST(0x0000A0DB00C47B28 AS DateTime), N'2fb47fb9-d9ad-408b-a0d9-2eb8078132b8', CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', NULL, CAST(0x0000A0DB00C47B28 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 23, N'00366f1c-2491-42a1-823f-5930778bbdf4')
/****** Object:  Table [dbo].[NonConformance]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NonConformance](
	[NonConformanceId] [uniqueidentifier] NOT NULL,
	[NonConformanceTemplateId] [uniqueidentifier] NOT NULL,
	[NonConformanceNumber] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[Status] [uniqueidentifier] NOT NULL,
	[ViolationDate] [datetime] NOT NULL,
	[ResolutionDate] [datetime] NULL,
	[ResolvedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CloseReasonId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_NonConformanceTable] PRIMARY KEY CLUSTERED 
(
	[NonConformanceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NonConformance] ([NonConformanceId], [NonConformanceTemplateId], [NonConformanceNumber], [Title], [ProjectId], [Status], [ViolationDate], [ResolutionDate], [ResolvedBy], [CreatedDate], [CreatedBy], [CloseReasonId]) VALUES (N'b13a0e3d-407a-4ef1-b397-2ff37955afdf', N'10c63260-7a3b-47ed-941c-f661f558ec4f', N'120001-NC-004', N'testing descriptionasdf sdf asdf asdf', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'2f1d822a-dc05-4fec-af9e-03ecaa2a1dec', CAST(0x0000A0CF0074E717 AS DateTime), CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0CF0074E716 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[NonConformance] ([NonConformanceId], [NonConformanceTemplateId], [NonConformanceNumber], [Title], [ProjectId], [Status], [ViolationDate], [ResolutionDate], [ResolvedBy], [CreatedDate], [CreatedBy], [CloseReasonId]) VALUES (N'a4aa83d1-ef73-4b56-b65f-5b2dfa84dd82', N'10c63260-7a3b-47ed-941c-f661f558ec4f', N'120001-NC-004', N'New NCR''s 2', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'83a7478f-2f37-4ae4-a3bb-c67c7bfedac7', CAST(0x0000A0CE0181CB55 AS DateTime), CAST(0x002D247F018B81FF AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CE0181CB55 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'ade16bbe-3799-49d9-99a8-458935549416')
INSERT [dbo].[NonConformance] ([NonConformanceId], [NonConformanceTemplateId], [NonConformanceNumber], [Title], [ProjectId], [Status], [ViolationDate], [ResolutionDate], [ResolvedBy], [CreatedDate], [CreatedBy], [CloseReasonId]) VALUES (N'7894adfd-5f82-4d21-8e3a-5e2876d4a474', N'10c63260-7a3b-47ed-941c-f661f558ec4f', N'120002-NC-003', N'Testing New NC creation...', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'e454f52e-5b93-4529-ac6b-ee007c3b3670', CAST(0x0000A0CE017887F2 AS DateTime), CAST(0x002D247F018B81FF AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CE017887F2 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[NonConformance] ([NonConformanceId], [NonConformanceTemplateId], [NonConformanceNumber], [Title], [ProjectId], [Status], [ViolationDate], [ResolutionDate], [ResolvedBy], [CreatedDate], [CreatedBy], [CloseReasonId]) VALUES (N'930edee2-5a0c-4273-a3c0-950d16edd648', N'10c63260-7a3b-47ed-941c-f661f558ec4f', N'120001-NC-001', N'New NCR''s', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'e454f52e-5b93-4529-ac6b-ee007c3b3670', CAST(0x0000A0CE016485EB AS DateTime), CAST(0x002D247F018B81FF AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CE016485E9 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[NonConformance] ([NonConformanceId], [NonConformanceTemplateId], [NonConformanceNumber], [Title], [ProjectId], [Status], [ViolationDate], [ResolutionDate], [ResolvedBy], [CreatedDate], [CreatedBy], [CloseReasonId]) VALUES (N'7eb33741-f4ad-4804-99cb-f18df91487e8', N'10c63260-7a3b-47ed-941c-f661f558ec4f', N'120001-NC-002', N'New NCR''s 2', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'83a7478f-2f37-4ae4-a3bb-c67c7bfedac7', CAST(0x0000A0CE0164CD6F AS DateTime), CAST(0x002D247F018B81FF AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0CE0164CD6F AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', N'7236a6cc-18fa-47f6-a147-6d97292fbce3')
/****** Object:  Table [dbo].[ProjectTollgate]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTollgate](
	[ProjectTollgateId] [uniqueidentifier] NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[TollgateTemplateId] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[Status] [uniqueidentifier] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[CompletionDate] [datetime] NULL,
	[CompletedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[TollgateNumber] [int] NULL,
 CONSTRAINT [PK_ProjectTollgate] PRIMARY KEY CLUSTERED 
(
	[ProjectTollgateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'08b9094b-6eda-44dc-8726-013956e813cd', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'73e38cca-66db-4b54-86b4-9e91b7ef3cad', CAST(0x0000A0C80189E902 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C80189E902 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 6)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'c329218f-84f6-4eb8-a3c6-022cd9616eef', N'00366f1c-2491-42a1-823f-5930778bbdf4', N'a547055b-c655-4b9e-9e47-649a494c2032', CAST(0x0000A0DB00C474DD AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00C474DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 5)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'8b0ffa9a-0e28-41d2-81a4-0ae96ba39d98', N'00366f1c-2491-42a1-823f-5930778bbdf4', N'8e930357-c771-4bbf-b480-37f5170a907d', CAST(0x0000A0DB00C474DD AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00C474DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 4)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'b9b957f6-2d24-4897-9d24-1076d90b1ffd', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'8e930357-c771-4bbf-b480-37f5170a907d', CAST(0x0000A0C800FD12B5 AS DateTime), N'a98acc25-98f9-4895-99ea-c51be0540097', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C800FD12B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 4)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'7c71a613-f3dd-4829-99a9-1153e1c3129f', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'912d3ff6-4630-42fb-a6c7-23df8b64e6f2', CAST(0x0000A0C80189E902 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C80189E902 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 3)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'4b1b1d50-5748-4597-a487-11b9d3dbe21c', N'11656405-1a40-49ab-8336-10baead4af72', N'a547055b-c655-4b9e-9e47-649a494c2032', CAST(0x0000A0DB00BEC682 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00BEC682 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 5)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'b1bfafc0-46b3-46a5-bfd5-1e70377e1730', N'00366f1c-2491-42a1-823f-5930778bbdf4', N'191a2e31-68a6-49c3-a8a2-c8f6357767fb', CAST(0x0000A0DB00C474DD AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00C474DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 9)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'8df98724-fd52-4415-87f6-20ae778518a8', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'191a2e31-68a6-49c3-a8a2-c8f6357767fb', CAST(0x0000A0C800FD12B5 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C800FD12B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 9)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'cf6ab419-3fe1-4504-86f2-26ab8564ba28', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'070a9b6b-4445-487c-a59c-a79f3dba49bf', CAST(0x0000A0C80189E902 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C80189E902 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 7)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'3b40319f-660c-4428-b656-33f579af3851', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'b0151450-8cd6-4007-aff0-1a24377ed81a', CAST(0x0000A0C80189E902 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C80189E902 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 2)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'7d40a36b-0cfe-4013-adbd-37edf17cb612', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'73e38cca-66db-4b54-86b4-9e91b7ef3cad', CAST(0x0000A0C800FD12B5 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C800FD12B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 6)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'0a831b36-ac5e-4d19-9e6d-426d370872fc', N'11656405-1a40-49ab-8336-10baead4af72', N'554d1141-69ca-4b4d-ab0a-b4b32a17b3ae', CAST(0x0000A0DB00BEC682 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00BEC682 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 8)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'594104c9-eb12-4289-acf3-460651c0c71b', N'00366f1c-2491-42a1-823f-5930778bbdf4', N'070a9b6b-4445-487c-a59c-a79f3dba49bf', CAST(0x0000A0DB00C474DD AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00C474DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 7)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'eb510553-277f-4c12-b9ee-4cfd3432eb56', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'554d1141-69ca-4b4d-ab0a-b4b32a17b3ae', CAST(0x0000A0C800FD12B5 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C800FD12B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 8)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'90b3af6f-a84f-44ed-9f04-4dc9215e492a', N'00366f1c-2491-42a1-823f-5930778bbdf4', N'73e38cca-66db-4b54-86b4-9e91b7ef3cad', CAST(0x0000A0DB00C474DD AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00C474DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 6)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'3d733957-8490-4e8b-b0e0-531591b93d71', N'11656405-1a40-49ab-8336-10baead4af72', N'912d3ff6-4630-42fb-a6c7-23df8b64e6f2', CAST(0x0000A0DB00BEC682 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00BEC682 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 3)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'adde76d8-52b3-4c0a-a736-53d0b60a714a', N'11656405-1a40-49ab-8336-10baead4af72', N'b0151450-8cd6-4007-aff0-1a24377ed81a', CAST(0x0000A0DB00BEC682 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00BEC682 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 2)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'600425c3-bb91-441f-b3ef-551cfccb7cc9', N'00366f1c-2491-42a1-823f-5930778bbdf4', N'554d1141-69ca-4b4d-ab0a-b4b32a17b3ae', CAST(0x0000A0DB00C474DD AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00C474DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 8)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'5b796403-e171-41fb-aa7b-559aa0cc1566', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'8e930357-c771-4bbf-b480-37f5170a907d', CAST(0x0000A0C80189E902 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C80189E902 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 4)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'd9c02203-a4df-4118-b3d1-6bf76b78a282', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'835a8e04-c6b3-48b6-bf1c-0e714a3a7f47', CAST(0x0000A0C800FD12B5 AS DateTime), N'a86a6ddc-bf4a-4a2a-abf8-232e7c612dff', 0, CAST(0x0000A0C801111CDD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C800FD12B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'7852afb1-c439-432d-bbd9-6e1b0248d286', N'00366f1c-2491-42a1-823f-5930778bbdf4', N'ab75cf83-455f-43ab-9a90-e5288a2e8e86', CAST(0x0000A0DB00C474DD AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00C474DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 10)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'eb6fbe67-006d-4a9a-85c9-721cc2527269', N'00366f1c-2491-42a1-823f-5930778bbdf4', N'835a8e04-c6b3-48b6-bf1c-0e714a3a7f47', CAST(0x0000A0DB00C474DD AS DateTime), N'a98acc25-98f9-4895-99ea-c51be0540097', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00C474DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'8e779f4e-07cb-4fef-ae6e-82eb4a7aad06', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'ab75cf83-455f-43ab-9a90-e5288a2e8e86', CAST(0x0000A0C800FD12B5 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C800FD12B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 10)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'7427ac30-eb94-4f74-8ffa-a0bb1e188140', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'912d3ff6-4630-42fb-a6c7-23df8b64e6f2', CAST(0x0000A0C800FD12B5 AS DateTime), N'a86a6ddc-bf4a-4a2a-abf8-232e7c612dff', 0, CAST(0x0000A1540056744A AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C800FD12B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 3)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'4980aa90-56e3-4f12-b670-a5c4fa7b19c2', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'a547055b-c655-4b9e-9e47-649a494c2032', CAST(0x0000A0C80189E902 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C80189E902 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 5)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'760f2b97-6d99-415d-a9ae-a64d15e9430b', N'11656405-1a40-49ab-8336-10baead4af72', N'ab75cf83-455f-43ab-9a90-e5288a2e8e86', CAST(0x0000A0DB00BEC682 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00BEC682 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 10)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'39119b82-1bf8-41cb-b9ff-a6ebbe23cd39', N'11656405-1a40-49ab-8336-10baead4af72', N'73e38cca-66db-4b54-86b4-9e91b7ef3cad', CAST(0x0000A0DB00BEC682 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00BEC682 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 6)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'c95579fc-2ec8-418e-a688-b1e3bf5911a0', N'11656405-1a40-49ab-8336-10baead4af72', N'8e930357-c771-4bbf-b480-37f5170a907d', CAST(0x0000A0DB00BEC682 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00BEC682 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 4)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'3f559e43-8723-4f35-a2ac-b244c1834689', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'070a9b6b-4445-487c-a59c-a79f3dba49bf', CAST(0x0000A0C800FD12B5 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C800FD12B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 7)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'8c44a1be-37d8-4e29-b2b7-c28cb1e2b622', N'00366f1c-2491-42a1-823f-5930778bbdf4', N'912d3ff6-4630-42fb-a6c7-23df8b64e6f2', CAST(0x0000A0DB00C474DD AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00C474DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 3)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'54775457-e80f-4708-9ad5-c4490fcbdd0e', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'a547055b-c655-4b9e-9e47-649a494c2032', CAST(0x0000A0C800FD12B5 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C800FD12B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 5)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'b62c260b-6024-4376-a139-cad4e71915b7', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'554d1141-69ca-4b4d-ab0a-b4b32a17b3ae', CAST(0x0000A0C80189E902 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C80189E902 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 8)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'a81ebb31-bc42-4a29-a24d-cc9873e63916', N'11656405-1a40-49ab-8336-10baead4af72', N'835a8e04-c6b3-48b6-bf1c-0e714a3a7f47', CAST(0x0000A0DB00BEC681 AS DateTime), N'a98acc25-98f9-4895-99ea-c51be0540097', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00BEC681 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'3926e3d8-67e6-42f0-8ff5-dd32bbee7492', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'191a2e31-68a6-49c3-a8a2-c8f6357767fb', CAST(0x0000A0C80189E902 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C80189E902 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 9)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'8e17fbcd-c68e-4460-916b-dda2a81fd942', N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'b0151450-8cd6-4007-aff0-1a24377ed81a', CAST(0x0000A0C800FD12B5 AS DateTime), N'a86a6ddc-bf4a-4a2a-abf8-232e7c612dff', 0, CAST(0x0000A0C80140BAC8 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C800FD12B5 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 2)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'1b468f81-da40-41a6-8ddb-e8885cea528d', N'11656405-1a40-49ab-8336-10baead4af72', N'070a9b6b-4445-487c-a59c-a79f3dba49bf', CAST(0x0000A0DB00BEC682 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00BEC682 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 7)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'bc391da1-898d-41f3-bddf-e97e1b026a81', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'ab75cf83-455f-43ab-9a90-e5288a2e8e86', CAST(0x0000A0C80189E902 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C80189E902 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 10)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'2ea871f1-9640-4e86-8a61-f098a3d2ebcd', N'00366f1c-2491-42a1-823f-5930778bbdf4', N'b0151450-8cd6-4007-aff0-1a24377ed81a', CAST(0x0000A0DB00C474DD AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00C474DD AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 2)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'733b52a7-0288-4172-99ef-f5819c4a9be9', N'11656405-1a40-49ab-8336-10baead4af72', N'191a2e31-68a6-49c3-a8a2-c8f6357767fb', CAST(0x0000A0DB00BEC682 AS DateTime), N'e0fd14a7-3b8e-436c-956e-acefb931c578', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0DB00BEC682 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 9)
INSERT [dbo].[ProjectTollgate] ([ProjectTollgateId], [ProjectId], [TollgateTemplateId], [StartDate], [Status], [IsApproved], [CompletionDate], [CompletedBy], [CreatedDate], [CreatedBy], [TollgateNumber]) VALUES (N'348ccfcc-b11e-4643-8bd9-fa51d84ab878', N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'835a8e04-c6b3-48b6-bf1c-0e714a3a7f47', CAST(0x0000A0C80189E901 AS DateTime), N'a98acc25-98f9-4895-99ea-c51be0540097', 0, CAST(0x002D247F018B81FF AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(0x0000A0C80189E901 AS DateTime), N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', 1)
/****** Object:  Table [dbo].[ProjectStatus]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProjectStatus](
	[ProjectStatusId] [uniqueidentifier] NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ProjectHistory] PRIMARY KEY CLUSTERED 
(
	[ProjectStatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Task]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Task](
	[TaskId] [uniqueidentifier] NOT NULL,
	[Description] [varchar](75) NOT NULL,
	[Details] [text] NOT NULL,
	[ProjectId] [uniqueidentifier] NULL,
	[ModuleId] [uniqueidentifier] NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[AssignedBy] [uniqueidentifier] NOT NULL,
	[ImportanceId] [uniqueidentifier] NOT NULL,
	[CompletionMethodId] [uniqueidentifier] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[ParentTaskId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CompletionDate] [datetime] NULL,
	[CompletedBy] [uniqueidentifier] NULL,
	[RelatedItem] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transmittal]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transmittal](
	[TransmittalId] [uniqueidentifier] NOT NULL,
	[TransmittalNumber] [varchar](200) NOT NULL,
	[Description] [varchar](150) NULL,
	[Recipients] [varchar](600) NULL,
	[Attention] [varchar](50) NOT NULL,
	[Comments] [varchar](500) NULL,
	[CommunicationMethodId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[DocumentControlerUserId] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[SendDate] [datetime] NULL,
	[UseClientNumber] [bit] NOT NULL,
 CONSTRAINT [PK_Transmittal] PRIMARY KEY CLUSTERED 
(
	[TransmittalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Transmittal] ([TransmittalId], [TransmittalNumber], [Description], [Recipients], [Attention], [Comments], [CommunicationMethodId], [StatusId], [ProjectId], [DocumentControlerUserId], [CreateDate], [SendDate], [UseClientNumber]) VALUES (N'f7879e66-c97a-4521-b6fa-1a3bae8b3974', N'120001-(D)DT-001', N'Engineering and Corporation details', N'arun.manjhi@techvalens.com', N'Software engineer', N'Engineering and Corporation details', 1, 2, N'df4f1430-f53e-4dd6-bc54-31a726ddbf87', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0D900201136 AS DateTime), CAST(0x0000A0D900200F45 AS DateTime), 0)
INSERT [dbo].[Transmittal] ([TransmittalId], [TransmittalNumber], [Description], [Recipients], [Attention], [Comments], [CommunicationMethodId], [StatusId], [ProjectId], [DocumentControlerUserId], [CreateDate], [SendDate], [UseClientNumber]) VALUES (N'54d0b3c9-baaa-4ba9-97fb-63c95d169231', N'120002-(D)DT-001', N'Transmittal 1', N'sandeep.modi@techvalens.com', N'NA', N'Transmittal 1', 1, 1, N'6cd0382e-573e-41c6-9989-48762c77c5e0', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0C900DE3640 AS DateTime), CAST(0x0000A0C900DE26DD AS DateTime), 1)
INSERT [dbo].[Transmittal] ([TransmittalId], [TransmittalNumber], [Description], [Recipients], [Attention], [Comments], [CommunicationMethodId], [StatusId], [ProjectId], [DocumentControlerUserId], [CreateDate], [SendDate], [UseClientNumber]) VALUES (N'37ba278a-5841-44d8-afbc-c632f3c356e6', N'120004-(D)DT-001', N'Document is to be Verified.', N'arun.manjhi@techvalens.com,sandeep.shrivastava@techvalens.com', N'TechValens pvt. Ltd', N'Documents is to be verified for its Authentication and its Policy .', 1, 1, N'00366f1c-2491-42a1-823f-5930778bbdf4', N'f35918a7-b5c4-49e8-a76a-f30632bb2d08', CAST(0x0000A0DB00C867DA AS DateTime), CAST(0x0000A0DB00C8602D AS DateTime), 1)
/****** Object:  Table [dbo].[TransmittalItem]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransmittalItem](
	[TransmittalItemId] [uniqueidentifier] NOT NULL,
	[TransmittalId] [uniqueidentifier] NOT NULL,
	[DocumentNumber] [varchar](200) NOT NULL,
	[DocumentId] [bigint] NULL,
	[Revision] [varchar](200) NOT NULL,
	[ReturnDate] [datetime] NULL,
	[ReturnCodeId] [uniqueidentifier] NOT NULL,
	[ReturnTransmittalNumber] [varchar](100) NULL,
 CONSTRAINT [PK_TransmittalItem] PRIMARY KEY CLUSTERED 
(
	[TransmittalItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TransmittalItem] ([TransmittalItemId], [TransmittalId], [DocumentNumber], [DocumentId], [Revision], [ReturnDate], [ReturnCodeId], [ReturnTransmittalNumber]) VALUES (N'a9c0d3d5-564d-4771-a1f8-40b739b40b40', N'f7879e66-c97a-4521-b6fa-1a3bae8b3974', N'120001-S12-S1-(D)PS-001(INT~C3)', 3160523909, N'INT', CAST(0x0000A0D90020115D AS DateTime), N'1a19c754-a65b-4ff6-896f-fca3e27ad061', NULL)
INSERT [dbo].[TransmittalItem] ([TransmittalItemId], [TransmittalId], [DocumentNumber], [DocumentId], [Revision], [ReturnDate], [ReturnCodeId], [ReturnTransmittalNumber]) VALUES (N'436e8267-ca32-473a-8370-457b95bd585a', N'f7879e66-c97a-4521-b6fa-1a3bae8b3974', N'120001-(D)DT-001', 3160536233, N'D', CAST(0x0000A0D90020115B AS DateTime), N'1a19c754-a65b-4ff6-896f-fca3e27ad061', NULL)
INSERT [dbo].[TransmittalItem] ([TransmittalItemId], [TransmittalId], [DocumentNumber], [DocumentId], [Revision], [ReturnDate], [ReturnCodeId], [ReturnTransmittalNumber]) VALUES (N'6bbc0d97-02ae-4d69-a417-499f5cf97c52', N'37ba278a-5841-44d8-afbc-c632f3c356e6', N'CN:CLIENT_B1A8', 3384659572, N'ARUN_INT', CAST(0x0000A0DB00C86A71 AS DateTime), N'1a19c754-a65b-4ff6-896f-fca3e27ad061', NULL)
INSERT [dbo].[TransmittalItem] ([TransmittalItemId], [TransmittalId], [DocumentNumber], [DocumentId], [Revision], [ReturnDate], [ReturnCodeId], [ReturnTransmittalNumber]) VALUES (N'd07a4fbd-bbda-42c3-ad15-586ab929cff8', N'54d0b3c9-baaa-4ba9-97fb-63c95d169231', N'CN:2222', 3131323679, N'INT', CAST(0x0000A0C900DE37E1 AS DateTime), N'1a19c754-a65b-4ff6-896f-fca3e27ad061', NULL)
INSERT [dbo].[TransmittalItem] ([TransmittalItemId], [TransmittalId], [DocumentNumber], [DocumentId], [Revision], [ReturnDate], [ReturnCodeId], [ReturnTransmittalNumber]) VALUES (N'3091b05c-4849-4b17-8171-5d4be4b7b324', N'37ba278a-5841-44d8-afbc-c632f3c356e6', N'CN:CLIENT_B1A8', 3384658902, N'SMT', CAST(0x0000A0DB00C869B8 AS DateTime), N'1a19c754-a65b-4ff6-896f-fca3e27ad061', NULL)
INSERT [dbo].[TransmittalItem] ([TransmittalItemId], [TransmittalId], [DocumentNumber], [DocumentId], [Revision], [ReturnDate], [ReturnCodeId], [ReturnTransmittalNumber]) VALUES (N'5a0be218-c619-4b50-8c35-812672bffe75', N'54d0b3c9-baaa-4ba9-97fb-63c95d169231', N'CN:1111', 3131305203, N'INT', CAST(0x0000A0C900DE3752 AS DateTime), N'1a19c754-a65b-4ff6-896f-fca3e27ad061', NULL)
INSERT [dbo].[TransmittalItem] ([TransmittalItemId], [TransmittalId], [DocumentNumber], [DocumentId], [Revision], [ReturnDate], [ReturnCodeId], [ReturnTransmittalNumber]) VALUES (N'd548b82c-c647-4abb-bb65-8a899ad22bc8', N'37ba278a-5841-44d8-afbc-c632f3c356e6', N'CN:CLIENT_C1S3', 3384660468, N'TFS', CAST(0x0000A0DB00C8695D AS DateTime), N'1a19c754-a65b-4ff6-896f-fca3e27ad061', NULL)
INSERT [dbo].[TransmittalItem] ([TransmittalItemId], [TransmittalId], [DocumentNumber], [DocumentId], [Revision], [ReturnDate], [ReturnCodeId], [ReturnTransmittalNumber]) VALUES (N'f1a6006f-32fb-4e8b-b630-bd3ae541a3f5', N'37ba278a-5841-44d8-afbc-c632f3c356e6', N'CN:CLIENT_A115', 3384656130, N'ARUN_INT', CAST(0x0000A0DB00C86900 AS DateTime), N'1a19c754-a65b-4ff6-896f-fca3e27ad061', NULL)
INSERT [dbo].[TransmittalItem] ([TransmittalItemId], [TransmittalId], [DocumentNumber], [DocumentId], [Revision], [ReturnDate], [ReturnCodeId], [ReturnTransmittalNumber]) VALUES (N'4f80619f-0b70-4f93-9a03-cfaf7e4e491b', N'37ba278a-5841-44d8-afbc-c632f3c356e6', N'CN:CLIENT_A112', 3384655176, N'REV', CAST(0x0000A0DB00C868A4 AS DateTime), N'1a19c754-a65b-4ff6-896f-fca3e27ad061', NULL)
INSERT [dbo].[TransmittalItem] ([TransmittalItemId], [TransmittalId], [DocumentNumber], [DocumentId], [Revision], [ReturnDate], [ReturnCodeId], [ReturnTransmittalNumber]) VALUES (N'a9ca963e-e775-4312-a4e7-eefc67b2c9e2', N'37ba278a-5841-44d8-afbc-c632f3c356e6', N'CN:CLIENT_B1A8', 3384659196, N'ARUN_INT', CAST(0x0000A0DB00C86A15 AS DateTime), N'1a19c754-a65b-4ff6-896f-fca3e27ad061', NULL)
/****** Object:  Table [dbo].[TransmittalAddress]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransmittalAddress](
	[TransmittalAddressId] [uniqueidentifier] NOT NULL,
	[TransmittalId] [uniqueidentifier] NOT NULL,
	[ContactName] [varchar](200) NOT NULL,
	[Email] [varchar](100) NULL,
	[StreetAddress] [varchar](300) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Zip] [varchar](25) NULL,
 CONSTRAINT [PK_TransmittalAddress] PRIMARY KEY CLUSTERED 
(
	[TransmittalAddressId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TransmittalAddress] ([TransmittalAddressId], [TransmittalId], [ContactName], [Email], [StreetAddress], [City], [State], [Country], [Zip]) VALUES (N'a68818b2-f8df-4caa-86de-4421fb5cef51', N'37ba278a-5841-44d8-afbc-c632f3c356e6', N'Sandeep Modi', N'sandeep.modi@techvalens.com', N'indore', N'indore', N'MP', N'India', N'452001')
INSERT [dbo].[TransmittalAddress] ([TransmittalAddressId], [TransmittalId], [ContactName], [Email], [StreetAddress], [City], [State], [Country], [Zip]) VALUES (N'd743f53a-fb11-45c6-80db-b357ce7fb3df', N'f7879e66-c97a-4521-b6fa-1a3bae8b3974', N'Sandeep Modi', N'sandeep.modi@techvalens.com', N'indore', N'indore', N'MP', N'India', N'452001')
INSERT [dbo].[TransmittalAddress] ([TransmittalAddressId], [TransmittalId], [ContactName], [Email], [StreetAddress], [City], [State], [Country], [Zip]) VALUES (N'566df5ca-bbc6-4139-b876-dcb72ac82a53', N'54d0b3c9-baaa-4ba9-97fb-63c95d169231', N'Sandeep Modi', N'sandeep.modi@techvalens.com', N'indore', N'indore', N'MP', N'India', N'452001')
/****** Object:  Table [dbo].[TaskInstance]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskInstance](
	[TaskInstanceId] [uniqueidentifier] NOT NULL,
	[TaskId] [uniqueidentifier] NOT NULL,
	[TemplateId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TaskInstance] PRIMARY KEY CLUSTERED 
(
	[TaskInstanceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskAssignment]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskAssignment](
	[TaskAssignmentId] [uniqueidentifier] NOT NULL,
	[TaskId] [uniqueidentifier] NOT NULL,
	[AssignedTo] [uniqueidentifier] NOT NULL,
	[StateId] [uniqueidentifier] NOT NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_TaskAssignmentDetail] PRIMARY KEY CLUSTERED 
(
	[TaskAssignmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelatedItemNonConformance]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RelatedItemNonConformance](
	[RelatedItemId] [uniqueidentifier] NOT NULL,
	[NonConformanceId] [uniqueidentifier] NOT NULL,
	[Key] [varchar](50) NOT NULL,
	[Value] [varchar](100) NOT NULL,
 CONSTRAINT [PK_RelatedItemNonConformance] PRIMARY KEY CLUSTERED 
(
	[RelatedItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'd97197dc-adf0-403f-91fb-15dcb044def5', N'b13a0e3d-407a-4ef1-b397-2ff37955afdf', N'USER', N'Vipin Rathore ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'a4353329-3caa-4496-a2ce-2d0215448233', N'a4aa83d1-ef73-4b56-b65f-5b2dfa84dd82', N'DOCUMENT', N'120001-S12-S1-(D)PS-001(INT~C3) ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'9a98ef30-ebc0-44b5-9116-49477b5929fc', N'7894adfd-5f82-4d21-8e3a-5e2876d4a474', N'DOCUMENT', N'120002-JID1-QID1-(D)PS-001(INT~C3) ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'ade13c86-9e2e-44ec-860a-54825635249e', N'930edee2-5a0c-4273-a3c0-950d16edd648', N'DOCUMENT', N'120001-S12-S1-(D)PS-001(INT~C3) ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'ca6942d2-fc68-4aad-828b-5bd79749af4a', N'7eb33741-f4ad-4804-99cb-f18df91487e8', N'DOCUMENT', N'120001-(D)DT-001 ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'928d3d53-0dda-48ec-8639-629c32f12088', N'7894adfd-5f82-4d21-8e3a-5e2876d4a474', N'USER', N'Arun Manjhi ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'90d9da1b-4436-403f-a97b-7143c4bb4061', N'a4aa83d1-ef73-4b56-b65f-5b2dfa84dd82', N'DOCUMENT', N'120001-(D)DT-001 ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'25a95b91-013d-492f-8f07-ab36eb74883a', N'b13a0e3d-407a-4ef1-b397-2ff37955afdf', N'DOCUMENT', N'120001-S12-S1-(D)PS-001(INT~C3) ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'a9e2a50c-3e07-45ca-9924-d13c7f244b37', N'930edee2-5a0c-4273-a3c0-950d16edd648', N'DOCUMENT', N'120001-(D)DT-001 ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'7fc7d800-9f3b-4a0b-b8f7-da389fc58197', N'930edee2-5a0c-4273-a3c0-950d16edd648', N'USER', N'Arun Manjhi ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'ba36b1a2-7166-4ae2-9f54-df9733ea9a47', N'b13a0e3d-407a-4ef1-b397-2ff37955afdf', N'USER', N'Arun Manjhi ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'338fcaf4-c12f-45be-9540-f80217669041', N'7eb33741-f4ad-4804-99cb-f18df91487e8', N'DOCUMENT', N'120001-S12-S1-(D)PS-001(INT~C3) ')
INSERT [dbo].[RelatedItemNonConformance] ([RelatedItemId], [NonConformanceId], [Key], [Value]) VALUES (N'96023a38-47a2-4334-a977-f8b423769682', N'7894adfd-5f82-4d21-8e3a-5e2876d4a474', N'TRANSMITTAL', N'120002-(D)DT-001 ')
/****** Object:  Table [dbo].[RelatedDeliverableItems]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelatedDeliverableItems](
	[DeliverableId] [uniqueidentifier] NOT NULL,
	[RelatedItemId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_RelatedDeliverableItems] PRIMARY KEY CLUSTERED 
(
	[RelatedItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotesReasonNonConformance]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotesReasonNonConformance](
	[NonConformanceId] [uniqueidentifier] NOT NULL,
	[NotesReasonId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_NonConformanceNotesReason] PRIMARY KEY CLUSTERED 
(
	[NotesReasonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NotesReasonNonConformance] ([NonConformanceId], [NotesReasonId]) VALUES (N'a4aa83d1-ef73-4b56-b65f-5b2dfa84dd82', N'ade16bbe-3799-49d9-99a8-458935549416')
INSERT [dbo].[NotesReasonNonConformance] ([NonConformanceId], [NotesReasonId]) VALUES (N'930edee2-5a0c-4273-a3c0-950d16edd648', N'52f2aea8-7821-42a3-ae13-4fed08b83678')
INSERT [dbo].[NotesReasonNonConformance] ([NonConformanceId], [NotesReasonId]) VALUES (N'930edee2-5a0c-4273-a3c0-950d16edd648', N'e9c57306-fad0-45c8-87d2-69d89f9e136d')
INSERT [dbo].[NotesReasonNonConformance] ([NonConformanceId], [NotesReasonId]) VALUES (N'7eb33741-f4ad-4804-99cb-f18df91487e8', N'7236a6cc-18fa-47f6-a147-6d97292fbce3')
INSERT [dbo].[NotesReasonNonConformance] ([NonConformanceId], [NotesReasonId]) VALUES (N'7894adfd-5f82-4d21-8e3a-5e2876d4a474', N'69cae67d-1867-4836-aebe-73dea7c9ad75')
INSERT [dbo].[NotesReasonNonConformance] ([NonConformanceId], [NotesReasonId]) VALUES (N'a4aa83d1-ef73-4b56-b65f-5b2dfa84dd82', N'8d1b6f6e-4b0e-4b32-96de-7da5007cdfab')
INSERT [dbo].[NotesReasonNonConformance] ([NonConformanceId], [NotesReasonId]) VALUES (N'930edee2-5a0c-4273-a3c0-950d16edd648', N'a63831ae-10f0-4738-898d-855dfc63871a')
INSERT [dbo].[NotesReasonNonConformance] ([NonConformanceId], [NotesReasonId]) VALUES (N'930edee2-5a0c-4273-a3c0-950d16edd648', N'e92bb8a8-3291-4f80-929e-caafeb088198')
/****** Object:  Table [dbo].[NotesReasonDeliverable]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotesReasonDeliverable](
	[DeliverableId] [uniqueidentifier] NOT NULL,
	[NotesReasonId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_NotesReasonDeliverable] PRIMARY KEY CLUSTERED 
(
	[NotesReasonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'7df4f4e8-ab6b-4c48-bcdb-0d3a2f411b72', N'eff8dc60-5910-4353-8288-02013dfcb314')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'7df4f4e8-ab6b-4c48-bcdb-0d3a2f411b72', N'48755eb8-9217-49a3-b290-095a4e85ab45')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'7df4f4e8-ab6b-4c48-bcdb-0d3a2f411b72', N'ac8d7dd2-18a8-4bee-bcea-0f2b9ac4eba1')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'7df4f4e8-ab6b-4c48-bcdb-0d3a2f411b72', N'e2c62b39-5729-4480-998f-0f9bb9ef238d')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'62a4bcb1-4447-44d0-80c7-43f2d09ba939', N'5edabbfa-d8da-4c9f-8b42-249249e232cd')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'7df4f4e8-ab6b-4c48-bcdb-0d3a2f411b72', N'7383abe0-16db-4a8d-8837-6950149e4a3c')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'74efde6f-90ad-4188-aade-5b9a3d152e82', N'5c1ccaa6-88e6-420b-b34b-82d1687c0b4b')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'7df4f4e8-ab6b-4c48-bcdb-0d3a2f411b72', N'5e78f186-2de9-41a0-bae7-8693c5b1d0b6')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'03e14ceb-bed5-4fac-ac78-da0579fe7d24', N'f7b4ba8d-a9ac-4098-babe-8757fa9cf9e4')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'74efde6f-90ad-4188-aade-5b9a3d152e82', N'8c8f88f1-5085-4731-b993-9a5b8f69920d')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'8ff6c510-2115-45a4-932e-595b85c114b3', N'3a803c35-2abd-422a-8fc8-9e05d20ae9f4')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'74efde6f-90ad-4188-aade-5b9a3d152e82', N'2d8209c2-7cca-4300-90d0-abb7c33f19c7')
INSERT [dbo].[NotesReasonDeliverable] ([DeliverableId], [NotesReasonId]) VALUES (N'74efde6f-90ad-4188-aade-5b9a3d152e82', N'3deaddaf-d377-47b4-a330-ec82418438c4')
/****** Object:  Table [dbo].[EmailCommunicationMethod]    Script Date: 03/21/2013 10:50:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmailCommunicationMethod](
	[EmailId] [uniqueidentifier] NOT NULL,
	[TransmittalId] [uniqueidentifier] NOT NULL,
	[EmailSize] [varchar](50) NULL,
 CONSTRAINT [PK_EmailCommunicationMethod] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[EmailCommunicationMethod] ([EmailId], [TransmittalId], [EmailSize]) VALUES (N'f74961fa-945f-454d-8941-21e2e588c670', N'54d0b3c9-baaa-4ba9-97fb-63c95d169231', N'2')
INSERT [dbo].[EmailCommunicationMethod] ([EmailId], [TransmittalId], [EmailSize]) VALUES (N'4bfb2049-a834-4c49-abdf-86a9e058e733', N'f7879e66-c97a-4521-b6fa-1a3bae8b3974', N'12')
INSERT [dbo].[EmailCommunicationMethod] ([EmailId], [TransmittalId], [EmailSize]) VALUES (N'b5f2a1ca-2bed-439a-bf59-b3699801c7b4', N'37ba278a-5841-44d8-afbc-c632f3c356e6', N'12')
/****** Object:  Default [DF_RestrictionType_Id]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[RestrictionType] ADD  CONSTRAINT [DF_RestrictionType_Id]  DEFAULT (newid()) FOR [RestrictionTypeId]
GO
/****** Object:  Default [DF_TollgateTemplate_Id]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[TollgateTemplate] ADD  CONSTRAINT [DF_TollgateTemplate_Id]  DEFAULT (newid()) FOR [TollgateTemplateId]
GO
/****** Object:  Default [DF_Modules_ModuleId]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Modules_ModuleId]  DEFAULT (newid()) FOR [ModuleId]
GO
/****** Object:  Default [DF_MetaTagType_TypeId]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[MetaTagType] ADD  CONSTRAINT [DF_MetaTagType_TypeId]  DEFAULT (newid()) FOR [TypeId]
GO
/****** Object:  Default [DF_DocumentRepository_DocumentControlId]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[DocumentControl] ADD  CONSTRAINT [DF_DocumentRepository_DocumentControlId]  DEFAULT (newid()) FOR [DocumentControlId]
GO
/****** Object:  Default [DF_DeliverableTemplate_Id]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[DeliverableTemplate] ADD  CONSTRAINT [DF_DeliverableTemplate_Id]  DEFAULT (newid()) FOR [DeliverableTemplateId]
GO
/****** Object:  Default [DF_Company_CompanyId]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_CompanyId]  DEFAULT (newid()) FOR [CompanyId]
GO
/****** Object:  Default [DF_Company_DateCreated]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_AppOption_IsActive]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[AppOption] ADD  CONSTRAINT [DF_AppOption_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Contact_ContactId]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_ContactId]  DEFAULT (newid()) FOR [ContactId]
GO
/****** Object:  Default [DF_MetaTag_MetaTagId]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[MetaTag] ADD  CONSTRAINT [DF_MetaTag_MetaTagId]  DEFAULT (newid()) FOR [MetaTagId]
GO
/****** Object:  Default [DF_Setting1_SettingId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Setting] ADD  CONSTRAINT [DF_Setting1_SettingId]  DEFAULT (newid()) FOR [SettingId]
GO
/****** Object:  Default [DF_RelatedItem_RelatedItemId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[RelatedItem] ADD  CONSTRAINT [DF_RelatedItem_RelatedItemId]  DEFAULT (newid()) FOR [RelatedItemId]
GO
/****** Object:  Default [DF_ModuleRoleAccess_MRAId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[ModuleRoleAccess] ADD  CONSTRAINT [DF_ModuleRoleAccess_MRAId]  DEFAULT (newid()) FOR [MRAId]
GO
/****** Object:  Default [DF_Address_AddressId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_AddressId]  DEFAULT (newid()) FOR [AddressId]
GO
/****** Object:  Default [DF_User_CreatedDate]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_User_IsActive]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [PDF_Project_UniqueId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [PDF_Project_UniqueId]  DEFAULT (newid()) FOR [UniqueId]
GO
/****** Object:  Default [DF_MetaTagChoice_ChoiceId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[MetaTagChoice] ADD  CONSTRAINT [DF_MetaTagChoice_ChoiceId]  DEFAULT (newid()) FOR [ChoiceId]
GO
/****** Object:  Default [DF_NotesResonTable_NotesResonId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NotesReason] ADD  CONSTRAINT [DF_NotesResonTable_NotesResonId]  DEFAULT (newid()) FOR [NotesReasonId]
GO
/****** Object:  Default [DF_Non_ConformanceTemplate_Non_ConformanceId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformanceTemplate] ADD  CONSTRAINT [DF_Non_ConformanceTemplate_Non_ConformanceId]  DEFAULT (newid()) FOR [NonConformanceTemplateId]
GO
/****** Object:  Default [DF_EventFired_FiredId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[EventFired] ADD  CONSTRAINT [DF_EventFired_FiredId]  DEFAULT (newid()) FOR [FiredId]
GO
/****** Object:  Default [DF_CompanyTollgateTemplate_Id]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[CompanyTollgateTemplate] ADD  CONSTRAINT [DF_CompanyTollgateTemplate_Id]  DEFAULT (newid()) FOR [CompanyTollgateTemplateId]
GO
/****** Object:  Default [DF_AlertInstance_AlertInstanceId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[AlertInstance] ADD  CONSTRAINT [DF_AlertInstance_AlertInstanceId]  DEFAULT (newid()) FOR [AlertInstanceId]
GO
/****** Object:  Default [DF_AlertAssignmentDetail_IsRead]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[AlertAssignment] ADD  CONSTRAINT [DF_AlertAssignmentDetail_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
/****** Object:  Default [DF_DeliverableTable_DeliverableId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Deliverable] ADD  CONSTRAINT [DF_DeliverableTable_DeliverableId]  DEFAULT (newid()) FOR [DeliverableId]
GO
/****** Object:  Default [DF_NonConformanceTable_NonConformanceId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformance] ADD  CONSTRAINT [DF_NonConformanceTable_NonConformanceId]  DEFAULT (newid()) FOR [NonConformanceId]
GO
/****** Object:  Default [DF_ProjectTollgate_ProjectTollgateId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[ProjectTollgate] ADD  CONSTRAINT [DF_ProjectTollgate_ProjectTollgateId]  DEFAULT (newid()) FOR [ProjectTollgateId]
GO
/****** Object:  Default [DF_Transmittal_UseClientNumber]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Transmittal] ADD  CONSTRAINT [DF_Transmittal_UseClientNumber]  DEFAULT ((0)) FOR [UseClientNumber]
GO
/****** Object:  Default [DF_TaskInstance_TaskInstanceId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TaskInstance] ADD  CONSTRAINT [DF_TaskInstance_TaskInstanceId]  DEFAULT (newid()) FOR [TaskInstanceId]
GO
/****** Object:  Default [DF_RelatedItemNonConformance_RelatedItemId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[RelatedItemNonConformance] ADD  CONSTRAINT [DF_RelatedItemNonConformance_RelatedItemId]  DEFAULT (newid()) FOR [RelatedItemId]
GO
/****** Object:  ForeignKey [FK_AlertTemplate_AppOption]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[AlertTemplate]  WITH CHECK ADD  CONSTRAINT [FK_AlertTemplate_AppOption] FOREIGN KEY([StatusId])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[AlertTemplate] CHECK CONSTRAINT [FK_AlertTemplate_AppOption]
GO
/****** Object:  ForeignKey [FK_Contact_Company]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Company]
GO
/****** Object:  ForeignKey [FK__MetaTag__Company__14270015]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[MetaTag]  WITH CHECK ADD FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  ForeignKey [FK_MetaTag_MetaTagType]    Script Date: 03/21/2013 10:40:02 ******/
ALTER TABLE [dbo].[MetaTag]  WITH CHECK ADD  CONSTRAINT [FK_MetaTag_MetaTagType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[MetaTagType] ([TypeId])
GO
ALTER TABLE [dbo].[MetaTag] CHECK CONSTRAINT [FK_MetaTag_MetaTagType]
GO
/****** Object:  ForeignKey [FK_SystemEvent_AppOption]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[SystemEvent]  WITH CHECK ADD  CONSTRAINT [FK_SystemEvent_AppOption] FOREIGN KEY([EventTypeId])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[SystemEvent] CHECK CONSTRAINT [FK_SystemEvent_AppOption]
GO
/****** Object:  ForeignKey [FK_Setting_Company]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Setting]  WITH CHECK ADD  CONSTRAINT [FK_Setting_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Setting] CHECK CONSTRAINT [FK_Setting_Company]
GO
/****** Object:  ForeignKey [FK_RelatedItem_AppOption]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[RelatedItem]  WITH CHECK ADD  CONSTRAINT [FK_RelatedItem_AppOption] FOREIGN KEY([Relationship])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[RelatedItem] CHECK CONSTRAINT [FK_RelatedItem_AppOption]
GO
/****** Object:  ForeignKey [FK_ModuleRoleAccess_Modules]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[ModuleRoleAccess]  WITH CHECK ADD  CONSTRAINT [FK_ModuleRoleAccess_Modules] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Module] ([ModuleId])
GO
ALTER TABLE [dbo].[ModuleRoleAccess] CHECK CONSTRAINT [FK_ModuleRoleAccess_Modules]
GO
/****** Object:  ForeignKey [FK_ModuleRoleAccess_UserRole]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[ModuleRoleAccess]  WITH CHECK ADD  CONSTRAINT [FK_ModuleRoleAccess_UserRole] FOREIGN KEY([RollId])
REFERENCES [dbo].[UserRole] ([UserRoleId])
GO
ALTER TABLE [dbo].[ModuleRoleAccess] CHECK CONSTRAINT [FK_ModuleRoleAccess_UserRole]
GO
/****** Object:  ForeignKey [FK_Address_Company]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Company]
GO
/****** Object:  ForeignKey [FK_ProjectTollgateDeliverable_DeliverableTemplate1]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TollgateTemplateDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTollgateDeliverable_DeliverableTemplate1] FOREIGN KEY([DeliverableTemplateId])
REFERENCES [dbo].[DeliverableTemplate] ([DeliverableTemplateId])
GO
ALTER TABLE [dbo].[TollgateTemplateDeliverable] CHECK CONSTRAINT [FK_ProjectTollgateDeliverable_DeliverableTemplate1]
GO
/****** Object:  ForeignKey [FK_ProjectTollgateDeliverable_TollgateTemplate]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TollgateTemplateDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTollgateDeliverable_TollgateTemplate] FOREIGN KEY([TollgateTemplateId])
REFERENCES [dbo].[TollgateTemplate] ([TollgateTemplateId])
GO
ALTER TABLE [dbo].[TollgateTemplateDeliverable] CHECK CONSTRAINT [FK_ProjectTollgateDeliverable_TollgateTemplate]
GO
/****** Object:  ForeignKey [FK_TaskTemplate_AppOption]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TaskTemplate]  WITH CHECK ADD  CONSTRAINT [FK_TaskTemplate_AppOption] FOREIGN KEY([StatusId])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[TaskTemplate] CHECK CONSTRAINT [FK_TaskTemplate_AppOption]
GO
/****** Object:  ForeignKey [FK__User__CompanyId__489AC854]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  ForeignKey [FK_User_UserRole]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRole] FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[UserRole] ([UserRoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserRole]
GO
/****** Object:  ForeignKey [FK_EventParameter_EventParameter]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[SystemEventParameter]  WITH CHECK ADD  CONSTRAINT [FK_EventParameter_EventParameter] FOREIGN KEY([EventId])
REFERENCES [dbo].[SystemEvent] ([EventId])
GO
ALTER TABLE [dbo].[SystemEventParameter] CHECK CONSTRAINT [FK_EventParameter_EventParameter]
GO
/****** Object:  ForeignKey [FK_Project_Company]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Company]
GO
/****** Object:  ForeignKey [FK_Project_Setting]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Setting] FOREIGN KEY([Status])
REFERENCES [dbo].[Setting] ([SettingId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Setting]
GO
/****** Object:  ForeignKey [FK_Project_User]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_User] FOREIGN KEY([ProjectManager])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_User]
GO
/****** Object:  ForeignKey [FK_Project_User1]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_User1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_User1]
GO
/****** Object:  ForeignKey [FK_Project_User2]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_User2] FOREIGN KEY([LastModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_User2]
GO
/****** Object:  ForeignKey [FK_MetaTagChoice_MetaTag]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[MetaTagChoice]  WITH CHECK ADD  CONSTRAINT [FK_MetaTagChoice_MetaTag] FOREIGN KEY([MetaTagId])
REFERENCES [dbo].[MetaTag] ([MetaTagId])
GO
ALTER TABLE [dbo].[MetaTagChoice] CHECK CONSTRAINT [FK_MetaTagChoice_MetaTag]
GO
/****** Object:  ForeignKey [FK_NotesReason_User]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NotesReason]  WITH CHECK ADD  CONSTRAINT [FK_NotesReason_User] FOREIGN KEY([Author])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[NotesReason] CHECK CONSTRAINT [FK_NotesReason_User]
GO
/****** Object:  ForeignKey [FK_NotesReason_User1]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NotesReason]  WITH CHECK ADD  CONSTRAINT [FK_NotesReason_User1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[NotesReason] CHECK CONSTRAINT [FK_NotesReason_User1]
GO
/****** Object:  ForeignKey [FK_Non_ConformanceTemplate_Company]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformanceTemplate]  WITH CHECK ADD  CONSTRAINT [FK_Non_ConformanceTemplate_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[NonConformanceTemplate] CHECK CONSTRAINT [FK_Non_ConformanceTemplate_Company]
GO
/****** Object:  ForeignKey [FK_Non_ConformanceTemplate_User]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformanceTemplate]  WITH CHECK ADD  CONSTRAINT [FK_Non_ConformanceTemplate_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[NonConformanceTemplate] CHECK CONSTRAINT [FK_Non_ConformanceTemplate_User]
GO
/****** Object:  ForeignKey [FK_NonConformanceTemplate_AppOption]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformanceTemplate]  WITH CHECK ADD  CONSTRAINT [FK_NonConformanceTemplate_AppOption] FOREIGN KEY([TargetItemType])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[NonConformanceTemplate] CHECK CONSTRAINT [FK_NonConformanceTemplate_AppOption]
GO
/****** Object:  ForeignKey [FK_NonConformanceTemplate_AppOption1]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformanceTemplate]  WITH CHECK ADD  CONSTRAINT [FK_NonConformanceTemplate_AppOption1] FOREIGN KEY([CompletionMethod])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[NonConformanceTemplate] CHECK CONSTRAINT [FK_NonConformanceTemplate_AppOption1]
GO
/****** Object:  ForeignKey [FK_NonConformanceTemplate_NonConformanceTemplate]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformanceTemplate]  WITH CHECK ADD  CONSTRAINT [FK_NonConformanceTemplate_NonConformanceTemplate] FOREIGN KEY([NonConformanceTemplateId])
REFERENCES [dbo].[NonConformanceTemplate] ([NonConformanceTemplateId])
GO
ALTER TABLE [dbo].[NonConformanceTemplate] CHECK CONSTRAINT [FK_NonConformanceTemplate_NonConformanceTemplate]
GO
/****** Object:  ForeignKey [FK_NonConformanceTemplate_Setting]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformanceTemplate]  WITH CHECK ADD  CONSTRAINT [FK_NonConformanceTemplate_Setting] FOREIGN KEY([Status])
REFERENCES [dbo].[Setting] ([SettingId])
GO
ALTER TABLE [dbo].[NonConformanceTemplate] CHECK CONSTRAINT [FK_NonConformanceTemplate_Setting]
GO
/****** Object:  ForeignKey [FK_NonConformanceTemplate_Setting1]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformanceTemplate]  WITH CHECK ADD  CONSTRAINT [FK_NonConformanceTemplate_Setting1] FOREIGN KEY([Severity])
REFERENCES [dbo].[Setting] ([SettingId])
GO
ALTER TABLE [dbo].[NonConformanceTemplate] CHECK CONSTRAINT [FK_NonConformanceTemplate_Setting1]
GO
/****** Object:  ForeignKey [FK_EventFired_Company]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[EventFired]  WITH CHECK ADD  CONSTRAINT [FK_EventFired_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[EventFired] CHECK CONSTRAINT [FK_EventFired_Company]
GO
/****** Object:  ForeignKey [FK_EventFired_EventFired]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[EventFired]  WITH CHECK ADD  CONSTRAINT [FK_EventFired_EventFired] FOREIGN KEY([FiredId])
REFERENCES [dbo].[EventFired] ([FiredId])
GO
ALTER TABLE [dbo].[EventFired] CHECK CONSTRAINT [FK_EventFired_EventFired]
GO
/****** Object:  ForeignKey [FK_EventFired_EventId]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[EventFired]  WITH CHECK ADD  CONSTRAINT [FK_EventFired_EventId] FOREIGN KEY([EventId])
REFERENCES [dbo].[SystemEvent] ([EventId])
GO
ALTER TABLE [dbo].[EventFired] CHECK CONSTRAINT [FK_EventFired_EventId]
GO
/****** Object:  ForeignKey [FK_EventFired_User]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[EventFired]  WITH CHECK ADD  CONSTRAINT [FK_EventFired_User] FOREIGN KEY([FiredBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[EventFired] CHECK CONSTRAINT [FK_EventFired_User]
GO
/****** Object:  ForeignKey [FK_Alert_AppOption_Communication]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Alert]  WITH CHECK ADD  CONSTRAINT [FK_Alert_AppOption_Communication] FOREIGN KEY([CommunicationModeId])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[Alert] CHECK CONSTRAINT [FK_Alert_AppOption_Communication]
GO
/****** Object:  ForeignKey [FK_Alert_AppOption_Module]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Alert]  WITH CHECK ADD  CONSTRAINT [FK_Alert_AppOption_Module] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[Alert] CHECK CONSTRAINT [FK_Alert_AppOption_Module]
GO
/****** Object:  ForeignKey [FK_Alert_AppOption_Scope]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Alert]  WITH CHECK ADD  CONSTRAINT [FK_Alert_AppOption_Scope] FOREIGN KEY([ScopeId])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[Alert] CHECK CONSTRAINT [FK_Alert_AppOption_Scope]
GO
/****** Object:  ForeignKey [FK_Alert_AppOption_Severity]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Alert]  WITH CHECK ADD  CONSTRAINT [FK_Alert_AppOption_Severity] FOREIGN KEY([SeverityId])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[Alert] CHECK CONSTRAINT [FK_Alert_AppOption_Severity]
GO
/****** Object:  ForeignKey [FK_Alert_AssignedBy_User]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Alert]  WITH CHECK ADD  CONSTRAINT [FK_Alert_AssignedBy_User] FOREIGN KEY([AssignedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Alert] CHECK CONSTRAINT [FK_Alert_AssignedBy_User]
GO
/****** Object:  ForeignKey [FK_Alert_Company]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Alert]  WITH CHECK ADD  CONSTRAINT [FK_Alert_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[Alert] CHECK CONSTRAINT [FK_Alert_Company]
GO
/****** Object:  ForeignKey [FK_CompanyTollgateTemplate_Company1]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[CompanyTollgateTemplate]  WITH CHECK ADD  CONSTRAINT [FK_CompanyTollgateTemplate_Company1] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[CompanyTollgateTemplate] CHECK CONSTRAINT [FK_CompanyTollgateTemplate_Company1]
GO
/****** Object:  ForeignKey [FK_CompanyTollgateTemplate_User]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[CompanyTollgateTemplate]  WITH CHECK ADD  CONSTRAINT [FK_CompanyTollgateTemplate_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[CompanyTollgateTemplate] CHECK CONSTRAINT [FK_CompanyTollgateTemplate_User]
GO
/****** Object:  ForeignKey [FK_AlertItemDetail_Alert]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[AlertRelatedItem]  WITH CHECK ADD  CONSTRAINT [FK_AlertItemDetail_Alert] FOREIGN KEY([AlertId])
REFERENCES [dbo].[Alert] ([AlertId])
GO
ALTER TABLE [dbo].[AlertRelatedItem] CHECK CONSTRAINT [FK_AlertItemDetail_Alert]
GO
/****** Object:  ForeignKey [FK_AlertRelatedItem_RelatedItem]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[AlertRelatedItem]  WITH CHECK ADD  CONSTRAINT [FK_AlertRelatedItem_RelatedItem] FOREIGN KEY([RelatedItemId])
REFERENCES [dbo].[RelatedItem] ([RelatedItemId])
GO
ALTER TABLE [dbo].[AlertRelatedItem] CHECK CONSTRAINT [FK_AlertRelatedItem_RelatedItem]
GO
/****** Object:  ForeignKey [FK_AlertInstance_Alert]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[AlertInstance]  WITH CHECK ADD  CONSTRAINT [FK_AlertInstance_Alert] FOREIGN KEY([AlertId])
REFERENCES [dbo].[Alert] ([AlertId])
GO
ALTER TABLE [dbo].[AlertInstance] CHECK CONSTRAINT [FK_AlertInstance_Alert]
GO
/****** Object:  ForeignKey [FK_AlertInstance_AlertTemplate]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[AlertInstance]  WITH CHECK ADD  CONSTRAINT [FK_AlertInstance_AlertTemplate] FOREIGN KEY([AlertTemplateId])
REFERENCES [dbo].[AlertTemplate] ([TemplateId])
GO
ALTER TABLE [dbo].[AlertInstance] CHECK CONSTRAINT [FK_AlertInstance_AlertTemplate]
GO
/****** Object:  ForeignKey [FK_AlertAssignmentDetail_Alert]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[AlertAssignment]  WITH CHECK ADD  CONSTRAINT [FK_AlertAssignmentDetail_Alert] FOREIGN KEY([AlertId])
REFERENCES [dbo].[Alert] ([AlertId])
GO
ALTER TABLE [dbo].[AlertAssignment] CHECK CONSTRAINT [FK_AlertAssignmentDetail_Alert]
GO
/****** Object:  ForeignKey [FK_AlertAssignmentDetail_User]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[AlertAssignment]  WITH CHECK ADD  CONSTRAINT [FK_AlertAssignmentDetail_User] FOREIGN KEY([AssignedTo])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[AlertAssignment] CHECK CONSTRAINT [FK_AlertAssignmentDetail_User]
GO
/****** Object:  ForeignKey [FK_CompanyTemplateTollgate_CompanyTollgateTemplate]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[CompanyTemplateTollgate]  WITH CHECK ADD  CONSTRAINT [FK_CompanyTemplateTollgate_CompanyTollgateTemplate] FOREIGN KEY([CompanyTemplateId])
REFERENCES [dbo].[CompanyTollgateTemplate] ([CompanyTollgateTemplateId])
GO
ALTER TABLE [dbo].[CompanyTemplateTollgate] CHECK CONSTRAINT [FK_CompanyTemplateTollgate_CompanyTollgateTemplate]
GO
/****** Object:  ForeignKey [FK_CompanyTemplateTollgate_TollgateTemplate]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[CompanyTemplateTollgate]  WITH CHECK ADD  CONSTRAINT [FK_CompanyTemplateTollgate_TollgateTemplate] FOREIGN KEY([TollgateTemplateId])
REFERENCES [dbo].[TollgateTemplate] ([TollgateTemplateId])
GO
ALTER TABLE [dbo].[CompanyTemplateTollgate] CHECK CONSTRAINT [FK_CompanyTemplateTollgate_TollgateTemplate]
GO
/****** Object:  ForeignKey [FK_Deliverable_Project]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Deliverable]  WITH CHECK ADD  CONSTRAINT [FK_Deliverable_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([UniqueId])
GO
ALTER TABLE [dbo].[Deliverable] CHECK CONSTRAINT [FK_Deliverable_Project]
GO
/****** Object:  ForeignKey [FK_DeliverableTable_DeliverableTemplate]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Deliverable]  WITH CHECK ADD  CONSTRAINT [FK_DeliverableTable_DeliverableTemplate] FOREIGN KEY([DeliverableTemplateId])
REFERENCES [dbo].[DeliverableTemplate] ([DeliverableTemplateId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deliverable] CHECK CONSTRAINT [FK_DeliverableTable_DeliverableTemplate]
GO
/****** Object:  ForeignKey [FK_NonConformance_Project]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformance]  WITH CHECK ADD  CONSTRAINT [FK_NonConformance_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([UniqueId])
GO
ALTER TABLE [dbo].[NonConformance] CHECK CONSTRAINT [FK_NonConformance_Project]
GO
/****** Object:  ForeignKey [FK_NonConformance_Setting]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformance]  WITH CHECK ADD  CONSTRAINT [FK_NonConformance_Setting] FOREIGN KEY([Status])
REFERENCES [dbo].[Setting] ([SettingId])
GO
ALTER TABLE [dbo].[NonConformance] CHECK CONSTRAINT [FK_NonConformance_Setting]
GO
/****** Object:  ForeignKey [FK_NonConformance_User1]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NonConformance]  WITH CHECK ADD  CONSTRAINT [FK_NonConformance_User1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[NonConformance] CHECK CONSTRAINT [FK_NonConformance_User1]
GO
/****** Object:  ForeignKey [FK_ProjectTollgate_Project]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[ProjectTollgate]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTollgate_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([UniqueId])
GO
ALTER TABLE [dbo].[ProjectTollgate] CHECK CONSTRAINT [FK_ProjectTollgate_Project]
GO
/****** Object:  ForeignKey [FK_ProjectTollgate_Setting]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[ProjectTollgate]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTollgate_Setting] FOREIGN KEY([Status])
REFERENCES [dbo].[Setting] ([SettingId])
GO
ALTER TABLE [dbo].[ProjectTollgate] CHECK CONSTRAINT [FK_ProjectTollgate_Setting]
GO
/****** Object:  ForeignKey [FK_ProjectTollgate_TollgateTemplate]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[ProjectTollgate]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTollgate_TollgateTemplate] FOREIGN KEY([TollgateTemplateId])
REFERENCES [dbo].[TollgateTemplate] ([TollgateTemplateId])
GO
ALTER TABLE [dbo].[ProjectTollgate] CHECK CONSTRAINT [FK_ProjectTollgate_TollgateTemplate]
GO
/****** Object:  ForeignKey [FK_ProjectStatus_Project]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[ProjectStatus]  WITH CHECK ADD  CONSTRAINT [FK_ProjectStatus_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([UniqueId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectStatus] CHECK CONSTRAINT [FK_ProjectStatus_Project]
GO
/****** Object:  ForeignKey [FK_ProjectStatus_User_UpdatedBy]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[ProjectStatus]  WITH CHECK ADD  CONSTRAINT [FK_ProjectStatus_User_UpdatedBy] FOREIGN KEY([UpdateBy])
REFERENCES [dbo].[User] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectStatus] CHECK CONSTRAINT [FK_ProjectStatus_User_UpdatedBy]
GO
/****** Object:  ForeignKey [FK_Task_AppOption_CompletionMethod]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_AppOption_CompletionMethod] FOREIGN KEY([CompletionMethodId])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_AppOption_CompletionMethod]
GO
/****** Object:  ForeignKey [FK_Task_AppOption_Importance]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_AppOption_Importance] FOREIGN KEY([ImportanceId])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_AppOption_Importance]
GO
/****** Object:  ForeignKey [FK_Task_AppOption_Module]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_AppOption_Module] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[AppOption] ([ParamId])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_AppOption_Module]
GO
/****** Object:  ForeignKey [FK_Task_Company]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Company]
GO
/****** Object:  ForeignKey [FK_Task_Project]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([UniqueId])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Project]
GO
/****** Object:  ForeignKey [FK_Task_User_AssingedBy]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_User_AssingedBy] FOREIGN KEY([AssignedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_User_AssingedBy]
GO
/****** Object:  ForeignKey [FK_Transmittal_Project]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Transmittal]  WITH CHECK ADD  CONSTRAINT [FK_Transmittal_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([UniqueId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transmittal] CHECK CONSTRAINT [FK_Transmittal_Project]
GO
/****** Object:  ForeignKey [FK_Transmittal_TransmittalStatus]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Transmittal]  WITH CHECK ADD  CONSTRAINT [FK_Transmittal_TransmittalStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[TransmittalStatus] ([StatusId])
GO
ALTER TABLE [dbo].[Transmittal] CHECK CONSTRAINT [FK_Transmittal_TransmittalStatus]
GO
/****** Object:  ForeignKey [FK_Transmittal_User]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[Transmittal]  WITH CHECK ADD  CONSTRAINT [FK_Transmittal_User] FOREIGN KEY([DocumentControlerUserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Transmittal] CHECK CONSTRAINT [FK_Transmittal_User]
GO
/****** Object:  ForeignKey [FK_TransmittalItem_MetaTagChoice]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TransmittalItem]  WITH CHECK ADD  CONSTRAINT [FK_TransmittalItem_MetaTagChoice] FOREIGN KEY([ReturnCodeId])
REFERENCES [dbo].[MetaTagChoice] ([ChoiceId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TransmittalItem] CHECK CONSTRAINT [FK_TransmittalItem_MetaTagChoice]
GO
/****** Object:  ForeignKey [FK_TransmittalItem_Transmittal]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TransmittalItem]  WITH CHECK ADD  CONSTRAINT [FK_TransmittalItem_Transmittal] FOREIGN KEY([TransmittalId])
REFERENCES [dbo].[Transmittal] ([TransmittalId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TransmittalItem] CHECK CONSTRAINT [FK_TransmittalItem_Transmittal]
GO
/****** Object:  ForeignKey [FK_TransmittalAddress_Transmittal]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TransmittalAddress]  WITH CHECK ADD  CONSTRAINT [FK_TransmittalAddress_Transmittal] FOREIGN KEY([TransmittalId])
REFERENCES [dbo].[Transmittal] ([TransmittalId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TransmittalAddress] CHECK CONSTRAINT [FK_TransmittalAddress_Transmittal]
GO
/****** Object:  ForeignKey [FK_TaskInstance_TaskInstance]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TaskInstance]  WITH CHECK ADD  CONSTRAINT [FK_TaskInstance_TaskInstance] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Task] ([TaskId])
GO
ALTER TABLE [dbo].[TaskInstance] CHECK CONSTRAINT [FK_TaskInstance_TaskInstance]
GO
/****** Object:  ForeignKey [FK_TaskInstance_TaskTemplate]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TaskInstance]  WITH CHECK ADD  CONSTRAINT [FK_TaskInstance_TaskTemplate] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[TaskTemplate] ([TemplateId])
GO
ALTER TABLE [dbo].[TaskInstance] CHECK CONSTRAINT [FK_TaskInstance_TaskTemplate]
GO
/****** Object:  ForeignKey [FK_TaskAssignment_AppOption_TaskState]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TaskAssignment]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssignment_AppOption_TaskState] FOREIGN KEY([StateId])
REFERENCES [dbo].[AppOption] ([ParamId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaskAssignment] CHECK CONSTRAINT [FK_TaskAssignment_AppOption_TaskState]
GO
/****** Object:  ForeignKey [FK_TaskAssignment_Task]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TaskAssignment]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssignment_Task] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Task] ([TaskId])
GO
ALTER TABLE [dbo].[TaskAssignment] CHECK CONSTRAINT [FK_TaskAssignment_Task]
GO
/****** Object:  ForeignKey [FK_TaskAssignmentDetail_User]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[TaskAssignment]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssignmentDetail_User] FOREIGN KEY([AssignedTo])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[TaskAssignment] CHECK CONSTRAINT [FK_TaskAssignmentDetail_User]
GO
/****** Object:  ForeignKey [FK_RelatedItemNonConformance_NonConformance]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[RelatedItemNonConformance]  WITH CHECK ADD  CONSTRAINT [FK_RelatedItemNonConformance_NonConformance] FOREIGN KEY([NonConformanceId])
REFERENCES [dbo].[NonConformance] ([NonConformanceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RelatedItemNonConformance] CHECK CONSTRAINT [FK_RelatedItemNonConformance_NonConformance]
GO
/****** Object:  ForeignKey [FK_RelatedDeliverableItems_Deliverable]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[RelatedDeliverableItems]  WITH CHECK ADD  CONSTRAINT [FK_RelatedDeliverableItems_Deliverable] FOREIGN KEY([DeliverableId])
REFERENCES [dbo].[Deliverable] ([DeliverableId])
GO
ALTER TABLE [dbo].[RelatedDeliverableItems] CHECK CONSTRAINT [FK_RelatedDeliverableItems_Deliverable]
GO
/****** Object:  ForeignKey [FK_RelatedDeliverableItems_RelatedItem]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[RelatedDeliverableItems]  WITH CHECK ADD  CONSTRAINT [FK_RelatedDeliverableItems_RelatedItem] FOREIGN KEY([RelatedItemId])
REFERENCES [dbo].[RelatedItem] ([RelatedItemId])
GO
ALTER TABLE [dbo].[RelatedDeliverableItems] CHECK CONSTRAINT [FK_RelatedDeliverableItems_RelatedItem]
GO
/****** Object:  ForeignKey [FK_NonConformanceNotesReason_NotesReason]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NotesReasonNonConformance]  WITH CHECK ADD  CONSTRAINT [FK_NonConformanceNotesReason_NotesReason] FOREIGN KEY([NotesReasonId])
REFERENCES [dbo].[NotesReason] ([NotesReasonId])
GO
ALTER TABLE [dbo].[NotesReasonNonConformance] CHECK CONSTRAINT [FK_NonConformanceNotesReason_NotesReason]
GO
/****** Object:  ForeignKey [FK_NotesReasonNonConformance_NonConformance]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NotesReasonNonConformance]  WITH CHECK ADD  CONSTRAINT [FK_NotesReasonNonConformance_NonConformance] FOREIGN KEY([NonConformanceId])
REFERENCES [dbo].[NonConformance] ([NonConformanceId])
GO
ALTER TABLE [dbo].[NotesReasonNonConformance] CHECK CONSTRAINT [FK_NotesReasonNonConformance_NonConformance]
GO
/****** Object:  ForeignKey [FK_NotesReasonDeliverable_Deliverable]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NotesReasonDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_NotesReasonDeliverable_Deliverable] FOREIGN KEY([DeliverableId])
REFERENCES [dbo].[Deliverable] ([DeliverableId])
GO
ALTER TABLE [dbo].[NotesReasonDeliverable] CHECK CONSTRAINT [FK_NotesReasonDeliverable_Deliverable]
GO
/****** Object:  ForeignKey [FK_NotesReasonDeliverable_NotesReason]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[NotesReasonDeliverable]  WITH CHECK ADD  CONSTRAINT [FK_NotesReasonDeliverable_NotesReason] FOREIGN KEY([NotesReasonId])
REFERENCES [dbo].[NotesReason] ([NotesReasonId])
GO
ALTER TABLE [dbo].[NotesReasonDeliverable] CHECK CONSTRAINT [FK_NotesReasonDeliverable_NotesReason]
GO
/****** Object:  ForeignKey [FK_EmailCommunicationMethod_Transmittal]    Script Date: 03/21/2013 10:50:48 ******/
ALTER TABLE [dbo].[EmailCommunicationMethod]  WITH CHECK ADD  CONSTRAINT [FK_EmailCommunicationMethod_Transmittal] FOREIGN KEY([TransmittalId])
REFERENCES [dbo].[Transmittal] ([TransmittalId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailCommunicationMethod] CHECK CONSTRAINT [FK_EmailCommunicationMethod_Transmittal]
GO
