SELECT 
    U.user_name AS usuario,
    CASE
        WHEN YEAR(MAX(H.playback_date)) >= 2021 
        THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS status_usuario
FROM SpotifyClone.User U
INNER JOIN
	SpotifyClone.History H ON U.user_id = H.user_id
GROUP BY U.user_name
ORDER BY U.user_name;