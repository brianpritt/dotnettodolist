USE [ToDoList]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/6/2017 2:07:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Items]    Script Date: 2/6/2017 2:07:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (1, N'Home')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2, N'Work')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (3, N'In-Laws')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (4, N'Art Project')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ItemId], [Description], [CategoryId]) VALUES (1, N'Paint Painting', 4)
INSERT [dbo].[Items] ([ItemId], [Description], [CategoryId]) VALUES (2, N'put nails in wall', 1)
INSERT [dbo].[Items] ([ItemId], [Description], [CategoryId]) VALUES (3, N'Finally get to work on time', 2)
INSERT [dbo].[Items] ([ItemId], [Description], [CategoryId]) VALUES (4, N'Buy mother in law a sweater', 3)
INSERT [dbo].[Items] ([ItemId], [Description], [CategoryId]) VALUES (5, N'Buy wood filler', 1)
SET IDENTITY_INSERT [dbo].[Items] OFF
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
