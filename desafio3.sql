SELECT
  user_name AS usuario,
  COUNT(user_history.music_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(duration_seconds) / 60, 2) AS total_minutos
FROM SpotifyClone.`user` AS `user`
INNER JOIN SpotifyClone.user_history AS user_history
ON `user`.user_id = user_history.user_id
INNER JOIN SpotifyClone.music AS music
ON user_history.music_id = music.music_id
GROUP BY user_name
ORDER BY user_name;