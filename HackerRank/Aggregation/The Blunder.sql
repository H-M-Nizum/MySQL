/*
Enter your query here.
*/

SELECT CEILING(AVG(Salary) - AVG(REPLACE(CAST(Salary AS CHAR), '0', '')))
FROM EMPLOYEES