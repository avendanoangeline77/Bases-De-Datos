
--1er--nos muestra todos los datos,lugares y informacion de los asesinos--
select *--
 from crime_scene_report

--2do--
select *
 from crime_scene_report
    where date = "20180115" AND city = "SQL City" AND type = "murder" 

--3er nombre de los testigo y info de ellos--

--apellido de annbel like:
SELECT id, name, license_id,address_number, address_street_name, ssn FROM person
where name like "Annabel%"

---nombre del testigo con el max para que me aparesca el ultimo numero de la casa--
SELECT id, name, license_id, max(address_number), address_street_name, ssn FROM person
where address_street_name = "Northwestern Dr"

--4to--
--me aparece la entrevista de los testigos--
select person_id, transcript from interview where person_id = "16371" or person_id = "14887" 

--5to patentes de los autos con el numero h42w--
select id, plate_number from drivers_license where plate_number like "%H42W%"

--6to muestra a los sospechosos con el numero de socio de oro--
select id, name, membership_status  from get_fit_now_member 
where id like "%48Z%" 


