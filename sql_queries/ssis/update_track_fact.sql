INSERT INTO track_fact
SELECT DISTINCT
      nd.name_id
	  ,aid.[new_id] as album
	  ,arid.new_id as artist
	  ,[release_date]
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
  FROM [spotify].[dbo].[tracks_condensed] as tc
  INNER JOIN name_dim as nd ON tc.track_name = nd.name_label
  INNER JOIN album_ids as aid ON tc.album_id = aid.old_id
  INNER JOIN artist_ids as arid ON tc.artist_id = arid.old_id;