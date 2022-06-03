SELECT
  artist_name AS artista,
  album_name AS album
FROM SpotifyClone.artist AS artist
INNER JOIN SpotifyClone.album AS album
ON artist.artist_id = album.artist_id
WHERE artist_name = 'Walter Phoenix';