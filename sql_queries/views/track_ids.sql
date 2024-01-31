SELECT
	  td.track_id as old_id
      ,tf.track_id as new_id
FROM [spotify].[dbo].[tracks_condensed] as td
INNER JOIN name_dim as nd ON td.track_name = nd.name_label
INNER JOIN album_ids AS alb ON alb.old_id = td.album_id
INNER JOIN track_fact as tf ON tf.name = nd.name_id 
	AND tf.album = alb.new_id 
	AND tf.explicit = td.explicit 
	AND tf.[key] = td.[key]
	AND tf.mode = td.mode
	AND tf.track_popularity = td.track_popularity
	AND tf.danceability = td.danceability
	AND tf.energy = td.energy
	AND tf.loudness = td.loudness
	AND tf.speechiness = td.speechiness
	AND tf.acousticness = td.acousticness
	AND tf.instrumentalness = td.instrumentalness
	AND tf.liveness = td.liveness
	AND tf.valence = td.valence
	AND tf.tempo = td.tempo
	AND tf.duration_s = td.duration_s;
