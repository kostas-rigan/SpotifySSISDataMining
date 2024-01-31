SELECT id AS artist_id, TRIM(value) AS genre
FROM [dbo].[artist]
CROSS APPLY STRING_SPLIT(SUBSTRING(artist_genres, 2, LEN(artist_genres) - 2), ',');