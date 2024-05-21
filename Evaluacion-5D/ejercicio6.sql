SELECT  car_make ,count(car_model) FROM drivers_license
GROUP by car_make --agrupa la marca--
having count(car_model) > 100 
order by count(car_model) DESC

