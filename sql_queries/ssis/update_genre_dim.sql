INSERT INTO [dbo].[genre_dim] (genre_name)
SELECT DISTINCT genre
FROM [dbo].[artist_genre]
