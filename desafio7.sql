SELECT 
  artist_name AS artista,
  album_name AS album,
  COUNT(DISTINCT user_id) AS seguidores
FROM SpotifyClone.artist AS artist
INNER JOIN SpotifyClone.album AS album
ON artist.artist_id = album.artist_id
INNER JOIN SpotifyClone.user_follow AS user_follow
ON artist.artist_id = user_follow.artist_id
GROUP BY artist_name, album_name
ORDER BY seguidores DESC;