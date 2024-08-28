/*
Enter your query here.
*/
(
    SELECT CONCAT(name, '(', UPPER(SUBSTRING(Occupation, 1, 1)), ')') AS result
    FROM OCCUPATIONS
    ORDER BY Name
)
UNION ALL
(
    SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.') AS result
    FROM OCCUPATIONS
    GROUP BY Occupation
    ORDER BY COUNT(Occupation), Occupation
)
ORDER BY result