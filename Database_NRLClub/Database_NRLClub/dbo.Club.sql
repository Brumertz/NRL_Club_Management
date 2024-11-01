CREATE TABLE [dbo].[Club]
(
    [ClubID] INT IDENTITY(1, 1) PRIMARY KEY,  -- ID auto-incremental
    [ClubName] NVARCHAR(100) NOT NULL,
    [HomeCity] NVARCHAR(50) NOT NULL,
    [CoachName] NVARCHAR(100) NOT NULL,
    [Stadium] NVARCHAR(100) NOT NULL
);