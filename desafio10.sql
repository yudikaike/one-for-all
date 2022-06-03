SELECT
  music_name AS nome,
  COUNT(*) AS reproducoes
FROM SpotifyClone.music AS music
INNER JOIN SpotifyClone.user_history AS user_history
ON music.music_id = user_history.music_id
INNER JOIN SpotifyClone.`user` AS `user`
ON user_history.user_id = `user`.user_id
INNER JOIN SpotifyClone.plan AS plan
ON `user`.plan_id = plan.plan_id
WHERE plan_name = 'gratuito'
OR plan_name = 'pessoal'
GROUP BY music_name
ORDER BY reproducoes DESC, music_name;