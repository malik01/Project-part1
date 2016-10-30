drop table dbo.Teams
drop table dbo.Results
drop table dbo.users
CREATE TABLE [dbo].[Teams](
	[TeamID] [int] IDENTITY (100, 1) NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[TeamDescription] [varchar](500) NOT NULL,
	[GameID] [int] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];

CREATE TABLE [dbo].[Results](
	[GameID] [int] NOT NULL,
	[WeekNumber] [int] NOT NULL,
	[TeamID1] [int] NOT NULL,
	[TeamScore1] [int] NOT NULL,
	[TeamID2] [int] NOT NULL,
	[TeamScore2] [int] NOT NULL,
	[Spectator] [int] NOT NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY (GameID, WeekNumber) 
);

CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY (100, 1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];


INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Borussia Dortmund', 'Ballspielverein Borussia 09 e.V. Dortmund, commonly known as Borussia Dortmund, BVB, or simply Dortmund, is a German sports club based in Dortmund, North Rhine-Westphalia (Borussia is the Latin equivalent of Prussia).', 1);
INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Schalke 04', 'Fußballclub Gelsenkirchen-Schalke 04 e. V., commonly known as FC Schalke 04 or simply abbreviated as S04 , is a professional German association-football club and multi-sports club originally from the Schalke district of Gelsenkirch',1);
INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('FC Bayern Munich','Fußball-Club Bayern München e.V., commonly known as FC Bayern München, FCB, Bayern Munich, or FC Bayern, is a German sports club based in Munich, Bavaria, Germany. It is best known for its professional football team, which plays in the Bundesliga, ',2);
INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Real Madrid C.F.','Real Madrid Club de Fútbol, commonly known as Real Madrid, or simply as Real outside Spain frontiers, is a professional football club based in Madrid, Spain.',2);



INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (1,1,100,3,101,4,27587);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (1,2,100,1,101,5,54025);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (1,3,100,2,101,1,44584);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (1,4,100,1,101,2,39548);

INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (2,1,102,4,103,4,27587);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (2,2,102,6,103,5,54025);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (2,3,102,2,103,1,44584);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (2,4,102,1,103,2,39548);

INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (3,1,104,3,105,1,27587);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (3,2,104,4,105,4,54025);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (3,3,104,1,105,5,44584);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (3,4,104,2,105,1,39548);

INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (4,1,106,4,107,4,27587);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (4,2,106,3,107,5,54025);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (4,3,106,4,107,1,44584);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (4,4,106,6,107,5,39548);