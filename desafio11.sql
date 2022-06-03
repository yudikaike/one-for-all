SELECT
  music_name AS nome_musica,
  CASE
    WHEN music_name = 'Dance With Her Own' THEN 'Dance With Trybe'
    WHEN music_name = 'Troubles Of My Inner Fire' THEN 'Troubles Of My Project' 
    WHEN music_name = 'Magic Circus' THEN 'Magic Pull Request'
    WHEN music_name = "Let's Be Silly" THEN "Let's Be Nice"
    WHEN music_name = 'Without My Streets' THEN 'Without My Code Review'
  END AS novo_nome
FROM SpotifyClone.music
WHERE music_name 
IN ('Dance With Her Own', "Let's Be Silly", 'Magic Circus', 'Troubles Of My Inner Fire', 'Without My Streets')
ORDER BY nome_musica;