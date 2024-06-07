CREATE TABLE [dbo].[UsersRole]
(
[UsersRoleID] [tinyint] NOT NULL IDENTITY(1, 1),
[RoleName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NULL,
[IsDeleted] [bit] NOT NULL,
[CreateDate] [datetime2] NOT NULL CONSTRAINT [DF_UsersRole_CreateDate] DEFAULT (getdate()),
[CreateByUserID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UsersRole] ADD CONSTRAINT [PK_UsersRole] PRIMARY KEY CLUSTERED ([UsersRoleID]) ON [PRIMARY]
GO
