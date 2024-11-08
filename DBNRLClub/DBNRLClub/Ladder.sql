CREATE TABLE [dbo].[Ladder]
(
    [LadderID] INT IDENTITY(1, 1) PRIMARY KEY,  -- ID auto-incremental
    [ClubID] INT NOT NULL,
    [TeamName] NVARCHAR NOT NULL,
    [Position] INT NOT NULL,
    [Played] INT NOT NULL,
    [Points] INT NOT NULL,
    [Win] INT NOT NULL,
    [Draw] INT NOT NULL,
    [Lost] INT NOT NULL,
    [Byes] INT NOT NULL,
    [For] INT NOT NULL,
    [Against] INT NOT NULL,
    [Diff] INT NOT NULL,
    
    FOREIGN KEY ([ClubID]) REFERENCES [dbo].[Club]([ClubID]) ON DELETE CASCADE
);
