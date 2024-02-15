INSERT INTO [dbo].[artist_dim] (artist_name, artist_popularity, artist_followers, genre)
SELECT DISTINCT [name],[artist_popularity],[followers], g.[genre_id]
FROM [dbo].[artist] as a
INNER JOIN [dbo].[genre_dim] as g ON a.genre_0 = g.genre_name;