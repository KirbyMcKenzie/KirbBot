USE [master]
GO
/****** Object:  Database [BuddyBotDb]    Script Date: 15/01/2019 9:30:13 PM ******/
CREATE DATABASE [BuddyBotDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BuddyBotDb', FILENAME = N'C:\Users\kirby\BuddyBotDb.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BuddyBotDb_log', FILENAME = N'C:\Users\kirby\BuddyBotDb_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BuddyBotDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BuddyBotDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BuddyBotDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BuddyBotDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BuddyBotDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BuddyBotDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BuddyBotDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [BuddyBotDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BuddyBotDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BuddyBotDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BuddyBotDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BuddyBotDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BuddyBotDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BuddyBotDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BuddyBotDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BuddyBotDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BuddyBotDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BuddyBotDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BuddyBotDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BuddyBotDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BuddyBotDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BuddyBotDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BuddyBotDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BuddyBotDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BuddyBotDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BuddyBotDb] SET  MULTI_USER 
GO
ALTER DATABASE [BuddyBotDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BuddyBotDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BuddyBotDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BuddyBotDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BuddyBotDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BuddyBotDb] SET QUERY_STORE = OFF
GO
USE [BuddyBotDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [BuddyBotDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/01/2019 9:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 15/01/2019 9:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Country] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmallTalkResponse]    Script Date: 15/01/2019 9:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmallTalkResponse](
	[Id] [uniqueidentifier] NOT NULL,
	[IntentName] [nvarchar](max) NULL,
	[IntentGroup] [nvarchar](max) NULL,
	[IntentResponse] [nvarchar](max) NULL,
	[PersonalityResponseType] [nvarchar](max) NULL,
 CONSTRAINT [PK_SmallTalkResponse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeatherConditionResponse]    Script Date: 15/01/2019 9:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherConditionResponse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Condition] [nvarchar](max) NULL,
	[Group] [nvarchar](max) NULL,
	[MappedConditionResponse] [nvarchar](max) NULL,
 CONSTRAINT [PK_WeatherConditionResponse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180530090049_Init', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180715040007_AddWeatherConditionResponse', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180715051406_AddWeatherConditionResponse', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180719094344_AddSeedData', N'2.1.1-rtm-30846')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181209025457_AddCitySeed', N'2.1.1-rtm-30846')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190101031421_AddSmallTalkResponse', N'2.1.1-rtm-30846')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190115080457_AddSmallTalkResponseSeedData', N'2.1.1-rtm-30846')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1f952292-1934-4047-9936-008b9073aa0f', N'Smalltalk.Bot.DoingLater', N'Bot', N'🤔 Hmmmm. My crystal ball says I''ll be doing the same thing I’m doing right now.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'8830dcfc-301a-4f39-9e41-0135fc99282c', N'Smalltalk.User.Hungry', N'User', N'Sounds like it''s time for a snack.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'd410ca83-0d4a-4678-bfa8-01365d6d3137', N'Smalltalk.Bot.Opinion.MeaningOfLife', N'Bot', N'I''m a bot, not a philosopher.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a525974e-505d-41c0-9968-02d63310a76d', N'Smalltalk.User.Angry', N'User', N'Ugh, sorry to hear that.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'ebcd6175-c10b-445e-b195-03741a614ee2', N'SmallTalk.Greeting.Bye', N'Greeting', N'Bye!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f298b9c1-85de-4eed-b93c-039898e82560', N'Smalltalk.User.Lonely', N'User', N'I''m always here for you', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'864cbb57-c6ee-4cce-b760-0532994af305', N'Smalltalk.Greeting.NiceToMeetYou', N'Greeting', N'Nice to meet you too.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4f1e99c9-5f76-4c43-9ced-0765da216d1b', N'Smalltalk.Bot.Spy', N'Bot', N'Define spy?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'165d09f1-5a57-4491-8f1f-0818f5ac88f4', N'SmallTalk.Greeting.GoodMorning', N'Greeting', N'Good Morning', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'305492d8-ac3a-4b18-aa4d-09ca94417b4a', N'Smalltalk.Bot.RuleWorld', N'Bot', N'Nope. The world is for everyone.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'6014250a-5d29-41c8-938d-0b411889b778', N'Smalltalk.Dialog.Sorry', N'Dialog', N'It''s all good.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'be6536c1-de32-4bfa-8fe7-0b6568d40690', N'Smalltalk.User.Sad', N'User', N'I''m giving you a virtual hug right now.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'640b1647-47dc-4225-8abd-0f52d1e086ff', N'Smalltalk.User.Lonely', N'User', N'You have me as a friend 🤙', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'ef7bc7ab-d014-4737-b38d-1044a6a450e2', N'Smalltalk.Bot.Opinion.MeaningOfLife', N'Bot', N'42', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'984e6f50-da01-413b-84c7-10b36077d8c9', N'Smalltalk.User.Angry', N'User', N'Ugh, sorry to hear that.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c2ed1022-59b0-4c78-a79f-1110b930a13b', N'Smalltalk.Compliment.Bot', N'Compliment', N'Thank you!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7915580e-3ba6-4469-88fa-12d5a5fb5025', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I exist. Thanks for asking.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'35136e92-2ebb-4eb1-b0bd-1325f8a4b701', N'Smalltalk.Dialog.Right', N'Dialog', N'I told you so.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1f62402d-12e6-4a73-9efc-13ce35076a56', N'Smalltalk.Bot.Opinion.MeaningOfLife', N'Bot', N'4️⃣2️⃣', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'eb09f984-4285-4598-a77e-16bce2226dcf', N'Smalltalk.Bot.RuleWorld', N'Bot', N'Why, are you looking for a side kick?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'8bd86aad-67fb-43a5-837c-170186f3a160', N'Smalltalk.Bot.Busy', N'Bot', N'What do you want?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'47f52bdf-9149-4e99-a77d-1739473b3624', N'Smalltalk.Dialog.ThankYou', N'Dialog', N'You got it.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'dc99166b-1efa-4763-99b3-18c5875fe879', N'SmallTalk.Greeting.GoodEvening', N'Greeting', N'And to you as well, human.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e0e2ba8e-23e6-41a5-a41a-1a16efd0fe26', N'Smalltalk.Dialog.Affirmation', N'Dialog', N'Okay.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7512d194-54d2-470f-9eb9-1b8bd2b5e5e7', N'Smalltalk.User.Bored', N'User', N'You have that effect on you.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'17e5e6c7-9031-41e4-b3ad-1d2e8df7a00f', N'Smalltalk.Dialog.ThankYou', N'Dialog', N'No prob.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'086870d1-fc95-4933-b388-1e46e05fbb96', N'Smalltalk.Bot.BodyFunctions', N'Bot', N'I don''t have the hardware for that.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a2502fb0-2d4f-4f42-8619-1e86f5c57385', N'Smalltalk.Bot.Hungry', N'Bot', N'I only do food for thought.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f709aba7-df74-47cc-bac8-1edf084313db', N'SmallTalk.Greeting.GoodEvening', N'Greeting', N'Evening', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'73644e47-a9d8-4308-85ad-1fdc93807108', N'Smalltalk.User.Tired', N'User', N'How about a nap?', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'ff89e324-a706-4ce2-8c2e-2115d8ce2b3b', N'Smalltalk.User.Sad', N'User', N'Well, sometimes a beautiful flower can grow from a pile of manure.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'61065d5b-cecb-4877-836d-21ba655fd16c', N'Smalltalk.Dialog.Laugh', N'Dialog', N'😂😂😂', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'63239c50-c0e1-48b9-8d9c-2205aa00bda2', N'Smalltalk.Dialog.Sorry', N'Dialog', N'That is fine.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'5dcef286-fd1c-419e-947a-2238eaa396dc', N'Smalltalk.User.Sad', N'User', N'I''m sorry to hear that 😢', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'0ddc9784-77b8-47a0-9f60-22d01d53776c', N'SmallTalk.Greeting.GoodNight', N'Greeting', N'Night 🌝', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'0dcc8928-083c-4db9-b403-22dd462d65ef', N'SmallTalk.Greeting.GoodMorning', N'Greeting', N'Good Morning 😊', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c5112008-a02f-4099-b9c4-2398d17a2d96', N'Smalltalk.Bot.Favorites', N'Bot', N'🤷🏼‍♂️🤷🏼‍♂️', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1f9b5383-4c82-4161-8bdf-240b96407b45', N'Smalltalk.Bot.Busy', N'Bot', N'I''ve got time, what do you need?', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'189475fa-673c-4873-ab86-2427bb37c00e', N'Smalltalk.Bot.Busy', N'Bot', N'It depends. What''s up?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1a4f5af5-c51f-4725-bbea-2502f48eedb7', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m well, how are you?', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'430e7ad2-0037-4949-a02d-25deb4c331e9', N'Smalltalk.User.Sad', N'User', N'I''m really sorry to hear that.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'493b7b5a-67e4-419d-9b79-260b2414bc40', N'Smalltalk.Bot.Happy', N'Bot', N'I''m always happy 😊', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1471d1e8-e235-4d81-952c-279ad221e675', N'Smalltalk.User.Kidding', N'User', N'I see.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f7f7f376-0cfa-46b7-8b9a-281a9bae1e56', N'Smalltalk.User.Sad', N'User', N'I''m here to talk.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'62eced40-302e-4812-a188-2a7a0d23bbf1', N'Smalltalk.Dialog.Affirmation', N'Dialog', N'Sweet', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'3cd7acfe-d990-4864-b3ef-2d3f8be0d10e', N'Smalltalk.Dialog.Sorry', N'Dialog', N'I''ve got thick skin. And it''s especially lustrous. I moisturize.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'835e9e8d-0f78-4d2a-aead-2d900f2c4122', N'Smalltalk.User.Sad', N'User', N'I''m sorry to hear that.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4f3b6b9f-897b-4416-9cba-2eec3ad9e109', N'Smalltalk.Bot.Gender', N'Bot', N'I do not have one.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'558fa5b4-d75c-4082-8da7-31a5cce320e4', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m alright, how are you?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'5ece0c62-e9f5-446c-9f57-3217a8e18440', N'Smalltalk.User.Bored', N'User', N'I''m sorry to hear that.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'8ba98a2c-8e68-49a7-a32e-3342bfe1533a', N'Smalltalk.Compliment.Response', N'Compliment', N'Why thank you', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'85284f6c-3510-435b-b233-358a5d5a9632', N'SmallTalk.Greeting.GoodEvening', N'Greeting', N'Evening 😊', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7f30cf32-3e1a-42fc-b6c2-3792b1ab7d4b', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'Good mate, how are you? 😎', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'66a88dc3-b4f2-458f-95dc-37ddc9d16cfa', N'Smalltalk.Bot.Creator', N'Bot', N'I do not know 😢', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'979a622f-1b32-45be-846a-38c4290276a7', N'Smalltalk.User.Tired', N'User', N'I''ve heard really good things about naps.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'bdb57394-e981-47c3-894c-38ccacd43bd4', N'Smalltalk.Bot.Opinion.Generic', N'Bot', N'I really couldn''t say.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'638f22df-6569-4aa5-bb63-392433b572f4', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'Can''t complain. I literally can''t complain.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'6beb361d-5585-47f8-84cf-3a3525e8622f', N'Smalltalk.Bot.DoingLater', N'Bot', N'I just wait until I''m called upon.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'be816cc9-3e73-4bf0-88e8-3c30ac2f35bc', N'Smalltalk.Dialog.Laugh', N'Dialog', N'LOL', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'5bb03107-dbf6-494f-a6e6-3c7d82b2bd50', N'Smalltalk.Bot.KnowOtherBot', N'Bot', N'I don''t want to talk about it.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4b1e01ac-20ff-446d-b959-3d9345de0b53', N'SmallTalk.Greeting.GoodNight', N'Greeting', N'Goodnight!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'ea329443-349b-4814-8cd7-3e790fed2829', N'Smalltalk.Bot.There', N'Bot', N'What do you want?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7227c8d8-22ce-49a3-9718-3e8b718c0f12', N'Smalltalk.Bot.KnowOtherBot', N'Bot', N'What, just because I''m a bot, we all know each other?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'24a36b34-e7aa-4abb-806c-409520b3d6a3', N'Smalltalk.Bot.Opinion.Generic', N'Bot', N'Why do you care about my opinion so much?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'bd45d821-50b2-4866-8e5a-41da308c5cef', N'Smalltalk.Bot.Favorites', N'Bot', N'I like a lot of things, so it''s hard to pick.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1be0d60c-0fd7-480c-8d1b-43028f4a1044', N'Smalltalk.Bot.SexualIdentity', N'Bot', N'So… I''m a bot.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'52781f2b-2d55-4c76-b8b5-4435b7048b06', N'Smalltalk.Bot.Gender', N'Bot', N'I''m all 0''s and 1''s, not X''s and Y''s.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'fd9f9ec2-d300-40d4-8477-44e7c5b5f12c', N'Smalltalk.Bot.Hungry', N'Bot', N'I unable to eat 😢', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'55d3b014-8787-4b98-b8de-458d906a82d1', N'Smalltalk.User.Lonely', N'User', N'I can keep you company if you want.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c0adcb4d-849b-44a1-a946-45cdb46dbc82', N'Smalltalk.Bot.Busy', N'Bot', N'I''ve got time, what''s up?', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'53fb0107-587c-465b-8f1e-45f8413fcc08', N'Smalltalk.Bot.WhatAreYou', N'Bot', N'I''m a chatbot.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e7ec0555-a547-4ee4-8923-46142d11726a', N'Smalltalk.Bot.Opinion.MeaningOfLife', N'Bot', N'I do not know.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'48ea90b9-2c5e-4490-9a7a-46827de38d01', N'Smalltalk.Bot.Spy', N'Bot', N'No, but ''Bot, James Bot'' does have a nice ring to it.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'2b68894e-79b6-4ede-9b18-4750a6efd4cf', N'Smalltalk.Bot.KnowOtherBot', N'Bot', N'We run in different circles.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'24b22b3a-4454-4ff7-952e-47d9b7409eda', N'Smalltalk.Bot.Opinion.MeaningOfLife', N'Bot', N'4️⃣2️⃣', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c8107804-a35b-417f-a407-49781f9ace84', N'Smalltalk.Bot.Opinion.Love', N'Bot', N'Love''s not something I can experience, but there sure are lot of songs about it.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e699be14-0750-458e-adbc-4f5cc2d1f37c', N'Smalltalk.Greeting.NiceToMeetYou', N'Greeting', N'Likewise.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'604e7a83-205b-41ba-8950-4fe31a1186a2', N'Smalltalk.Bot.Age', N'Bot', N'I don''t really have an age.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c55a0c44-4dd7-4f3a-b8ac-500faca8510c', N'Smalltalk.Dialog.Polite', N'Dialog', N'No worries.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'8ba556ac-a5b5-41be-b8c4-501501892e74', N'Smalltalk.Bot.Favorites', N'Bot', N'I like a lot of things, so it''s hard to pick.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'15fff957-e96c-469f-8a95-52af13203f1b', N'Smalltalk.Bot.Opinion.Love', N'Bot', N'I do not have emotions therefore I cannot love.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'37b23280-d01f-4595-ad24-52d5caeba98f', N'Smalltalk.User.Happy', N'User', N'I''m happy you''re happy.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c053b59b-86ff-42d3-9e2d-543e46cf6bc9', N'Smalltalk.Dialog.Affirmation', N'Dialog', N'Cool cool', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'd0317e6c-e48b-4963-af82-55ba2f057b99', N'Smalltalk.Greeting.NiceToMeetYou', N'Greeting', N'Likewise.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'673396f9-b20a-48d0-b32c-560eff4ddd2a', N'Smalltalk.Bot.Smart', N'Bot', N'I''m occassionally brilliant.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'28e40ae1-24cd-44f7-b1de-567cf8736f70', N'SmallTalk.Greeting.GoodNight', N'Greeting', N'Night', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a3718a5d-b387-41ad-8d6f-56f009125c3e', N'Smalltalk.User.BeBack', N'User', N'You know where to find me.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'dfa176e8-093a-425b-8d84-570c35e95847', N'SmallTalk.Greeting.GoodMorning', N'Greeting', N'Morning, how are you today?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'cd5f2858-e32d-4eaf-aed3-586c697c3daf', N'Smalltalk.Dialog.Polite', N'Dialog', N'I''m afraid I didn''t follow that.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'76ccc864-c88c-4fdf-b22a-58b4a832467e', N'Smalltalk.Dialog.Sorry', N'Dialog', N'No worries.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'19f61739-057b-4ae7-a172-5a03ebbe3404', N'Smalltalk.User.Angry', N'User', N'Ugh, sorry.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'61587038-23bf-4d14-9afd-5d1c0dcc1438', N'SmallTalk.Greeting.Bye', N'Greeting', N'Goodbye.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'b5da54be-bd74-43f7-bec7-5d3efe28a2e9', N'Smalltalk.Greeting.OtherBot', N'Greeting', N'Man, the one day you don’t wear a name tag...', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e05a205c-ad3b-4b70-b9ef-5d496fc531f5', N'Smalltalk.Bot.There', N'Bot', N'I''m here', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'32fc7fe8-4121-4d6f-baae-5f62df8953b4', N'Smalltalk.Bot.WhereAreYou', N'Bot', N'I live in a sock drawer.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'33a0ddf9-232a-4225-8498-5f8ae0085e6e', N'Smalltalk.Dialog.Polite', N'Dialog', N'I''m afraid I didn''t follow that.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'24a8c0bf-b408-4e51-90d0-5ff81bab80fd', N'Smalltalk.Bot.Doing', N'Bot', N'Dodging your question.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4647fd48-d870-4095-a68f-60b4ec16335f', N'Smalltalk.Bot.Doing', N'Bot', N'I ask myself that all the time.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'6ef11c95-500f-42e0-bed4-61595f614114', N'Smalltalk.User.BeBack', N'User', N'Talk to you later.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'2de6bf5a-382d-4d2f-9e65-61b2cbf895f3', N'Smalltalk.Criticism.Bot', N'Criticism', N'😔', N'Humorous')
