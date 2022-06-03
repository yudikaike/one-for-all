SELECT
  user_name AS usuario,
  IF (YEAR(MAX(reproduction_date)) = '2021', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.`user` AS `user`
INNER JOIN SpotifyClone.user_history AS user_history
ON `user`.user_id = user_history.user_id
GROUP BY user_name
ORDER BY user_name;