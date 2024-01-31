INSERT INTO [dbo].[album_dim]
SELECT DISTINCT album_name, alt.album_type_id, release_date, album_popularity, rl.record_label_id
FROM album AS a
INNER JOIN album_type_dim AS alt ON alt.album_type_label = a.album_type
INNER JOIN record_label_dim AS rl ON rl.record_label_name = a.label;