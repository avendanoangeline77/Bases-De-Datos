select DISTINCT type, city from crime_scene_report ---distinct para no repetir
where city = "SQL City" 
order by type ASC 