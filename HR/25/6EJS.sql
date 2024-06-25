
--me pide que muestre el listado de empleados,departamentos,estado o provincia tambien el manager y ordenar por salario--
--E1--
SELECT e.first_name, d.department_name, l.state_province,e.salary,em.first_name FROM employees e
JOIN employees em on e.employee_id = em.manager_id
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
ORDER by e.salary DESC
--E2--
UPDATE jobs SET min_salary = min_salary * 0.75, max_salary = max_salary * 0.75 

--E3--
DELETE FROM employees 
WHERE job_id in (SELECT j.job_id FROM jobs j
                  JOIN employees e on e.job_id = j.job_id
				  WHERE e.salary > j.max_salary)

