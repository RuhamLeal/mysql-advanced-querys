SELECT 
	M.music_name AS cancao,
	COUNT(H.music_id) AS reproducoes 
FROM SpotifyClone.Musics M
RIGHT JOIN SpotifyClone.History H
ON M.music_id = H.music_id
GROUP BY H.music_id
ORDER BY reproducoes DESC, cancao
LIMIT 2