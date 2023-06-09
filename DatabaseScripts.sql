USE [NewMM]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/21/2012 13:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Roles] ([RoleId], [Role], [Description]) VALUES (0, N'SuperAdmin', N'Super Admin')
INSERT [dbo].[Roles] ([RoleId], [Role], [Description]) VALUES (1, N'OrganizationAdmin', N'Organization Admin')
/****** Object:  Table [dbo].[Modules]    Script Date: 12/21/2012 13:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modules](
	[ModuleId] [int] NOT NULL,
	[ModuleName] [varchar](100) NOT NULL,
	[ModuleDescription] [varchar](200) NULL,
 CONSTRAINT [PK_Modules] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/21/2012 13:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[Contact] [varchar](50) NULL,
	[Password] [varchar](20) NOT NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModuleControllers]    Script Date: 12/21/2012 13:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModuleControllers](
	[ControllerId] [int] NOT NULL,
	[ModuleId] [int] NOT NULL,
	[ControllerName] [varchar](100) NOT NULL,
	[ControllerDescription] [varchar](200) NULL,
 CONSTRAINT [PK_ModuleControllers] PRIMARY KEY CLUSTERED 
(
	[ControllerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModuleControllerActions]    Script Date: 12/21/2012 13:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModuleControllerActions](
	[ActionId] [int] NOT NULL,
	[ModuleId] [int] NOT NULL,
	[ControllerId] [int] NOT NULL,
	[Action] [varchar](50) NOT NULL,
	[ActionType] [nchar](10) NULL,
	[ActionDescription] [varchar](200) NULL,
 CONSTRAINT [PK_ModuleControllerActions] PRIMARY KEY CLUSTERED 
(
	[ActionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PermissionMatrix]    Script Date: 12/21/2012 13:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionMatrix](
	[PermissionId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[IsRoleIdUserId] [bit] NOT NULL,
	[ActionId] [int] NOT NULL,
 CONSTRAINT [PK_PermissionMatrix] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Users_Roles]    Script Date: 12/21/2012 13:35:14 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
/****** Object:  ForeignKey [FK_ModuleControllers_Modules]    Script Date: 12/21/2012 13:35:14 ******/
ALTER TABLE [dbo].[ModuleControllers]  WITH CHECK ADD  CONSTRAINT [FK_ModuleControllers_Modules] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Modules] ([ModuleId])
GO
ALTER TABLE [dbo].[ModuleControllers] CHECK CONSTRAINT [FK_ModuleControllers_Modules]
GO
/****** Object:  ForeignKey [FK_ModuleControllerActions_ModuleControllers]    Script Date: 12/21/2012 13:35:14 ******/
ALTER TABLE [dbo].[ModuleControllerActions]  WITH CHECK ADD  CONSTRAINT [FK_ModuleControllerActions_ModuleControllers] FOREIGN KEY([ControllerId])
REFERENCES [dbo].[ModuleControllers] ([ControllerId])
GO
ALTER TABLE [dbo].[ModuleControllerActions] CHECK CONSTRAINT [FK_ModuleControllerActions_ModuleControllers]
GO
/****** Object:  ForeignKey [FK_ModuleControllerActions_Modules]    Script Date: 12/21/2012 13:35:14 ******/
ALTER TABLE [dbo].[ModuleControllerActions]  WITH CHECK ADD  CONSTRAINT [FK_ModuleControllerActions_Modules] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Modules] ([ModuleId])
GO
ALTER TABLE [dbo].[ModuleControllerActions] CHECK CONSTRAINT [FK_ModuleControllerActions_Modules]
GO
/****** Object:  ForeignKey [FK_PermissionMatrix_ModuleControllerActions]    Script Date: 12/21/2012 13:35:14 ******/
ALTER TABLE [dbo].[PermissionMatrix]  WITH CHECK ADD  CONSTRAINT [FK_PermissionMatrix_ModuleControllerActions] FOREIGN KEY([ActionId])
REFERENCES [dbo].[ModuleControllerActions] ([ActionId])
GO
ALTER TABLE [dbo].[PermissionMatrix] CHECK CONSTRAINT [FK_PermissionMatrix_ModuleControllerActions]
GO
/****** Object:  ForeignKey [FK_PermissionMatrix_Roles]    Script Date: 12/21/2012 13:35:14 ******/
ALTER TABLE [dbo].[PermissionMatrix]  WITH CHECK ADD  CONSTRAINT [FK_PermissionMatrix_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[PermissionMatrix] CHECK CONSTRAINT [FK_PermissionMatrix_Roles]
GO
/****** Object:  ForeignKey [FK_PermissionMatrix_Users]    Script Date: 12/21/2012 13:35:14 ******/
ALTER TABLE [dbo].[PermissionMatrix]  WITH CHECK ADD  CONSTRAINT [FK_PermissionMatrix_Users] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[PermissionMatrix] CHECK CONSTRAINT [FK_PermissionMatrix_Users]
GO
