

---E1--
SELECT  Title,ArtistId,Milliseconds  FROM albums , tracks --selecionamos el titulo,artista,duracion desde albums ,pista--
--E2--
SELECT  FirstName, Address ,LastName ,City FROM customers--seleccionamos el primer name ,direccion,apellido,ciudad desde clientes--
--E3--
SELECT  name, Milliseconds FROM tracks WHERE Composer IS NULL AND Milliseconds >  2900000 --seleccione el nombre y los milisegundos desde pista donde el tiempo de la musica sea mayor al compositor--
--E4--
SELECT FirstName, LastName,Company FROM customers WHERE NOT Company IS NULL --seleccionamos el primer nombre apellido y compania desde clientes donde no este vacia la compania--
--E5--
SELECT DISTINCT BillingCity, BillingState FROM invoices WHERE NOT BillingState IS NULL
ORDER BY BillingCity DESC --Seleccionamos distinct para que no repita desde invoice (carpeta) donde no tiene que estar las ciudadades/estados vacias ,luego ordenar de manera decendiente
--E6--
SELECT Title FROM albums WHERE Title LIKE "%of%" --contiene :%l% termina:%l empieza: l%
ORDER BY title ASC  --ASC:acendente DESC :desendente 
--E7--
