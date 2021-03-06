USE [master]
GO
/****** Object:  Database [DB_A47238_Pexels]    Script Date: 4.04.2019 01:15:38 ******/
CREATE DATABASE [DB_A47238_Pexels]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_A47238_Pexels_Data', FILENAME = N'H:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DB_A47238_Pexels_DATA.mdf' , SIZE = 8192KB , MAXSIZE = 1024000KB , FILEGROWTH = 10%)
 LOG ON 
( NAME = N'DB_A47238_Pexels_Log', FILENAME = N'H:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DB_A47238_Pexels_Log.LDF' , SIZE = 3072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_A47238_Pexels] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_A47238_Pexels].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_A47238_Pexels] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_A47238_Pexels] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_A47238_Pexels] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_A47238_Pexels] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_A47238_Pexels] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_A47238_Pexels] SET  MULTI_USER 
GO
ALTER DATABASE [DB_A47238_Pexels] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_A47238_Pexels] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_A47238_Pexels] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_A47238_Pexels] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_A47238_Pexels] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_A47238_Pexels] SET QUERY_STORE = OFF
GO
USE [DB_A47238_Pexels]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [DB_A47238_Pexels]
GO
/****** Object:  Table [dbo].[AboutHeaders]    Script Date: 4.04.2019 01:15:39 ******/
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
/****** Object:  Table [dbo].[AboutUs]    Script Date: 4.04.2019 01:15:40 ******/
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
/****** Object:  Table [dbo].[Admins]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Password] [nvarchar](250) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscoverHeaders]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscoverHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Desc] [nvarchar](250) NULL,
 CONSTRAINT [PK_DiscoverHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaqHeaders]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaqHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Desc] [nvarchar](max) NULL,
	[Background] [nvarchar](250) NULL,
 CONSTRAINT [PK_FaqHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaqNews]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaqNews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Text] [nvarchar](max) NULL,
 CONSTRAINT [PK_FaqNews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaqUploads]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaqUploads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Text] [nvarchar](max) NULL,
 CONSTRAINT [PK_FaqUploads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Homes]    Script Date: 4.04.2019 01:15:40 ******/
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
/****** Object:  Table [dbo].[Likes]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NULL,
	[PhotoId] [int] NULL,
	[UserId] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LisenceAllows]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LisenceAllows](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AllowItem] [nvarchar](max) NULL,
 CONSTRAINT [PK_LisenceAllows] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LisenceCards]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LisenceCards](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Text] [nvarchar](max) NULL,
 CONSTRAINT [PK_LisenceCards] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LisenceHeader]    Script Date: 4.04.2019 01:15:40 ******/
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
/****** Object:  Table [dbo].[LisenceNotAllows]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LisenceNotAllows](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NotAllowItem] [nvarchar](max) NULL,
 CONSTRAINT [PK_LisenceNotAllow] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[Link] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopularPhotos]    Script Date: 4.04.2019 01:15:40 ******/
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
/****** Object:  Table [dbo].[Searches]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Searches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Photo] [nvarchar](150) NULL,
 CONSTRAINT [PK_Searches] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 4.04.2019 01:15:40 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 4.04.2019 01:15:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
	[Password] [nvarchar](255) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AboutHeaders] ON 

INSERT [dbo].[AboutHeaders] ([Id], [HeadTitle], [HeadText], [HeadBackground]) VALUES (1, N'Yaratıcıları gücləndirmək', N'Pulsuz fond fotoşəkilləri təmin edərək, Pexels bütün dünyada milyonlarla yaradıcıya asanlıqla gözəl                məhsullar və dizaynlar yaratmağa kömək edir.', N'about-background.jpg')
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
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([Id], [Name], [Password]) VALUES (1, N'admin', N'AIhdIBXszgmv++7hohdwlXKXkuqhJWt/U3NNk5TDNDptL+bZI3Gd0/B1KgO8buMW2Q==')
SET IDENTITY_INSERT [dbo].[Admins] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Category], [Image]) VALUES (1, N'Gül', N'collection-photo1.jpeg')
INSERT [dbo].[Category] ([Id], [Category], [Image]) VALUES (2, N'Texnologiya', N'2019_03_26_11_33_55PIC_20180604_102406759.jpeg')
INSERT [dbo].[Category] ([Id], [Category], [Image]) VALUES (3, N'Təbiət', N'indir.jpg')
INSERT [dbo].[Category] ([Id], [Category], [Image]) VALUES (4, N'Şəhər', N'city.jpg')
INSERT [dbo].[Category] ([Id], [Category], [Image]) VALUES (5, N'İdman', N'sport.jpg')
INSERT [dbo].[Category] ([Id], [Category], [Image]) VALUES (6, N'Maşın', N'thumb-1920-390734.jpg')
INSERT [dbo].[Category] ([Id], [Category], [Image]) VALUES (7, N'Heyvan', N'animal.jpg')
INSERT [dbo].[Category] ([Id], [Category], [Image]) VALUES (8, N'Oyun', N'game.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[DiscoverHeaders] ON 

INSERT [dbo].[DiscoverHeaders] ([Id], [Title], [Desc]) VALUES (1, N'Gözəl şəkilləri kəşf edin', N'Ən məşhur kolleksiyaları araşdırın.')
SET IDENTITY_INSERT [dbo].[DiscoverHeaders] OFF
SET IDENTITY_INSERT [dbo].[FaqHeaders] ON 

INSERT [dbo].[FaqHeaders] ([Id], [Title], [Desc], [Background]) VALUES (1, N'Bir sualım var ...', N'Tez-tez soruşulan suallar', N'faq-background.jpg')
SET IDENTITY_INSERT [dbo].[FaqHeaders] OFF
SET IDENTITY_INSERT [dbo].[FaqNews] ON 

INSERT [dbo].[FaqNews] ([Id], [Title], [Text]) VALUES (1, N'Pexels nədir?', N'Pexels dizaynerlərə, bloggersə və hər yerdə pulsuz olaraq istifadə edə biləcəyiniz gözəl
                            şəkillər tapmaq üçün bir şəkil axtarır olan hər kəsə kömək edir.')
INSERT [dbo].[FaqNews] ([Id], [Title], [Text]) VALUES (2, N'Pexels-də fotoşəkillərin lisenziyası nədir?', N'Pexels''də yüklənən bütün fotoşəkillər Pexels lisenziyası altında lisenziyalaşdırılır. Bu
                            şəxsi və kommersiya məqsədləri üçün pulsuz istifadə edə bilərsiniz. Daha ətraflı
                            məlumat üçün aşağıdakı sualları, lisenziya səhifəmizi və ya Xidmət Şərtlərini oxuyun.')
INSERT [dbo].[FaqNews] ([Id], [Title], [Text]) VALUES (3, N'Fotoşəkilləri kommersiya layihəsi üçün istifadə edə bilərəmmi?', N'Bəli, bütün fotolar ticari istifadə üçün pulsuzdur. Onları kommersiya saytında,
                            blogunuzda, məhsulunuzda və ya başqa yerdə istifadə edə bilərsiniz. Qeyd edək ki,
                            ticarət nişanları, loqotiplər və ya markalar kimi şəkillərdə təsvir olunan məzmun hələ
                            də qorunub saxlanıla bilər. məxfilik, müəlliflik hüququ və ya ticarət nişan hüquqları
                            ilə əlaqələndirir və təsvir edilən şəxsin, markanın, ticarət nişanının və ya müəllif
                            hüquqlarının sahibinin məhsul və ya xidmətinizdə iştirak etdiyini və ya iştirak
                            etdiyini nəzərdə tutmursunuz. Belə istifadə halları üçün təsvir olunan üçüncü
                            tərəflərin icazəsinə və ya razılığına ehtiyac ola bilər.')
INSERT [dbo].[FaqNews] ([Id], [Title], [Text]) VALUES (4, N'Pexels fotolarını satmaq olar?', N'Pexels Lisenziyası altında lisenziyalı fotoşəkillərini olduğu kimi satmaq mümkün deyil.
                            Bu da onları baskı (posterlər, kartpostallar, ...) və ya fiziki mallar (t-shirt,
                            fincan, ...) kimi satmaqdır. Əgər siz onları redaktə etdiniz, dəyişdirdiniz və ya əlavə
                            dəyər verdinizsə, satmaq olar. Digər fond fotoşəkilləri və ya divar kağızı
                            platformalarında satmaq və ya onları yükləməyə icazə verilmir.')
SET IDENTITY_INSERT [dbo].[FaqNews] OFF
SET IDENTITY_INSERT [dbo].[FaqUploads] ON 

INSERT [dbo].[FaqUploads] ([Id], [Title], [Text]) VALUES (1, N'Öz fotoşəkillərimi harada yerləşdirə bilərəm?', N'Burada hesab yarat: https://www.pexels.com/submit-photos/. Yüklediğiniz bütün
                            fotoşəkillər Pexels lisenziyası altında buraxılacaq. Yuxarıda və ya lisenziya
                            səhifəmizdə lisenziya haqqında ətraflı məlumat əldə edin.')
INSERT [dbo].[FaqUploads] ([Id], [Title], [Text]) VALUES (2, N'Fotoşəkillərimi yüklədikdən sonra nə baş verir?', N'Pexels-in fotosessiya qrupu ən yaxşı şəkilləri seçəcək və onları ana səhifəmizdə və
                            axtarışımızda dərc edəcək. Bu adətən bir neçə gün davam edir.Şəkillərinizdən biri
                            seçildiysə, bir e-poçt bildirimi alacaqsınız.')
SET IDENTITY_INSERT [dbo].[FaqUploads] OFF
SET IDENTITY_INSERT [dbo].[Homes] ON 

INSERT [dbo].[Homes] ([Id], [HeadTitle], [Title], [Image]) VALUES (1, N'İstedadlı fotoqraflar tərəfindən paylaşılan ən yaxşı pulsuz şəkilləri.', N'Pulsuz foto şəkil', N'background-image2.jpeg')
SET IDENTITY_INSERT [dbo].[Homes] OFF
SET IDENTITY_INSERT [dbo].[Likes] ON 

INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (342, NULL, 173, 4, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (597, NULL, 183, 13, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (599, NULL, 152, 13, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (600, NULL, 159, 13, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (601, NULL, 176, 13, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (602, NULL, 168, 13, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (605, NULL, 182, 13, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (608, NULL, 182, 4, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (610, NULL, 183, 15, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (612, NULL, 182, 15, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (613, NULL, 196, 4, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (614, NULL, 183, 4, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (616, NULL, 181, 4, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (617, NULL, 180, 4, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (618, NULL, 179, 4, 1)
INSERT [dbo].[Likes] ([Id], [Count], [PhotoId], [UserId], [Status]) VALUES (619, NULL, 197, 15, 1)
SET IDENTITY_INSERT [dbo].[Likes] OFF
SET IDENTITY_INSERT [dbo].[LisenceAllows] ON 

INSERT [dbo].[LisenceAllows] ([Id], [AllowItem]) VALUES (1, N'Pexels-də bütün fotoşəkillər kommersiya və qeyri-kommersiya məqsədilə istifadə üçün
                        pulsuz istifadə oluna bilər.')
INSERT [dbo].[LisenceAllows] ([Id], [AllowItem]) VALUES (2, N'Attribution tələb olunmur. Fotoşəkilçiyə və ya Pexelsə kredit vermək lazım deyil, həmişə
                        qiymətlidir.')
INSERT [dbo].[LisenceAllows] ([Id], [AllowItem]) VALUES (3, N'Fotoşəkilləri dəyişə bilərsiniz. Yaratıcı olun və istədiyiniz şəkilləri redaktə edin.')
SET IDENTITY_INSERT [dbo].[LisenceAllows] OFF
SET IDENTITY_INSERT [dbo].[LisenceCards] ON 

INSERT [dbo].[LisenceCards] ([Id], [Photo], [Title], [Text]) VALUES (1, N'lisence-image1.jpg', N'Veb saytda, blogda və ya proqramda', N'Bir fotoşəkil, elektron ticarət mağazası, bülleten, e-kitab, təqdimat, blog və ya satdığınız bir şablon olub-olmadığını online şəkillərdən istifadə edin.')
INSERT [dbo].[LisenceCards] ([Id], [Photo], [Title], [Text]) VALUES (2, N'lisence-image2.jpg', N'Məhsulu tanıtın', N'Pexels fotoşəkilləri ilə unikal reklam, banner və marketinq kampaniyaları yaradın və məhsulunuzu tanıtın.')
INSERT [dbo].[LisenceCards] ([Id], [Photo], [Title], [Text]) VALUES (3, N'lisence-image3.jpg', N'Marketinq materialı', N'Flyers, kartpostallar, dəvətnamələr, jurnallar, albomlar, kitablar, CD örtükləri və daha çox şəkilləri istifadə edin.')
INSERT [dbo].[LisenceCards] ([Id], [Photo], [Title], [Text]) VALUES (4, N'lisence-image4.jpg', N'Sosial mediada paylaşın', N'Sosial media kanallarında orijinal və cəlbedici şəkilləri göndərməklə auditoriyanı böyütün.')
SET IDENTITY_INSERT [dbo].[LisenceCards] OFF
SET IDENTITY_INSERT [dbo].[LisenceHeader] ON 

INSERT [dbo].[LisenceHeader] ([Id], [Title], [Text], [Background]) VALUES (1, N'Hüquqi sadəlik', N'Pexels-də bütün şəkillər şəxsi və kommersiya məqsədləri üçün pulsuzdur.', N'lisence-background.jpg')
SET IDENTITY_INSERT [dbo].[LisenceHeader] OFF
SET IDENTITY_INSERT [dbo].[LisenceNotAllows] ON 

INSERT [dbo].[LisenceNotAllows] ([Id], [NotAllowItem]) VALUES (1, N'Tanınmış insanlar pis işıqda və ya təhqiramiz şəkildə görünməyəcəklər.')
INSERT [dbo].[LisenceNotAllows] ([Id], [NotAllowItem]) VALUES (2, N'Fotonun dəyişdirilməmiş surətlərini, məs. heç bir dəyər əlavə etmədən fotoşəkil, afiş, çap və ya fiziki bir məhsul kimi satmayın.')
INSERT [dbo].[LisenceNotAllows] ([Id], [NotAllowItem]) VALUES (3, N'Təsvirinizdəki insanlara və ya markalara görə məhsulun təsdiqini nəzərdə tutmayın.')
INSERT [dbo].[LisenceNotAllows] ([Id], [NotAllowItem]) VALUES (4, N'Digər fotoşəkilləri və ya divar kağızı platformalarında fotoşəkilləri yenidən bölüşdürməyin və satmayın.')
SET IDENTITY_INSERT [dbo].[LisenceNotAllows] OFF
SET IDENTITY_INSERT [dbo].[Photos] ON 

INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (148, N'Asus', 2, N'2019_03_26_11_33_55PIC_20180604_102406759.jpeg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (149, N'lale', 3, N'2019_03_27_03_18_17indir (1).jpg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (150, N'kure', 3, N'2019_03_27_03_19_10indir.jpg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (151, N'Baku', 4, N'2019_03_28_05_42_07baku.jpg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (152, N'London', 4, N'2019_03_28_05_56_04London.jpg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (154, N'Basketbol', 5, N'2019_03_28_06_15_37indir (3).jpg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (158, N'Bmw', 6, N'2019_03_28_06_19_59bmw_m3_e92_auto_car_green_road_sky_clouds_94286_1400x1050.jpg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (159, N'Leopard', 7, N'2019_03_28_06_21_03snow_leopard_snow_hunting_attention_black_and_white_57947_1600x1200.jpg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (160, N'Far Cry 3', 8, N'2019_03_28_06_23_48far_cry_3_beach_game_graphics_hdr_95932_1280x1024.jpg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (161, N'Italiya', 4, N'2019_03_28_06_50_104TE7kqZ.jpg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (162, N'Çiçək', 1, N'2019_03_28_06_56_28flowers-wallpaper-24.jpg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (166, N'Notebook', 2, N'2019_03_29_06_16_48laptop_macbook_iphone_apple_journal_glasses_113949_1280x960.jpg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (167, N'Bmw m3', 6, N'2019_03_29_06_42_23bmw_black_m3_e46_tuning_96695_1280x720.jpg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (168, N'Bmw m4', 6, N'2019_03_29_06_52_07bmw_m4_gts_f82_105089_1152x864.jpg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (169, N'Zanbağ', 1, N'2019_03_30_02_19_38photo-1459664018906-085c36f472af.jpg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (170, N'Qızılgül', 1, N'2019_03_30_02_20_37photo-1469204691332-56e068855403.jpg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (171, N'Qızılgül', 1, N'2019_03_30_02_21_34photo-1486639107311-064febaff1c5.jpg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (172, N'Günəbaxan', 1, N'2019_03_30_02_23_00pexels-photo-1366630.jpeg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (173, N'Plata', 2, N'2019_03_30_02_25_08pexels-photo-825258.jpeg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (175, N'Code', 2, N'2019_03_30_02_35_21pexels-photo-546819.jpeg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (176, N'Start up', 2, N'2019_03_30_02_36_07pexels-photo-1305360 (1).jpeg', 13, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (177, N'Server', 2, N'2019_03_30_03_03_12pexels-photo-442150.jpeg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (178, N'Dəmiryol', 3, N'2019_03_30_03_03_52pexels-photo.jpg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (179, N'Tarla', 3, N'2019_03_30_03_04_25pexels-photo-1558732.jpeg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (180, N'Şəlalə', 3, N'2019_03_30_03_05_03pexels-photo-358457.jpeg', 4, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (181, N'New York', 4, N'2019_03_30_03_08_54pexels-photo-1034662.jpeg', 6, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (182, N'Qız qalası', 4, N'2019_03_30_03_19_26pexels-photo-167702.jpg', 6, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (183, N'Üzücü', 5, N'2019_03_30_03_31_14pexels-photo-863988.jpeg', 6, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (196, N'Məşq', 5, N'2019_04_03_09_18_39pexels-photo-841130.jpeg', 15, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (197, N'Asus', 2, N'2019_04_04_12_42_03pexels-photo-265610.jpeg', 15, 1)
INSERT [dbo].[Photos] ([Id], [Name], [CategoryId], [Link], [UserId], [Status]) VALUES (198, N'Ps4', 8, N'2019_04_04_12_43_41pexels-photo-442576.jpeg', 15, 1)
SET IDENTITY_INSERT [dbo].[Photos] OFF
SET IDENTITY_INSERT [dbo].[Searches] ON 

INSERT [dbo].[Searches] ([Id], [Title], [Photo]) VALUES (1, N'London', N'2019_03_28_05_56_04London.jpg')
INSERT [dbo].[Searches] ([Id], [Title], [Photo]) VALUES (2, N'Notebook', N'2019_03_26_11_33_55PIC_20180604_102406759.jpeg')
INSERT [dbo].[Searches] ([Id], [Title], [Photo]) VALUES (3, N'Asus', N'2019_03_26_11_33_55PIC_20180604_102406759.jpeg')
INSERT [dbo].[Searches] ([Id], [Title], [Photo]) VALUES (4, N'Bmw', N'2019_03_28_06_19_59bmw_m3_e92_auto_car_green_road_sky_clouds_94286_1400x1050.jpg')
INSERT [dbo].[Searches] ([Id], [Title], [Photo]) VALUES (5, N'Baku', N'pexels-photo-792727.jpeg')
INSERT [dbo].[Searches] ([Id], [Title], [Photo]) VALUES (6, N'Idman', N'pexels-photo-841130.jpeg')
SET IDENTITY_INSERT [dbo].[Searches] OFF
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Logo], [Facebook], [Twitter], [Instagram], [Pinterest]) VALUES (1, N'logo.jpg', N'https://www.facebook.com/', N'https://twitter.com/', N'https://www.instagram.com/', N'https://www.pinterest.com/')
SET IDENTITY_INSERT [dbo].[Settings] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [Password]) VALUES (4, N'Mammad', N'Mammadov', N'mammadam@code.edu.az', N'AI3IwJ2Q2cbfD54lIbfEwY4Sdbs6PPKrL4m5hbDZyB2y1otK9ERWXMIaev2S/Q1iLQ==')
INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [Password]) VALUES (6, N'Valeh ', N'Huseynov', N'valehmh@code.edu.az', N'AFgUdA2t2/i8+LOB9mM3O9NyjwA+lwU5p+u08SLB5SXSjAIDqaE22om2mNeyfOO7GQ==')
INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [Password]) VALUES (13, N'Samir ', NULL, N'samirna@code.edu.az', N'ABkV7lXx1t8P92Ty/iMrOwaKe7WWkbhVtPn0o4CuYZFBWu7BOsGjJkGpibtiDxtONQ==')
INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [Password]) VALUES (15, N'Rüfət', N'İsmayılov', N'rufet.ismayilov.1999@gmail.com', N'AJxcJa3eo3o76V29arPSprxaoAFKU6uq5fNwzlkqz7ynwFhNul5MQ2cj2HQMsuBTfg==')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Photos] FOREIGN KEY([PhotoId])
REFERENCES [dbo].[Photos] ([Id])
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Photos]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Users]
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Category]
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Users]
GO
USE [master]
GO
ALTER DATABASE [DB_A47238_Pexels] SET  READ_WRITE 
GO
