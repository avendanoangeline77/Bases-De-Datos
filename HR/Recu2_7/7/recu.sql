--Ejercicio 1--
SELECT j.job_title AS tipo_trabajador,COUNT(e.employee_id) AS cantidad_empleados,SUM(e.salary) AS gasto_total_sueldos FROM   employees e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY cantidad_empleados DESC;

--Ejercicio 2--
SELECT e.first_name , e.last_name, j.job_title, dp.department_name, l.city FROM employees e
JOIN jobs j on j.job_id = e.job_id
JOIN departments dp on e.department_id = dp.department_id
JOIN locations l on dp.location_id = l.location_id 


--Ejercicio 3--
UPDATE employees
SET salary = salary * 1.55
WHERE salary < 7500 AND department_id IN (
        SELECT department_id
        FROM departments
        WHERE department_name IN ('IT', 'Finance')
    );


--Ejercicio 4--
DELETE FROM employees
WHERE department_id = 2

DELETE FROM departments
WHERE location_id = 1800

DELETE FROM locations
WHERE country_id = "CA"

DELETE FROM countries 
WHERE country_name = "Canada"


--Ejercicio 5--
update employees set phone_number = "333.444.555"
where job_id = 15



--Ejercicio 6--
INSERT INTO departments(department_id,department_name,location_id)
VALUES (12,"consultants",1700) 


INSERT into jobs(job_id,job_title,max_salary,min_salary)
VALUES (20,"consultant",4000,2000)


INSERT into employees(first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
VALUES ("Raul","Lopez","",)

