CREATE TABLE [dbo].[UsersPermission]
(
[UsersPermissionID] [tinyint] NOT NULL IDENTITY(1, 1),
[PermissionName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ActionName] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ControllerName] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL,
[IsDeleted] [bit] NOT NULL,
[CreateDate] [datetime2] NOT NULL CONSTRAINT [DF_UsersPermission_CreateDate] DEFAULT (getdate()),
[CreateByUsersId] [int] NOT NULL,
[Description] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UsersPermission] ADD CONSTRAINT [PK_UsersPermission] PRIMARY KEY CLUSTERED ([UsersPermissionID]) ON [PRIMARY]
GO
