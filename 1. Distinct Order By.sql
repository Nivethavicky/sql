
SELECT DISTINCT job_desc
FROM employee; -- shows only distinct values without duplicates

-- ORDER BY


SELECT * FROM employee
ORDER BY salary; -- order by salary asc

SELECT * FROM employee
ORDER BY salary ASC; -- order by salary asc


SELECT * FROM employee
ORDER BY salary DESC; -- order by salary desc

SELECT * FROM employee
WHERE job_desc="MANAGER"
ORDER BY salary DESC; -- order the manager salaries in desc order

SELECT * FROM employee
ORDER BY job_desc,ename; -- first sorts by job_desc and then by ename

SELECT * FROM employee
ORDER BY (CASE job_desc -- specific order
WHEN 'CEO' THEN 1
WHEN 'MANAGER' THEN 2
WHEN 'HR' THEN 3
WHEN 'ANALYST' THEN 4
WHEN 'SALES' THEN 5
ELSE 100 END);