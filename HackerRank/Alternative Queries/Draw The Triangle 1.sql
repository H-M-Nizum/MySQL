/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
DECLARE @FIRST INT, @LAST INT
SET @FIRST = 1
SET @LAST = 20
WHILE @FIRST <= @LAST
    BEGIN
        SELECT REPLICATE ('* ', @LAST)
        SET @LAST = @LAST-1
    END;