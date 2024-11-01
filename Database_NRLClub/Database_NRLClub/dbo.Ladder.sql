CREATE TABLE [dbo].[Ladder]
(
    [LadderID] INT IDENTITY(1, 1) PRIMARY KEY,  -- ID auto-incremental
    [ClubID] INT NOT NULL,
    [Position] INT NOT NULL,
    [Points] INT NOT NULL,
    [GamesWon] INT NOT NULL,
    [GamesLost] INT NOT NULL,
    FOREIGN KEY ([ClubID]) REFERENCES [dbo].[Club]([ClubID]) ON DELETE CASCADE
);