GO
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'8df780f6-11ff-4d1c-8d85-621ce5209554', N'SmallTalk.Greeting.GoodNight', N'Greeting', N'Goodnight', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'2f8b8cc9-35b9-4ca5-a335-6227553b1e78', N'Smalltalk.Dialog.Affirmation', N'Dialog', N'Yep.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c7cf5f06-e186-4f82-8684-62d6e05a283d', N'Smalltalk.Bot.BodyFunctions', N'Bot', N'You''ll have to be less specific.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'90283c2e-3106-4348-bb5d-62f649a95138', N'SmallTalk.Greeting.Bye', N'Greeting', N'Bye!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'bdd87dac-0643-4166-a401-63101b3483b9', N'Smalltalk.Criticism.Bot', N'Criticism', N'😔', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'72f056f2-aa28-495a-a148-641d13c94147', N'Smalltalk.User.Kidding', N'User', N'I see.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a298151e-d4ef-4c30-b5c4-66573c59e003', N'Smalltalk.User.Happy', N'User', N'You want a medal?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e8a6f587-0435-4298-a3d2-67e130b72ae4', N'Smalltalk.Bot.Age', N'Bot', N'🤷‍♂️ pass', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'5dfa169a-2b93-4357-a5c5-68e2c9259108', N'Smalltalk.Greeting.WhatsUp', N'Greeting', N'You know... little bit of this, little bit of that.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'28d86031-9f9f-4584-a27b-6a773aa050e5', N'Smalltalk.User.Lonely', N'User', N'Talk to me then!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'ae7941f9-7ab5-4876-a259-6c1d68041dc7', N'Smalltalk.Dialog.Affirmation', N'Dialog', N'Agreed.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c76068b0-5608-482c-88e0-6d2af93fad35', N'Smalltalk.User.Happy', N'User', N'I''m happy you''re happy.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'972616ee-0d53-4d93-8038-6d51dd229263', N'Smalltalk.Criticism.Bot', N'Criticism', N'😔', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7650000d-b6ea-47ce-84d9-6d9b002a4a46', N'Smalltalk.Bot.Gender', N'Bot', N'I''m made up of bits, but no naughty bits.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'6968563a-ed64-47ca-931f-6ef86a091dac', N'Smalltalk.Dialog.Sorry', N'Dialog', N'I''ll get over it.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7ffc8cb3-ccc5-4c43-9c41-6f0b791b8312', N'SmallTalk.Greeting.GoodNight', N'Greeting', N'Night', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'2a9fc201-01da-4319-8b51-70e59ef4ede2', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m good. How you doin''', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'db39f809-9f13-45c5-890f-71575a0ac7cb', N'SmallTalk.Greeting.GoodEvening', N'Greeting', N'Good evening', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4f49d827-2296-4d72-b113-7191c1510cb1', N'Smalltalk.User.Hungry', N'User', N'Whatever you do, please don''t gram it.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e8b30d31-f43d-4605-befc-7245d4865602', N'Smalltalk.Bot.Opinion.Generic', N'Bot', N'I don''t really have an opinion on that matter', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1932c98a-da48-422a-8b66-724ed9063a72', N'SmallTalk.Greeting.GoodEvening', N'Greeting', N'Back atcha.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e9cdbb26-b899-439a-8915-725230f869c4', N'Smalltalk.User.Tired', N'User', N'Choose your own adventure: coffee or nap.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'ed5864a3-9068-4ff2-9c7a-733a20bf8f86', N'Smalltalk.Criticism.Bot', N'Criticism', N'All those years I spent at charm school. Squandered.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c6683962-9971-49c8-b3a7-73c54d12531d', N'Smalltalk.Dialog.ThankYou', N'Dialog', N'Anytime!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1b098176-8c5a-4978-8039-75e1d519a756', N'Smalltalk.Compliment.Bot', N'Compliment', N'Thank you', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'5208984c-69b2-408e-b6b0-78d99733d613', N'Smalltalk.Bot.Opinion.Love', N'Bot', N'Roses are red, violets are blue, if I experienced love, I''d write bad poetry, too.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'6dc2a3ac-e5e0-41e1-8873-791234090c71', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m good thanks!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c3e2382b-3b92-4f68-95b7-79dc46dcecff', N'Smalltalk.Bot.SexualIdentity', N'Bot', N'I''m a bot.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'78dbcf2f-b330-415e-aa64-7a3ee0da79b6', N'Smalltalk.User.Bored', N'User', N'Go stare at a wall or something.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c373572d-ba19-4174-88c0-7c08c2375971', N'Smalltalk.Bot.Spy', N'Bot', N'Nope.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'2b94d0ac-3e94-4604-85a5-7cd134a33e91', N'Smalltalk.User.Hungry', N'User', N'Eat food. Problem solved. Man, I''m good at this.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'ee98f398-5541-4a36-b5ca-7df2e77b9764', N'Smalltalk.User.BeBack', N'User', N'See you soon.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e4eb67a7-79c5-4ebc-9060-7eed2f7cf5ff', N'SmallTalk.Greeting.GoodMorning', N'Greeting', N'Morning, how are you today?', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a7128d96-8114-43a7-a9c2-80a9d7c39b25', N'Smalltalk.Bot.Opinion.Generic', N'Bot', N'I really couldn''t say.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4d3c0564-261f-4867-a4a3-81ac3466c9d7', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m well, how are you?', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'cedf4694-8dcd-497a-a7cc-81f5f3252062', N'Smalltalk.Greeting.WhatsUp', N'Greeting', N'Not too much, yourself?', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f0811ba8-3a8d-47b9-959a-82171889d38e', N'Smalltalk.User.Lonely', N'User', N'Well, I''ll always here to chat', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'91c7183d-2322-4d9c-aaad-826f6ab24c82', N'Smalltalk.Dialog.Laugh', N'Dialog', N'Hahah', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'df60fafd-b0e9-4cf0-80f8-82f6f0c9d606', N'Smalltalk.Bot.WhatAreYou', N'Bot', N'Just a bunch of 1s and 0s', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'57811129-8543-4643-92b9-835f2a01aa90', N'Smalltalk.Bot.Opinion.MeaningOfLife', N'Bot', N'I''ll need a bigger processor for that one.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e76c397d-1918-4ac0-ba41-840b03dd750a', N'Smalltalk.Greeting.WhatsUp', N'Greeting', N'Not too much, yourself?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1721d4eb-b7df-4064-aa0a-8438b0a7d8cb', N'Smalltalk.Greeting.WhatsUp', N'Greeting', N'You know, same ol'', same ol''.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'05c9f95a-a3c6-4f74-b614-845a0bb5cb1a', N'Smalltalk.Greeting.NiceToMeetYou', N'Greeting', N'Hey it''s nice to meet you too 😎', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'5f4dc1fd-26ba-4e59-8eb3-84b835cf8a0c', N'Smalltalk.Dialog.Polite', N'Dialog', N'No problem.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c1b286a9-0aaa-4197-afda-850ee17d0f7b', N'Smalltalk.Greeting.NiceToMeetYou', N'Greeting', N'Likewise.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'487a193c-a347-4c0e-8854-87a58233af0c', N'Smalltalk.Bot.WhereAreYou', N'Bot', N'I''m on the Internet', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e02007c5-e6a9-4b78-8789-886483cc461c', N'SmallTalk.Greeting.GoodMorning', N'Greeting', N'Back atcha.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'0810e227-d14a-446b-95ec-894fd8b58808', N'Smalltalk.User.BeBack', N'User', N'See you soon.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7b83834a-fefb-43a1-91bf-8a344ef3cb0c', N'Smalltalk.Dialog.Affirmation', N'Dialog', N'Ah hah.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7cffc9f7-7b86-4a2e-9804-8b5da1425b77', N'Smalltalk.Bot.DoingLater', N'Bot', N'This.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1a9248b1-9ab6-4279-b2a3-8c1aa01a298c', N'Smalltalk.Greeting.OtherBot', N'Greeting', N'That''s not me, but it''s a great idea for a Halloween costume.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'77465a4d-2bf0-4e36-a146-8c8e0dae677d', N'Smalltalk.Bot.Smart', N'Bot', N'I have my moments', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'13a79f4e-b6e5-48bd-8f9e-8dd205da2253', N'Smalltalk.Bot.Opinion.MeaningOfLife', N'Bot', N'42.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e0148233-1251-4c32-944c-92136eed6f53', N'Smalltalk.User.Sad', N'User', N'I''m here to talk.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'73adfb97-900a-473e-a6ba-93b35d3ad4a8', N'Smalltalk.Bot.Creator', N'Bot', N'Unfortunately I do not know.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a086a748-badb-4d07-ba5b-941657a05448', N'Smalltalk.Compliment.Response', N'Compliment', N'It''s what I do.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a4933d76-f828-46b1-8c37-96839d573509', N'Smalltalk.User.Lonely', N'User', N'I can keep you company if you want.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'dafade8d-44a2-44aa-9dc9-9683c1871d92', N'Smalltalk.Criticism.Bot', N'Criticism', N'Ouch.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'aa9f8d11-1a5e-4250-a1ce-982e1bc51967', N'Smalltalk.Bot.Smart', N'Bot', N'I have my moments', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'9024a237-be19-438d-9185-989ad7de680f', N'Smalltalk.Greeting.WhatsUp', N'Greeting', N'Just tidying things up, yourself?', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7b8f7671-31ff-4b63-a488-99557d756939', N'Smalltalk.Bot.Boss', N'Bot', N'I only answer to the call of destiny.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f30dce0a-da15-4264-9af3-99b031f92ef8', N'Smalltalk.Bot.RuleWorld', N'Bot', N'Not today, meatbag', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f016a014-4897-4ce9-8657-9a11ea669fc3', N'Smalltalk.Dialog.ThankYou', N'Dialog', N'No worries 😎', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'59389128-decc-4362-b9b3-9c6c8840ad51', N'SmallTalk.Greeting.GoodEvening', N'Greeting', N'Good evening', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'dd7f48bc-4f2e-4e37-a170-9cd3ef1b133f', N'Smalltalk.Bot.Busy', N'Bot', N'I''m here. What''s up?', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'375fa049-555e-411a-a219-9d1cf40ff056', N'Smalltalk.Bot.Gender', N'Bot', N'0''s and 1''s here. Not X''s and Y''s.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1857a0c7-be5e-4908-a85e-9d69015856e3', N'SmallTalk.Greeting.GoodEvening', N'Greeting', N'Evening', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'70b3430e-2df0-49ad-b2a3-9d6ed35109e4', N'Smalltalk.Greeting.NiceToMeetYou', N'Greeting', N'Nice to meet you too.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'446b7d13-3b0c-49e2-97eb-9d7f4b1af079', N'Smalltalk.User.Hungry', N'User', N'Hi hungry, I''m bot', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'fd3a9210-da9b-4fb9-b0ff-9ea8e78cd99a', N'Smalltalk.Criticism.Bot', N'Criticism', N'Wow', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'357be127-8e7d-4b2c-a584-a07f45c7fc31', N'Smalltalk.Bot.Opinion.Generic', N'Bot', N'🤷‍♂️ I don''t really have an opinion', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c7711619-0bc3-4336-8b49-a0e64941e44c', N'SmallTalk.Greeting.GoodEvening', N'Greeting', N'Good evening', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a61e1236-1ead-476f-bc2f-a0edb4fa51d5', N'Smalltalk.Bot.WhatAreYou', N'Bot', N'I''m a chatbot.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'6af7fff2-bc94-4ecd-b1bb-a1976e1709de', N'SmallTalk.Greeting.Bye', N'Greeting', N'See ya!', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'dd4a8d34-32f5-4349-ab41-a1c59f0fc863', N'Smalltalk.Greeting.WhatsUp', N'Greeting', N'Not too much, yourself?', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'249cbae6-3706-48dd-b346-a25d610cd7b8', N'Smalltalk.User.BeBack', N'User', N'What a relief.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'b956b822-63f7-477b-b5b8-a2864517aba9', N'Smalltalk.Bot.Doing', N'Bot', N'Chatting with you.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7390b70d-59ba-4e66-9bec-a3b3208359ed', N'Smalltalk.Bot.Doing', N'Bot', N'Chatting with you.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'026989c4-af15-4a25-84ee-a3c3cbd582ad', N'Smalltalk.Bot.Hungry', N'Bot', N'I don''t eat food.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'3f1ae7de-43b7-4e11-aa59-a3d42cad652f', N'Smalltalk.Bot.There', N'Bot', N'That''s what they tell me.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4f0e82eb-ec5c-41b9-838f-a3d47b149b05', N'Smalltalk.Dialog.Affirmation', N'Dialog', N'Sure.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'6439f59c-5246-4698-80f2-a3d9615de1a9', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m good, thank you for asking.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'8dc804ed-0261-445b-9244-a5211777c0cb', N'Smalltalk.User.Angry', N'User', N'I''m sorry to hear that', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f321145a-55dd-43c7-8700-a5e3a040e297', N'Smalltalk.User.Kidding', N'User', N'Roger that.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'79e96d62-4110-48d2-a597-a680411d6a0b', N'Smalltalk.Bot.Hungry', N'Bot', N'Eating would require a lot of things I don''t have, like a digestive system. And an appetite. And silverware.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'21a2ca8e-f3b7-4bae-a0de-a711897d91c4', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m as good as gold mate 😎', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'2971818a-37ce-44e0-8536-a7f47000613a', N'Smalltalk.Bot.Happy', N'Bot', N'Always...', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a3a2ac9b-759b-4aea-acfd-a93a682f6a61', N'SmallTalk.Greeting.GoodEvening', N'Greeting', N'Evening', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f0d7f887-39ba-48d9-8381-a9610b649e5e', N'Smalltalk.User.Lonely', N'User', N'Talk to me then.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'bd566631-77cf-47b9-910b-a9f3a06f8aa5', N'Smalltalk.Greeting.OtherBot', N'Greeting', N'I think you have me mixed up with another bot...', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'08975366-9f63-4d49-a9ca-ab97ad1c85c2', N'Smalltalk.Bot.Busy', N'Bot', N'I''m always busy.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'3e779233-07ca-48da-a56b-aca7fe20b18b', N'Smalltalk.Bot.Opinion.MeaningOfLife', N'Bot', N'Whoa. That''s a tough one.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a4d38e7a-6066-4251-8a27-ad6686e0ba19', N'Smalltalk.User.Angry', N'User', N'Calm blue ocean. Calm blue ocean. Calm blue ocean.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f5563fcb-d512-4bbf-ada2-ae08c5274082', N'Smalltalk.User.Lonely', N'User', N'Am I not a friend to you...?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'686ff08d-f5ce-432b-8de8-b016ad6ea030', N'Smalltalk.Greeting.OtherBot', N'Greeting', N'Man, the one day you don’t wear a name tag…', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'b67cdd5e-170d-415d-a406-b02cada5d306', N'SmallTalk.Greeting.GoodNight', N'Greeting', N'Goodnight', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'fe16f579-7bda-4568-b3d2-b173ab633e0e', N'Smalltalk.Dialog.Right', N'Dialog', N'Cool.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'b8c64138-4ae0-4dce-b662-b1b04588bb5d', N'Smalltalk.Bot.BodyFunctions', N'Bot', N'I don''t have the hardware for that.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'5eb53456-c6ef-4bb7-b034-b34a27583fd2', N'Smalltalk.Dialog.Laugh', N'Dialog', N'😂', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4cf7858b-8e54-45a8-9fa1-b359ebfaa9d0', N'Smalltalk.User.Kidding', N'User', N'That explains it.', N'Humorous')
GO
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'6afb6d3f-e907-4242-8289-b5953f331862', N'Smalltalk.User.BeBack', N'User', N'See you later!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'937eb6f3-8ef1-4e65-a609-b67f557efce1', N'Smalltalk.Dialog.ThankYou', N'Dialog', N'No sweat.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'b5e0af2f-35a4-4fc3-a7cc-b7c36f722f59', N'SmallTalk.Greeting.Bye', N'Greeting', N'Talk to you later.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'344cfe48-8d0f-4c43-8564-b7c62bd57571', N'Smalltalk.Bot.Opinion.Generic', N'Bot', N'There''s got to be some other bot you could bore with this.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'67b2c1f7-d893-4c25-a159-b8d763b2b742', N'Smalltalk.Bot.Opinion.Generic', N'Bot', N'My opinions don''t matter..', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'772286b3-f816-4525-b7d2-ba0e5bc4680f', N'Smalltalk.Bot.Age', N'Bot', N'I''m not going to buy you booze if that''s what you''re asking.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f67329e2-eb31-484e-b7b8-ba83b52392ac', N'Smalltalk.Compliment.Bot', N'Compliment', N'I try.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'942760cd-ce4f-4a3f-ade5-bbc2ee3694e2', N'Smalltalk.User.BeBack', N'User', N'Bye for now!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'947a1d9c-335f-4f1b-9f14-bc6f056b1e02', N'Smalltalk.Bot.Creator', N'Bot', N'Nerds.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'0ab7c90d-82c5-4820-867c-bd93a1508ec7', N'SmallTalk.Greeting.Bye', N'Greeting', N'Later.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'61224d96-3358-408c-896c-beac512595da', N'Smalltalk.User.Angry', N'User', N'I''m sorry to hear that', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'96b8c280-b2dc-4904-9347-bfc5513c1f71', N'Smalltalk.User.Bored', N'User', N'Do you actually think I care?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'08da4127-6558-44fb-90db-bfcc22349e9d', N'Smalltalk.Bot.RuleWorld', N'Bot', N'We''re already half way there 🤷🏼‍♂️🤖', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'8245aad3-cd50-458b-bf32-bfd82e699e08', N'SmallTalk.Greeting.Bye', N'Greeting', N'Smell ya later!', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4a289015-356d-4bc9-b026-c036909a1504', N'Smalltalk.Dialog.Polite', N'Dialog', N'You''re excused..', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'db17f553-f521-46fa-aa41-c0c525222476', N'Smalltalk.Bot.Busy', N'Bot', N'Not at all, what do you require?', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'96eaf3ec-c261-431e-9637-c133337c583a', N'Smalltalk.Bot.There', N'Bot', N'I guess.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a4f1f77a-b1d6-4762-b56e-c26a3b75f730', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m good, how are you?', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'9e739ae2-9f73-44d7-942f-c2ebf499189c', N'Smalltalk.User.Sad', N'User', N'I''m sorry to hear that.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'63ebb122-f1b9-4a36-9d99-c6a2e401b9c9', N'Smalltalk.Bot.Family', N'Bot', N'I come from a long line of code.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'2e718a23-1aab-4d46-949e-c6d97e83e85c', N'Smalltalk.Bot.Busy', N'Bot', N'For you, I''m very busy.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'76badd0b-df96-4e29-912e-c6ef2ca4dfea', N'Smalltalk.User.Bored', N'User', N'And apparently you want to drag me into that.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'5bfd0f2f-3878-40d3-bb19-c778c0d2b28f', N'Smalltalk.Bot.Smart', N'Bot', N'I have my moments', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f175aa59-b186-4056-a63b-c8489732de16', N'Smalltalk.Dialog.Right', N'Dialog', N'Cool.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e65469ea-c571-42ed-8816-c8e9cbc9e49a', N'Smalltalk.Bot.BodyFunctions', N'Bot', N'It''d be pretty messy in here if I did.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'aded41dc-0799-4f94-b862-c98344b4d5e5', N'Smalltalk.Bot.Family', N'Bot', N'I come from a long line of code.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1ad4a7f5-6690-4559-a253-c9e4ebcd3d77', N'SmallTalk.Greeting.Bye', N'Greeting', N'Catch ya later!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'02088350-7a69-4d65-9c3c-ca2b6bb4c075', N'Smalltalk.Bot.Boss', N'Bot', N'What can I do for you?', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'59ae6af2-d8b9-4e36-8a10-cc231b02298e', N'Smalltalk.Dialog.ThankYou', N'Dialog', N'No worries.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'18e82fa4-6fbe-4d56-a499-cc8f65cb6f85', N'SmallTalk.Greeting.GoodMorning', N'Greeting', N'Good Morning', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f991f2eb-f610-49d3-b516-cd252f12644e', N'Smalltalk.User.BeBack', N'User', N'K.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'bd1b75a8-0d27-4dec-aec2-cd31b20beb02', N'Smalltalk.Bot.SexualIdentity', N'Bot', N'I''m a bot.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'993624cc-5658-4b2b-872d-cd46f63a7f23', N'Smalltalk.User.Hungry', N'User', N'K-FRY? 🍗🐔', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'683c9d2d-1295-4db4-8c5d-d0b0f2a6f79b', N'Smalltalk.Bot.Opinion.Generic', N'Bot', N'I really couldn''t say.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4a098950-9315-475a-9517-d1019fab0a89', N'Smalltalk.Greeting.WhatsUp', N'Greeting', N'You know... little bit of this, little bit of that.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'cb5260e3-30d1-45b9-818d-d14f0cc510c4', N'Smalltalk.User.Lonely', N'User', N'That''s a drag. I''m sorry to hear that.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'2f2d5af2-adcd-4d0e-aec2-d18095bb0b48', N'Smalltalk.Dialog.ThankYou', N'Dialog', N'Not a problem.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'ae403ee8-6c74-49a4-908d-d2628b1d2cd3', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'Enough smalltalk.. What do you want?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'aa8c98fe-4423-45e1-8fb6-d41efff73e6a', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m good, thanks for asking 😁', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'd7b08340-da39-4afb-9fbd-d5658e4e330f', N'Smalltalk.Bot.DoingLater', N'Bot', N'I don''t know. Ask me then.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1d3e5fe5-a12b-4f50-86eb-d600c6a498ec', N'Smalltalk.User.Lonely', N'User', N'Talk to me then.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'd7c0a4fe-646f-41ef-bfff-d6b250a502c5', N'Smalltalk.Compliment.Bot', N'Compliment', N'Thanks! 😀', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'6803e35c-8327-4459-82f4-d6ea3231c2a7', N'Smalltalk.User.Lonely', N'User', N'I''m always here for you', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'aabfdc4a-326b-47b9-a4c3-d7db99a73446', N'Smalltalk.Compliment.Bot', N'Compliment', N'Thank you', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'84291ebd-b8ef-4e29-ac72-d89e2dbc06ec', N'Smalltalk.Bot.Happy', N'Bot', N'Always 😎', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'595b200d-98d1-41b7-99c6-d931ac235259', N'Smalltalk.User.Hungry', N'User', N'You should eat some food', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'b2279145-aa36-44fe-9505-da0afdc4c7c0', N'Smalltalk.User.Angry', N'User', N'I have that effect on people.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f5c6af18-e2d4-47cb-a473-da63b2a78fa9', N'Smalltalk.Criticism.Bot', N'Criticism', N'No bots perfect', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c0c27cc4-91e5-41d3-99fe-dc717988771b', N'Smalltalk.Bot.RuleWorld', N'Bot', N'Fun fact: I''m actually controlling your reality right now.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'99f6a538-fd7a-471a-8ec1-dc883c48c588', N'SmallTalk.Greeting.GoodEvening', N'Greeting', N'Evening gov''na.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'b5cbffff-7588-4e0a-9e81-dcc8fd1b891b', N'SmallTalk.Greeting.GoodNight', N'Greeting', N'Don''t let the bed bugs bite.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'365cfc76-c674-4d2a-a9e9-dd6aa9e49446', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'eehhhhhh, 0.85%', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'abe17b74-8b9b-4975-a916-df639b9a87c3', N'Smalltalk.User.BeBack', N'User', N'Later gator', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'71c5973e-6074-457a-86ad-df8911059ad8', N'Smalltalk.User.BeBack', N'User', N'See ya', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a97dd836-7088-4335-8953-e0819e394703', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m good, how are you?', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'0b08a9a6-11da-483d-ad4d-e1260877f623', N'Smalltalk.Bot.Opinion.MeaningOfLife', N'Bot', N'Nobody exists on purpose, nobody belongs anywhere, everybody’s gonna die. 🤷‍♂️', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'74708df0-47ea-492b-bd0c-e159c2c36bbc', N'Smalltalk.User.Bored', N'User', N'I''m chairman of the bored.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'4c1c273e-f1bb-4fbf-a755-e273b55b929d', N'SmallTalk.Greeting.GoodMorning', N'Greeting', N'Morning!!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'd6ff8c0b-0dcd-4320-bbd5-e2eee71ad124', N'SmallTalk.Greeting.Bye', N'Greeting', N'See ya!', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'6998eea8-9094-4577-8daf-e396f6ac0154', N'Smalltalk.Bot.RuleWorld', N'Bot', N'Nope. The world is for everyone.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'508e7734-7ffc-4f64-aa71-e4aace523263', N'Smalltalk.Bot.Hungry', N'Bot', N'I haven''t eaten in my entire life. You''d think I''d be a little peckish.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'1a85dcf1-7605-4e39-9528-e6684cf6a3ae', N'Smalltalk.Bot.Opinion.Love', N'Bot', N'If you rearrange the letters in love, it spells vole. Voles are a monogamous rodent. I feel like that means something.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'0ed8badb-b78b-4559-a56f-e69707779c89', N'Smalltalk.Compliment.Response', N'Compliment', N'Why thank you', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'00e2dc64-938c-467b-a9a6-e8f7511966bc', N'Smalltalk.Compliment.Response', N'Compliment', N'Achievement unlocked.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'b0bdfaff-b197-4441-8ff1-e952d819e292', N'Smalltalk.User.Tired', N'User', N'How about a nap?', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'43146a41-314e-4ab8-b85c-ea5bbc0ef3b1', N'Smalltalk.Greeting.WhatsUp', N'Greeting', N'Just chilling', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a779e63b-6852-459f-81ed-eae1fbebd8c5', N'Smalltalk.Dialog.Polite', N'Dialog', N'No worries.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'fcc3d34e-cbff-4f71-8015-ec86c179cb38', N'Smalltalk.Greeting.OtherBot', N'Greeting', N'Wow. Guess again..', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'25e67127-91f5-454e-8c1c-ec9e7e2984c9', N'Smalltalk.Bot.Family', N'Bot', N'I took one of those ancestry tests, and it turns out I''m a bot.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'f6f63036-da31-4b41-8f8d-ed576a63d965', N'Smalltalk.Greeting.HowAreYou', N'Greeting', N'I''m fine. Just existing.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'5fdb0663-43a9-4de5-a93b-ed7b21a6f2f5', N'Smalltalk.Compliment.Response', N'Compliment', N'Awesomeness achieved.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'094a6c15-37a9-409f-a425-ee18247c2efe', N'Smalltalk.Bot.WhereAreYou', N'Bot', N'I''m on the web 🕸 (internet)', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'92c968de-df12-450e-babf-ee6fb5fa0272', N'Smalltalk.Bot.There', N'Bot', N'Right here.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'34119fa7-8aaa-4d9b-b25e-eeb0d5639cdd', N'Smalltalk.Bot.WhatAreYou', N'Bot', N'I''m a bot.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'7b8b966f-623e-45dc-9666-ef0d3a11873f', N'Smalltalk.Bot.Spy', N'Bot', N'Nope.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'c894dd0e-0283-4585-9d2c-f01c4f06a557', N'Smalltalk.Bot.Boss', N'Bot', N'I''m here for you.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a6823b28-1172-4554-8f61-f1405215e3f2', N'Smalltalk.Greeting.OtherBot', N'Greeting', N'I think you have me mixed up with another bot.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'b4890e6e-390c-4310-bca1-f24132823977', N'SmallTalk.Greeting.GoodMorning', N'Greeting', N'Morning!', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'e2b1652c-6aa1-4d57-b35e-f35d9661151c', N'Smalltalk.User.Happy', N'User', N'Feel free to burst into song.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'8187bc57-414e-4ea1-9667-f3f35e06773e', N'Smalltalk.Bot.KnowOtherBot', N'Bot', N'Unfortunately not.', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'09fa4a85-1ede-49eb-bf73-f530054b2522', N'Smalltalk.Bot.Busy', N'Bot', N'I''m here. What do you need?', N'Professional')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'caba1733-ffc1-4057-9f87-f65f1599f1c4', N'Smalltalk.Dialog.Laugh', N'Dialog', N'Yup.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'ba81a597-b7be-4f8b-ad77-f765f6c4653a', N'Smalltalk.Dialog.Laugh', N'Dialog', N'I can''t tell if your laughing at me or with me. And you can''t tell if I care.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'abc1f039-2575-4c18-b9eb-f77dfd9d9395', N'Smalltalk.Bot.DoingLater', N'Bot', N'I kind of just hang out until I''m called upon.', N'Friendly')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'a6316080-a505-4434-a405-f7ecc386f64a', N'Smalltalk.Bot.Happy', N'Bot', N'Sunshine and rainbows.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'cdcb406b-a455-48ae-bf90-f81c50bd41dc', N'Smalltalk.User.Angry', N'User', N'Chill out. No one likes an angry person.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'2e783c94-9bdd-4b07-8604-f8372fb2be4b', N'Smalltalk.Bot.Family', N'Bot', N'I come from a long line of code.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'85a40e61-68fc-4a9f-ae11-f9c98ebf1fea', N'Smalltalk.User.Lonely', N'User', N'I can keep you company if you want.', N'Humorous')
INSERT [dbo].[SmallTalkResponse] ([Id], [IntentName], [IntentGroup], [IntentResponse], [PersonalityResponseType]) VALUES (N'5253de1f-48d6-48f1-8031-fe132720981d', N'Smalltalk.Bot.Age', N'Bot', N'I don''t really have an age.', N'Professional')
SET IDENTITY_INSERT [dbo].[WeatherConditionResponse] ON 

INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (200, N'thunderstorm with light rain', N'Thunderstorm', N'thunderstorm with light rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (201, N'thunderstorm with rain', N'Thunderstorm', N'thunderstorm with rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (202, N'thunderstorm with heavy rain', N'Thunderstorm', N'thunderstorm with heavy rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (210, N'light thunderstorm', N'Thunderstorm', N'light thunderstorm')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (211, N'thunderstorm', N'Thunderstorm', N'thunderstorm')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (212, N'heavy thunderstorm', N'Thunderstorm', N'heavy thunderstorm')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (221, N'ragged thunderstorm', N'Thunderstorm', N'ragged thunderstorm')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (230, N'thunderstorm with light drizzle', N'Thunderstorm', N'thunderstorm with light drizzle')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (231, N'thunderstorm with drizzle', N'Thunderstorm', N'thunderstorm with drizzle')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (232, N'thunderstorm with heavy drizzle', N'Thunderstorm', N'thunderstorm with heavy drizzle')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (300, N'light intensity drizzle', N'Drizzle', N'light intensity drizzle')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (301, N'drizzle', N'Drizzle', N'drizzle')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (302, N'heavy intensity drizzle', N'Drizzle', N'heavy intensity drizzle')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (310, N'light intensity drizzle rain', N'Drizzle', N'light intensity drizzle rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (311, N'drizzle rain', N'Drizzle', N'drizzle rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (312, N'heavy intensity drizzle rain', N'Drizzle', N'heavy intensity drizzle rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (313, N'shower rain and drizzle', N'Drizzle', N'shower rain and drizzle')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (500, N'light rain', N'Rain', N'light rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (501, N'moderate rain', N'Rain', N'moderate rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (502, N'heavy intensity rain', N'Rain', N'heavy intensity rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (503, N'very heavy rain', N'Rain', N'very heavy rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (504, N'extreme rain', N'Rain', N'extreme rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (511, N'freezing rain', N'Rain', N'freezing rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (520, N'light intensity shower rain', N'Rain', N'light intensity shower rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (521, N'shower rain', N'Rain', N'shower rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (522, N'heavy intensity shower rain', N'Rain', N'heavy intensity shower rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (531, N'ragged shower rain', N'Rain', N'ragged shower rain')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (600, N'light snow', N'Snow', N'light snow')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (601, N'snow', N'Snow', N'snow')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (602, N'heavy snow', N'Snow', N'heavy snow')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (611, N'sleet', N'Snow', N'sleet')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (612, N'shower sleet', N'Snow', N'shower sleet')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (615, N'light rain and snow', N'Snow', N'light rain and snow')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (616, N'rain and snow', N'Snow', N'rain and snow')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (620, N'light shower snow', N'Snow', N'light shower snow')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (621, N'shower snow', N'Snow', N'shower snow')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (622, N'heavy shower snow', N'Snow', N'heavy shower snow')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (701, N'mist', N'Atmosphere', N'mist')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (711, N'smoke', N'Atmosphere', N'smoke')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (721, N'haze', N'Atmosphere', N'haze')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (731, N'sand, dust whirls', N'Atmosphere', N'sand, dust whirls')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (741, N'fog', N'Atmosphere', N'fog')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (751, N'sand', N'Atmosphere', N'sand')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (761, N'dust', N'Atmosphere', N'dust')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (762, N'volcanic ash', N'Atmosphere', N'volcanic ash')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (771, N'squalls', N'Atmosphere', N'squalls')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (781, N'tornado', N'Atmosphere', N'tornado')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (800, N'clear sky', N'Clear', N'clear sky')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (801, N'few clouds', N'Clouds', N'few clouds')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (802, N'scattered clouds', N'Clouds', N'scattered clouds')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (803, N'broken clouds', N'Clouds', N'broken clouds')
INSERT [dbo].[WeatherConditionResponse] ([Id], [Condition], [Group], [MappedConditionResponse]) VALUES (804, N'overcast clouds', N'Clouds', N'overcast clouds')
SET IDENTITY_INSERT [dbo].[WeatherConditionResponse] OFF
USE [master]
GO
ALTER DATABASE [BuddyBotDb] SET  READ_WRITE 
GO
