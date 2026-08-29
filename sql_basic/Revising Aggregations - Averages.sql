--Revising Aggregations - Averages
SET NOCOUNT ON;
SELECT AVG(POPULATION) FROM CITY
WHERE DISTRICT = 'California'

go