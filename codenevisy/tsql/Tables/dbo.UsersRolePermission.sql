CREATE TABLE [dbo].[UsersRolePermission]
(
[UsersRolePermissionID] [smallint] NOT NULL IDENTITY(1, 1),
[UsersRoleID] [tinyint] NOT NULL,
[UsersPermissionID] [tinyint] NOT NULL,
[CreateByUsersID] [int] NOT NULL,
[CreateDate] [datetime2] NOT NULL CONSTRAINT [DF_UsersRolePermission_CreateDate] DEFAULT (getdate()),
[Description] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL,
[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UsersRolePermission] ADD CONSTRAINT [PK_UsersRolePermission] PRIMARY KEY CLUSTERED ([UsersRolePermissionID]) ON [PRIMARY]
GO
