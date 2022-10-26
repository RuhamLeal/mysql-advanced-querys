SELECT
	U.user_name AS usuario,
	COUNT(H.user_id) AS qt_de_musicas_ouvidas,
	ROUND(SUM(M.duration)/60, 2) AS total_minutos
FROM SpotifyClone.User U
INNER JOIN SpotifyClone.History H  
  ON U.user_id = H.user_id 
INNER JOIN SpotifyClone.Musics M
  ON H.music_id = M.music_id
GROUP BY U.user_name 
ORDER BY U.user_name