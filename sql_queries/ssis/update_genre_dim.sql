INSERT INTO [dbo].[genre_dim] (genre_name)
SELECT DISTINCT genre_0
FROM [dbo].[artist]