USE [master]
GO
/****** Object:  Database [vh_curse_teams]    Script Date: 08/21/2014 18:51:02 ******/
CREATE DATABASE [vh_curse_teams]

GO
ALTER DATABASE [vh_curse_teams] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vh_curse_teams].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vh_curse_teams] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [vh_curse_teams] SET ANSI_NULLS OFF
GO
ALTER DATABASE [vh_curse_teams] SET ANSI_PADDING OFF
GO
ALTER DATABASE [vh_curse_teams] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [vh_curse_teams] SET ARITHABORT OFF
GO
ALTER DATABASE [vh_curse_teams] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [vh_curse_teams] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [vh_curse_teams] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [vh_curse_teams] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [vh_curse_teams] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [vh_curse_teams] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [vh_curse_teams] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [vh_curse_teams] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [vh_curse_teams] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [vh_curse_teams] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [vh_curse_teams] SET  DISABLE_BROKER
GO
ALTER DATABASE [vh_curse_teams] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [vh_curse_teams] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [vh_curse_teams] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [vh_curse_teams] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [vh_curse_teams] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [vh_curse_teams] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [vh_curse_teams] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [vh_curse_teams] SET  READ_WRITE
GO
ALTER DATABASE [vh_curse_teams] SET RECOVERY SIMPLE
GO
ALTER DATABASE [vh_curse_teams] SET  MULTI_USER
GO
ALTER DATABASE [vh_curse_teams] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [vh_curse_teams] SET DB_CHAINING OFF
GO
USE [vh_curse_teams]
GO
/****** Object:  Table [dbo].[team]    Script Date: 08/21/2014 18:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[team](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_team] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player]    Script Date: 08/21/2014 18:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[games_won] [int] NOT NULL,
	[games_played] [int] NOT NULL,
	[kills] [int] NOT NULL,
	[deaths] [int] NOT NULL,
	[assists] [int] NOT NULL,
	[id_team] [int] NOT NULL,
 CONSTRAINT [PK_player] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[player] SET (LOCK_ESCALATION = AUTO)
GO
/****** Object:  ForeignKey [FK_player_team]    Script Date: 08/21/2014 18:51:02 ******/
ALTER TABLE [dbo].[player]  WITH CHECK ADD  CONSTRAINT [FK_player_team] FOREIGN KEY([id_team])
REFERENCES [dbo].[team] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[player] CHECK CONSTRAINT [FK_player_team]
GO
