SELECT a.[track_id], 
	a.track_name, 
	t.[track_popularity], 
	t.[explicit], 
	t.[danceability], 
	t.[energy], 
	t.[key], 
	t.[loudness], 
	t.[mode], 
	t.[speechiness],
	t.[acousticness],
	t.[instrumentalness],
	t.[liveness],
	t.[valence],
	t.[tempo],
	CAST(duration_ms AS float) / 1000.0 AS duration_s
FROM track AS t
INNER JOIN album AS a ON t.id=a.track_id;