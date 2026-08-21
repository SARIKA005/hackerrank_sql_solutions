--Employee Salaries

SET NOCOUNT ON;

SELECT name FROM Employee
WHERE salary > $2000 AND months < 10;

go