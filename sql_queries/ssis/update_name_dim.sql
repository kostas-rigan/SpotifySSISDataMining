INSERT INTO name_dim
SELECT DISTINCT track_name
FROM tracks_condensed;