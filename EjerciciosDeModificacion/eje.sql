INSERT INTO artists(name)
VALUES ("enrique iglesia")

INSERT INTO albums(Title,ArtistId)
VALUES ("Quizas", 276)
--3 canciones de ese artista--
insert INTO tracks(name,MediaTypeId,Milliseconds,UnitPrice)
VALUES ("El perdedor",1, 1200, 2.8 ), ("Lloro por ti", 1, 1000, 2.5), ("Dile que", 1 , 2000, 2.3) 

--------------------------------
update tracks 
set MediaTypeId = 1
where TrackId > 3500