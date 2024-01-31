INSERT INTO track_artist_dim
SELECT ti.new_id as [track_id]
      ,ai.new_id as [artist_id]
FROM [spotify].[dbo].[track-artist] as ta
INNER JOIN artist_ids as ai ON ta.artist_id = ai.old_id
INNER JOIN track_ids as ti ON ta.track_id = ti.old_id
