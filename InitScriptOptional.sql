USE [vh_curse_teams]
GO
/****** Object:  Table [dbo].[team]    Script Date: 08/21/2014 18:55:44 ******/
SET IDENTITY_INSERT [dbo].[team] ON
INSERT [dbo].[team] ([id], [name]) VALUES (13, N'Shaco''s Assassins')
INSERT [dbo].[team] ([id], [name]) VALUES (14, N'Ryze''s Army')
INSERT [dbo].[team] ([id], [name]) VALUES (15, N'Yi''s EasyMode Champs')
SET IDENTITY_INSERT [dbo].[team] OFF
/****** Object:  Table [dbo].[player]    Script Date: 08/21/2014 18:55:44 ******/
SET IDENTITY_INSERT [dbo].[player] ON
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (10, N'Shaco', 10, 10, 28, 15, 25, 13)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (11, N'Morgana', 15, 25, 30, 5, 45, 13)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (12, N'Dr. Mundo', 5, 10, 10, 0, 20, 13)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (13, N'Miss Fortune', 8, 15, 30, 18, 5, 13)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (14, N'Thresh', 20, 20, 4, 12, 60, 13)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (15, N'Ryze', 10, 20, 4, 5, 7, 14)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (16, N'Nasus', 6, 10, 20, 5, 6, 14)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (17, N'Elise', 8, 9, 12, 9, 10, 14)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (18, N'Jinx', 14, 15, 30, 23, 15, 14)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (19, N'Sona', 4, 10, 2, 5, 20, 14)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (20, N'Master Yi', 6, 10, 10, 9, 4, 15)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (21, N'Fizz', 8, 15, 10, 10, 2, 15)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (22, N'Gnar', 8, 10, 15, 4, 10, 15)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (23, N'Blitzcrank', 0, 5, 2, 10, 6, 15)
INSERT [dbo].[player] ([id], [name], [games_won], [games_played], [kills], [deaths], [assists], [id_team]) VALUES (24, N'Varus', 16, 20, 20, 15, 2, 15)
SET IDENTITY_INSERT [dbo].[player] OFF
