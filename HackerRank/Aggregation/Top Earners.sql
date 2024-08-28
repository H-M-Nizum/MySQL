/*
Enter your query here.
*/
SELECT months*salary, COUNT(months*salary)
FROM Employee 
WHERE months*salary = (SELECT MAX(months*salary) FROM Employee)
GROUP BY months * salary
LIMIT 1