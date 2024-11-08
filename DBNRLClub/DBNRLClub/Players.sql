
CREATE TABLE [dbo].[Player]
(
    [PlayerID] INT IDENTITY(1, 1) PRIMARY KEY,  -- ID auto-incremental
    [PlayerName] NVARCHAR(100) NOT NULL,
    [TeamName] NVARCHAR(100) NOT NULL,
    [Position] NVARCHAR(50) NOT NULL,
    [ClubID] INT NOT NULL,
    [Stats] NVARCHAR(MAX),  -- Utilizar NVARCHAR(MAX) para almacenar JSON como texto
    FOREIGN KEY ([ClubID]) REFERENCES [dbo].[Club]([ClubID]) ON DELETE CASCADE
);