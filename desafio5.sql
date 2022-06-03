SELECT music_name AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.music AS music
INNER JOIN SpotifyClone.user_history AS user_history
ON music.music_id = user_history.music_id
GROUP BY music_name
ORDER BY reproducoes DESC, music_name LIMIT 2;