
--DELETE FROM genres
  --WHERE GenreId in (SELECT tk.GenreId FROM genres g
    --            join tracks tk on g.GenreId = tk.GenreId
      --          GROUP by g.name
        --        having count(tk.name) < 50) ;

UPDATE tracks set TrackId = null 
where  in (SELECT TrackId FROM playlist_track plt 
                  JOIN tracks t on  plt.TrackId = t.TrackId
				  JOIN invoice_items ii on t.TrackId = ii.TrackId);

DELETE FROM tracks
  where GenreId in (SELECT tk.GenreId FROM genres g
                join tracks tk on g.GenreId = tk.GenreId
                GROUP by g.name
                having count(tk.name) < 50) ;
                --ORDER by canciones DESC)
                