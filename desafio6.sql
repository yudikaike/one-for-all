SELECT
  MIN(plan_price) AS faturamento_minimo,
  MAX(plan_price) AS faturamento_maximo,
  ROUND(AVG(plan_price), 2) AS faturamento_medio,
  SUM(plan_price) AS faturamento_total
FROM SpotifyClone.`user` AS `user`
INNER JOIN SpotifyClone.plan AS plan
ON `user`.plan_id = plan.plan_id
ORDER BY user_name;