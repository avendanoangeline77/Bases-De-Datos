
UPDATE tracks set GenreId = null 
WHERE GenreId in (SELECT g.GenreId FROM genres g LEFT JOIN tracks t on g.GenreId = t.GenreId
                  GROUP by g.name
				  HAVING count(TrackId) < 50);
				  
				  
				  
DELETE FROM genres 
WHERE GenreId in (SELECT g.GenreId FROM genres g LEFT JOIN tracks t on g.GenreId = t.GenreId
                  GROUP by g.name
                    HAVING count(TrackId) < 50);
                