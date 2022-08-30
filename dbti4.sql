USE [master]
GO
/****** Object:  Database [camposdin]    Script Date: 30/08/2022 02:43:33 a. m. ******/
CREATE DATABASE [camposdin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'camposdin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\camposdin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'camposdin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\camposdin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [camposdin] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [camposdin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [camposdin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [camposdin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [camposdin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [camposdin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [camposdin] SET ARITHABORT OFF 
GO
ALTER DATABASE [camposdin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [camposdin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [camposdin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [camposdin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [camposdin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [camposdin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [camposdin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [camposdin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [camposdin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [camposdin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [camposdin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [camposdin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [camposdin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [camposdin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [camposdin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [camposdin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [camposdin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [camposdin] SET RECOVERY FULL 
GO
ALTER DATABASE [camposdin] SET  MULTI_USER 
GO
ALTER DATABASE [camposdin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [camposdin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [camposdin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [camposdin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [camposdin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [camposdin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'camposdin', N'ON'
GO
ALTER DATABASE [camposdin] SET QUERY_STORE = OFF
GO
USE [camposdin]
GO
/****** Object:  User [admin]    Script Date: 30/08/2022 02:43:33 a. m. ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[contacto]    Script Date: 30/08/2022 02:43:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacto](
	[id_contacto] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[celular_contacto] [int] NULL,
	[telefono_contacto] [int] NULL,
	[correo_contacto] [varchar](50) NULL,
	[borrado] [tinyint] NULL,
	[vigencia] [tinyint] NULL,
 CONSTRAINT [PK_contacto] PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enlaces]    Script Date: 30/08/2022 02:43:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enlaces](
	[id_formulario] [int] NOT NULL,
	[nombre_tabla] [varchar](50) NULL,
	[nombre_campo] [varchar](50) NULL,
	[visibilidad_campo] [bit] NULL,
	[borrado] [tinyint] NULL,
	[vigencia] [tinyint] NULL,
 CONSTRAINT [PK_enlaces] PRIMARY KEY CLUSTERED 
(
	[id_formulario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[formulario]    Script Date: 30/08/2022 02:43:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formulario](
	[id_formulario] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[nombre_formulario] [varchar](50) NULL,
	[borrado] [tinyint] NULL,
	[vigencia] [tinyint] NULL,
 CONSTRAINT [PK_formulario] PRIMARY KEY CLUSTERED 
(
	[id_formulario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[region]    Script Date: 30/08/2022 02:43:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[region](
	[id_region] [int] NOT NULL,
	[num_region] [int] NULL,
	[nombre_region] [varchar](50) NULL,
	[borrado] [tinyint] NULL,
	[vigencia] [tinyint] NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[id_region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ubicacion]    Script Date: 30/08/2022 02:43:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ubicacion](
	[id_ubicacion] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_region] [int] NOT NULL,
	[comuna_ubicacion] [varchar](50) NULL,
	[calle_ubicacion] [varchar](50) NULL,
	[num_ubicacion] [varchar](50) NULL,
	[inmueble_ubicacion] [int] NULL,
	[borrado] [tinyint] NULL,
	[vigencia] [tinyint] NULL,
 CONSTRAINT [PK_ubicacion] PRIMARY KEY CLUSTERED 
(
	[id_ubicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 30/08/2022 02:43:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [int] NOT NULL,
	[nombre_usuario] [varchar](50) NULL,
	[apellido1_usuario] [varchar](50) NULL,
	[apellido2_usuario] [varchar](50) NULL,
	[fnacimiento_usuario] [date] NULL,
	[borrado] [tinyint] NULL,
	[vigencia] [tinyint] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[usuario] ([id_usuario], [nombre_usuario], [apellido1_usuario], [apellido2_usuario], [fnacimiento_usuario], [borrado], [vigencia]) VALUES (1, N'bryan', NULL, NULL, NULL, NULL, NULL)
GO
USE [master]
GO
ALTER DATABASE [camposdin] SET  READ_WRITE 
GO
