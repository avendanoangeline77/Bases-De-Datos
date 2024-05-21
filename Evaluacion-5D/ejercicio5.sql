SELECT gender, min(age) as edad_minima, max(age) as edad_maxima, avg(age) as edad_promedio from drivers_license   
where gender = "male" 
