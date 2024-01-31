INSERT INTO track_fact
SELECT DISTINCT
      nd.[name_id]
	  ,alb.new_id
	  ,[explicit]
	  ,[key]
	  ,[mode]
      ,[track_popularity]
      ,[danceability]
      ,[energy]
      ,[loudness]
      ,[speechiness]
      ,[acousticness]
      ,[instrumentalness]
      ,[liveness]
      ,[valence]
      ,[tempo]
      ,[duration_s]
  FROM [spotify].[dbo].[tracks_condensed] as td
INNER JOIN name_dim as nd ON td.track_name = nd.name_label
INNER JOIN album_ids AS alb ON alb.old_id = td.album_id;