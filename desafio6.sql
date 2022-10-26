SELECT
	FORMAT(MIN(S.subscription_price), 2) AS faturamento_minimo,
	FORMAT(MAX(S.subscription_price), 2) AS faturamento_maximo,
	FORMAT(AVG(S.subscription_price), 2) AS faturamento_medio,
	FORMAT(SUM(S.subscription_price), 2) AS faturamento_total
FROM SpotifyClone.User U
RIGHT JOIN SpotifyClone.Subscription S
ON U.subscription_id = S.subscription_id;