--Weather Observation Station 8

SET NOCOUNT ON;
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '[aeiou]%[aeiou]';
go