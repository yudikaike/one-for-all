SELECT COUNT(music_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.user_history AS user_history
INNER JOIN SpotifyClone.`user` AS `user`
ON user_history.user_id = `user`.user_id
WHERE user_name = 'Bill';