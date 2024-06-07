CREATE TABLE [dbo].[Users]
(
[UsersID] [int] NOT NULL IDENTITY(1, 1),
[UserRoleID] [tinyint] NOT NULL,
[Password] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Mobile] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Family] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NationalCode] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OtpCode] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastLogin] [datetime2] NOT NULL,
[IsActive] [bit] NOT NULL,
[CreateDate] [datetime2] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UsersID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'اطلاعات کاربران سیستم غیر از مشتریان', 'SCHEMA', N'dbo', 'TABLE', N'Users', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'آخرین LOGIN', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'LastLogin'
GO
EXEC sp_addextendedproperty N'MS_Description', N'توضیحات', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'کد پیامکی', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'OtpCode'
GO
