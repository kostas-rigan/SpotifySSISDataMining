INSERT INTO [dbo].[artist_dim] (artist_name, artist_popularity, artist_followers)
SELECT DISTINCT [name],[artist_popularity],[followers]
FROM [dbo].[artist];
