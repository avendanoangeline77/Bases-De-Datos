---E1--
SELECT department_name as Departamentos FROM departments
ORDER by department_name
--E2--
SELECT salary as salario FROM employees
group by salary
ORDER by salary DESC
--E3--
SELECT e.first_name, e.last_name , j.job_title , j.max_salary , j.min_salary
FROM employees e
JOIN jobs j on j.job_id = e.job_id
WHERE j.job_title like "%manager%"
order by max_salary DESC

---E4--ordeno
SELECT c.country_name , re.region_name as region FROM countries c 
JOIN regions re on re.region_id = c.region_id
ORDER BY region
--E5---
SELECT e.first_name, e.last_name ,dp.department_name , e.salary FROM employees e 
JOIN departments dp on dp.department_id = e.department_id 
WHERE salary > 9000 and salary < 17000 
order by salary DESC
--E6---
select count(cou.country_name), re.region_name as region  FROM countries cou
JOIN regions re on re.region_id = cou.region_id 
group by region_name
HAVING count(cou.country_id)> 5
order by count(cou.country_name) DESC
--E7--
SELECT min(hire_date), max(hire_date) FROM employees 
--E8--
select e.first_name as nombre, e.last_name as apellido, count(d.first_name) as cant_hijos from employees e
join dependents d on e.employee_id = d.employee_id
GROUP by nombre
ORDER by cant_hijos DESC
limit 5
--E9-






