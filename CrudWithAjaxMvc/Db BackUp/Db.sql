USE [EmployeeManagementSystem]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/27/2021 7:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [DateOfBirth], [PhoneNumber], [IsDeleted]) VALUES (1, N'Manu', CAST(N'1995-03-06' AS Date), N'9495609646', 0)
INSERT [dbo].[Employee] ([Id], [Name], [DateOfBirth], [PhoneNumber], [IsDeleted]) VALUES (2, N'Sonu', CAST(N'1996-08-14' AS Date), N'9495362069', 0)
INSERT [dbo].[Employee] ([Id], [Name], [DateOfBirth], [PhoneNumber], [IsDeleted]) VALUES (3, N'Vaishak', CAST(N'1994-10-10' AS Date), N'8113036779', 0)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
