---Insert(from)---
INSERT INTO artists(name)
VALUES ("enrique iglesia")

INSERT INTO albums(Title,ArtistId)
VALUES ("Quizas", 276)
--3 canciones de ese artista--
INSERT INTO tracks(name,MediaTypeId,Milliseconds,UnitPrice)
VALUES ("El perdedor",1, 1200, 2.8 ), ("Lloro por ti", 1, 1000, 2.5), ("Dile que", 1 , 2000, 2.3) 

---Update(nombre de la tabla)---
UPDATE tracks 
set MediaTypeId = 1
WHERE TrackId > 3500

---Delete(from)----
--borra un bloque entero-- 
--cada vez que hacemos una consulta ; al final--
--los id tienen valores unicos--
DELETE FROM tracks where TrackId = 3504 or TrackId = 3505 or TrackId = 3506;
DELETE FROM albums where AlbumId = 348;
DELETE FROM artists where ArtistId = 276;
