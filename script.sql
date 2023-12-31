CREATE DATABASE Control_de_libros

USE [Control_de_libros]
GO
/****** Object:  Table [dbo].[Autores]    Script Date: 29/8/2023 10:09:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoAutor] [nvarchar](max) NULL,
	[PrimerNombre] [nvarchar](max) NULL,
	[PrimerApellido] [nvarchar](max) NULL,
	[FechaNacimiento] [datetime2](7) NOT NULL,
	[Nacionalidad] [nvarchar](max) NULL,
	[Edad] [int] NOT NULL,
 CONSTRAINT [PK_Autores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_AutorLibro]    Script Date: 29/8/2023 10:09:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_AutorLibro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[CodigoAutor] [nvarchar](max) NULL,
	[Codigo_Libro] [nvarchar](max) NULL,
 CONSTRAINT [PK_Detalle_AutorLibro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Editoriales]    Script Date: 29/8/2023 10:09:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editoriales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoEditorial] [nvarchar](max) NULL,
	[Nombre] [nvarchar](max) NULL,
	[Pais] [nvarchar](max) NULL,
 CONSTRAINT [PK_Editoriales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 29/8/2023 10:09:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoLibro] [nvarchar](max) NULL,
	[Titulo] [nvarchar](max) NULL,
	[ISBN] [nvarchar](max) NULL,
	[AnoEdicion] [int] NOT NULL,
	[CodigoEditorial] [nvarchar](max) NULL,
	[PublisherId] [int] NOT NULL,
 CONSTRAINT [PK_Libros] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Autores] ON 

INSERT [dbo].[Autores] ([Id], [CodigoAutor], [PrimerNombre], [PrimerApellido], [FechaNacimiento], [Nacionalidad], [Edad]) VALUES (1, N'PL001', N'Pablo', N'López', CAST(N'1960-08-19T00:00:00.0000000' AS DateTime2), N'Colombiana', 63)
INSERT [dbo].[Autores] ([Id], [CodigoAutor], [PrimerNombre], [PrimerApellido], [FechaNacimiento], [Nacionalidad], [Edad]) VALUES (2, N'CM002', N'Claudia', N'Martinez', CAST(N'1970-06-10T00:00:00.0000000' AS DateTime2), N'Salvadoreña', 45)
INSERT [dbo].[Autores] ([Id], [CodigoAutor], [PrimerNombre], [PrimerApellido], [FechaNacimiento], [Nacionalidad], [Edad]) VALUES (3, N'PM003', N'Patricio', N'Murry', CAST(N'1967-12-12T00:00:00.0000000' AS DateTime2), N'Española', 47)
INSERT [dbo].[Autores] ([Id], [CodigoAutor], [PrimerNombre], [PrimerApellido], [FechaNacimiento], [Nacionalidad], [Edad]) VALUES (4, N'NH004', N'Nuria', N'Hernandez', CAST(N'1980-09-03T00:00:00.0000000' AS DateTime2), N'Colombiana', 34)
INSERT [dbo].[Autores] ([Id], [CodigoAutor], [PrimerNombre], [PrimerApellido], [FechaNacimiento], [Nacionalidad], [Edad]) VALUES (5, N'HM005', N'Helen', N'Martinez', CAST(N'1980-11-22T00:00:00.0000000' AS DateTime2), N'Española', 34)
INSERT [dbo].[Autores] ([Id], [CodigoAutor], [PrimerNombre], [PrimerApellido], [FechaNacimiento], [Nacionalidad], [Edad]) VALUES (6, N'HM005', N'Helen', N'Martinez', CAST(N'1967-09-13T00:00:00.0000000' AS DateTime2), N'Colombiano', 54)
SET IDENTITY_INSERT [dbo].[Autores] OFF
GO
SET IDENTITY_INSERT [dbo].[Detalle_AutorLibro] ON 

INSERT [dbo].[Detalle_AutorLibro] ([Id], [BookId], [AuthorId], [CodigoAutor], [Codigo_Libro]) VALUES (1, 1, 1, N'PL001', N'BDCOL00001')
INSERT [dbo].[Detalle_AutorLibro] ([Id], [BookId], [AuthorId], [CodigoAutor], [Codigo_Libro]) VALUES (2, 2, 5, N'PL001', N'ABESP00006')
INSERT [dbo].[Detalle_AutorLibro] ([Id], [BookId], [AuthorId], [CodigoAutor], [Codigo_Libro]) VALUES (6, 4, 2, N'PM003', N'BDESP00002')
INSERT [dbo].[Detalle_AutorLibro] ([Id], [BookId], [AuthorId], [CodigoAutor], [Codigo_Libro]) VALUES (7, 5, 3, N'PM003', N'PRCOL00002')
INSERT [dbo].[Detalle_AutorLibro] ([Id], [BookId], [AuthorId], [CodigoAutor], [Codigo_Libro]) VALUES (8, 6, 3, N'NH004', N'DWING00003')
INSERT [dbo].[Detalle_AutorLibro] ([Id], [BookId], [AuthorId], [CodigoAutor], [Codigo_Libro]) VALUES (9, 7, 5, N'HM005', N'PRING00004')
INSERT [dbo].[Detalle_AutorLibro] ([Id], [BookId], [AuthorId], [CodigoAutor], [Codigo_Libro]) VALUES (10, 8, 3, N'PM003', N'HJMEX00005')
SET IDENTITY_INSERT [dbo].[Detalle_AutorLibro] OFF
GO
SET IDENTITY_INSERT [dbo].[Editoriales] ON 

INSERT [dbo].[Editoriales] ([Id], [CodigoEditorial], [Nombre], [Pais]) VALUES (1, N'ED002', N'Amaya Multimedia', N'España')
INSERT [dbo].[Editoriales] ([Id], [CodigoEditorial], [Nombre], [Pais]) VALUES (3, N'ED003', N'McGrawHill', N'Inglaterra')
INSERT [dbo].[Editoriales] ([Id], [CodigoEditorial], [Nombre], [Pais]) VALUES (4, N'ED004', N'Reyes', N'Mexico')
INSERT [dbo].[Editoriales] ([Id], [CodigoEditorial], [Nombre], [Pais]) VALUES (5, N'ED005', N'Prentice Hall', N'Inglaterra')
INSERT [dbo].[Editoriales] ([Id], [CodigoEditorial], [Nombre], [Pais]) VALUES (7, N'ED001', N'Omega 200', N'Colombia')
INSERT [dbo].[Editoriales] ([Id], [CodigoEditorial], [Nombre], [Pais]) VALUES (8, N'GB001', N'Santillana', N'Rep. Dom.')
SET IDENTITY_INSERT [dbo].[Editoriales] OFF
GO
SET IDENTITY_INSERT [dbo].[Libros] ON 

INSERT [dbo].[Libros] ([Id], [CodigoLibro], [Titulo], [ISBN], [AnoEdicion], [CodigoEditorial], [PublisherId]) VALUES (1, N'BDCOL00001', N'Fundamentos de Base de datos', N'12333-8999938', 2004, N'ED001', 1)
INSERT [dbo].[Libros] ([Id], [CodigoLibro], [Titulo], [ISBN], [AnoEdicion], [CodigoEditorial], [PublisherId]) VALUES (2, N'ABESP00006', N'Administracion de Base de datos', N'585885-88484848', 2010, N'ED005', 1)
INSERT [dbo].[Libros] ([Id], [CodigoLibro], [Titulo], [ISBN], [AnoEdicion], [CodigoEditorial], [PublisherId]) VALUES (4, N'BDESP00002', N'La Biblia de SQL Server 2008', N'3444-499888-88', 2008, N'ED002', 5)
INSERT [dbo].[Libros] ([Id], [CodigoLibro], [Titulo], [ISBN], [AnoEdicion], [CodigoEditorial], [PublisherId]) VALUES (5, N'PRCOL00002', N'Programacion orientada a objetos', N'8999-9999444', 2008, N'ED001', 7)
INSERT [dbo].[Libros] ([Id], [CodigoLibro], [Titulo], [ISBN], [AnoEdicion], [CodigoEditorial], [PublisherId]) VALUES (6, N'DWING00003', N'Diseño Web y Hojas de estilo', N'300098-99999', 2010, N'ED003', 3)
INSERT [dbo].[Libros] ([Id], [CodigoLibro], [Titulo], [ISBN], [AnoEdicion], [CodigoEditorial], [PublisherId]) VALUES (7, N'PRING00004', N'Programacion en C/C++', N'45667-87878', 2009, N'ED005', 5)
INSERT [dbo].[Libros] ([Id], [CodigoLibro], [Titulo], [ISBN], [AnoEdicion], [CodigoEditorial], [PublisherId]) VALUES (8, N'HJMEX00005', N'Uso de hojas de estilo con JavaScript', N'0990-87878787', 2008, N'ED004', 4)
SET IDENTITY_INSERT [dbo].[Libros] OFF
GO
ALTER TABLE [dbo].[Detalle_AutorLibro]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_AutorLibro_Autores_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Autores] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Detalle_AutorLibro] CHECK CONSTRAINT [FK_Detalle_AutorLibro_Autores_AuthorId]
GO
ALTER TABLE [dbo].[Detalle_AutorLibro]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_AutorLibro_Libros_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Libros] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Detalle_AutorLibro] CHECK CONSTRAINT [FK_Detalle_AutorLibro_Libros_BookId]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Editoriales_PublisherId] FOREIGN KEY([PublisherId])
REFERENCES [dbo].[Editoriales] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Editoriales_PublisherId]
GO
