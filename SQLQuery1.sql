CREATE TABLE [dbo].[TabularStamps]
(
	[StampId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Name ] NVARCHAR(50) NOT NULL , 
    [Price] MONEY NOT NULL, 
    [InStock] INT NOT NULL, 
    [LastUpdate] DATETIME NOT NULL, 
    [Picture] NVARCHAR(50) NOT NULL, 
    [Series] NVARCHAR(50) NOT NULL, 
    [OnSpecial] SMALLINT NOT NULL
)

INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'6p Brown', CAST(0.1300 AS Money), 12, N'2017-01-01 00:00:00', N'animals-anteater.jpg', N'Animals', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'8p Orange', CAST(0.1500 AS Money), 13, N'2017-01-01 00:00:00', N'animals-tigerCat.jpg', N'Animals', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'9p Lt. Brown', CAST(0.1800 AS Money), 14, N'2017-01-01 00:00:00', N'animals-kangaroo.jpg', N'Animals', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'11p Blue', CAST(0.2100 AS Money), 13, N'2017-01-01 00:00:00', N'animals-bandicoot.jpg', N'Animals', 0)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'1/- Green', CAST(0.2300 AS Money), 15, N'2017-01-01 00:00:00', N'animals-platypus.jpg', N'Animals', 0)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES( N'1'' 2p Red', CAST(0.2500 AS Money), 14, N'2017-01-01 00:00:00', N'animals-tasTiger.jpg', N'Animals', 0)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'1'' 6p Red', CAST(0.2800 AS Money), 21, N'2017-01-01 00:00:00', N'flower-ChristmasBells.jpg', N'Flower', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'2/- Blue', CAST(0.3000 AS Money), 19, N'2017-01-01 00:00:00', N'flower-Flannel.jpg', N'Flower', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'2'' 3p Green', CAST(0.3500 AS Money), 13, N'2017-01-01 00:00:00', N'flower-wattle.jpg', N'Flower', 0)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'2'' 5p Yellow', CAST(0.3800 AS Money), 12, N'2017-01-01 00:00:00', N'flower-banksia.jpg', N'Flower', 0)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES( N'3''Red', CAST(0.4100 AS Money), 11, N'2017-01-01 00:00:00', N'flower-waratah.jpg', N'Flower', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'2 1/2p Red', CAST(0.2100 AS Money), 9, N'2017-01-01 00:00:00', N'peace-red.jpg', N'Peace', 0)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES(N'5 1/2p Green', CAST(0.2400 AS Money), 21, N'2017-01-01 00:00:00', N'peace-green.jpg', N'Peace', 0)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES( N'3/- Blue', CAST(0.4500 AS Money), 13, N'2017-01-01 00:00:00', N'peace-blue.jpg', N'Peace', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES( N'1/2p Orange', CAST(0.0900 AS Money), 21, N'2017-01-01 00:00:00', N'zoo-kangaroo.jpg', N'Zoological', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES( N'4p Green', CAST(0.1200 AS Money), 19, N'2017-01-01 00:00:00', N'zoo-koala.jpg', N'Zoological', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES( N'5p Red', CAST(0.1500 AS Money), 18, N'2017-01-01 00:00:00', N'zoo-sheep.jpg', N'Zoological', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES( N'5 1/2p Blue', CAST(0.1900 AS Money), 21, N'2017-01-01 00:00:00', N'zoo-emu.jpg', N'Zoological', 1)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES( N'6p Purple', CAST(0.2100 AS Money), 19, N'2017-01-01 00:00:00', N'zoo-kookaburra.jpg', N'Zoological', 0)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES( N'9p Brown', CAST(0.2300 AS Money), 17, N'2017-01-01 00:00:00', N'zoo-platypus.jpg', N'Zoological', 0)
INSERT INTO [dbo].[TabularStamps]([Name ],[Price],[InStock],[LastUpdate],[Picture] ,[Series] ,[OnSpecial]) VALUES( N'1/- Green', CAST(0.2800 AS Money), 15, N'2017-01-01 00:00:00', N'zoo-lyrebird.jpg', N'Zoological', 0)

