SELECT 
   	A.artist_name  AS artista,
    AL.album_name AS album
FROM SpotifyClone.Artist A
INNER JOIN SpotifyClone.Album AL 
	ON A.artist_id  = AL.artist_id 
WHERE A.artist_id  = 3;