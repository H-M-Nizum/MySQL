/*
Enter your query here.
*/
SELECT CONCAT((CASE WHEN g.Grade<8 THEN 'NULL' ELSE s.Name END), ' ', g.Grade, ' ', s.Marks) AS Result
FROM Students AS s
JOIN Grades AS g ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, s.Name, s.Marks;