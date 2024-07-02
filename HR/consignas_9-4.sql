--Ej1 borrar los empleados que vivan en canada--
DELETE FROM employees
WHERE department_id = 2

DELETE FROM departments
WHERE location_id = 1800

DELETE FROM locations
WHERE country_id = "CA"

DELETE FROM countries 
WHERE country_name = "Canada"


--E2 mostrar todos los empleados que viven en uk --
SELECT e.first_name,e.last_name , d.department_name, c.country_name FROM employees e
JOIN departments d on e.department_id = d.department_id 
JOIN locations l on d.location_id = l.location_id 
JOIN countries c on l.country_id = c.country_id
WHERE c.country_name= "United Kingdom"

--E3 borre el job.id de aquellos trabajos que no tinen empleados--
DELETE FROM jobs
WHERE job_id IN (
    SELECT j.job_id
    FROM jobs j
    LEFT JOIN employees e ON j.job_id = e.job_id
    WHERE e.job_id IS NULL
);

--E4 --
SELECT j.job_title AS puesto_laboral, COUNT(e.employee_id) AS cantidad_personas, AVG(e.salary) AS sueldo_promedio, j.min_salary AS sueldo_mínimo, j.max_salary AS sueldo_máximo
FROM  employees e
JOIN  jobs j ON e.job_id = j.job_id
GROUP BY j.job_id
HAVING  COUNT(e.employee_id) > 1;
