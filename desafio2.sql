SELECT 
	COUNT(DISTINCT M.music_name) AS cancoes,
	COUNT(DISTINCT AR.artist_name) AS artistas,
	COUNT(DISTINCT AL.album_name) AS albuns
FROM SpotifyClone.Musics M
INNER JOIN SpotifyClone.Artist AR
INNER JOIN SpotifyClone.Album AL;