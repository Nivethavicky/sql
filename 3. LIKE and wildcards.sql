
SELECT * FROM employee
WHERE ename LIKE 'A%'; -- filters name starting with A

SELECT * FROM employee
WHERE ename LIKE 'R%a'; -- filters name starting WITH R AND ending with a

SELECT * FROM employee
WHERE ename LIKE '%I%'; -- filters name containing I

SELECT * FROM employee
WHERE ename LIKE '__I%'; -- filters name with i as third character

SELECT * FROM employee
WHERE ename LIKE 'R\%'; -- filters name starting with R%. \ is the escape character.