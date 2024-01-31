SELECT DISTINCT ad.album_id as new_id, a.album_id as old_id
FROM album_dim as ad
INNER JOIN album as a ON ad.album_name=a.album_name AND a.album_popularity=ad.album_popularity AND ad.release_date=a.release_date;