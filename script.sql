USE [master]
GO
/****** Object:  Database [Pexels]    Script Date: 11.03.2019 15:33:33 ******/
CREATE DATABASE [Pexels]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pexels', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Pexels.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pexels_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Pexels_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Pexels] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pexels].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pexels] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pexels] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pexels] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pexels] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pexels] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pexels] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pexels] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pexels] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pexels] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pexels] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pexels] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pexels] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pexels] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pexels] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pexels] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pexels] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pexels] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pexels] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pexels] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pexels] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pexels] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pexels] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pexels] SET RECOVERY FULL 
GO
ALTER DATABASE [Pexels] SET  MULTI_USER 
GO
ALTER DATABASE [Pexels] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pexels] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pexels] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pexels] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pexels] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Pexels', N'ON'
GO
ALTER DATABASE [Pexels] SET QUERY_STORE = OFF
GO
USE [Pexels]
GO
/****** Object:  Table [dbo].[AboutHeaders]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HeadTitle] [nvarchar](150) NULL,
	[HeadText] [nvarchar](max) NULL,
	[HeadBackground] [nvarchar](150) NULL,
 CONSTRAINT [PK_AboutHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Content] [ntext] NULL,
	[Icon] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](250) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discovers]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discovers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Desc] [nvarchar](150) NULL,
	[CollectionImage] [nvarchar](250) NULL,
	[CollectionTitle] [nvarchar](150) NULL,
	[CollectionCount] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faqs]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faqs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HeadTitle] [nvarchar](150) NULL,
	[HeadText] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Homes]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Homes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HeadTitle] [nvarchar](150) NULL,
	[Title] [nvarchar](150) NULL,
	[Image] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NULL,
	[PhotoId] [int] NULL,
 CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LisenceHeader]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LisenceHeader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Text] [nvarchar](max) NULL,
	[Background] [nvarchar](250) NULL,
 CONSTRAINT [PK_LisenceHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lisences]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lisences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CenterTitle] [nvarchar](150) NULL,
	[CenterText] [nvarchar](250) NULL,
	[AllowText] [nvarchar](250) NULL,
	[CardImage] [nvarchar](250) NULL,
	[CardTitle] [nvarchar](150) NULL,
	[CardText] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopularPhotos]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopularPhotos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Photo] [nvarchar](250) NULL,
	[Icon] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopularSearches]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopularSearches](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Desc] [nvarchar](150) NULL,
	[CollectionPhoto] [nvarchar](250) NULL,
	[CollectionTitle] [nvarchar](150) NULL,
	[CollectionIcon] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 11.03.2019 15:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](255) NULL,
	[Facebook] [nvarchar](250) NULL,
	[Twitter] [nvarchar](250) NULL,
	[Instagram] [nvarchar](250) NULL,
	[Pinterest] [nvarchar](250) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AboutHeaders] ON 

INSERT [dbo].[AboutHeaders] ([Id], [HeadTitle], [HeadText], [HeadBackground]) VALUES (1, N'Yaratıcıları gücləndirmək', N'Pulsuz fond fotoşəkilləri təmin edərək, Pexels bütün dünyada milyonlarla yaradıcıya asanlıqla gözəl
                məhsullar və dizaynlar yaratmağa kömək edir.', N'about-background.jpg')
SET IDENTITY_INSERT [dbo].[AboutHeaders] OFF
SET IDENTITY_INSERT [dbo].[AboutUs] ON 

INSERT [dbo].[AboutUs] ([Id], [Title], [Content], [Icon]) VALUES (1, N'Haqqımızda', N'Pexels, Pexels lisenziyası altında lisenziya verilən yüksək keyfiyyətli və tamamilə pulsuz
                        fotoşəkilləri təqdim edir. Bütün şəkillər kəşf olunan səhifələrimiz vasitəsilə kəşf edilmiş,
                        axtarışda olan və həmçinin asanlıqla etiketlənmişdir.', NULL)
INSERT [dbo].[AboutUs] ([Id], [Title], [Content], [Icon]) VALUES (2, N'Şəkillər', N'Yüz minlərlə pulsuz fotoşəkilləri var və hər gün yeni yüksək qətnamə şəkilləri əlavə olunacaq.
                        Bütün şəkillər bizim istifadəçilər tərəfindən yüklənən və ya pulsuz veb saytlardan qaynaqlanan
                        fotoşəkillərdən seçilir. Biz bütün nəşr şəkillər yüksək keyfiyyətli və Pexels lisenziya altında
                        lisenziya əmin olun.', N'image')
INSERT [dbo].[AboutUs] ([Id], [Title], [Content], [Icon]) VALUES (3, N'Şəkil qaynaqları', N'Bizim foto bazamıxa yalnız Pixabay, Gratisography, Little Visuals və daha çox kimi fotoşəkillər
                            və mənbələrdən ibarət olan pulsuz şəkillər əlavə edilir. Web saytımızı istifadə edən reklamlara
                            mümkün qədər yüksək keyfiyyətli pulsuz fotoşəkilləri təqdim etməyə çalışırıq.', N'camera')
INSERT [dbo].[AboutUs] ([Id], [Title], [Content], [Icon]) VALUES (4, N'Komanda', N'Pexels Bruno Joseph, Ingo Joseph və Daniel Frese tərəfindən idarə olunur. Bruno və Ingo birgə
                                Pexels''i 2014-cü ildə bir araya gətirərək, 2015-ci ildə Daniel də qatıldı.', N'users')
INSERT [dbo].[AboutUs] ([Id], [Title], [Content], [Icon]) VALUES (5, N'Missiya', N'Biz milyonlarla dizaynerlər, yazıçılar, sənətçilər, proqramçılar və digər yaradıcılara gözəl
                                şəkillərdən istifadə edə bilərik ki, onlar gözəl məhsullar, dizaynlar, hekayələr, veb-saytlar,
                                tətbiqlər, sənət və digər əsərlər yaratmaq üçün sərbəst istifadə edə biləcəklər. Biz bunu
                                deyirik: "Yaradanların gücləndirilməsi"', N'volume-up')
SET IDENTITY_INSERT [dbo].[AboutUs] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Category]) VALUES (1, N'Gul')
INSERT [dbo].[Category] ([Id], [Category]) VALUES (2, N'Texnologiya')
INSERT [dbo].[Category] ([Id], [Category]) VALUES (3, N'Tebiet')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Homes] ON 

INSERT [dbo].[Homes] ([Id], [HeadTitle], [Title], [Image]) VALUES (1, N'İstedadlı fotoqraflar tərəfindən paylaşılan ən yaxşı pulsuz şəkilləri.', N'Pulsuz foto şəkil', NULL)
SET IDENTITY_INSERT [dbo].[Homes] OFF
SET IDENTITY_INSERT [dbo].[LisenceHeader] ON 

INSERT [dbo].[LisenceHeader] ([Id], [Title], [Text], [Background]) VALUES (1, N'Hüquqi sadəlik', N'Pexels-də bütün şəkillər şəxsi və kommersiya məqsədləri üçün pulsuzdur.', N'lisence-background.jpg')
SET IDENTITY_INSERT [dbo].[LisenceHeader] OFF
SET IDENTITY_INSERT [dbo].[Photos] ON 

INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (1, N'Gul', 1, N'collection-photo1.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (2, N'Agac', 3, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (3, N'Meyve', 1, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (4, N'Alma', 2, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (5, N'Notebook', 3, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (6, N'Gul', 1, N'collection-photo1.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (7, N'Agac', 3, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (8, N'Meyve', 1, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (9, N'Alma', 2, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (10, N'Notebook', 3, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (11, N'Gul', 1, N'collection-photo1.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (12, N'Agac', 3, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (13, N'Meyve', 1, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (14, N'Alma', 2, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (15, N'Notebook', 3, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (16, N'Gul', 1, N'collection-photo1.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (17, N'Agac', 3, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (18, N'Meyve', 1, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (19, N'Alma', 2, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (20, N'Notebook', 3, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (21, N'Gul', 1, N'collection-photo1.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (22, N'Agac', 3, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (23, N'Meyve', 1, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (24, N'Alma', 2, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (25, N'Notebook', 3, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (26, N'Gul', 1, N'collection-photo1.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (27, N'Agac', 3, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (28, N'Meyve', 1, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (29, N'Alma', 2, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (30, N'Notebook', 3, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (31, N'Gul', 1, N'collection-photo1.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (32, N'Agac', 3, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (33, N'Meyve', 1, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (34, N'Alma', 2, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (35, N'Notebook', 3, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (36, N'Gul', 1, N'collection-photo1.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (37, N'Agac', 3, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (38, N'Meyve', 1, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (39, N'Alma', 2, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (40, N'Notebook', 3, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (41, N'Gul', 1, N'collection-photo1.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (42, N'Agac', 3, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (43, N'Meyve', 1, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (44, N'Alma', 2, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (45, N'Notebook', 3, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (46, N'Gul', 1, N'collection-photo1.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (47, N'Agac', 3, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (48, N'Meyve', 1, N'collection-photo2.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (49, N'Alma', 2, N'collection-photo3.jpeg')
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link]) VALUES (50, N'Notebook', 3, N'collection-photo3.jpeg')
SET IDENTITY_INSERT [dbo].[Photos] OFF
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Logo], [Facebook], [Twitter], [Instagram], [Pinterest]) VALUES (1, N'logo.jpg', N'https://www.facebook.com/', N'https://twitter.com/', N'https://www.instagram.com/', N'https://www.pinterest.com/')
SET IDENTITY_INSERT [dbo].[Settings] OFF
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Photos] FOREIGN KEY([PhotoId])
REFERENCES [dbo].[Photos] ([Id])
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Photos]
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Category]
GO
USE [master]
GO
ALTER DATABASE [Pexels] SET  READ_WRITE 
GO
