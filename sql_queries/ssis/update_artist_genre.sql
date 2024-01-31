INSERT INTO artist_genre_dim (artist_id, genre_id)
SELECT aid.new_id, gd.genre_id
FROM artist_genre AS ag
INNER JOIN artist_ids AS aid
    ON ag.artist_id = aid.old_id
INNER JOIN genre_dim AS gd
    ON ag.genre = gd.genre_name;