SELECT 
	A.artist_name AS artista,
	AL.album_name AS album,
	COUNT(F.user_id) AS seguidores
FROM SpotifyClone.Artist A
INNER JOIN SpotifyClone.Album AL
	ON A.artist_id = AL.artist_id
INNER JOIN SpotifyClone.Following F
	ON AL.artist_id = F.artist_id
GROUP BY A.artist_name, AL.album_name
ORDER BY seguidores DESC, artista, album