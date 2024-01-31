SELECT a.id AS old_id, ad.artist_id AS new_id
FROM artist as a
INNER JOIN artist_dim as ad
ON a.name = ad.artist_name
AND a.artist_popularity = ad.artist_popularity
AND a.followers = ad.artist_followers;