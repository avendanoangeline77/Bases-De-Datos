--Ejercicio 1--
SELECT count(e.first_name) ,e.last_name, d.department_name ,salary FROM employees e
JOIN departments d on d.department_id = e.department_id 
GROUP by d.department_name 

--Ejercicio 2--
SELECT e.first_name as nombre , e.last_name as apellido , d.department_name as departamento ,c.country_name as pais FROM employees e
JOIN departments d on d.department_id = e.department_id 
JOIN locations l on l.location_id = d.location_id 
JOIN countries c on c.country_id = l.country_id
WHERE c.country_id= "US"

--Ejercicio 3--
--PRIMERA PARTE--
SELECT employee_id, first_name,last_name,email,phone_number FROM employees 
where phone_number ISNULL 

--SEGUNDA PARTE--
UPDATE employees
set phone_number = "111.222.3344"
WHERE phone_number ISNULL

--Ejercicio 4--

UPDATE employees SET salary 

SELECT e.first_name, j.job.id, j.job_title ,e.salary FROM jobs j
JOIN employees e on e.job_id = j.job_id 
WHERE j.job_title = "Purchasing Clerk" = salary
