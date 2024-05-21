select type, city from crime_scene_report
where city = "SQL City" 
GROUP by type
order by type