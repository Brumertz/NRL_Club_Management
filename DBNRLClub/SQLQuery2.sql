;WITH LadderData AS (
    SELECT * FROM (VALUES
        ('Panthers', 1, 11, 22, 11, 0, 0, 0, 364, 84, 280),
        ('Storm', 2, 11, 18, 9, 0, 2, 0, 370, 136, 234),
        ('Eels', 3, 11, 18, 9, 0, 2, 0, 300, 170, 130),
        ('Rabbitohs', 4, 11, 16, 8, 0, 3, 0, 279, 252, 27),
        ('Roosters', 5, 11, 14, 7, 0, 4, 0, 300, 181, 119),
        ('Sea Eagles', 6, 11, 12, 6, 0, 5, 0, 255, 246, 9),
        ('Dragons', 7, 11, 10, 5, 0, 6, 0, 223, 226, -3),
        ('Titans', 8, 11, 10, 5, 0, 6, 0, 260, 287, -27),
        ('Warriors', 9, 11, 10, 5, 0, 6, 0, 237, 276, -39),
        ('Cowboys', 10, 11, 10, 5, 0, 6, 0, 217, 305, -88),
        ('Raiders', 11, 11, 8, 4, 0, 7, 0, 203, 261, -58),
        ('Knights', 12, 11, 8, 4, 0, 7, 0, 199, 292, -93),
        ('Sharks', 13, 11, 6, 3, 0, 8, 0, 195, 270, -75),
        ('Wests Tigers', 14, 11, 6, 3, 0, 8, 0, 220, 310, -90),
        ('Broncos', 15, 11, 6, 3, 0, 8, 0, 180, 306, -126),
        ('Bulldogs', 16, 11, 2, 1, 0, 10, 0, 130, 330, -200)
    ) AS Data (TeamName, Position, Played, Points, Win, Draw, Lost, Byes, [For], Against, Diff)
)

INSERT INTO [dbo].[Ladder] ([ClubID], [Position], [Played], [Points], [Win], [Draw], [Lost], [Byes], [For], [Against], [Diff])
SELECT 
    Club.ClubID, 
    LadderData.Position, 
    LadderData.Played, 
    LadderData.Points, 
    LadderData.Win, 
    LadderData.Draw, 
    LadderData.Lost, 
    LadderData.Byes, 
    LadderData.[For], 
    LadderData.Against, 
    LadderData.Diff
FROM 
    LadderData
JOIN 
    [dbo].[Club] AS Club ON Club.TeamName = LadderData.TeamName;