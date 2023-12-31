USE [BaseForPractic]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 17.11.2023 0:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[IdApplication] [int] IDENTITY(1,1) NOT NULL,
	[Kod] [int] NULL,
	[Number] [nvarchar](50) NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[IdApplication] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cafedra]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cafedra](
	[Shifr] [nchar](2) NOT NULL,
	[NameCafedra] [nvarchar](50) NULL,
	[Abriviation] [nchar](2) NULL,
 CONSTRAINT [PK_Cafedra] PRIMARY KEY CLUSTERED 
(
	[Shifr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline](
	[Kod] [int] NOT NULL,
	[Volume] [int] NULL,
	[NameDiscipline] [nvarchar](50) NULL,
	[Shifr] [nchar](2) NULL,
 CONSTRAINT [PK_Discipline] PRIMARY KEY CLUSTERED 
(
	[Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[TabNumber] [int] NOT NULL,
	[Shifr] [nchar](2) NULL,
	[FullName] [nvarchar](100) NULL,
	[IdPost] [int] NULL,
	[idEnginerSpeciality] [int] NULL,
	[Oklad] [decimal](8, 2) NULL,
	[Shef] [int] NULL,
	[Expirience] [int] NULL,
	[IdTitle] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[TabNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnginerSpeciality]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnginerSpeciality](
	[idEnginerSpeciality] [int] NOT NULL,
	[NameEnginerSpeciality] [nvarchar](50) NULL,
 CONSTRAINT [PK_EnginerSpeciality] PRIMARY KEY CLUSTERED 
(
	[idEnginerSpeciality] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[IdExam] [int] NOT NULL,
	[DateEXam] [date] NULL,
	[Kod] [int] NULL,
	[Auditory] [nvarchar](50) NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[IdExam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamStudent]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamStudent](
	[IdExamStudent] [int] IDENTITY(1,1) NOT NULL,
	[IdExam] [int] NULL,
	[RegNumber] [int] NOT NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_ExamStudent] PRIMARY KEY CLUSTERED 
(
	[IdExamStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facultet]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facultet](
	[Abriviation] [nchar](2) NOT NULL,
	[NameFacultet] [nvarchar](50) NULL,
 CONSTRAINT [PK_Facultet] PRIMARY KEY CLUSTERED 
(
	[Abriviation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[IdPost] [int] NOT NULL,
	[NamePost] [nvarchar](70) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[IdPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[Number] [nvarchar](50) NOT NULL,
	[Direction] [nvarchar](50) NULL,
	[Shifr] [nchar](2) NULL,
 CONSTRAINT [PK_Speciality] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[RegNumber] [int] NOT NULL,
	[Number] [nvarchar](50) NULL,
	[FullName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[RegNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Title]    Script Date: 17.11.2023 0:19:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title](
	[IdTitle] [int] NOT NULL,
	[NameTitle] [nvarchar](50) NULL,
	[Degree] [nvarchar](50) NULL,
 CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED 
(
	[IdTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Application] ON 

INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (1, 101, N'01.03.2004')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (2, 205, N'01.03.2004')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (3, 209, N'01.03.2004')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (4, 101, N'09.03.2002')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (5, 102, N'09.03.2002')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (6, 103, N'09.03.2002')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (7, 202, N'09.03.2002')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (8, 205, N'09.03.2002')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (9, 209, N'09.03.2002')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (10, 101, N'09.03.2003')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (11, 102, N'09.03.2003')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (12, 103, N'09.03.2003')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (13, 202, N'09.03.2003')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (14, 205, N'09.03.2003')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (15, 101, N'14.03.2002')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (16, 102, N'14.03.2002')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (17, 103, N'14.03.2002')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (18, 204, N'14.03.2002')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (19, 101, N'38.03.05')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (20, 103, N'38.03.05')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (21, 202, N'38.03.05')
INSERT [dbo].[Application] ([IdApplication], [Kod], [Number]) VALUES (22, 209, N'38.03.05')
SET IDENTITY_INSERT [dbo].[Application] OFF
GO
INSERT [dbo].[Cafedra] ([Shifr], [NameCafedra], [Abriviation]) VALUES (N'вм', N'Высшая математика', N'ен')
INSERT [dbo].[Cafedra] ([Shifr], [NameCafedra], [Abriviation]) VALUES (N'ис', N'Информационные системы', N'ит')
INSERT [dbo].[Cafedra] ([Shifr], [NameCafedra], [Abriviation]) VALUES (N'мм', N'Математическое моделирование', N'фм')
INSERT [dbo].[Cafedra] ([Shifr], [NameCafedra], [Abriviation]) VALUES (N'оф', N'Общая физика', N'ен')
INSERT [dbo].[Cafedra] ([Shifr], [NameCafedra], [Abriviation]) VALUES (N'пи', N'Прикладная информатика', N'ит')
INSERT [dbo].[Cafedra] ([Shifr], [NameCafedra], [Abriviation]) VALUES (N'эф', N'Экспериментальная физика', N'фм')
GO
INSERT [dbo].[Discipline] ([Kod], [Volume], [NameDiscipline], [Shifr]) VALUES (101, 320, N'Математика', N'вм')
INSERT [dbo].[Discipline] ([Kod], [Volume], [NameDiscipline], [Shifr]) VALUES (102, 160, N'Информатика', N'пи')
INSERT [dbo].[Discipline] ([Kod], [Volume], [NameDiscipline], [Shifr]) VALUES (103, 160, N'Физика', N'оф')
INSERT [dbo].[Discipline] ([Kod], [Volume], [NameDiscipline], [Shifr]) VALUES (202, 120, N'Базы данных', N'ис')
INSERT [dbo].[Discipline] ([Kod], [Volume], [NameDiscipline], [Shifr]) VALUES (204, 160, N'Электроника', N'эф')
INSERT [dbo].[Discipline] ([Kod], [Volume], [NameDiscipline], [Shifr]) VALUES (205, 80, N'Программирование', N'пи')
INSERT [dbo].[Discipline] ([Kod], [Volume], [NameDiscipline], [Shifr]) VALUES (209, 80, N'Моделирование', N'мм')
GO
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (101, N'пи', N'Прохоров П.П.', 1, NULL, CAST(35000.00 AS Decimal(8, 2)), 101, 15, 1)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (102, N'пи', N'Семенов С.С.', 2, NULL, CAST(25000.00 AS Decimal(8, 2)), 101, NULL, 2)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (105, N'пи', N'Петров П.П.', 2, NULL, CAST(25000.00 AS Decimal(8, 2)), 101, NULL, 3)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (153, N'пи', N'Сидорова С.С.', 3, 1, CAST(15000.00 AS Decimal(8, 2)), 102, NULL, NULL)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (201, N'ис', N'Андреев А.А.', 1, NULL, CAST(35000.00 AS Decimal(8, 2)), 201, 18, 4)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (202, N'ис', N'Борисов Б.Б.', 2, NULL, CAST(25000.00 AS Decimal(8, 2)), 201, NULL, 2)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (241, N'ис', N'Глухов Г.Г.', 3, 1, CAST(20000.00 AS Decimal(8, 2)), 201, NULL, NULL)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (242, N'ис', N'Чернов Ч.Ч.', 3, 2, CAST(15000.00 AS Decimal(8, 2)), 202, NULL, NULL)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (301, N'мм', N'Басов Б.Б.', 1, NULL, CAST(35000.00 AS Decimal(8, 2)), 301, 20, 1)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (302, N'мм', N'Сергеева С.С.', 2, NULL, CAST(25000.00 AS Decimal(8, 2)), 301, NULL, 3)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (401, N'оф', N'Волков В.В.', 1, NULL, CAST(35000.00 AS Decimal(8, 2)), 401, 10, 1)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (402, N'оф', N'Зайцев З.З.', 2, NULL, CAST(25000.00 AS Decimal(8, 2)), 401, NULL, 3)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (403, N'оф', N'Смирнов С.С.', 2, NULL, CAST(15000.00 AS Decimal(8, 2)), 401, NULL, 5)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (435, N'оф', N'Лисин Л.Л.', 3, 1, CAST(20000.00 AS Decimal(8, 2)), 402, NULL, NULL)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (501, N'вм', N'Кузнецов К.К.', 1, NULL, CAST(35000.00 AS Decimal(8, 2)), 501, 18, 4)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (502, N'вм', N'Романцев Р.Р.', 2, NULL, CAST(25000.00 AS Decimal(8, 2)), 501, NULL, 4)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (503, N'вм', N'Соловьев С.С.', 2, NULL, CAST(25000.00 AS Decimal(8, 2)), 501, NULL, 2)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (601, N'эф', N'Зверев З.З.', 1, NULL, CAST(35000.00 AS Decimal(8, 2)), 601, 8, 4)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (602, N'эф', N'Сорокина С.С.', 2, NULL, CAST(25000.00 AS Decimal(8, 2)), 601, NULL, NULL)
INSERT [dbo].[Employee] ([TabNumber], [Shifr], [FullName], [IdPost], [idEnginerSpeciality], [Oklad], [Shef], [Expirience], [IdTitle]) VALUES (614, N'эф', N'Григорьев Г.Г.', 3, 2, CAST(20000.00 AS Decimal(8, 2)), 602, NULL, NULL)
GO
INSERT [dbo].[EnginerSpeciality] ([idEnginerSpeciality], [NameEnginerSpeciality]) VALUES (1, N'электроник')
INSERT [dbo].[EnginerSpeciality] ([idEnginerSpeciality], [NameEnginerSpeciality]) VALUES (2, N'программист')
GO
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (1, CAST(N'2015-06-05' AS Date), 102, N'т505')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (2, CAST(N'2015-06-05' AS Date), 202, N'т506')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (3, CAST(N'2015-06-07' AS Date), 102, N'ф419')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (4, CAST(N'2015-06-07' AS Date), 102, N'т506')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (5, CAST(N'2015-06-07' AS Date), 102, N'м425')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (6, CAST(N'2015-06-09' AS Date), 205, N'м424')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (7, CAST(N'2015-06-09' AS Date), 209, N'ф333')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (8, CAST(N'2015-06-10' AS Date), 101, N'т506')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (9, CAST(N'2015-06-10' AS Date), 204, N'ф349')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (10, CAST(N'2015-06-10' AS Date), 209, N'э105')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (11, CAST(N'2015-06-12' AS Date), 101, N'с324')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (12, CAST(N'2015-06-15' AS Date), 101, N'ф417')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (13, CAST(N'2015-06-15' AS Date), 101, N'ф201')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (14, CAST(N'2015-06-15' AS Date), 103, N'ф414')
INSERT [dbo].[Exam] ([IdExam], [DateEXam], [Kod], [Auditory]) VALUES (15, CAST(N'2015-06-17' AS Date), 102, N'т505')
GO
SET IDENTITY_INSERT [dbo].[ExamStudent] ON 

INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (1, 1, 10101, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (2, 1, 10102, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (3, 2, 20101, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (4, 3, 30101, 3)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (5, 4, 30102, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (6, 5, 80101, 5)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (7, 6, 80102, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (8, 7, 20101, 3)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (9, 8, 10101, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (10, 8, 10102, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (11, 9, 30102, 5)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (12, 10, 80101, 5)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (13, 10, 80102, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (14, 11, 80101, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (15, 12, 30101, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (16, 13, 50101, 5)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (17, 13, 50102, 3)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (18, 14, 10101, 4)
INSERT [dbo].[ExamStudent] ([IdExamStudent], [IdExam], [RegNumber], [Score]) VALUES (19, 15, 10101, 5)
SET IDENTITY_INSERT [dbo].[ExamStudent] OFF
GO
INSERT [dbo].[Facultet] ([Abriviation], [NameFacultet]) VALUES (N'Гн', N'Гуманитарные науки')
INSERT [dbo].[Facultet] ([Abriviation], [NameFacultet]) VALUES (N'Ен', N'Естественные науки')
INSERT [dbo].[Facultet] ([Abriviation], [NameFacultet]) VALUES (N'Ит', N'Информационные технологии')
INSERT [dbo].[Facultet] ([Abriviation], [NameFacultet]) VALUES (N'Фм', N'Физико-математический')
GO
INSERT [dbo].[Post] ([IdPost], [NamePost]) VALUES (1, N'зав. кафедрой')
INSERT [dbo].[Post] ([IdPost], [NamePost]) VALUES (2, N'преподаватель')
INSERT [dbo].[Post] ([IdPost], [NamePost]) VALUES (3, N'инженер')
GO
INSERT [dbo].[Speciality] ([Number], [Direction], [Shifr]) VALUES (N'01.03.2004', N'Прикладная математика', N'мм')
INSERT [dbo].[Speciality] ([Number], [Direction], [Shifr]) VALUES (N'09.03.2002', N'Информационные системы и технологии', N'ис')
INSERT [dbo].[Speciality] ([Number], [Direction], [Shifr]) VALUES (N'09.03.2003', N'Прикладная информатика', N'пи')
INSERT [dbo].[Speciality] ([Number], [Direction], [Shifr]) VALUES (N'14.03.2002', N'Ядерные физика и технологии', N'эф')
INSERT [dbo].[Speciality] ([Number], [Direction], [Shifr]) VALUES (N'38.03.05', N'Бизнес-информатика', N'ис')
GO
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (10101, N'09.03.2003', N'Николаева Н. Н.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (10102, N'09.03.2003', N'Иванов И. И.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (10103, N'09.03.2003', N'Крюков К. К.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (20101, N'09.03.2002', N'Андреев А. А.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (20102, N'09.03.2002', N'Федоров Ф. Ф.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (30101, N'14.03.2002', N'Бондаренко Б. Б.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (30102, N'14.03.2002', N'Цветков К. К.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (30103, N'14.03.2002', N'Петров П. П.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (50101, N'01.03.2004', N'Сергеев С. С.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (50102, N'01.03.2004', N'Кудрявцев К. К.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (80101, N'38.03.05', N'Макаров М. М.')
INSERT [dbo].[Student] ([RegNumber], [Number], [FullName]) VALUES (80102, N'38.03.05', N'Яковлев Я. Я.')
GO
INSERT [dbo].[Title] ([IdTitle], [NameTitle], [Degree]) VALUES (1, N'профессор', N'д. т.н.')
INSERT [dbo].[Title] ([IdTitle], [NameTitle], [Degree]) VALUES (2, N'доцент', N'к. ф.-м. н.')
INSERT [dbo].[Title] ([IdTitle], [NameTitle], [Degree]) VALUES (3, N'доцент', N'к. т.н.')
INSERT [dbo].[Title] ([IdTitle], [NameTitle], [Degree]) VALUES (4, N'профессор', N'д. ф.-м. н.')
INSERT [dbo].[Title] ([IdTitle], [NameTitle], [Degree]) VALUES (5, N'ассистент', NULL)
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Discipline] FOREIGN KEY([Kod])
REFERENCES [dbo].[Discipline] ([Kod])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Discipline]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Speciality] FOREIGN KEY([Number])
REFERENCES [dbo].[Speciality] ([Number])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Speciality]
GO
ALTER TABLE [dbo].[Cafedra]  WITH CHECK ADD  CONSTRAINT [FK_Cafedra_Facultet] FOREIGN KEY([Abriviation])
REFERENCES [dbo].[Facultet] ([Abriviation])
GO
ALTER TABLE [dbo].[Cafedra] CHECK CONSTRAINT [FK_Cafedra_Facultet]
GO
ALTER TABLE [dbo].[Discipline]  WITH CHECK ADD  CONSTRAINT [FK_Discipline_Cafedra] FOREIGN KEY([Shifr])
REFERENCES [dbo].[Cafedra] ([Shifr])
GO
ALTER TABLE [dbo].[Discipline] CHECK CONSTRAINT [FK_Discipline_Cafedra]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Cafedra] FOREIGN KEY([Shifr])
REFERENCES [dbo].[Cafedra] ([Shifr])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Cafedra]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_EnginerSpeciality] FOREIGN KEY([idEnginerSpeciality])
REFERENCES [dbo].[EnginerSpeciality] ([idEnginerSpeciality])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_EnginerSpeciality]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Post] FOREIGN KEY([IdPost])
REFERENCES [dbo].[Post] ([IdPost])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Post]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Title] FOREIGN KEY([IdTitle])
REFERENCES [dbo].[Title] ([IdTitle])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Title]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Discipline] FOREIGN KEY([Kod])
REFERENCES [dbo].[Discipline] ([Kod])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Discipline]
GO
ALTER TABLE [dbo].[ExamStudent]  WITH CHECK ADD  CONSTRAINT [FK_ExamStudent_Exam] FOREIGN KEY([IdExam])
REFERENCES [dbo].[Exam] ([IdExam])
GO
ALTER TABLE [dbo].[ExamStudent] CHECK CONSTRAINT [FK_ExamStudent_Exam]
GO
ALTER TABLE [dbo].[ExamStudent]  WITH CHECK ADD  CONSTRAINT [FK_ExamStudent_Student] FOREIGN KEY([RegNumber])
REFERENCES [dbo].[Student] ([RegNumber])
GO
ALTER TABLE [dbo].[ExamStudent] CHECK CONSTRAINT [FK_ExamStudent_Student]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_Cafedra] FOREIGN KEY([Shifr])
REFERENCES [dbo].[Cafedra] ([Shifr])
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_Cafedra]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Speciality] FOREIGN KEY([Number])
REFERENCES [dbo].[Speciality] ([Number])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Speciality]
GO
