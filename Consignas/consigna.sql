--18/06--
--E1--

INSERT INTO regions(region_name)
VALUES ("Africa") , ("Middle east")

--E2--
UPDATE countries set "region_id" = 5   
WHERE country_id = "EG" or country_id = "NG" or country_id = "ZM" or country_id = "ZW"

UPDATE countries set "region_id" = 6 
WHERE country_id = "IL" or country_id = "KW" 
--E3--
DELETE FROM countries
WHERE region_id in (SELECT region_id FROM regions 
WHERE region_id = 4 );

DELETE FROM regions
WHERE region_id in (SELECT region_id FROM regions 
WHERE region_id = 4 );

--E4--
INSERT INTO countries(country_id,country_name, region_id)
VALUES ("AL","Angola", 5) , ("GB","Gambia", 5), ("TQ","Turquia", 6), ("IA", "Irak", 6)

--E5--
INSERT INTO regions(region_id,region_name)
VALUES (7,"Africa and Middle east")
--E6--
UPDATE countries set region_id = 7
where region_id in (SELECT region_id from countries WHERE region_id = 5 or region_id = 6)

